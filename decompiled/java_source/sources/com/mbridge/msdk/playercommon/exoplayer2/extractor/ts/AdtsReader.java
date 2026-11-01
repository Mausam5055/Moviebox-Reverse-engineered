package com.mbridge.msdk.playercommon.exoplayer2.extractor.ts;

import android.util.Log;
import android.util.Pair;
import com.mbridge.msdk.playercommon.exoplayer2.Format;
import com.mbridge.msdk.playercommon.exoplayer2.ParserException;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.DummyTrackOutput;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorOutput;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.TrackOutput;
import com.mbridge.msdk.playercommon.exoplayer2.util.CodecSpecificDataUtil;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.mbridge.msdk.playercommon.exoplayer2.util.ParsableBitArray;
import com.mbridge.msdk.playercommon.exoplayer2.util.ParsableByteArray;
import java.util.Arrays;
import java.util.Collections;

/* JADX INFO: loaded from: classes5.dex */
public final class AdtsReader implements ElementaryStreamReader {
    private static final int CRC_SIZE = 2;
    private static final int HEADER_SIZE = 5;
    private static final int ID3_HEADER_SIZE = 10;
    private static final byte[] ID3_IDENTIFIER = {73, 68, 51};
    private static final int ID3_SIZE_OFFSET = 6;
    private static final int MATCH_STATE_FF = 512;
    private static final int MATCH_STATE_I = 768;
    private static final int MATCH_STATE_ID = 1024;
    private static final int MATCH_STATE_START = 256;
    private static final int MATCH_STATE_VALUE_SHIFT = 8;
    private static final int STATE_FINDING_SAMPLE = 0;
    private static final int STATE_READING_ADTS_HEADER = 2;
    private static final int STATE_READING_ID3_HEADER = 1;
    private static final int STATE_READING_SAMPLE = 3;
    private static final String TAG = "AdtsReader";
    private final ParsableBitArray adtsScratch;
    private int bytesRead;
    private TrackOutput currentOutput;
    private long currentSampleDuration;
    private final boolean exposeId3;
    private String formatId;
    private boolean hasCrc;
    private boolean hasOutputFormat;
    private final ParsableByteArray id3HeaderBuffer;
    private TrackOutput id3Output;
    private final String language;
    private int matchState;
    private TrackOutput output;
    private long sampleDurationUs;
    private int sampleSize;
    private int state;
    private long timeUs;

    public AdtsReader(boolean z10) {
        this(z10, null);
    }

    public AdtsReader(boolean z10, String str) {
        this.adtsScratch = new ParsableBitArray(new byte[7]);
        this.id3HeaderBuffer = new ParsableByteArray(Arrays.copyOf(ID3_IDENTIFIER, 10));
        setFindingSampleState();
        this.exposeId3 = z10;
        this.language = str;
    }

    private boolean continueRead(ParsableByteArray parsableByteArray, byte[] bArr, int i11) {
        int iMin = Math.min(parsableByteArray.bytesLeft(), i11 - this.bytesRead);
        parsableByteArray.readBytes(bArr, this.bytesRead, iMin);
        int i12 = this.bytesRead + iMin;
        this.bytesRead = i12;
        return i12 == i11;
    }

    private void findNextSample(ParsableByteArray parsableByteArray) {
        byte[] bArr = parsableByteArray.data;
        int position = parsableByteArray.getPosition();
        int iLimit = parsableByteArray.limit();
        while (position < iLimit) {
            int i11 = position + 1;
            byte b11 = bArr[position];
            int i12 = b11 & 255;
            int i13 = this.matchState;
            if (i13 == 512 && i12 >= 240 && i12 != 255) {
                this.hasCrc = (b11 & 1) == 0;
                setReadingAdtsHeaderState();
                parsableByteArray.setPosition(i11);
                return;
            }
            int i14 = i13 | i12;
            if (i14 == 329) {
                this.matchState = MATCH_STATE_I;
            } else if (i14 == 511) {
                this.matchState = 512;
            } else if (i14 == 836) {
                this.matchState = 1024;
            } else if (i14 == 1075) {
                setReadingId3HeaderState();
                parsableByteArray.setPosition(i11);
                return;
            } else if (i13 != 256) {
                this.matchState = 256;
            }
            position = i11;
        }
        parsableByteArray.setPosition(position);
    }

