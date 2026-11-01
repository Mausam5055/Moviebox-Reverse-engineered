package org.apache.commons.compress.archivers.zip;

import java.util.zip.CRC32;
import java.util.zip.ZipException;
import org.apache.tools.zip.UnixStat;

/* JADX INFO: loaded from: classes7.dex */
public class b implements t, Cloneable {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final ZipShort f71126g = new ZipShort(30062);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f71127a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f71128b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f71129c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f71130d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f71131e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CRC32 f71132f = new CRC32();

    public String a() {
        return this.f71130d;
    }

    protected int b(int i11) {
        int i12;
        if (e()) {
            i12 = UnixStat.LINK_FLAG;
        } else {
            i12 = c() ? 16384 : 32768;
        }
        return (i11 & UnixStat.PERM_MASK) | i12;
    }

    public boolean c() {
        return this.f71131e && !e();
    }

    public Object clone() {
        try {
            b bVar = (b) super.clone();
            bVar.f71132f = new CRC32();
            return bVar;
        } catch (CloneNotSupportedException e11) {
            throw new RuntimeException(e11);
        }
    }

    public boolean e() {
        return a().length() != 0;
    }

    public void f(boolean z10) {
        this.f71131e = z10;
        this.f71127a = b(this.f71127a);
    }

    public void g(int i11) {
        this.f71127a = b(i11);
    }

    @Override // org.apache.commons.compress.archivers.zip.t
    public ZipShort getHeaderId() {
        return f71126g;
    }

    @Override // org.apache.commons.compress.archivers.zip.t
    public void parseFromCentralDirectoryData(byte[] bArr, int i11, int i12) throws ZipException {
        parseFromLocalFileData(bArr, i11, i12);
    }

    @Override // org.apache.commons.compress.archivers.zip.t
    public void parseFromLocalFileData(byte[] bArr, int i11, int i12) throws ZipException {
        long value = ZipLong.getValue(bArr, i11);
        int i13 = i12 - 4;
        byte[] bArr2 = new byte[i13];
        System.arraycopy(bArr, i11 + 4, bArr2, 0, i13);
        this.f71132f.reset();
        this.f71132f.update(bArr2);
        long value2 = this.f71132f.getValue();
        if (value != value2) {
            throw new ZipException("Bad CRC checksum, expected " + Long.toHexString(value) + " instead of " + Long.toHexString(value2));
        }
        int value3 = ZipShort.getValue(bArr2, 0);
        int value4 = (int) ZipLong.getValue(bArr2, 2);
        byte[] bArr3 = new byte[value4];
        this.f71128b = ZipShort.getValue(bArr2, 6);
        this.f71129c = ZipShort.getValue(bArr2, 8);
        if (value4 == 0) {
            this.f71130d = "";
        } else {
            if (value4 > i12 - 14) {
                throw new ZipException("Bad symbolic link name length " + value4 + " in ASI extra field");
            }
            System.arraycopy(bArr2, 10, bArr3, 0, value4);
            this.f71130d = new String(bArr3);
        }
        f((value3 & 16384) != 0);
        g(value3);
    }
}
