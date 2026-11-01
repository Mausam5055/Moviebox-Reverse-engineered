package org.apache.commons.compress.archivers.dump;

import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public class DumpArchiveException extends IOException {
    private static final long serialVersionUID = 1;

    public DumpArchiveException() {
    }

    public DumpArchiveException(String str) {
        super(str);
    }

    public DumpArchiveException(String str, Throwable th2) {
        super(str);
        initCause(th2);
    }

    public DumpArchiveException(Throwable th2) {
        initCause(th2);
    }
}
