package androidx.media3.exoplayer.upstream;

import android.os.Handler;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public interface e {

    public interface a {

        /* JADX INFO: renamed from: androidx.media3.exoplayer.upstream.e$a$a, reason: collision with other inner class name */
        public static final class C0102a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final CopyOnWriteArrayList f12962a = new CopyOnWriteArrayList();

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX INFO: renamed from: androidx.media3.exoplayer.upstream.e$a$a$a, reason: collision with other inner class name */
            static final class C0103a {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                private final Handler f12963a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                private final a f12964b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                private boolean f12965c;

                public C0103a(Handler handler, a aVar) {
                    this.f12963a = handler;
                    this.f12964b = aVar;
                }

                public void d() {
                    this.f12965c = true;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static /* synthetic */ void d(C0103a c0103a, int i11, long j11, long j12) {
                c0103a.f12964b.onBandwidthSample(i11, j11, j12);
            }

            public void b(Handler handler, a aVar) {
                androidx.media3.common.util.a.e(handler);
                androidx.media3.common.util.a.e(aVar);
                e(aVar);
                this.f12962a.add(new C0103a(handler, aVar));
            }

            public void c(final int i11, final long j11, final long j12) {
                for (final C0103a c0103a : this.f12962a) {
                    if (!c0103a.f12965c) {
                        c0103a.f12963a.post(new Runnable() { // from class: androidx.media3.exoplayer.upstream.d
                            @Override // java.lang.Runnable
                            public final void run() {
                                e.a.C0102a.d(c0103a, i11, j11, j12);
                            }
                        });
                    }
                }
            }

            public void e(a aVar) {
                for (C0103a c0103a : this.f12962a) {
                    if (c0103a.f12964b == aVar) {
                        c0103a.d();
                        this.f12962a.remove(c0103a);
                    }
                }
            }
        }

        void onBandwidthSample(int i11, long j11, long j12);
    }

    long a();

    w1.n b();

    void c(a aVar);

    void d(Handler handler, a aVar);

    long getBitrateEstimate();
}
