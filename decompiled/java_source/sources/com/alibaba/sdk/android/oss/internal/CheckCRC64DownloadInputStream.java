package com.alibaba.sdk.android.oss.internal;

import com.alibaba.sdk.android.oss.common.utils.OSSUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.CheckedInputStream;
import java.util.zip.Checksum;

/* JADX INFO: loaded from: classes2.dex */
public class CheckCRC64DownloadInputStream extends CheckedInputStream {
    private long mClientCRC64;
    private String mRequestId;
    private long mServerCRC64;
    private long mTotalBytesRead;
    private long mTotalLength;

    public CheckCRC64DownloadInputStream(InputStream inputStream, Checksum checksum, long j11, long j12, String str) {
        super(inputStream, checksum);
        this.mTotalLength = j11;
        this.mServerCRC64 = j12;
        this.mRequestId = str;
    }

    private void checkCRC64(int i11) throws IOException {
        long j11 = this.mTotalBytesRead + ((long) i11);
        this.mTotalBytesRead = j11;
        if (j11 >= this.mTotalLength) {
            long value = getChecksum().getValue();
            this.mClientCRC64 = value;
            OSSUtils.checkChecksum(Long.valueOf(value), Long.valueOf(this.mServerCRC64), this.mRequestId);
        }
    }

    public long getClientCRC64() {
        return this.mClientCRC64;
    }

    @Override // java.util.zip.CheckedInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i11 = super.read();
        checkCRC64(i11);
        return i11;
    }

    @Override // java.util.zip.CheckedInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i11, int i12) throws IOException {
        int i13 = super.read(bArr, i11, i12);
        checkCRC64(i13);
        return i13;
    }
}
