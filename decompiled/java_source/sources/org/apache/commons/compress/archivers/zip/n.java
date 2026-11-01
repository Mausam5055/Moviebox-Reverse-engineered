package org.apache.commons.compress.archivers.zip;

import java.util.zip.ZipException;

/* JADX INFO: loaded from: classes7.dex */
public class n extends PKWareExtraHeader {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f71167d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private PKWareExtraHeader.HashAlgorithm f71168e;

    public n() {
        super(new ZipShort(22));
    }

    @Override // org.apache.commons.compress.archivers.zip.PKWareExtraHeader, org.apache.commons.compress.archivers.zip.t
    public void parseFromCentralDirectoryData(byte[] bArr, int i11, int i12) throws ZipException {
        a(4, i12);
        this.f71167d = ZipShort.getValue(bArr, i11);
        this.f71168e = PKWareExtraHeader.HashAlgorithm.getAlgorithmByCode(ZipShort.getValue(bArr, i11 + 2));
    }
}
