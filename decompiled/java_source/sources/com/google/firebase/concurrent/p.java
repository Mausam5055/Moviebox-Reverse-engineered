package com.google.firebase.concurrent;

import androidx.concurrent.futures.AbstractResolvableFuture;
import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
class p extends AbstractResolvableFuture implements ScheduledFuture {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ScheduledFuture f31127h;

    class a implements b {
        a() {
        }

        @Override // com.google.firebase.concurrent.p.b
        public void a(Throwable th2) {
            p.this.v(th2);
        }

        @Override // com.google.firebase.concurrent.p.b
        public void set(Object obj) {
            p.this.u(obj);
        }
    }

    interface b {
        void a(Throwable th2);

        void set(Object obj);
    }

    interface c {
        ScheduledFuture a(b bVar);
    }

    p(c cVar) {
        this.f31127h = cVar.a(new a());
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public int compareTo(Delayed delayed) {
        return this.f31127h.compareTo(delayed);
    }

    @Override // androidx.concurrent.futures.AbstractResolvableFuture
    protected void d() {
        this.f31127h.cancel(x());
    }

    @Override // java.util.concurrent.Delayed
    public long getDelay(TimeUnit timeUnit) {
        return this.f31127h.getDelay(timeUnit);
    }
}
