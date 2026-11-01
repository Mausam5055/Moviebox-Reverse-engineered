package com.mbridge.msdk.playercommon.exoplayer2.upstream.crypto;

import com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSink;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSpec;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final class AesCipherDataSink implements DataSink {
    private AesFlushingCipher cipher;
    private final byte[] scratch;
    private final byte[] secretKey;
    private final DataSink wrappedDataSink;

    public AesCipherDataSink(byte[] bArr, DataSink dataSink) {
        this(bArr, dataSink, null);
    }

    public AesCipherDataSink(byte[] bArr, DataSink dataSink, byte[] bArr2) {
        this.wrappedDataSink = dataSink;
        this.secretKey = bArr;
        this.scratch = bArr2;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSink
    public void close() throws IOException {
        this.cipher = null;
        this.wrappedDataSink.close();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSink
    public void open(DataSpec dataSpec) throws IOException {
        this.wrappedDataSink.open(dataSpec);
        this.cipher = new AesFlushingCipher(1, this.secretKey, CryptoUtil.getFNV64Hash(dataSpec.key), dataSpec.absoluteStreamPosition);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSink
    public void write(byte[] bArr, int i11, int i12) throws IOException {
        if (this.scratch == null) {
            this.cipher.updateInPlace(bArr, i11, i12);
            this.wrappedDataSink.write(bArr, i11, i12);
            return;
        }
        int i13 = 0;
        while (i13 < i12) {
            int iMin = Math.min(i12 - i13, this.scratch.length);
            this.cipher.update(bArr, i11 + i13, iMin, this.scratch, 0);
            this.wrappedDataSink.write(this.scratch, 0, iMin);
            i13 += iMin;
        }
    }
}
