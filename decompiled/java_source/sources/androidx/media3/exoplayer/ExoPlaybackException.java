package androidx.media3.exoplayer;

import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import androidx.media3.common.PlaybackException;
import java.io.IOException;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class ExoPlaybackException extends PlaybackException {
    public static final int TYPE_REMOTE = 3;
    public static final int TYPE_RENDERER = 1;
    public static final int TYPE_SOURCE = 0;
    public static final int TYPE_UNEXPECTED = 2;
    final boolean isRecoverable;

    @Nullable
    public final androidx.media3.exoplayer.source.r.b mediaPeriodId;

    @Nullable
    public final androidx.media3.common.r rendererFormat;
    public final int rendererFormatSupport;
    public final int rendererIndex;

    @Nullable
    public final String rendererName;
    public final int type;

    private ExoPlaybackException(int i11, Throwable th2, int i12) {
        this(i11, th2, null, i12, null, -1, null, 4, false);
    }

    private ExoPlaybackException(int i11, @Nullable Throwable th2, @Nullable String str, int i12, @Nullable String str2, int i13, @Nullable androidx.media3.common.r rVar, int i14, boolean z10) {
        this(deriveMessage(i11, str, str2, i13, rVar, i14), th2, i12, i11, str2, i13, rVar, i14, null, SystemClock.elapsedRealtime(), z10);
    }

    private ExoPlaybackException(String str, @Nullable Throwable th2, int i11, int i12, @Nullable String str2, int i13, @Nullable androidx.media3.common.r rVar, int i14, @Nullable androidx.media3.exoplayer.source.r.b bVar, long j11, boolean z10) {
        super(str, th2, i11, Bundle.EMPTY, j11);
        androidx.media3.common.util.a.a(!z10 || i12 == 1);
        androidx.media3.common.util.a.a(th2 != null || i12 == 3);
        this.type = i12;
        this.rendererName = str2;
        this.rendererIndex = i13;
        this.rendererFormat = rVar;
        this.rendererFormatSupport = i14;
        this.mediaPeriodId = bVar;
        this.isRecoverable = z10;
    }

    public static ExoPlaybackException createForRemote(String str) {
        return new ExoPlaybackException(3, null, str, 1001, null, -1, null, 4, false);
    }

    public static ExoPlaybackException createForRenderer(Throwable th2, String str, int i11, @Nullable androidx.media3.common.r rVar, int i12, boolean z10, int i13) {
        return new ExoPlaybackException(1, th2, null, i13, str, i11, rVar, rVar == null ? 4 : i12, z10);
    }

    public static ExoPlaybackException createForSource(IOException iOException, int i11) {
        return new ExoPlaybackException(0, iOException, i11);
    }

    @Deprecated
    public static ExoPlaybackException createForUnexpected(RuntimeException runtimeException) {
        return createForUnexpected(runtimeException, 1000);
    }

    public static ExoPlaybackException createForUnexpected(RuntimeException runtimeException, int i11) {
        return new ExoPlaybackException(2, runtimeException, i11);
    }

    private static String deriveMessage(int i11, @Nullable String str, @Nullable String str2, int i12, @Nullable androidx.media3.common.r rVar, int i13) {
        String str3;
        if (i11 == 0) {
            str3 = "Source error";
        } else if (i11 != 1) {
            str3 = i11 != 3 ? "Unexpected runtime error" : "Remote error";
        } else {
            str3 = str2 + " error, index=" + i12 + ", format=" + rVar + ", format_supported=" + androidx.media3.common.util.a1.d0(i13);
        }
        if (TextUtils.isEmpty(str)) {
            return str3;
        }
        return str3 + ": " + str;
    }

    @CheckResult
    ExoPlaybackException copyWithMediaPeriodId(@Nullable androidx.media3.exoplayer.source.r.b bVar) {
        return new ExoPlaybackException((String) androidx.media3.common.util.a1.i(getMessage()), getCause(), this.errorCode, this.type, this.rendererName, this.rendererIndex, this.rendererFormat, this.rendererFormatSupport, bVar, this.timestampMs, this.isRecoverable);
    }

    @Override // androidx.media3.common.PlaybackException
    public boolean errorInfoEquals(@Nullable PlaybackException playbackException) {
        if (!super.errorInfoEquals(playbackException)) {
            return false;
        }
        ExoPlaybackException exoPlaybackException = (ExoPlaybackException) androidx.media3.common.util.a1.i(playbackException);
        return this.type == exoPlaybackException.type && Objects.equals(this.rendererName, exoPlaybackException.rendererName) && this.rendererIndex == exoPlaybackException.rendererIndex && Objects.equals(this.rendererFormat, exoPlaybackException.rendererFormat) && this.rendererFormatSupport == exoPlaybackException.rendererFormatSupport && Objects.equals(this.mediaPeriodId, exoPlaybackException.mediaPeriodId) && this.isRecoverable == exoPlaybackException.isRecoverable;
    }

    public Exception getRendererException() {
        androidx.media3.common.util.a.g(this.type == 1);
        return (Exception) androidx.media3.common.util.a.e(getCause());
    }

    public IOException getSourceException() {
        androidx.media3.common.util.a.g(this.type == 0);
        return (IOException) androidx.media3.common.util.a.e(getCause());
    }

    public RuntimeException getUnexpectedException() {
        androidx.media3.common.util.a.g(this.type == 2);
        return (RuntimeException) androidx.media3.common.util.a.e(getCause());
    }
}
