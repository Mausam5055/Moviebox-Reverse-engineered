package androidx.recyclerview.widget;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f14349a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f14350b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final DiffUtil.e f14351c;

    public static final class a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final Object f14352d = new Object();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static Executor f14353e;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Executor f14354a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Executor f14355b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final DiffUtil.e f14356c;

        public a(DiffUtil.e eVar) {
            this.f14356c = eVar;
        }

        public c a() {
            if (this.f14355b == null) {
                synchronized (f14352d) {
                    try {
                        if (f14353e == null) {
                            f14353e = Executors.newFixedThreadPool(2);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                this.f14355b = f14353e;
            }
            return new c(this.f14354a, this.f14355b, this.f14356c);
        }
    }

    c(Executor executor, Executor executor2, DiffUtil.e eVar) {
        this.f14349a = executor;
        this.f14350b = executor2;
        this.f14351c = eVar;
    }

    public Executor a() {
        return this.f14350b;
    }

    public DiffUtil.e b() {
        return this.f14351c;
    }

    public Executor c() {
        return this.f14349a;
    }
}
