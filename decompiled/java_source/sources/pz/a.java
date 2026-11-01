package pz;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.core.b;
import io.reactivex.rxjava3.core.e;
import io.reactivex.rxjava3.core.g;
import io.reactivex.rxjava3.core.j;
import io.reactivex.rxjava3.core.o;
import io.reactivex.rxjava3.core.p;
import io.reactivex.rxjava3.core.q;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.exceptions.OnErrorNotImplementedException;
import io.reactivex.rxjava3.exceptions.QueueOverflowException;
import io.reactivex.rxjava3.exceptions.UndeliverableException;
import io.reactivex.rxjava3.internal.schedulers.ExecutorScheduler;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import java.util.Objects;
import java.util.concurrent.Executor;
import lz.c;
import lz.f;
import lz.h;
import lz.k;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static volatile f f73016a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static volatile h f73017b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static volatile h f73018c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static volatile h f73019d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static volatile h f73020e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static volatile h f73021f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static volatile h f73022g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static volatile h f73023h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static volatile h f73024i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    static volatile h f73025j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static volatile h f73026k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    static volatile h f73027l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    static volatile h f73028m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    static volatile c f73029n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    static volatile c f73030o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    static volatile c f73031p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    static volatile c f73032q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    static volatile c f73033r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    static volatile boolean f73034s;

    static void A(Throwable th2) {
        Thread threadCurrentThread = Thread.currentThread();
        threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th2);
    }

    static Object a(c cVar, Object obj, Object obj2) {
        try {
            return cVar.apply(obj, obj2);
        } catch (Throwable th2) {
            throw ExceptionHelper.g(th2);
        }
    }

    static Object b(h hVar, Object obj) {
        try {
            return hVar.apply(obj);
        } catch (Throwable th2) {
            throw ExceptionHelper.g(th2);
        }
    }

    static Scheduler c(h hVar, k kVar) {
        Object objB = b(hVar, kVar);
        Objects.requireNonNull(objB, "Scheduler Supplier result can't be null");
        return (Scheduler) objB;
    }

    static Scheduler d(k kVar) {
        try {
            Object obj = kVar.get();
            Objects.requireNonNull(obj, "Scheduler Supplier result can't be null");
            return (Scheduler) obj;
        } catch (Throwable th2) {
            throw ExceptionHelper.g(th2);
        }
    }

    public static Scheduler e(Executor executor, boolean z10, boolean z11) {
        return new ExecutorScheduler(executor, z10, z11);
    }

    public static Scheduler f(k kVar) {
        Objects.requireNonNull(kVar, "Scheduler Supplier can't be null");
        h hVar = f73018c;
        return hVar == null ? d(kVar) : c(hVar, kVar);
    }

    public static Scheduler g(k kVar) {
        Objects.requireNonNull(kVar, "Scheduler Supplier can't be null");
        h hVar = f73020e;
        return hVar == null ? d(kVar) : c(hVar, kVar);
    }

    public static Scheduler h(k kVar) {
        Objects.requireNonNull(kVar, "Scheduler Supplier can't be null");
        h hVar = f73021f;
        return hVar == null ? d(kVar) : c(hVar, kVar);
    }

    public static Scheduler i(k kVar) {
        Objects.requireNonNull(kVar, "Scheduler Supplier can't be null");
        h hVar = f73019d;
        return hVar == null ? d(kVar) : c(hVar, kVar);
    }

    static boolean j(Throwable th2) {
        return (th2 instanceof OnErrorNotImplementedException) || (th2 instanceof MissingBackpressureException) || (th2 instanceof QueueOverflowException) || (th2 instanceof IllegalStateException) || (th2 instanceof NullPointerException) || (th2 instanceof IllegalArgumentException) || (th2 instanceof CompositeException);
    }

    public static boolean k() {
        return f73034s;
    }

    public static io.reactivex.rxjava3.core.a l(io.reactivex.rxjava3.core.a aVar) {
        h hVar = f73028m;
        return hVar != null ? (io.reactivex.rxjava3.core.a) b(hVar, aVar) : aVar;
    }

    public static e m(e eVar) {
        h hVar = f73024i;
        return hVar != null ? (e) b(hVar, eVar) : eVar;
    }

    public static g n(g gVar) {
        h hVar = f73026k;
        return hVar != null ? (g) b(hVar, gVar) : gVar;
    }

    public static j o(j jVar) {
        h hVar = f73025j;
        return hVar != null ? (j) b(hVar, jVar) : jVar;
    }

    public static p p(p pVar) {
        h hVar = f73027l;
        return hVar != null ? (p) b(hVar, pVar) : pVar;
    }

    public static boolean q() {
        return false;
    }

    public static void r(Throwable th2) {
        f fVar = f73016a;
        if (th2 == null) {
            th2 = ExceptionHelper.b("onError called with a null Throwable.");
        } else if (!j(th2)) {
            th2 = new UndeliverableException(th2);
        }
        if (fVar != null) {
            try {
                fVar.accept(th2);
                return;
            } catch (Throwable th3) {
                th3.printStackTrace();
                A(th3);
            }
        }
        th2.printStackTrace();
        A(th2);
    }

    public static Scheduler s(Scheduler scheduler) {
        h hVar = f73023h;
        return hVar == null ? scheduler : (Scheduler) b(hVar, scheduler);
    }

    public static Runnable t(Runnable runnable) {
        Objects.requireNonNull(runnable, "run is null");
        h hVar = f73017b;
        return hVar == null ? runnable : (Runnable) b(hVar, runnable);
    }

    public static Scheduler u(Scheduler scheduler) {
        h hVar = f73022g;
        return hVar == null ? scheduler : (Scheduler) b(hVar, scheduler);
    }

    public static b v(io.reactivex.rxjava3.core.a aVar, b bVar) {
        c cVar = f73033r;
        return cVar != null ? (b) a(cVar, aVar, bVar) : bVar;
    }

    public static io.reactivex.rxjava3.core.h w(g gVar, io.reactivex.rxjava3.core.h hVar) {
        c cVar = f73030o;
        return cVar != null ? (io.reactivex.rxjava3.core.h) a(cVar, gVar, hVar) : hVar;
    }

    public static o x(j jVar, o oVar) {
        c cVar = f73031p;
        return cVar != null ? (o) a(cVar, jVar, oVar) : oVar;
    }

    public static q y(p pVar, q qVar) {
        c cVar = f73032q;
        return cVar != null ? (q) a(cVar, pVar, qVar) : qVar;
    }

    public static u10.c z(e eVar, u10.c cVar) {
        c cVar2 = f73029n;
        return cVar2 != null ? (u10.c) a(cVar2, eVar, cVar) : cVar;
    }
}
