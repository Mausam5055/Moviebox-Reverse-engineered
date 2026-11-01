package qz;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.schedulers.IoScheduler;
import io.reactivex.rxjava3.internal.schedulers.TrampolineScheduler;
import java.util.concurrent.Executor;
import lz.k;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Scheduler f73899a = pz.a.i(new h());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Scheduler f73900b = pz.a.f(new b());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final Scheduler f73901c = pz.a.g(new c());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final Scheduler f73902d = TrampolineScheduler.g();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final Scheduler f73903e = pz.a.h(new f());

    /* JADX INFO: renamed from: qz.a$a, reason: collision with other inner class name */
    static final class C0898a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final Scheduler f73904a = new io.reactivex.rxjava3.internal.schedulers.a();
    }

    static final class b implements k {
        b() {
        }

        @Override // lz.k
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Scheduler get() {
            return C0898a.f73904a;
        }
    }

    static final class c implements k {
        c() {
        }

        @Override // lz.k
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Scheduler get() {
            return d.f73905a;
        }
    }

    static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final Scheduler f73905a = new IoScheduler();
    }

    static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final Scheduler f73906a = new io.reactivex.rxjava3.internal.schedulers.d();
    }

    static final class f implements k {
        f() {
        }

        @Override // lz.k
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Scheduler get() {
            return e.f73906a;
        }
    }

    static final class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final Scheduler f73907a = new io.reactivex.rxjava3.internal.schedulers.h();
    }

    static final class h implements k {
        h() {
        }

        @Override // lz.k
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Scheduler get() {
            return g.f73907a;
        }
    }

    public static Scheduler a(Executor executor) {
        return b(executor, false, false);
    }

    public static Scheduler b(Executor executor, boolean z10, boolean z11) {
        return pz.a.e(executor, z10, z11);
    }

    public static Scheduler c() {
        return pz.a.s(f73901c);
    }

    public static Scheduler d() {
        return pz.a.u(f73899a);
    }
}
