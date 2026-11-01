package org.apache.commons.compress.archivers.dump;

/* JADX INFO: loaded from: classes7.dex */
public class InvalidFormatException extends DumpArchiveException {
    private static final long serialVersionUID = 1;
    protected long offset;

    public InvalidFormatException() {
        super("there was an error decoding a tape segment");
    }

    public InvalidFormatException(long j11) {
        super("there was an error decoding a tape segment header at offset " + j11 + ".");
        this.offset = j11;
    }

    public long getOffset() {
        return this.offset;
    }
}
