package org.apache.commons.compress.archivers.zip;

import java.util.zip.ZipException;

/* JADX INFO: loaded from: classes7.dex */
public class m extends PKWareExtraHeader {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f71165d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private PKWareExtraHeader.HashAlgorithm f71166e;

    public m() {
        super(new ZipShort(21));
    }

    @Override // org.apache.commons.compress.archivers.zip.PKWareExtraHeader, org.apache.commons.compress.archivers.zip.t
    public void parseFromCentralDirectoryData(byte[] bArr, int i11, int i12) throws ZipException {
        a(4, i12);
        super.parseFromCentralDirectoryData(bArr, i11, i12);
        this.f71165d = ZipShort.getValue(bArr, i11);
        this.f71166e = PKWareExtraHeader.HashAlgorithm.getAlgorithmByCode(ZipShort.getValue(bArr, i11 + 2));
    }
}
