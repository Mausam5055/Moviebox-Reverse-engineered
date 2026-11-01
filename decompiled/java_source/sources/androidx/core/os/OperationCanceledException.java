package androidx.core.os;

/* JADX INFO: loaded from: classes.dex */
public class OperationCanceledException extends RuntimeException {
    public OperationCanceledException() {
        this(null);
    }

    public OperationCanceledException(String str) {
        super(androidx.core.util.d.e(str, "The operation has been canceled."));
    }
}
