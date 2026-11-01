package com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.Format;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorInput;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorOutput;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.PositionHolder;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.TrackOutput;
import com.mbridge.msdk.playercommon.exoplayer2.util.ParsableByteArray;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
abstract class StreamReader {
    private static final int STATE_END_OF_INPUT = 3;
    private static final int STATE_READ_HEADERS = 0;
    private static final int STATE_READ_PAYLOAD = 2;
    private static final int STATE_SKIP_HEADERS = 1;
    private long currentGranule;
    private ExtractorOutput extractorOutput;
    private boolean formatSet;
    private long lengthOfReadPacket;
    private final OggPacket oggPacket = new OggPacket();
    private OggSeeker oggSeeker;
    private long payloadStartPosition;
    private int sampleRate;
    private boolean seekMapSet;
    private SetupData setupData;
    private int state;
    private long targetGranule;
    private TrackOutput trackOutput;

    static class SetupData {
        Format format;
        OggSeeker oggSeeker;

        SetupData() {
        }
    }

    private static final class UnseekableOggSeeker implements OggSeeker {
        private UnseekableOggSeeker() {
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.OggSeeker
        public SeekMap createSeekMap() {
            return new SeekMap.Unseekable(C.TIME_UNSET);
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.OggSeeker
        public long read(ExtractorInput extractorInput) throws InterruptedException, IOException {
            return -1L;
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.OggSeeker
        public long startSeek(long j11) {
            return 0L;
        }
    }

    private int readHeaders(ExtractorInput extractorInput) throws InterruptedException, IOException {
        boolean headers = true;
        while (headers) {
            if (!this.oggPacket.populate(extractorInput)) {
                this.state = 3;
                return -1;
            }
            this.lengthOfReadPacket = extractorInput.getPosition() - this.payloadStartPosition;
            headers = readHeaders(this.oggPacket.getPayload(), this.payloadStartPosition, this.setupData);
            if (headers) {
                this.payloadStartPosition = extractorInput.getPosition();
            }
        }
        Format format = this.setupData.format;
        this.sampleRate = format.sampleRate;
        if (!this.formatSet) {
            this.trackOutput.format(format);
            this.formatSet = true;
        }
        OggSeeker oggSeeker = this.setupData.oggSeeker;
        if (oggSeeker != null) {
            this.oggSeeker = oggSeeker;
        } else if (extractorInput.getLength() == -1) {
            this.oggSeeker = new UnseekableOggSeeker();
        } else {
            OggPageHeader pageHeader = this.oggPacket.getPageHeader();
            this.oggSeeker = new DefaultOggSeeker(this.payloadStartPosition, extractorInput.getLength(), this, pageHeader.headerSize + pageHeader.bodySize, pageHeader.granulePosition);
        }
        this.setupData = null;
        this.state = 2;
        this.oggPacket.trimPayload();
        return 0;
    }

    private int readPayload(ExtractorInput extractorInput, PositionHolder positionHolder) throws InterruptedException, IOException {
        long j11 = this.oggSeeker.read(extractorInput);
        if (j11 >= 0) {
            positionHolder.position = j11;
            return 1;
        }
        if (j11 < -1) {
            onSeekEnd(-(j11 + 2));
        }
        if (!this.seekMapSet) {
            this.extractorOutput.seekMap(this.oggSeeker.createSeekMap());
            this.seekMapSet = true;
        }
        if (this.lengthOfReadPacket <= 0 && !this.oggPacket.populate(extractorInput)) {
            this.state = 3;
            return -1;
        }
        this.lengthOfReadPacket = 0L;
        ParsableByteArray payload = this.oggPacket.getPayload();
        long jPreparePayload = preparePayload(payload);
        if (jPreparePayload >= 0) {
            long j12 = this.currentGranule;
            if (j12 + jPreparePayload >= this.targetGranule) {
                long jConvertGranuleToTime = convertGranuleToTime(j12);
                this.trackOutput.sampleData(payload, payload.limit());
                this.trackOutput.sampleMetadata(jConvertGranuleToTime, 1, payload.limit(), 0, null);
                this.targetGranule = -1L;
            }
        }
        this.currentGranule += jPreparePayload;
        return 0;
    }

    protected long convertGranuleToTime(long j11) {
        return (j11 * 1000000) / ((long) this.sampleRate);
    }

    protected long convertTimeToGranule(long j11) {
        return (((long) this.sampleRate) * j11) / 1000000;
    }

    void init(ExtractorOutput extractorOutput, TrackOutput trackOutput) {
        this.extractorOutput = extractorOutput;
        this.trackOutput = trackOutput;
        reset(true);
    }

    protected void onSeekEnd(long j11) {
        this.currentGranule = j11;
    }

    protected abstract long preparePayload(ParsableByteArray parsableByteArray);

    final int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws InterruptedException, IOException {
        int i11 = this.state;
        if (i11 == 0) {
            return readHeaders(extractorInput);
        }
        if (i11 != 1) {
            if (i11 == 2) {
                return readPayload(extractorInput, positionHolder);
            }
            throw new IllegalStateException();
        }
        extractorInput.skipFully((int) this.payloadStartPosition);
        this.state = 2;
        return 0;
    }

    protected abstract boolean readHeaders(ParsableByteArray parsableByteArray, long j11, SetupData setupData) throws InterruptedException, IOException;

    protected void reset(boolean z10) {
        if (z10) {
            this.setupData = new SetupData();
            this.payloadStartPosition = 0L;
            this.state = 0;
        } else {
            this.state = 1;
        }
        this.targetGranule = -1L;
        this.currentGranule = 0L;
    }

    final void seek(long j11, long j12) {
        this.oggPacket.reset();
        if (j11 == 0) {
            reset(!this.seekMapSet);
        } else if (this.state != 0) {
            this.targetGranule = this.oggSeeker.startSeek(j12);
            this.state = 2;
        }
    }
}
