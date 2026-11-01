package com.mbridge.msdk.playercommon.exoplayer2.extractor;

import com.mbridge.msdk.playercommon.exoplayer2.Format;
import com.mbridge.msdk.playercommon.exoplayer2.util.ParsableByteArray;
import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final class DummyTrackOutput implements TrackOutput {
    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.TrackOutput
    public void format(Format format) {
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.TrackOutput
    public int sampleData(ExtractorInput extractorInput, int i11, boolean z10) throws InterruptedException, IOException {
        int iSkip = extractorInput.skip(i11);
        if (iSkip != -1) {
            return iSkip;
        }
        if (z10) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.TrackOutput
    public void sampleData(ParsableByteArray parsableByteArray, int i11) {
        parsableByteArray.skipBytes(i11);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.TrackOutput
    public void sampleMetadata(long j11, int i11, int i12, int i13, TrackOutput.CryptoData cryptoData) {
    }
}
