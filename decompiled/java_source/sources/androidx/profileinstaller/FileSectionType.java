package androidx.profileinstaller;

/* JADX INFO: loaded from: classes.dex */
enum FileSectionType {
    DEX_FILES(0),
    EXTRA_DESCRIPTORS(1),
    CLASSES(2),
    METHODS(3),
    AGGREGATION_COUNT(4);

    private final long mValue;

    FileSectionType(long j11) {
        this.mValue = j11;
    }

    static FileSectionType fromValue(long j11) {
        FileSectionType[] fileSectionTypeArrValues = values();
        for (int i11 = 0; i11 < fileSectionTypeArrValues.length; i11++) {
            if (fileSectionTypeArrValues[i11].getValue() == j11) {
                return fileSectionTypeArrValues[i11];
            }
        }
        throw new IllegalArgumentException("Unsupported FileSection Type " + j11);
    }

    public long getValue() {
        return this.mValue;
    }
}
