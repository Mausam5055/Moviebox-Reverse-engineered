package kotlin.io.path;

import java.nio.file.FileSystemLoopException;

/* JADX INFO: loaded from: classes7.dex */
public abstract /* synthetic */ class k {
    public static /* synthetic */ FileSystemLoopException a(String str) {
        return new FileSystemLoopException(str);
    }
}
