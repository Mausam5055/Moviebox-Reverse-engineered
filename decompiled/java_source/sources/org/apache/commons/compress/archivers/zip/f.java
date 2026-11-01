package org.apache.commons.compress.archivers.zip;

import java.util.zip.ZipException;

/* JADX INFO: loaded from: classes7.dex */
public class f implements t {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final ZipShort f71147d = new ZipShort(41246);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private short f71148a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f71149b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f71150c = 0;

    @Override // org.apache.commons.compress.archivers.zip.t
    public ZipShort getHeaderId() {
        return f71147d;
    }

    @Override // org.apache.commons.compress.archivers.zip.t
    public void parseFromCentralDirectoryData(byte[] bArr, int i11, int i12) throws ZipException {
        if (i12 >= 2) {
            int value = ZipShort.getValue(bArr, i11);
            this.f71148a = (short) (value & 32767);
            this.f71149b = (value & 32768) != 0;
        } else {
            throw new ZipException("Too short content for ResourceAlignmentExtraField (0xa11e): " + i12);
        }
    }

    @Override // org.apache.commons.compress.archivers.zip.t
    public void parseFromLocalFileData(byte[] bArr, int i11, int i12) throws ZipException {
        parseFromCentralDirectoryData(bArr, i11, i12);
        this.f71150c = i12 - 2;
    }
}
