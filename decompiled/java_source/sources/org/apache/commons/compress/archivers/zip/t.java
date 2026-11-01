package org.apache.commons.compress.archivers.zip;

/* JADX INFO: loaded from: classes7.dex */
public interface t {
    ZipShort getHeaderId();

    void parseFromCentralDirectoryData(byte[] bArr, int i11, int i12);

    void parseFromLocalFileData(byte[] bArr, int i11, int i12);
}
