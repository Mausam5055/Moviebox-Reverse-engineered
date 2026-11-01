package org.apache.commons.compress.archivers.zip;

import java.util.Date;

/* JADX INFO: loaded from: classes7.dex */
public class k implements t {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ZipShort f71159d = new ZipShort(10);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final ZipShort f71160e = new ZipShort(1);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final ZipShort f71161f = new ZipShort(24);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ZipEightByteInteger f71162a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ZipEightByteInteger f71163b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ZipEightByteInteger f71164c;

    public k() {
        ZipEightByteInteger zipEightByteInteger = ZipEightByteInteger.ZERO;
        this.f71162a = zipEightByteInteger;
        this.f71163b = zipEightByteInteger;
        this.f71164c = zipEightByteInteger;
    }

    private void d(byte[] bArr, int i11, int i12) {
        if (i12 >= 26) {
            if (f71161f.equals(new ZipShort(bArr, i11))) {
                this.f71162a = new ZipEightByteInteger(bArr, i11 + 2);
                this.f71163b = new ZipEightByteInteger(bArr, i11 + 10);
                this.f71164c = new ZipEightByteInteger(bArr, i11 + 18);
            }
        }
    }

    private void e() {
        ZipEightByteInteger zipEightByteInteger = ZipEightByteInteger.ZERO;
        this.f71162a = zipEightByteInteger;
        this.f71163b = zipEightByteInteger;
        this.f71164c = zipEightByteInteger;
    }

    private static Date f(ZipEightByteInteger zipEightByteInteger) {
        if (zipEightByteInteger == null || ZipEightByteInteger.ZERO.equals(zipEightByteInteger)) {
            return null;
        }
        return new Date((zipEightByteInteger.getLongValue() - 116444736000000000L) / 10000);
    }

    public Date a() {
        return f(this.f71163b);
    }

    public Date b() {
        return f(this.f71164c);
    }

    public Date c() {
        return f(this.f71162a);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        ZipEightByteInteger zipEightByteInteger = this.f71162a;
        ZipEightByteInteger zipEightByteInteger2 = kVar.f71162a;
        if (zipEightByteInteger != zipEightByteInteger2 && (zipEightByteInteger == null || !zipEightByteInteger.equals(zipEightByteInteger2))) {
            return false;
        }
        ZipEightByteInteger zipEightByteInteger3 = this.f71163b;
        ZipEightByteInteger zipEightByteInteger4 = kVar.f71163b;
        if (zipEightByteInteger3 != zipEightByteInteger4 && (zipEightByteInteger3 == null || !zipEightByteInteger3.equals(zipEightByteInteger4))) {
            return false;
        }
        ZipEightByteInteger zipEightByteInteger5 = this.f71164c;
        ZipEightByteInteger zipEightByteInteger6 = kVar.f71164c;
        return zipEightByteInteger5 == zipEightByteInteger6 || (zipEightByteInteger5 != null && zipEightByteInteger5.equals(zipEightByteInteger6));
    }

    @Override // org.apache.commons.compress.archivers.zip.t
    public ZipShort getHeaderId() {
        return f71159d;
    }

    public int hashCode() {
        ZipEightByteInteger zipEightByteInteger = this.f71162a;
        int iHashCode = zipEightByteInteger != null ? (-123) ^ zipEightByteInteger.hashCode() : -123;
        ZipEightByteInteger zipEightByteInteger2 = this.f71163b;
        if (zipEightByteInteger2 != null) {
            iHashCode ^= Integer.rotateLeft(zipEightByteInteger2.hashCode(), 11);
        }
        ZipEightByteInteger zipEightByteInteger3 = this.f71164c;
        return zipEightByteInteger3 != null ? iHashCode ^ Integer.rotateLeft(zipEightByteInteger3.hashCode(), 22) : iHashCode;
    }

    @Override // org.apache.commons.compress.archivers.zip.t
    public void parseFromCentralDirectoryData(byte[] bArr, int i11, int i12) {
        e();
        parseFromLocalFileData(bArr, i11, i12);
    }

    @Override // org.apache.commons.compress.archivers.zip.t
    public void parseFromLocalFileData(byte[] bArr, int i11, int i12) {
        int i13 = i12 + i11;
        int value = i11 + 4;
        while (value + 4 <= i13) {
            ZipShort zipShort = new ZipShort(bArr, value);
            int i14 = value + 2;
            if (zipShort.equals(f71160e)) {
                d(bArr, i14, i13 - i14);
                return;
            }
            value = i14 + new ZipShort(bArr, i14).getValue() + 2;
        }
    }

    public String toString() {
        return "0x000A Zip Extra Field: Modify:[" + c() + "]  Access:[" + a() + "]  Create:[" + b() + "] ";
    }
}
