package com.google.android.exoplayer2.upstream;

import android.os.Handler;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes3.dex */
public interface e {

    public interface a {

        /* JADX INFO: renamed from: com.google.android.exoplayer2.upstream.e$a$a, reason: collision with other inner class name */
        public static final class C0381a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final CopyOnWriteArrayList f27396a = new CopyOnWriteArrayList();

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX INFO: renamed from: com.google.android.exoplayer2.upstream.e$a$a$a, reason: collision with other inner class name */
            static final class C0382a {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                private final Handler f27397a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                private final a f27398b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                private boolean f27399c;

                public C0382a(Handler handler, a aVar) {
                    this.f27397a = handler;
                    this.f27398b = aVar;
                }

                public void d() {
                    this.f27399c = true;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static /* synthetic */ void d(C0382a c0382a, int i11, long j11, long j12) {
                c0382a.f27398b.onBandwidthSample(i11, j11, j12);
            }

            public void b(Handler handler, a aVar) {
                com.google.android.exoplayer2.util.a.e(handler);
                com.google.android.exoplayer2.util.a.e(aVar);
                e(aVar);
                this.f27396a.add(new C0382a(handler, aVar));
            }

            public void c(final int i11, final long j11, final long j12) {
                for (final C0382a c0382a : this.f27396a) {
                    if (!c0382a.f27399c) {
                        c0382a.f27397a.post(new Runnable() { // from class: com.google.android.exoplayer2.upstream.d
                            @Override // java.lang.Runnable
                            public final void run() {
                                e.a.C0381a.d(c0382a, i11, j11, j12);
                            }
                        });
                    }
                }
            }

            public void e(a aVar) {
                for (C0382a c0382a : this.f27396a) {
                    if (c0382a.f27398b == aVar) {
                        c0382a.d();
                        this.f27396a.remove(c0382a);
                    }
                }
            }
        }

        void onBandwidthSample(int i11, long j11, long j12);
    }

    long a();

    k0 b();

    void d(a aVar);

    void f(Handler handler, a aVar);

    long getBitrateEstimate();
}
