package androidx.concurrent.futures;

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
public abstract class AbstractResolvableFuture implements r {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final boolean f6565d = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Logger f6566e = Logger.getLogger(AbstractResolvableFuture.class.getName());

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final b f6567f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Object f6568g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    volatile Object f6569a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    volatile d f6570b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    volatile g f6571c;

    private static final class Failure {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final Failure f6572b = new Failure(new Throwable("Failure occurred while trying to finish a future.") { // from class: androidx.concurrent.futures.AbstractResolvableFuture.Failure.1
            @Override // java.lang.Throwable
            public synchronized Throwable fillInStackTrace() {
                return this;
            }
        });

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Throwable f6573a;

        Failure(Throwable th2) {
            this.f6573a = (Throwable) AbstractResolvableFuture.i(th2);
        }
    }

    private static final class SetFuture<V> implements Runnable {
        final r future;
        final AbstractResolvableFuture owner;

        SetFuture(AbstractResolvableFuture abstractResolvableFuture, r rVar) {
            this.owner = abstractResolvableFuture;
            this.future = rVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.owner.f6569a != this) {
                return;
            }
            if (AbstractResolvableFuture.f6567f.b(this.owner, this, AbstractResolvableFuture.o(this.future))) {
                AbstractResolvableFuture.l(this.owner);
            }
        }
    }

    private static abstract class b {
        private b() {
        }

        abstract boolean a(AbstractResolvableFuture abstractResolvableFuture, d dVar, d dVar2);

        abstract boolean b(AbstractResolvableFuture abstractResolvableFuture, Object obj, Object obj2);

        abstract boolean c(AbstractResolvableFuture abstractResolvableFuture, g gVar, g gVar2);

        abstract void d(g gVar, g gVar2);

        abstract void e(g gVar, Thread thread);
    }

    private static final class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        static final c f6574c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static final c f6575d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final boolean f6576a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Throwable f6577b;

        static {
            if (AbstractResolvableFuture.f6565d) {
                f6575d = null;
                f6574c = null;
            } else {
                f6575d = new c(false, null);
                f6574c = new c(true, null);
            }
        }

        c(boolean z10, Throwable th2) {
            this.f6576a = z10;
            this.f6577b = th2;
        }
    }

    private static final class d {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static final d f6578d = new d(null, null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Runnable f6579a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Executor f6580b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        d f6581c;

        d(Runnable runnable, Executor executor) {
            this.f6579a = runnable;
            this.f6580b = executor;
        }
    }

    private static final class e extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final AtomicReferenceFieldUpdater f6582a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final AtomicReferenceFieldUpdater f6583b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final AtomicReferenceFieldUpdater f6584c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final AtomicReferenceFieldUpdater f6585d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final AtomicReferenceFieldUpdater f6586e;

        e(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
            super();
            this.f6582a = atomicReferenceFieldUpdater;
            this.f6583b = atomicReferenceFieldUpdater2;
            this.f6584c = atomicReferenceFieldUpdater3;
            this.f6585d = atomicReferenceFieldUpdater4;
            this.f6586e = atomicReferenceFieldUpdater5;
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.b
        boolean a(AbstractResolvableFuture abstractResolvableFuture, d dVar, d dVar2) {
            return androidx.concurrent.futures.a.a(this.f6585d, abstractResolvableFuture, dVar, dVar2);
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.b
        boolean b(AbstractResolvableFuture abstractResolvableFuture, Object obj, Object obj2) {
            return androidx.concurrent.futures.a.a(this.f6586e, abstractResolvableFuture, obj, obj2);
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.b
        boolean c(AbstractResolvableFuture abstractResolvableFuture, g gVar, g gVar2) {
            return androidx.concurrent.futures.a.a(this.f6584c, abstractResolvableFuture, gVar, gVar2);
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.b
        void d(g gVar, g gVar2) {
            this.f6583b.lazySet(gVar, gVar2);
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.b
        void e(g gVar, Thread thread) {
            this.f6582a.lazySet(gVar, thread);
        }
    }

    private static final class f extends b {
        f() {
            super();
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.b
        boolean a(AbstractResolvableFuture abstractResolvableFuture, d dVar, d dVar2) {
            synchronized (abstractResolvableFuture) {
                try {
                    if (abstractResolvableFuture.f6570b != dVar) {
                        return false;
                    }
                    abstractResolvableFuture.f6570b = dVar2;
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.b
        boolean b(AbstractResolvableFuture abstractResolvableFuture, Object obj, Object obj2) {
            synchronized (abstractResolvableFuture) {
                try {
                    if (abstractResolvableFuture.f6569a != obj) {
                        return false;
                    }
                    abstractResolvableFuture.f6569a = obj2;
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.b
        boolean c(AbstractResolvableFuture abstractResolvableFuture, g gVar, g gVar2) {
            synchronized (abstractResolvableFuture) {
                try {
                    if (abstractResolvableFuture.f6571c != gVar) {
                        return false;
                    }
                    abstractResolvableFuture.f6571c = gVar2;
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.b
        void d(g gVar, g gVar2) {
            gVar.f6589b = gVar2;
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.b
        void e(g gVar, Thread thread) {
            gVar.f6588a = thread;
        }
    }

    private static final class g {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        static final g f6587c = new g(false);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        volatile Thread f6588a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        volatile g f6589b;

        g() {
            AbstractResolvableFuture.f6567f.e(this, Thread.currentThread());
        }

        g(boolean z10) {
        }

        void a(g gVar) {
            AbstractResolvableFuture.f6567f.d(this, gVar);
        }

        void b() {
            Thread thread = this.f6588a;
            if (thread != null) {
                this.f6588a = null;
                LockSupport.unpark(thread);
            }
        }
    }

    static {
        b fVar;
        try {
            fVar = new e(AtomicReferenceFieldUpdater.newUpdater(g.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(g.class, g.class, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, g.class, "c"), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, d.class, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, Object.class, "a"));
            th = null;
        } catch (Throwable th2) {
            th = th2;
            fVar = new f();
        }
        f6567f = fVar;
        if (th != null) {
            f6566e.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f6568g = new Object();
    }

    protected AbstractResolvableFuture() {
    }

    private void b(StringBuilder sb2) {
        try {
            Object objP = p(this);
            sb2.append("SUCCESS, result=[");
            sb2.append(w(objP));
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

    private static CancellationException g(String str, Throwable th2) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th2);
        return cancellationException;
    }

    static Object i(Object obj) {
        obj.getClass();
        return obj;
    }

    private d k(d dVar) {
        d dVar2;
        do {
            dVar2 = this.f6570b;
        } while (!f6567f.a(this, dVar2, d.f6578d));
        d dVar3 = dVar;
        d dVar4 = dVar2;
        while (dVar4 != null) {
            d dVar5 = dVar4.f6581c;
            dVar4.f6581c = dVar3;
            dVar3 = dVar4;
            dVar4 = dVar5;
        }
        return dVar3;
    }

    static void l(AbstractResolvableFuture abstractResolvableFuture) {
        d dVar = null;
        while (true) {
            abstractResolvableFuture.s();
            abstractResolvableFuture.d();
            d dVarK = abstractResolvableFuture.k(dVar);
            while (dVarK != null) {
                dVar = dVarK.f6581c;
                Runnable runnable = dVarK.f6579a;
                if (runnable instanceof SetFuture) {
                    SetFuture setFuture = (SetFuture) runnable;
                    abstractResolvableFuture = setFuture.owner;
                    if (abstractResolvableFuture.f6569a == setFuture) {
                        if (f6567f.b(abstractResolvableFuture, setFuture, o(setFuture.future))) {
                        }
                    } else {
                        continue;
                    }
                } else {
                    m(runnable, dVarK.f6580b);
                }
                dVarK = dVar;
            }
            return;
        }
    }

    private static void m(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e11) {
            f6566e.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e11);
        }
    }

    private Object n(Object obj) throws ExecutionException {
        if (obj instanceof c) {
            throw g("Task was cancelled.", ((c) obj).f6577b);
        }
        if (obj instanceof Failure) {
            throw new ExecutionException(((Failure) obj).f6573a);
        }
        if (obj == f6568g) {
            return null;
        }
        return obj;
    }

    static Object o(r rVar) {
        if (rVar instanceof AbstractResolvableFuture) {
            Object obj = ((AbstractResolvableFuture) rVar).f6569a;
            if (!(obj instanceof c)) {
                return obj;
            }
            c cVar = (c) obj;
            if (cVar.f6576a) {
                return cVar.f6577b != null ? new c(false, cVar.f6577b) : c.f6575d;
            }
            return obj;
        }
        boolean zIsCancelled = rVar.isCancelled();
        if ((!f6565d) && zIsCancelled) {
            return c.f6575d;
        }
        try {
            Object objP = p(rVar);
            return objP == null ? f6568g : objP;
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

    static Object p(Future future) {
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

    private void s() {
        g gVar;
        do {
            gVar = this.f6571c;
        } while (!f6567f.c(this, gVar, g.f6587c));
        while (gVar != null) {
            gVar.b();
            gVar = gVar.f6589b;
        }
    }

    private void t(g gVar) {
        gVar.f6588a = null;
        while (true) {
            g gVar2 = this.f6571c;
            if (gVar2 == g.f6587c) {
                return;
            }
            g gVar3 = null;
            while (gVar2 != null) {
                g gVar4 = gVar2.f6589b;
                if (gVar2.f6588a != null) {
                    gVar3 = gVar2;
                } else if (gVar3 != null) {
                    gVar3.f6589b = gVar4;
                    if (gVar3.f6588a == null) {
                    }
                } else if (!f6567f.c(this, gVar2, gVar4)) {
                }
                gVar2 = gVar4;
            }
            return;
        }
    }

    private String w(Object obj) {
        return obj == this ? "this future" : String.valueOf(obj);
    }

    @Override // com.google.common.util.concurrent.r
    public final void addListener(Runnable runnable, Executor executor) {
        i(runnable);
        i(executor);
        d dVar = this.f6570b;
        if (dVar != d.f6578d) {
            d dVar2 = new d(runnable, executor);
            do {
                dVar2.f6581c = dVar;
                if (f6567f.a(this, dVar, dVar2)) {
                    return;
                } else {
                    dVar = this.f6570b;
                }
            } while (dVar != d.f6578d);
        }
        m(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z10) {
        c cVar;
        Object obj = this.f6569a;
        if (!(obj == null) && !(obj instanceof SetFuture)) {
            return false;
        }
        if (f6565d) {
            cVar = new c(z10, new CancellationException("Future.cancel() was called."));
        } else {
            cVar = z10 ? c.f6574c : c.f6575d;
        }
        AbstractResolvableFuture abstractResolvableFuture = this;
        boolean z11 = false;
        while (true) {
            if (f6567f.b(abstractResolvableFuture, obj, cVar)) {
                if (z10) {
                    abstractResolvableFuture.q();
                }
                l(abstractResolvableFuture);
                if (!(obj instanceof SetFuture)) {
                    return true;
                }
                r rVar = ((SetFuture) obj).future;
                if (!(rVar instanceof AbstractResolvableFuture)) {
                    rVar.cancel(z10);
                    return true;
                }
                abstractResolvableFuture = (AbstractResolvableFuture) rVar;
                obj = abstractResolvableFuture.f6569a;
                if (!(obj == null) && !(obj instanceof SetFuture)) {
                    return true;
                }
                z11 = true;
            } else {
                obj = abstractResolvableFuture.f6569a;
                if (!(obj instanceof SetFuture)) {
                    return z11;
                }
            }
        }
    }

    protected void d() {
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws InterruptedException {
        Object obj;
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj2 = this.f6569a;
        if ((obj2 != null) && (!(obj2 instanceof SetFuture))) {
            return n(obj2);
        }
        g gVar = this.f6571c;
        if (gVar != g.f6587c) {
            g gVar2 = new g();
            do {
                gVar2.a(gVar);
                if (f6567f.c(this, gVar, gVar2)) {
                    do {
                        LockSupport.park(this);
                        if (Thread.interrupted()) {
                            t(gVar2);
                            throw new InterruptedException();
                        }
                        obj = this.f6569a;
                    } while (!((obj != null) & (!(obj instanceof SetFuture))));
                    return n(obj);
                }
                gVar = this.f6571c;
            } while (gVar != g.f6587c);
        }
        return n(this.f6569a);
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j11, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j11);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.f6569a;
        if ((obj != null) && (!(obj instanceof SetFuture))) {
            return n(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            g gVar = this.f6571c;
            if (gVar != g.f6587c) {
                g gVar2 = new g();
                while (true) {
                    gVar2.a(gVar);
                    if (f6567f.c(this, gVar, gVar2)) {
                        do {
                            LockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                t(gVar2);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.f6569a;
                            if ((obj2 != null) && (!(obj2 instanceof SetFuture))) {
                                return n(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        t(gVar2);
                        break;
                    }
                    gVar = this.f6571c;
                    if (gVar == g.f6587c) {
                    }
                }
            }
            return n(this.f6569a);
        }
        while (nanos > 0) {
            Object obj3 = this.f6569a;
            if ((obj3 != null) && (!(obj3 instanceof SetFuture))) {
                return n(obj3);
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
        return this.f6569a instanceof c;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        Object obj = this.f6569a;
        return (!(obj instanceof SetFuture)) & (obj != null);
    }

    protected void q() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected String r() {
        Object obj = this.f6569a;
        if (obj instanceof SetFuture) {
            return "setFuture=[" + w(((SetFuture) obj).future) + "]";
        }
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    public String toString() {
        String strR;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.toString());
        sb2.append("[status=");
        if (isCancelled()) {
            sb2.append("CANCELLED");
        } else if (isDone()) {
            b(sb2);
        } else {
            try {
                strR = r();
            } catch (RuntimeException e11) {
                strR = "Exception thrown from implementation: " + e11.getClass();
            }
            if (strR != null && !strR.isEmpty()) {
                sb2.append("PENDING, info=[");
                sb2.append(strR);
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

    protected boolean u(Object obj) {
        if (obj == null) {
            obj = f6568g;
        }
        if (!f6567f.b(this, null, obj)) {
            return false;
        }
        l(this);
        return true;
    }

    protected boolean v(Throwable th2) {
        if (!f6567f.b(this, null, new Failure((Throwable) i(th2)))) {
            return false;
        }
        l(this);
        return true;
    }

    protected final boolean x() {
        Object obj = this.f6569a;
        return (obj instanceof c) && ((c) obj).f6576a;
    }
}
