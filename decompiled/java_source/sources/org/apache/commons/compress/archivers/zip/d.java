package org.apache.commons.compress.archivers.zip;

import java.util.zip.ZipException;

/* JADX INFO: loaded from: classes7.dex */
public final class d implements t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ZipShort f71138a = new ZipShort(51966);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ZipShort f71139b = new ZipShort(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final byte[] f71140c = new byte[0];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final d f71141d = new d();

    @Override // org.apache.commons.compress.archivers.zip.t
    public ZipShort getHeaderId() {
        return f71138a;
    }

    @Override // org.apache.commons.compress.archivers.zip.t
    public void parseFromCentralDirectoryData(byte[] bArr, int i11, int i12) throws ZipException {
        parseFromLocalFileData(bArr, i11, i12);
    }

    @Override // org.apache.commons.compress.archivers.zip.t
    public void parseFromLocalFileData(byte[] bArr, int i11, int i12) throws ZipException {
        if (i12 != 0) {
            throw new ZipException("JarMarker doesn't expect any data");
        }
    }
}
