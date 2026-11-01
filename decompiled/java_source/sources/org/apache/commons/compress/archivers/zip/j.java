package org.apache.commons.compress.archivers.zip;

import java.util.Arrays;

/* JADX INFO: loaded from: classes7.dex */
public class j implements t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ZipShort f71156a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private byte[] f71157b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte[] f71158c;

    public void a(byte[] bArr) {
        this.f71158c = u.c(bArr);
    }

    public void b(ZipShort zipShort) {
        this.f71156a = zipShort;
    }

    public void c(byte[] bArr) {
        this.f71157b = u.c(bArr);
    }

    @Override // org.apache.commons.compress.archivers.zip.t
    public ZipShort getHeaderId() {
        return this.f71156a;
    }

    @Override // org.apache.commons.compress.archivers.zip.t
    public void parseFromCentralDirectoryData(byte[] bArr, int i11, int i12) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i11, i12 + i11);
        a(bArrCopyOfRange);
        if (this.f71157b == null) {
            c(bArrCopyOfRange);
        }
    }

    @Override // org.apache.commons.compress.archivers.zip.t
    public void parseFromLocalFileData(byte[] bArr, int i11, int i12) {
        c(Arrays.copyOfRange(bArr, i11, i12 + i11));
    }
}