    private void parseAdtsHeader() throws ParserException {
        this.adtsScratch.setPosition(0);
        if (this.hasOutputFormat) {
            this.adtsScratch.skipBits(10);
        } else {
            int i11 = 2;
            int bits = this.adtsScratch.readBits(2) + 1;
            if (bits != 2) {
                Log.w(TAG, "Detected audio object type: " + bits + ", but assuming AAC LC.");
            } else {
                i11 = bits;
            }
            int bits2 = this.adtsScratch.readBits(4);
            this.adtsScratch.skipBits(1);
            byte[] bArrBuildAacAudioSpecificConfig = CodecSpecificDataUtil.buildAacAudioSpecificConfig(i11, bits2, this.adtsScratch.readBits(3));
            Pair<Integer, Integer> aacAudioSpecificConfig = CodecSpecificDataUtil.parseAacAudioSpecificConfig(bArrBuildAacAudioSpecificConfig);
            Format formatCreateAudioSampleFormat = Format.createAudioSampleFormat(this.formatId, MimeTypes.AUDIO_AAC, null, -1, -1, ((Integer) aacAudioSpecificConfig.second).intValue(), ((Integer) aacAudioSpecificConfig.first).intValue(), Collections.singletonList(bArrBuildAacAudioSpecificConfig), null, 0, this.language);
            this.sampleDurationUs = 1024000000 / ((long) formatCreateAudioSampleFormat.sampleRate);
            this.output.format(formatCreateAudioSampleFormat);
            this.hasOutputFormat = true;
        }
        this.adtsScratch.skipBits(4);
        int bits3 = this.adtsScratch.readBits(13);
        int i12 = bits3 - 7;
        if (this.hasCrc) {
            i12 = bits3 - 9;
        }
        setReadingSampleState(this.output, this.sampleDurationUs, 0, i12);
    }

    private void parseId3Header() {
        this.id3Output.sampleData(this.id3HeaderBuffer, 10);
        this.id3HeaderBuffer.setPosition(6);
        setReadingSampleState(this.id3Output, 0L, 10, this.id3HeaderBuffer.readSynchSafeInt() + 10);
    }

    private void readSample(ParsableByteArray parsableByteArray) {
        int iMin = Math.min(parsableByteArray.bytesLeft(), this.sampleSize - this.bytesRead);
        this.currentOutput.sampleData(parsableByteArray, iMin);
        int i11 = this.bytesRead + iMin;
        this.bytesRead = i11;
        int i12 = this.sampleSize;
        if (i11 == i12) {
            this.currentOutput.sampleMetadata(this.timeUs, 1, i12, 0, null);
            this.timeUs += this.currentSampleDuration;
            setFindingSampleState();
        }
    }

    private void setFindingSampleState() {
        this.state = 0;
        this.bytesRead = 0;
        this.matchState = 256;
    }

    private void setReadingAdtsHeaderState() {
        this.state = 2;
        this.bytesRead = 0;
    }

    private void setReadingId3HeaderState() {
        this.state = 1;
        this.bytesRead = ID3_IDENTIFIER.length;
        this.sampleSize = 0;
        this.id3HeaderBuffer.setPosition(0);
    }

    private void setReadingSampleState(TrackOutput trackOutput, long j11, int i11, int i12) {
        this.state = 3;
        this.bytesRead = i11;
        this.currentOutput = trackOutput;
        this.currentSampleDuration = j11;
        this.sampleSize = i12;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.ElementaryStreamReader
    public void consume(ParsableByteArray parsableByteArray) throws ParserException {
        while (parsableByteArray.bytesLeft() > 0) {
            int i11 = this.state;
            if (i11 == 0) {
                findNextSample(parsableByteArray);
            } else if (i11 != 1) {
                if (i11 == 2) {
                    if (continueRead(parsableByteArray, this.adtsScratch.data, this.hasCrc ? 7 : 5)) {
                        parseAdtsHeader();
                    }
                } else if (i11 == 3) {
                    readSample(parsableByteArray);
                }
            } else if (continueRead(parsableByteArray, this.id3HeaderBuffer.data, 10)) {
                parseId3Header();
            }
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.ElementaryStreamReader
    public void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.generateNewId();
        this.formatId = trackIdGenerator.getFormatId();
        this.output = extractorOutput.track(trackIdGenerator.getTrackId(), 1);
        if (!this.exposeId3) {
            this.id3Output = new DummyTrackOutput();
            return;
        }
        trackIdGenerator.generateNewId();
        TrackOutput trackOutputTrack = extractorOutput.track(trackIdGenerator.getTrackId(), 4);
        this.id3Output = trackOutputTrack;
        trackOutputTrack.format(Format.createSampleFormat(trackIdGenerator.getFormatId(), MimeTypes.APPLICATION_ID3, null, -1, null));
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.ElementaryStreamReader
    public void packetFinished() {
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.ElementaryStreamReader
    public void packetStarted(long j11, boolean z10) {
        this.timeUs = j11;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.ElementaryStreamReader
    public void seek() {
        setFindingSampleState();
    }
}
