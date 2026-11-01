package androidx.media3.exoplayer;

/* JADX INFO: loaded from: classes2.dex */
public final class ExoTimeoutException extends RuntimeException {
    public static final int TIMEOUT_OPERATION_DETACH_SURFACE = 3;
    public static final int TIMEOUT_OPERATION_RELEASE = 1;
    public static final int TIMEOUT_OPERATION_SET_FOREGROUND_MODE = 2;
    public static final int TIMEOUT_OPERATION_UNDEFINED = 0;
    public final int timeoutOperation;

    public ExoTimeoutException(int i11) {
        super(getErrorMessage(i11));
        this.timeoutOperation = i11;
    }

    private static String getErrorMessage(int i11) {
        if (i11 == 1) {
            return "Player release timed out.";
        }
        if (i11 != 2) {
            return i11 != 3 ? "Undefined timeout." : "Detaching surface timed out.";
        }
        return "Setting foreground mode timed out.";
    }
}
