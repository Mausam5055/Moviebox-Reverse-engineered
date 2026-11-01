package com.bumptech.glide.util;

import androidx.annotation.NonNull;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class MarkEnforcingInputStream extends FilterInputStream {
    private static final int END_OF_STREAM = -1;
    private static final int UNSET = Integer.MIN_VALUE;
    private int availableBytes;

    public MarkEnforcingInputStream(@NonNull InputStream inputStream) {
        super(inputStream);
        this.availableBytes = Integer.MIN_VALUE;
    }

    private long getBytesToRead(long j11) {
        int i11 = this.availableBytes;
        if (i11 == 0) {
            return -1L;
        }
        return (i11 == Integer.MIN_VALUE || j11 <= ((long) i11)) ? j11 : i11;
    }

    private void updateAvailableBytesAfterRead(long j11) {
        int i11 = this.availableBytes;
        if (i11 == Integer.MIN_VALUE || j11 == -1) {
            return;
        }
        this.availableBytes = (int) (((long) i11) - j11);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        int i11 = this.availableBytes;
        return i11 == Integer.MIN_VALUE ? super.available() : Math.min(i11, super.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i11) {
        super.mark(i11);
        this.availableBytes = i11;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (getBytesToRead(1L) == -1) {
            return -1;
        }
        int i11 = super.read();
        updateAvailableBytesAfterRead(1L);
        return i11;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(@NonNull byte[] bArr, int i11, int i12) throws IOException {
        int bytesToRead = (int) getBytesToRead(i12);
        if (bytesToRead == -1) {
            return -1;
        }
        int i13 = super.read(bArr, i11, bytesToRead);
        updateAvailableBytesAfterRead(i13);
        return i13;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        super.reset();
        this.availableBytes = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j11) throws IOException {
        long bytesToRead = getBytesToRead(j11);
        if (bytesToRead == -1) {
            return 0L;
        }
        long jSkip = super.skip(bytesToRead);
        updateAvailableBytesAfterRead(jSkip);
        return jSkip;
    }
}
