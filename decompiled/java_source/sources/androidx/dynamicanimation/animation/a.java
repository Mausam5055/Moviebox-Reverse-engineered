package androidx.dynamicanimation.animation;

import android.os.SystemClock;
import android.view.Choreographer;
import androidx.collection.x0;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final ThreadLocal f8980g = new ThreadLocal();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c f8984d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final x0 f8981a = new x0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ArrayList f8982b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final C0075a f8983c = new C0075a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    long f8985e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f8986f = false;

    /* JADX INFO: renamed from: androidx.dynamicanimation.animation.a$a, reason: collision with other inner class name */
    class C0075a {
        C0075a() {
        }

        void a() {
            a.this.f8985e = SystemClock.uptimeMillis();
            a aVar = a.this;
            aVar.c(aVar.f8985e);
            if (a.this.f8982b.size() > 0) {
                a.this.e().a();
            }
        }
    }

    interface b {
        boolean a(long j11);
    }

    static abstract class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final C0075a f8988a;

        c(C0075a c0075a) {
            this.f8988a = c0075a;
        }

        abstract void a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class d extends c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        long f8989b;
    }

    private static class e extends c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Choreographer f8990b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Choreographer.FrameCallback f8991c;

        /* JADX INFO: renamed from: androidx.dynamicanimation.animation.a$e$a, reason: collision with other inner class name */
        class ChoreographerFrameCallbackC0076a implements Choreographer.FrameCallback {
            ChoreographerFrameCallbackC0076a() {
            }

            @Override // android.view.Choreographer.FrameCallback
            public void doFrame(long j11) {
                e.this.f8988a.a();
            }
        }

        e(C0075a c0075a) {
            super(c0075a);
            this.f8990b = Choreographer.getInstance();
            this.f8991c = new ChoreographerFrameCallbackC0076a();
        }

        @Override // androidx.dynamicanimation.animation.a.c
        void a() {
            this.f8990b.postFrameCallback(this.f8991c);
        }
    }

    a() {
    }

    private void b() {
        if (this.f8986f) {
            for (int size = this.f8982b.size() - 1; size >= 0; size--) {
                if (this.f8982b.get(size) == null) {
                    this.f8982b.remove(size);
                }
            }
            this.f8986f = false;
        }
    }

    public static a d() {
        ThreadLocal threadLocal = f8980g;
        if (threadLocal.get() == null) {
            threadLocal.set(new a());
        }
        return (a) threadLocal.get();
    }

    private boolean f(b bVar, long j11) {
        Long l11 = (Long) this.f8981a.get(bVar);
        if (l11 == null) {
            return true;
        }
        if (l11.longValue() >= j11) {
            return false;
        }
        this.f8981a.remove(bVar);
        return true;
    }

    public void a(b bVar, long j11) {
        if (this.f8982b.size() == 0) {
            e().a();
        }
        if (!this.f8982b.contains(bVar)) {
            this.f8982b.add(bVar);
        }
        if (j11 > 0) {
            this.f8981a.put(bVar, Long.valueOf(SystemClock.uptimeMillis() + j11));
        }
    }

    void c(long j11) {
        long jUptimeMillis = SystemClock.uptimeMillis();
        for (int i11 = 0; i11 < this.f8982b.size(); i11++) {
            b bVar = (b) this.f8982b.get(i11);
            if (bVar != null && f(bVar, jUptimeMillis)) {
                bVar.a(j11);
            }
        }
        b();
    }

    c e() {
        if (this.f8984d == null) {
            this.f8984d = new e(this.f8983c);
        }
        return this.f8984d;
    }

    public void g(b bVar) {
        this.f8981a.remove(bVar);
        int iIndexOf = this.f8982b.indexOf(bVar);
        if (iIndexOf >= 0) {
            this.f8982b.set(iIndexOf, null);
            this.f8986f = true;
        }
    }
}
