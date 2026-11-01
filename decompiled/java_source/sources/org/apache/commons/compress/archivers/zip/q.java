package org.apache.commons.compress.archivers.zip;

import java.util.zip.ZipException;

/* JADX INFO: loaded from: classes7.dex */
public class q implements t {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final ZipShort f71182f = new ZipShort(1);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final byte[] f71183g = new byte[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ZipEightByteInteger f71184a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ZipEightByteInteger f71185b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ZipEightByteInteger f71186c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ZipLong f71187d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private byte[] f71188e;

    @Override // org.apache.commons.compress.archivers.zip.t
    public ZipShort getHeaderId() {
        return f71182f;
    }

    @Override // org.apache.commons.compress.archivers.zip.t
    public void parseFromCentralDirectoryData(byte[] bArr, int i11, int i12) throws ZipException {
        byte[] bArr2 = new byte[i12];
        this.f71188e = bArr2;
        System.arraycopy(bArr, i11, bArr2, 0, i12);
        if (i12 >= 28) {
            parseFromLocalFileData(bArr, i11, i12);
            return;
        }
        if (i12 == 24) {
            this.f71184a = new ZipEightByteInteger(bArr, i11);
            this.f71185b = new ZipEightByteInteger(bArr, i11 + 8);
            this.f71186c = new ZipEightByteInteger(bArr, i11 + 16);
        } else if (i12 % 8 == 4) {
            this.f71187d = new ZipLong(bArr, (i11 + i12) - 4);
        }
    }

    @Override // org.apache.commons.compress.archivers.zip.t
    public void parseFromLocalFileData(byte[] bArr, int i11, int i12) throws ZipException {
        if (i12 == 0) {
            return;
        }
        if (i12 < 16) {
            throw new ZipException("Zip64 extended information must contain both size values in the local file header.");
        }
        this.f71184a = new ZipEightByteInteger(bArr, i11);
        this.f71185b = new ZipEightByteInteger(bArr, i11 + 8);
        int i13 = i11 + 16;
        int i14 = i12 - 16;
        if (i14 >= 8) {
            this.f71186c = new ZipEightByteInteger(bArr, i13);
            i13 = i11 + 24;
            i14 = i12 - 24;
        }
        if (i14 >= 4) {
            this.f71187d = new ZipLong(bArr, i13);
        }
    }
}
