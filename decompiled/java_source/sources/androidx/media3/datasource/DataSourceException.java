package androidx.media3.datasource;

import androidx.annotation.Nullable;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class DataSourceException extends IOException {

    @Deprecated
    public static final int POSITION_OUT_OF_RANGE = 2008;
    public final int reason;

    public DataSourceException(int i11) {
        this.reason = i11;
    }

    public DataSourceException(@Nullable String str, int i11) {
        super(str);
        this.reason = i11;
    }

    public DataSourceException(@Nullable String str, @Nullable Throwable th2, int i11) {
        super(str, th2);
        this.reason = i11;
    }

    public DataSourceException(@Nullable Throwable th2, int i11) {
        super(th2);
        this.reason = i11;
    }

    public static boolean isCausedByPositionOutOfRange(IOException iOException) {
        for (Throwable cause = iOException; cause != null; cause = cause.getCause()) {
            if ((cause instanceof DataSourceException) && ((DataSourceException) cause).reason == 2008) {
                return true;
            }
        }
        return false;
    }
}
