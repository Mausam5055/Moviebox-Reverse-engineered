package org.apache.commons.compress.archivers.dump;

/* JADX INFO: loaded from: classes7.dex */
public enum DumpArchiveConstants$COMPRESSION_TYPE {
    ZLIB(0),
    BZLIB(1),
    LZO(2);

    int code;

    DumpArchiveConstants$COMPRESSION_TYPE(int i11) {
        this.code = i11;
    }

    public static DumpArchiveConstants$COMPRESSION_TYPE find(int i11) {
        for (DumpArchiveConstants$COMPRESSION_TYPE dumpArchiveConstants$COMPRESSION_TYPE : values()) {
            if (dumpArchiveConstants$COMPRESSION_TYPE.code == i11) {
                return dumpArchiveConstants$COMPRESSION_TYPE;
            }
        }
        return null;
    }
}
