package org.apache.commons.compress.compressors.snappy;

/* JADX INFO: loaded from: classes7.dex */
public enum FramedSnappyDialect {
    STANDARD(true, true),
    IWORK_ARCHIVE(false, false);

    private final boolean checksumWithCompressedChunks;
    private final boolean streamIdentifier;

    FramedSnappyDialect(boolean z10, boolean z11) {
        this.streamIdentifier = z10;
        this.checksumWithCompressedChunks = z11;
    }

    boolean hasStreamIdentifier() {
        return this.streamIdentifier;
    }

    boolean usesChecksumWithCompressedChunks() {
        return this.checksumWithCompressedChunks;
    }
}
