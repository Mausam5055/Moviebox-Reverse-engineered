package org.apache.commons.compress.archivers.zip;

import java.util.Arrays;
import java.util.zip.ZipException;

/* JADX INFO: loaded from: classes7.dex */
public class o extends PKWareExtraHeader {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f71169d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private PKWareExtraHeader.EncryptionAlgorithm f71170e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f71171f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f71172g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f71173h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private PKWareExtraHeader.HashAlgorithm f71174i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f71175j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private byte[] f71176k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private byte[] f71177l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private byte[] f71178m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private byte[] f71179n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private byte[] f71180o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private byte[] f71181p;

    public o() {
        super(new ZipShort(23));
    }

    private void d(String str, int i11, int i12, int i13) throws ZipException {
        if (i12 + i11 <= i13) {
            return;
        }
        throw new ZipException("Invalid X0017_StrongEncryptionHeader: " + str + " " + i11 + " doesn't fit into " + i13 + " bytes of data at position " + i12);
    }

    public void e(byte[] bArr, int i11, int i12) throws ZipException {
        a(12, i12);
        this.f71169d = ZipShort.getValue(bArr, i11);
        this.f71170e = PKWareExtraHeader.EncryptionAlgorithm.getAlgorithmByCode(ZipShort.getValue(bArr, i11 + 2));
        this.f71171f = ZipShort.getValue(bArr, i11 + 4);
        this.f71172g = ZipShort.getValue(bArr, i11 + 6);
        long value = ZipLong.getValue(bArr, i11 + 8);
        this.f71173h = value;
        if (value > 0) {
            a(16, i12);
            this.f71174i = PKWareExtraHeader.HashAlgorithm.getAlgorithmByCode(ZipShort.getValue(bArr, i11 + 12));
            this.f71175j = ZipShort.getValue(bArr, i11 + 14);
            for (long j11 = 0; j11 < this.f71173h; j11++) {
                for (int i13 = 0; i13 < this.f71175j; i13++) {
                }
            }
        }
    }

    public void f(byte[] bArr, int i11, int i12) throws ZipException {
        a(4, i12);
        int value = ZipShort.getValue(bArr, i11);
        d("ivSize", value, 4, i12);
        this.f71176k = Arrays.copyOfRange(bArr, i11 + 4, value);
        int i13 = value + 16;
        a(i13, i12);
        int i14 = i11 + value;
        this.f71169d = ZipShort.getValue(bArr, i14 + 6);
        this.f71170e = PKWareExtraHeader.EncryptionAlgorithm.getAlgorithmByCode(ZipShort.getValue(bArr, i14 + 8));
        this.f71171f = ZipShort.getValue(bArr, i14 + 10);
        this.f71172g = ZipShort.getValue(bArr, i14 + 12);
        int value2 = ZipShort.getValue(bArr, i14 + 14);
        d("erdSize", value2, i13, i12);
        int i15 = i14 + 16;
        this.f71177l = Arrays.copyOfRange(bArr, i15, value2);
        int i16 = value + 20 + value2;
        a(i16, i12);
        long value3 = ZipLong.getValue(bArr, i15 + value2);
        this.f71173h = value3;
        if (value3 == 0) {
            a(i16 + 2, i12);
            int value4 = ZipShort.getValue(bArr, i14 + 20 + value2);
            d("vSize", value4, value + 22 + value2, i12);
            if (value4 >= 4) {
                int i17 = i14 + 22 + value2;
                this.f71180o = Arrays.copyOfRange(bArr, i17, value4 - 4);
                this.f71181p = Arrays.copyOfRange(bArr, (i17 + value4) - 4, 4);
                return;
            } else {
                throw new ZipException("Invalid X0017_StrongEncryptionHeader: vSize " + value4 + " is too small to hold CRC");
            }
        }
        a(i16 + 6, i12);
        this.f71174i = PKWareExtraHeader.HashAlgorithm.getAlgorithmByCode(ZipShort.getValue(bArr, i14 + 20 + value2));
        int i18 = i14 + 22 + value2;
        this.f71175j = ZipShort.getValue(bArr, i18);
        int i19 = i14 + 24 + value2;
        int value5 = ZipShort.getValue(bArr, i19);
        int i20 = this.f71175j;
        this.f71178m = new byte[i20];
        if (value5 < i20) {
            throw new ZipException("Invalid X0017_StrongEncryptionHeader: resize " + value5 + " is too small to hold hashSize" + this.f71175j);
        }
        this.f71179n = new byte[value5 - i20];
        d("resize", value5, value + 24 + value2, i12);
        System.arraycopy(bArr, i19, this.f71178m, 0, this.f71175j);
        int i21 = this.f71175j;
        System.arraycopy(bArr, i19 + i21, this.f71179n, 0, value5 - i21);
        a(value + 26 + value2 + value5 + 2, i12);
        int value6 = ZipShort.getValue(bArr, i14 + 26 + value2 + value5);
        if (value6 < 4) {
            throw new ZipException("Invalid X0017_StrongEncryptionHeader: vSize " + value6 + " is too small to hold CRC");
        }
        d("vSize", value6, value + 22 + value2 + value5, i12);
        int i22 = value6 - 4;
        byte[] bArr2 = new byte[i22];
        this.f71180o = bArr2;
        this.f71181p = new byte[4];
        int i23 = i18 + value5;
        System.arraycopy(bArr, i23, bArr2, 0, i22);
        System.arraycopy(bArr, (i23 + value6) - 4, this.f71181p, 0, 4);
    }

    @Override // org.apache.commons.compress.archivers.zip.PKWareExtraHeader, org.apache.commons.compress.archivers.zip.t
    public void parseFromCentralDirectoryData(byte[] bArr, int i11, int i12) throws ZipException {
        super.parseFromCentralDirectoryData(bArr, i11, i12);
        e(bArr, i11, i12);
    }

    @Override // org.apache.commons.compress.archivers.zip.PKWareExtraHeader, org.apache.commons.compress.archivers.zip.t
    public void parseFromLocalFileData(byte[] bArr, int i11, int i12) throws ZipException {
        super.parseFromLocalFileData(bArr, i11, i12);
        f(bArr, i11, i12);
    }
}
