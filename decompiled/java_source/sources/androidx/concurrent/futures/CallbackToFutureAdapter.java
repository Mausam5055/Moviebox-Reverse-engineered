package androidx.concurrent.futures;

import com.google.common.util.concurrent.r;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class CallbackToFutureAdapter {

    static final class FutureGarbageCollectedException extends Throwable {
        FutureGarbageCollectedException(String str) {
            super(str);
        }

        @Override // java.lang.Throwable
        public synchronized Throwable fillInStackTrace() {
            return this;
        }
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Object f6590a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        c f6591b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private androidx.concurrent.futures.b f6592c = androidx.concurrent.futures.b.y();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f6593d;

        a() {
        }

        private void e() {
            this.f6590a = null;
            this.f6591b = null;
            this.f6592c = null;
        }

        public void a(Runnable runnable, Executor executor) {
            androidx.concurrent.futures.b bVar = this.f6592c;
            if (bVar != null) {
                bVar.addListener(runnable, executor);
            }
        }

        void b() {
            this.f6590a = null;
            this.f6591b = null;
            this.f6592c.u(null);
        }

        public boolean c(Object obj) {
            this.f6593d = true;
            c cVar = this.f6591b;
            boolean z10 = cVar != null && cVar.c(obj);
            if (z10) {
                e();
            }
            return z10;
        }

        public boolean d() {
            this.f6593d = true;
            c cVar = this.f6591b;
            boolean z10 = cVar != null && cVar.b(true);
            if (z10) {
                e();
            }
            return z10;
        }

        public boolean f(Throwable th2) {
            this.f6593d = true;
            c cVar = this.f6591b;
            boolean z10 = cVar != null && cVar.d(th2);
            if (z10) {
                e();
            }
            return z10;
        }

        protected void finalize() {
            androidx.concurrent.futures.b bVar;
            c cVar = this.f6591b;
            if (cVar != null && !cVar.isDone()) {
                cVar.d(new FutureGarbageCollectedException("The completer object was garbage collected - this future would otherwise never complete. The tag was: " + this.f6590a));
            }
            if (this.f6593d || (bVar = this.f6592c) == null) {
                return;
            }
            bVar.u(null);
        }
    }

    public interface b {
        Object a(a aVar);
    }

    private static final class c implements r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final WeakReference f6594a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final AbstractResolvableFuture f6595b = new a();

        class a extends AbstractResolvableFuture {
            a() {
            }

            @Override // androidx.concurrent.futures.AbstractResolvableFuture
            protected String r() {
                a aVar = (a) c.this.f6594a.get();
                if (aVar == null) {
                    return "Completer object has been garbage collected, future will fail soon";
                }
                return "tag=[" + aVar.f6590a + "]";
            }
        }

        c(a aVar) {
            this.f6594a = new WeakReference(aVar);
        }

        @Override // com.google.common.util.concurrent.r
        public void addListener(Runnable runnable, Executor executor) {
            this.f6595b.addListener(runnable, executor);
        }

        boolean b(boolean z10) {
            return this.f6595b.cancel(z10);
        }

        boolean c(Object obj) {
            return this.f6595b.u(obj);
        }

        @Override // java.util.concurrent.Future
        public boolean cancel(boolean z10) {
            a aVar = (a) this.f6594a.get();
            boolean zCancel = this.f6595b.cancel(z10);
            if (zCancel && aVar != null) {
                aVar.b();
            }
            return zCancel;
        }

        boolean d(Throwable th2) {
            return this.f6595b.v(th2);
        }

        @Override // java.util.concurrent.Future
        public Object get() {
            return this.f6595b.get();
        }

        @Override // java.util.concurrent.Future
        public Object get(long j11, TimeUnit timeUnit) {
            return this.f6595b.get(j11, timeUnit);
        }

        @Override // java.util.concurrent.Future
        public boolean isCancelled() {
            return this.f6595b.isCancelled();
        }

        @Override // java.util.concurrent.Future
        public boolean isDone() {
            return this.f6595b.isDone();
        }

        public String toString() {
            return this.f6595b.toString();
        }
    }

    public static r a(b bVar) {
        a aVar = new a();
        c cVar = new c(aVar);
        aVar.f6591b = cVar;
        aVar.f6590a = bVar.getClass();
        try {
            Object objA = bVar.a(aVar);
            if (objA != null) {
                aVar.f6590a = objA;
            }
        } catch (Exception e11) {
            cVar.d(e11);
        }
        return cVar;
    }
}
