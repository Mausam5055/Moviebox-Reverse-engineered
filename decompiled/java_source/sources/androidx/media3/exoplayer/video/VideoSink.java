package androidx.media3.exoplayer.video;

import android.view.Surface;
import androidx.media3.common.m0;
import androidx.media3.common.util.l0;
import androidx.media3.exoplayer.w3;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public interface VideoSink {

    public static final class VideoSinkException extends Exception {
        public final androidx.media3.common.r format;

        public VideoSinkException(Throwable th2, androidx.media3.common.r rVar) {
            super(th2);
            this.format = rVar;
        }
    }

    public interface a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f13073a = new C0105a();

        /* JADX INFO: renamed from: androidx.media3.exoplayer.video.VideoSink$a$a, reason: collision with other inner class name */
        class C0105a implements a {
            C0105a() {
            }

            @Override // androidx.media3.exoplayer.video.VideoSink.a
            public void a(VideoSink videoSink) {
            }

            @Override // androidx.media3.exoplayer.video.VideoSink.a
            public void b(VideoSink videoSink, m0 m0Var) {
            }

            @Override // androidx.media3.exoplayer.video.VideoSink.a
            public void c(VideoSink videoSink) {
            }
        }

        void a(VideoSink videoSink);

        void b(VideoSink videoSink, m0 m0Var);

        void c(VideoSink videoSink);
    }

    public interface b {
        void a(long j11);

        void b();
    }

    void a(float f11);

    boolean b(long j11, boolean z10, b bVar);

    void c();

    void d(t tVar);

    void e();

    void f(long j11, long j12);

    void g();

    void h(w3.a aVar);

    void i(List list);

    boolean isEnded();

    boolean isInitialized();

    boolean j(boolean z10);

    boolean k(androidx.media3.common.r rVar);

    void l(boolean z10);

    Surface m();

    void n();

    void o(int i11, androidx.media3.common.r rVar, List list);

    void p(Surface surface, l0 l0Var);

    void q();

    void r(int i11);

    void release();

    void render(long j11, long j12);

    void s();

    void t(boolean z10);

    void u(boolean z10);

    void v(a aVar, Executor executor);
}
