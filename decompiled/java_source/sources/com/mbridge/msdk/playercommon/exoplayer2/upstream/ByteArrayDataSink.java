package com.mbridge.msdk.playercommon.exoplayer2.upstream;

import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final class ByteArrayDataSink implements DataSink {
    private ByteArrayOutputStream stream;

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSink
    public void close() throws IOException {
        this.stream.close();
    }

    public byte[] getData() {
        ByteArrayOutputStream byteArrayOutputStream = this.stream;
        if (byteArrayOutputStream == null) {
            return null;
        }
        return byteArrayOutputStream.toByteArray();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSink
    public void open(DataSpec dataSpec) throws IOException {
        long j11 = dataSpec.length;
        if (j11 == -1) {
            this.stream = new ByteArrayOutputStream();
        } else {
            Assertions.checkArgument(j11 <= 2147483647L);
            this.stream = new ByteArrayOutputStream((int) dataSpec.length);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSink
    public void write(byte[] bArr, int i11, int i12) throws IOException {
        this.stream.write(bArr, i11, i12);
    }
}
