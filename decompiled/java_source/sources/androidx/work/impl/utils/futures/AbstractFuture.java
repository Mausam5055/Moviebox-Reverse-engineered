package androidx.work.impl.utils.futures;

import com.google.common.util.concurrent.r;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractFuture implements r {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final boolean f15964d = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Logger f15965e = Logger.getLogger(AbstractFuture.class.getName());

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final b f15966f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Object f15967g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    volatile Object f15968a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    volatile d f15969b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    volatile g f15970c;

    /* JADX INFO: loaded from: classes2.dex */
    private static final class Failure {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final Failure f15971b = new Failure(new Throwable("Failure occurred while trying to finish a future.") { // from class: androidx.work.impl.utils.futures.AbstractFuture.Failure.1
            @Override // java.lang.Throwable
            public synchronized Throwable fillInStackTrace() {
                return this;
            }
        });

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Throwable f15972a;

        Failure(Throwable th2) {
            this.f15972a = (Throwable) AbstractFuture.g(th2);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private static final class SetFuture<V> implements Runnable {
        final r future;
        final AbstractFuture owner;

        SetFuture(AbstractFuture abstractFuture, r rVar) {
            this.owner = abstractFuture;
            this.future = rVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.owner.f15968a != this) {
                return;
            }
            if (AbstractFuture.f15966f.b(this.owner, this, AbstractFuture.n(this.future))) {
                AbstractFuture.k(this.owner);
            }
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private static abstract class b {
        private b() {
        }

        abstract boolean a(AbstractFuture abstractFuture, d dVar, d dVar2);

        abstract boolean b(AbstractFuture abstractFuture, Object obj, Object obj2);

        abstract boolean c(AbstractFuture abstractFuture, g gVar, g gVar2);

        abstract void d(g gVar, g gVar2);

        abstract void e(g gVar, Thread thread);
    }

    /* JADX INFO: loaded from: classes2.dex */
    private static final class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        static final c f15973c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static final c f15974d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final boolean f15975a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Throwable f15976b;

        static {
            if (AbstractFuture.f15964d) {
                f15974d = null;
                f15973c = null;
            } else {
                f15974d = new c(false, null);
                f15973c = new c(true, null);
            }
        }

        c(boolean z10, Throwable th2) {
            this.f15975a = z10;
            this.f15976b = th2;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private static final class d {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static final d f15977d = new d(null, null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Runnable f15978a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Executor f15979b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        d f15980c;

        d(Runnable runnable, Executor executor) {
            this.f15978a = runnable;
            this.f15979b = executor;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private static final class e extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final AtomicReferenceFieldUpdater f15981a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final AtomicReferenceFieldUpdater f15982b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final AtomicReferenceFieldUpdater f15983c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final AtomicReferenceFieldUpdater f15984d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final AtomicReferenceFieldUpdater f15985e;

        e(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
            super();
            this.f15981a = atomicReferenceFieldUpdater;
            this.f15982b = atomicReferenceFieldUpdater2;
            this.f15983c = atomicReferenceFieldUpdater3;
            this.f15984d = atomicReferenceFieldUpdater4;
            this.f15985e = atomicReferenceFieldUpdater5;
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.b
        boolean a(AbstractFuture abstractFuture, d dVar, d dVar2) {
            return androidx.concurrent.futures.a.a(this.f15984d, abstractFuture, dVar, dVar2);
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.b
        boolean b(AbstractFuture abstractFuture, Object obj, Object obj2) {
            return androidx.concurrent.futures.a.a(this.f15985e, abstractFuture, obj, obj2);
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.b
        boolean c(AbstractFuture abstractFuture, g gVar, g gVar2) {
            return androidx.concurrent.futures.a.a(this.f15983c, abstractFuture, gVar, gVar2);
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.b
        void d(g gVar, g gVar2) {
            this.f15982b.lazySet(gVar, gVar2);
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.b
        void e(g gVar, Thread thread) {
            this.f15981a.lazySet(gVar, thread);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private static final class f extends b {
        f() {
            super();
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.b
        boolean a(AbstractFuture abstractFuture, d dVar, d dVar2) {
            synchronized (abstractFuture) {
                try {
                    if (abstractFuture.f15969b != dVar) {
                        return false;
                    }
                    abstractFuture.f15969b = dVar2;
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.b
        boolean b(AbstractFuture abstractFuture, Object obj, Object obj2) {
            synchronized (abstractFuture) {
                try {
                    if (abstractFuture.f15968a != obj) {
                        return false;
                    }
                    abstractFuture.f15968a = obj2;
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.b
        boolean c(AbstractFuture abstractFuture, g gVar, g gVar2) {
            synchronized (abstractFuture) {
                try {
                    if (abstractFuture.f15970c != gVar) {
                        return false;
                    }
                    abstractFuture.f15970c = gVar2;
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.b
        void d(g gVar, g gVar2) {
            gVar.f15988b = gVar2;
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.b
        void e(g gVar, Thread thread) {
            gVar.f15987a = thread;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private static final class g {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        static final g f15986c = new g(false);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        volatile Thread f15987a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        volatile g f15988b;

        g() {
            AbstractFuture.f15966f.e(this, Thread.currentThread());
        }

        g(boolean z10) {
        }

        void a(g gVar) {
            AbstractFuture.f15966f.d(this, gVar);
        }

        void b() {
            Thread thread = this.f15987a;
            if (thread != null) {
                this.f15987a = null;
                LockSupport.unpark(thread);
            }
        }
    }

    static {
        b fVar;
        try {
            fVar = new e(AtomicReferenceFieldUpdater.newUpdater(g.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(g.class, g.class, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, g.class, "c"), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, d.class, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, Object.class, "a"));
            th = null;
        } catch (Throwable th2) {
            th = th2;
            fVar = new f();
        }
        f15966f = fVar;
        if (th != null) {
            f15965e.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f15967g = new Object();
    }

    private void b(StringBuilder sb2) {
        try {
            Object objO = o(this);
            sb2.append("SUCCESS, result=[");
            sb2.append(t(objO));
            sb2.append("]");
        } catch (CancellationException unused) {
            sb2.append("CANCELLED");
        } catch (RuntimeException e11) {
            sb2.append("UNKNOWN, cause=[");
            sb2.append(e11.getClass());
            sb2.append(" thrown from get()]");
        } catch (ExecutionException e12) {
            sb2.append("FAILURE, cause=[");
            sb2.append(e12.getCause());
            sb2.append("]");
        }
    }

    private static CancellationException d(String str, Throwable th2) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th2);
        return cancellationException;
    }

    static Object g(Object obj) {
        obj.getClass();
        return obj;
    }

    private d i(d dVar) {
        d dVar2;
        do {
            dVar2 = this.f15969b;
        } while (!f15966f.a(this, dVar2, d.f15977d));
        d dVar3 = dVar;
        d dVar4 = dVar2;
        while (dVar4 != null) {
            d dVar5 = dVar4.f15980c;
            dVar4.f15980c = dVar3;
            dVar3 = dVar4;
            dVar4 = dVar5;
        }
        return dVar3;
    }

    static void k(AbstractFuture abstractFuture) {
        d dVar = null;
        while (true) {
            abstractFuture.r();
            abstractFuture.c();
            d dVarI = abstractFuture.i(dVar);
            while (dVarI != null) {
                dVar = dVarI.f15980c;
                Runnable runnable = dVarI.f15978a;
                if (runnable instanceof SetFuture) {
                    SetFuture setFuture = (SetFuture) runnable;
                    abstractFuture = setFuture.owner;
                    if (abstractFuture.f15968a == setFuture) {
                        if (f15966f.b(abstractFuture, setFuture, n(setFuture.future))) {
                        }
                    } else {
                        continue;
                    }
                } else {
                    l(runnable, dVarI.f15979b);
                }
                dVarI = dVar;
            }
            return;
        }
    }

    private static void l(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e11) {
            f15965e.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e11);
        }
    }

    private Object m(Object obj) throws ExecutionException {
        if (obj instanceof c) {
            throw d("Task was cancelled.", ((c) obj).f15976b);
        }
        if (obj instanceof Failure) {
            throw new ExecutionException(((Failure) obj).f15972a);
        }
        if (obj == f15967g) {
            return null;
        }
        return obj;
    }

    static Object n(r rVar) {
        if (rVar instanceof AbstractFuture) {
            Object obj = ((AbstractFuture) rVar).f15968a;
            if (!(obj instanceof c)) {
                return obj;
            }
            c cVar = (c) obj;
            if (cVar.f15975a) {
                return cVar.f15976b != null ? new c(false, cVar.f15976b) : c.f15974d;
            }
            return obj;
        }
        boolean zIsCancelled = rVar.isCancelled();
        if ((!f15964d) && zIsCancelled) {
            return c.f15974d;
        }
        try {
            Object objO = o(rVar);
            return objO == null ? f15967g : objO;
        } catch (CancellationException e11) {
            if (zIsCancelled) {
                return new c(false, e11);
            }
            return new Failure(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + rVar, e11));
        } catch (ExecutionException e12) {
            return new Failure(e12.getCause());
        } catch (Throwable th2) {
            return new Failure(th2);
        }
    }

    private static Object o(Future future) {
        Object obj;
        boolean z10 = false;
        while (true) {
            try {
                obj = future.get();
                break;
            } catch (InterruptedException unused) {
                z10 = true;
            } catch (Throwable th2) {
                if (z10) {
                    Thread.currentThread().interrupt();
                }
                throw th2;
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    private void r() {
        g gVar;
        do {
            gVar = this.f15970c;
        } while (!f15966f.c(this, gVar, g.f15986c));
        while (gVar != null) {
            gVar.b();
            gVar = gVar.f15988b;
        }
    }

    private void s(g gVar) {
        gVar.f15987a = null;
        while (true) {
            g gVar2 = this.f15970c;
            if (gVar2 == g.f15986c) {
                return;
            }
            g gVar3 = null;
            while (gVar2 != null) {
                g gVar4 = gVar2.f15988b;
                if (gVar2.f15987a != null) {
                    gVar3 = gVar2;
                } else if (gVar3 != null) {
                    gVar3.f15988b = gVar4;
                    if (gVar3.f15987a == null) {
                    }
                } else if (!f15966f.c(this, gVar2, gVar4)) {
                }
                gVar2 = gVar4;
            }
            return;
        }
    }

    private String t(Object obj) {
        return obj == this ? "this future" : String.valueOf(obj);
    }

    @Override // com.google.common.util.concurrent.r
    public final void addListener(Runnable runnable, Executor executor) {
        g(runnable);
        g(executor);
        d dVar = this.f15969b;
        if (dVar != d.f15977d) {
            d dVar2 = new d(runnable, executor);
            do {
                dVar2.f15980c = dVar;
                if (f15966f.a(this, dVar, dVar2)) {
                    return;
                } else {
                    dVar = this.f15969b;
                }
            } while (dVar != d.f15977d);
        }
        l(runnable, executor);
    }

    protected void c() {
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z10) {
        c cVar;
        Object obj = this.f15968a;
        if (!(obj == null) && !(obj instanceof SetFuture)) {
            return false;
        }
        if (f15964d) {
            cVar = new c(z10, new CancellationException("Future.cancel() was called."));
        } else {
            cVar = z10 ? c.f15973c : c.f15974d;
        }
        AbstractFuture abstractFuture = this;
        boolean z11 = false;
        while (true) {
            if (f15966f.b(abstractFuture, obj, cVar)) {
                if (z10) {
                    abstractFuture.p();
                }
                k(abstractFuture);
                if (!(obj instanceof SetFuture)) {
                    return true;
                }
                r rVar = ((SetFuture) obj).future;
                if (!(rVar instanceof AbstractFuture)) {
                    rVar.cancel(z10);
                    return true;
                }
                abstractFuture = (AbstractFuture) rVar;
                obj = abstractFuture.f15968a;
                if (!(obj == null) && !(obj instanceof SetFuture)) {
                    return true;
                }
                z11 = true;
            } else {
                obj = abstractFuture.f15968a;
                if (!(obj instanceof SetFuture)) {
                    return z11;
                }
            }
        }
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws InterruptedException {
        Object obj;
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj2 = this.f15968a;
        if ((obj2 != null) && (!(obj2 instanceof SetFuture))) {
            return m(obj2);
        }
        g gVar = this.f15970c;
        if (gVar != g.f15986c) {
            g gVar2 = new g();
            do {
                gVar2.a(gVar);
                if (f15966f.c(this, gVar, gVar2)) {
                    do {
                        LockSupport.park(this);
                        if (Thread.interrupted()) {
                            s(gVar2);
                            throw new InterruptedException();
                        }
                        obj = this.f15968a;
                    } while (!((obj != null) & (!(obj instanceof SetFuture))));
                    return m(obj);
                }
                gVar = this.f15970c;
            } while (gVar != g.f15986c);
        }
        return m(this.f15968a);
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j11, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j11);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.f15968a;
        if ((obj != null) && (!(obj instanceof SetFuture))) {
            return m(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            g gVar = this.f15970c;
            if (gVar != g.f15986c) {
                g gVar2 = new g();
                while (true) {
                    gVar2.a(gVar);
                    if (f15966f.c(this, gVar, gVar2)) {
                        do {
                            LockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                s(gVar2);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.f15968a;
                            if ((obj2 != null) && (!(obj2 instanceof SetFuture))) {
                                return m(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        s(gVar2);
                        break;
                    }
                    gVar = this.f15970c;
                    if (gVar == g.f15986c) {
                    }
                }
            }
            return m(this.f15968a);
        }
        while (nanos > 0) {
            Object obj3 = this.f15968a;
            if ((obj3 != null) && (!(obj3 instanceof SetFuture))) {
                return m(obj3);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            nanos = jNanoTime - System.nanoTime();
        }
        String string = toString();
        String string2 = timeUnit.toString();
        Locale locale = Locale.ROOT;
        String lowerCase = string2.toLowerCase(locale);
        String str = "Waited " + j11 + " " + timeUnit.toString().toLowerCase(locale);
        if (nanos + 1000 < 0) {
            String str2 = str + " (plus ";
            long j12 = -nanos;
            long jConvert = timeUnit.convert(j12, TimeUnit.NANOSECONDS);
            long nanos2 = j12 - timeUnit.toNanos(jConvert);
            boolean z10 = jConvert == 0 || nanos2 > 1000;
            if (jConvert > 0) {
                String str3 = str2 + jConvert + " " + lowerCase;
                if (z10) {
                    str3 = str3 + ",";
                }
                str2 = str3 + " ";
            }
            if (z10) {
                str2 = str2 + nanos2 + " nanoseconds ";
            }
            str = str2 + "delay)";
        }
        if (isDone()) {
            throw new TimeoutException(str + " but future completed as timeout expired");
        }
        throw new TimeoutException(str + " for " + string);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f15968a instanceof c;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        Object obj = this.f15968a;
        return (!(obj instanceof SetFuture)) & (obj != null);
    }

    protected void p() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected String q() {
        Object obj = this.f15968a;
        if (obj instanceof SetFuture) {
            return "setFuture=[" + t(((SetFuture) obj).future) + "]";
        }
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    public String toString() {
        String strQ;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.toString());
        sb2.append("[status=");
        if (isCancelled()) {
            sb2.append("CANCELLED");
        } else if (isDone()) {
            b(sb2);
        } else {
            try {
                strQ = q();
            } catch (RuntimeException e11) {
                strQ = "Exception thrown from implementation: " + e11.getClass();
            }
            if (strQ != null && !strQ.isEmpty()) {
                sb2.append("PENDING, info=[");
                sb2.append(strQ);
                sb2.append("]");
            } else if (isDone()) {
                b(sb2);
            } else {
                sb2.append("PENDING");
            }
        }
        sb2.append("]");
        return sb2.toString();
    }
}
