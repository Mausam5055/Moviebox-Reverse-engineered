package org.apache.commons.compress.archivers.zip;

import java.util.Arrays;

/* JADX INFO: loaded from: classes7.dex */
public final class i implements t {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final ZipShort f71153c = new ZipShort(44225);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte[] f71154a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private byte[] f71155b;

    @Override // org.apache.commons.compress.archivers.zip.t
    public ZipShort getHeaderId() {
        return f71153c;
    }

    @Override // org.apache.commons.compress.archivers.zip.t
    public void parseFromCentralDirectoryData(byte[] bArr, int i11, int i12) {
        this.f71155b = Arrays.copyOfRange(bArr, i11, i11 + i12);
        if (this.f71154a == null) {
            parseFromLocalFileData(bArr, i11, i12);
        }
    }

    @Override // org.apache.commons.compress.archivers.zip.t
    public void parseFromLocalFileData(byte[] bArr, int i11, int i12) {
        this.f71154a = Arrays.copyOfRange(bArr, i11, i12 + i11);
    }
}
