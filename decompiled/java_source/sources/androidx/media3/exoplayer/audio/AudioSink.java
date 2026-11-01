package androidx.media3.exoplayer.audio;

import android.media.AudioDeviceInfo;
import androidx.annotation.Nullable;
import java.nio.ByteBuffer;
import y1.f4;

/* JADX INFO: loaded from: classes2.dex */
public interface AudioSink {

    public static final class ConfigurationException extends Exception {
        public final androidx.media3.common.r format;

        public ConfigurationException(String str, androidx.media3.common.r rVar) {
            super(str);
            this.format = rVar;
        }

        public ConfigurationException(Throwable th2, androidx.media3.common.r rVar) {
            super(th2);
            this.format = rVar;
        }
    }

    public static final class InitializationException extends Exception {
        public final int audioTrackState;
        public final androidx.media3.common.r format;
        public final boolean isRecoverable;

        public InitializationException(int i11, int i12, int i13, int i14, androidx.media3.common.r rVar, boolean z10, @Nullable Exception exc) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("AudioTrack init failed ");
            sb2.append(i11);
            sb2.append(" ");
            sb2.append("Config(");
            sb2.append(i12);
            sb2.append(", ");
            sb2.append(i13);
            sb2.append(", ");
            sb2.append(i14);
            sb2.append(")");
            sb2.append(" ");
            sb2.append(rVar);
            sb2.append(z10 ? " (recoverable)" : "");
            this(sb2.toString(), i11, rVar, z10, exc);
        }

        public InitializationException(String str, int i11, androidx.media3.common.r rVar, boolean z10, @Nullable Throwable th2) {
            super(str, th2);
            this.audioTrackState = i11;
            this.isRecoverable = z10;
            this.format = rVar;
        }
    }

    public static final class UnexpectedDiscontinuityException extends Exception {
        public final long actualPresentationTimeUs;
        public final long expectedPresentationTimeUs;

        public UnexpectedDiscontinuityException(long j11, long j12) {
            super("Unexpected audio track timestamp discontinuity: expected " + j12 + ", got " + j11);
            this.actualPresentationTimeUs = j11;
            this.expectedPresentationTimeUs = j12;
        }
    }

    public static final class WriteException extends Exception {
        public final int errorCode;
        public final androidx.media3.common.r format;
        public final boolean isRecoverable;

        public WriteException(int i11, androidx.media3.common.r rVar, boolean z10) {
            super("AudioTrack write failed: " + i11);
            this.isRecoverable = z10;
            this.errorCode = i11;
            this.format = rVar;
        }
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f11001a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f11002b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f11003c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean f11004d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f11005e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f11006f;

        public a(int i11, int i12, int i13, boolean z10, boolean z11, int i14) {
            this.f11001a = i11;
            this.f11002b = i12;
            this.f11003c = i13;
            this.f11004d = z10;
            this.f11005e = z11;
            this.f11006f = i14;
        }
    }

    public interface b {
        void a(Exception exc);

        void b(long j11);

        void c();

        void d();

        void e();

        void f();

        void j(a aVar);

        void k(a aVar);

        void onPositionDiscontinuity();

        void onSkipSilenceEnabledChanged(boolean z10);

        void onUnderrun(int i11, long j11, long j12);
    }

    boolean a(androidx.media3.common.r rVar);

    void b(androidx.media3.common.z zVar);

    boolean c(ByteBuffer byteBuffer, long j11, int i11);

    void d();

    void disableTunneling();

    void e(boolean z10);

    void f(androidx.media3.common.c cVar);

    void flush();

    k g(androidx.media3.common.r rVar);

    long getCurrentPositionUs(boolean z10);

    androidx.media3.common.z getPlaybackParameters();

    void h(AudioDeviceInfo audioDeviceInfo);

    void handleDiscontinuity();

    boolean hasPendingData();

    long i();

    boolean isEnded();

    void j(b bVar);

    void k(int i11);

    void l(androidx.media3.common.r rVar, int i11, int[] iArr);

    void m(int i11, int i12);

    void n(long j11);

    int o(androidx.media3.common.r rVar);

    void p(f4 f4Var);

    void pause();

    void play();

    void playToEndOfStream();

    void q(androidx.media3.common.f fVar);

    void r(androidx.media3.common.util.i iVar);

    void release();

    void reset();

    void setAudioSessionId(int i11);

    void setVolume(float f11);
}
