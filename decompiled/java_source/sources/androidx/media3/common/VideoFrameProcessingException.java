package androidx.media3.common;

import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes2.dex */
public final class VideoFrameProcessingException extends Exception {
    public final long presentationTimeUs;

    public VideoFrameProcessingException(String str) {
        this(str, C.TIME_UNSET);
    }

    public VideoFrameProcessingException(String str, long j11) {
        super(str);
        this.presentationTimeUs = j11;
    }

    public VideoFrameProcessingException(String str, Throwable th2) {
        this(str, th2, C.TIME_UNSET);
    }

    public VideoFrameProcessingException(String str, Throwable th2, long j11) {
        super(str, th2);
        this.presentationTimeUs = j11;
    }

    public VideoFrameProcessingException(Throwable th2) {
        this(th2, C.TIME_UNSET);
    }

    public VideoFrameProcessingException(Throwable th2, long j11) {
        super(th2);
        this.presentationTimeUs = j11;
    }

    public static VideoFrameProcessingException from(Exception exc) {
        return from(exc, C.TIME_UNSET);
    }

    public static VideoFrameProcessingException from(Exception exc, long j11) {
        return exc instanceof VideoFrameProcessingException ? (VideoFrameProcessingException) exc : new VideoFrameProcessingException(exc, j11);
    }
}
