package com.mbridge.msdk.playercommon.exoplayer2.extractor;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.Format;
import com.mbridge.msdk.playercommon.exoplayer2.util.ParsableByteArray;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public interface TrackOutput {

    public static final class CryptoData {
        public final int clearBlocks;
        public final int cryptoMode;
        public final int encryptedBlocks;
        public final byte[] encryptionKey;

        public CryptoData(int i11, byte[] bArr, int i12, int i13) {
            this.cryptoMode = i11;
            this.encryptionKey = bArr;
            this.encryptedBlocks = i12;
            this.clearBlocks = i13;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || CryptoData.class != obj.getClass()) {
                return false;
            }
            CryptoData cryptoData = (CryptoData) obj;
            return this.cryptoMode == cryptoData.cryptoMode && this.encryptedBlocks == cryptoData.encryptedBlocks && this.clearBlocks == cryptoData.clearBlocks && Arrays.equals(this.encryptionKey, cryptoData.encryptionKey);
        }

        public int hashCode() {
            return (((((this.cryptoMode * 31) + Arrays.hashCode(this.encryptionKey)) * 31) + this.encryptedBlocks) * 31) + this.clearBlocks;
        }
    }

    void format(Format format);

    int sampleData(ExtractorInput extractorInput, int i11, boolean z10) throws InterruptedException, IOException;

    void sampleData(ParsableByteArray parsableByteArray, int i11);

    void sampleMetadata(long j11, int i11, int i12, int i13, CryptoData cryptoData);
}
