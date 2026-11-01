package com.mbridge.msdk.playercommon.exoplayer2.extractor.mp4;

import com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorInput;
import com.mbridge.msdk.playercommon.exoplayer2.util.ParsableByteArray;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
final class TrackFragment {
    public long atomPosition;
    public long auxiliaryDataPosition;
    public long dataPosition;
    public boolean definesEncryptionData;
    public DefaultSampleValues header;
    public long nextFragmentDecodeTime;
    public int[] sampleCompositionTimeOffsetTable;
    public int sampleCount;
    public long[] sampleDecodingTimeTable;
    public ParsableByteArray sampleEncryptionData;
    public int sampleEncryptionDataLength;
    public boolean sampleEncryptionDataNeedsFill;
    public boolean[] sampleHasSubsampleEncryptionTable;
    public boolean[] sampleIsSyncFrameTable;
    public int[] sampleSizeTable;
    public TrackEncryptionBox trackEncryptionBox;
    public int trunCount;
    public long[] trunDataPosition;
    public int[] trunLength;

    TrackFragment() {
    }

    public void fillEncryptionData(ExtractorInput extractorInput) throws InterruptedException, IOException {
        extractorInput.readFully(this.sampleEncryptionData.data, 0, this.sampleEncryptionDataLength);
        this.sampleEncryptionData.setPosition(0);
        this.sampleEncryptionDataNeedsFill = false;
    }

    public void fillEncryptionData(ParsableByteArray parsableByteArray) {
        parsableByteArray.readBytes(this.sampleEncryptionData.data, 0, this.sampleEncryptionDataLength);
        this.sampleEncryptionData.setPosition(0);
        this.sampleEncryptionDataNeedsFill = false;
    }

    public long getSamplePresentationTime(int i11) {
        return this.sampleDecodingTimeTable[i11] + ((long) this.sampleCompositionTimeOffsetTable[i11]);
    }

    public void initEncryptionData(int i11) {
        ParsableByteArray parsableByteArray = this.sampleEncryptionData;
        if (parsableByteArray == null || parsableByteArray.limit() < i11) {
            this.sampleEncryptionData = new ParsableByteArray(i11);
        }
        this.sampleEncryptionDataLength = i11;
        this.definesEncryptionData = true;
        this.sampleEncryptionDataNeedsFill = true;
    }

    public void initTables(int i11, int i12) {
        this.trunCount = i11;
        this.sampleCount = i12;
        int[] iArr = this.trunLength;
        if (iArr == null || iArr.length < i11) {
            this.trunDataPosition = new long[i11];
            this.trunLength = new int[i11];
        }
        int[] iArr2 = this.sampleSizeTable;
        if (iArr2 == null || iArr2.length < i12) {
            int i13 = (i12 * Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE) / 100;
            this.sampleSizeTable = new int[i13];
            this.sampleCompositionTimeOffsetTable = new int[i13];
            this.sampleDecodingTimeTable = new long[i13];
            this.sampleIsSyncFrameTable = new boolean[i13];
            this.sampleHasSubsampleEncryptionTable = new boolean[i13];
        }
    }

    public void reset() {
        this.trunCount = 0;
        this.nextFragmentDecodeTime = 0L;
        this.definesEncryptionData = false;
        this.sampleEncryptionDataNeedsFill = false;
        this.trackEncryptionBox = null;
    }
}
