package org.apache.commons.compress.archivers.zip;

import java.util.zip.ZipException;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a implements t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f71123a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private byte[] f71124b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte[] f71125c;

    protected a() {
    }

    @Override // org.apache.commons.compress.archivers.zip.t
    public void parseFromCentralDirectoryData(byte[] bArr, int i11, int i12) throws ZipException {
        parseFromLocalFileData(bArr, i11, i12);
    }

    @Override // org.apache.commons.compress.archivers.zip.t
    public void parseFromLocalFileData(byte[] bArr, int i11, int i12) throws ZipException {
        if (i12 < 5) {
            throw new ZipException("UniCode path extra data must have at least 5 bytes.");
        }
        byte b11 = bArr[i11];
        if (b11 != 1) {
            throw new ZipException("Unsupported version [" + ((int) b11) + "] for UniCode path extra data.");
        }
        this.f71123a = ZipLong.getValue(bArr, i11 + 1);
        int i13 = i12 - 5;
        byte[] bArr2 = new byte[i13];
        this.f71124b = bArr2;
        System.arraycopy(bArr, i11 + 5, bArr2, 0, i13);
        this.f71125c = null;
    }
}
