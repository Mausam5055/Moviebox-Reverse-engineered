package androidx.media3.exoplayer.source.preload;

import androidx.annotation.Nullable;
import androidx.media3.common.t;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class PreloadException extends Exception {
    public final t mediaItem;

    public PreloadException(t tVar, @Nullable String str, @Nullable Throwable th2) {
        super(str, th2);
        this.mediaItem = tVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0033, code lost:
    
        if (r3 == null) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean errorInfoEquals(@Nullable PreloadException preloadException) {
        if (this == preloadException) {
            return true;
        }
        if (preloadException != null) {
            Throwable cause = getCause();
            Throwable cause2 = preloadException.getCause();
            if (cause == null || cause2 == null) {
                if (cause == null) {
                }
            } else if (!Objects.equals(cause.getMessage(), cause2.getMessage()) || !cause.getClass().equals(cause2.getClass())) {
                return false;
            }
            return Objects.equals(this.mediaItem, preloadException.mediaItem) && Objects.equals(getMessage(), preloadException.getMessage());
        }
        return false;
    }
}
