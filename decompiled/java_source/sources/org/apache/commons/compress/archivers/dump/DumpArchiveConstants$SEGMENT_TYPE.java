package org.apache.commons.compress.archivers.dump;

/* JADX INFO: loaded from: classes7.dex */
public enum DumpArchiveConstants$SEGMENT_TYPE {
    TAPE(1),
    INODE(2),
    BITS(3),
    ADDR(4),
    END(5),
    CLRI(6);

    int code;

    DumpArchiveConstants$SEGMENT_TYPE(int i11) {
        this.code = i11;
    }

    public static DumpArchiveConstants$SEGMENT_TYPE find(int i11) {
        for (DumpArchiveConstants$SEGMENT_TYPE dumpArchiveConstants$SEGMENT_TYPE : values()) {
            if (dumpArchiveConstants$SEGMENT_TYPE.code == i11) {
                return dumpArchiveConstants$SEGMENT_TYPE;
            }
        }
        return null;
    }
}
