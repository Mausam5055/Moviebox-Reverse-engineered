package com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import com.mbridge.msdk.playercommon.exoplayer2.Format;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.mbridge.msdk.playercommon.exoplayer2.util.ParsableByteArray;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import okio.Utf8;

/* JADX INFO: loaded from: classes5.dex */
final class OpusReader extends StreamReader {
    private static final int DEFAULT_SEEK_PRE_ROLL_SAMPLES = 3840;
    private static final int OPUS_CODE = Util.getIntegerCodeForString("Opus");
    private static final byte[] OPUS_SIGNATURE = {79, 112, 117, 115, 72, 101, 97, 100};
    private static final int SAMPLE_RATE = 48000;
    private boolean headerRead;

    OpusReader() {
    }

    private long getPacketDurationUs(byte[] bArr) {
        int i11;
        int i12;
        byte b11 = bArr[0];
        int i13 = b11 & 255;
        int i14 = b11 & 3;
        if (i14 != 0) {
            i11 = 2;
            if (i14 != 1 && i14 != 2) {
                i11 = bArr[1] & Utf8.REPLACEMENT_BYTE;
            }
        } else {
            i11 = 1;
        }
        int i15 = i13 >> 3;
        int i16 = i15 & 3;
        if (i15 >= 16) {
            i12 = DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS << i16;
        } else if (i15 >= 12) {
            i12 = 10000 << (i15 & 1);
        } else {
            i12 = i16 == 3 ? 60000 : 10000 << i16;
        }
        return ((long) i11) * ((long) i12);
    }

    private void putNativeOrderLong(List<byte[]> list, int i11) {
        list.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong((((long) i11) * C.NANOS_PER_SECOND) / 48000).array());
    }

    public static boolean verifyBitstreamType(ParsableByteArray parsableByteArray) {
        int iBytesLeft = parsableByteArray.bytesLeft();
        byte[] bArr = OPUS_SIGNATURE;
        if (iBytesLeft < bArr.length) {
            return false;
        }
        byte[] bArr2 = new byte[bArr.length];
        parsableByteArray.readBytes(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.StreamReader
    protected long preparePayload(ParsableByteArray parsableByteArray) {
        return convertTimeToGranule(getPacketDurationUs(parsableByteArray.data));
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.StreamReader
    protected boolean readHeaders(ParsableByteArray parsableByteArray, long j11, StreamReader.SetupData setupData) throws InterruptedException, IOException {
        if (this.headerRead) {
            boolean z10 = parsableByteArray.readInt() == OPUS_CODE;
            parsableByteArray.setPosition(0);
            return z10;
        }
        byte[] bArrCopyOf = Arrays.copyOf(parsableByteArray.data, parsableByteArray.limit());
        int i11 = bArrCopyOf[9] & 255;
        int i12 = ((bArrCopyOf[11] & 255) << 8) | (bArrCopyOf[10] & 255);
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(bArrCopyOf);
        putNativeOrderLong(arrayList, i12);
        putNativeOrderLong(arrayList, DEFAULT_SEEK_PRE_ROLL_SAMPLES);
        setupData.format = Format.createAudioSampleFormat(null, MimeTypes.AUDIO_OPUS, null, -1, -1, i11, 48000, arrayList, null, 0, null);
        this.headerRead = true;
        return true;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.StreamReader
    protected void reset(boolean z10) {
        super.reset(z10);
        if (z10) {
            this.headerRead = false;
        }
    }
}
