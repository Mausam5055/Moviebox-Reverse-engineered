package j;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public class c extends e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile c f65693c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Executor f65694d = new Executor() { // from class: j.a
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            c.i(runnable);
        }
    };

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Executor f65695e = new Executor() { // from class: j.b
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            c.j(runnable);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private e f65696a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f65697b;

    private c() {
        d dVar = new d();
        this.f65697b = dVar;
        this.f65696a = dVar;
    }

    public static Executor g() {
        return f65695e;
    }

    public static c h() {
        if (f65693c != null) {
            return f65693c;
        }
        synchronized (c.class) {
            try {
                if (f65693c == null) {
                    f65693c = new c();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return f65693c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void i(Runnable runnable) {
        h().d(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void j(Runnable runnable) {
        h().a(runnable);
    }

    @Override // j.e
    public void a(Runnable runnable) {
        this.f65696a.a(runnable);
    }

    @Override // j.e
    public boolean c() {
        return this.f65696a.c();
    }

    @Override // j.e
    public void d(Runnable runnable) {
        this.f65696a.d(runnable);
    }
}
