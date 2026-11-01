package com.vungle.ads.internal.executor;

import com.vungle.ads.internal.util.o;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b implements Future {
    public static final a Companion = new a(null);
    private static final String TAG = b.class.getSimpleName();
    private final Future<Object> future;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String getTAG() {
            return b.TAG;
        }
    }

    public b(Future<Object> future) {
        this.future = future;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z10) {
        Future<Object> future = this.future;
        if (future != null) {
            return future.cancel(z10);
        }
        return false;
    }

    @Override // java.util.concurrent.Future
    public Object get() {
        try {
            Future<Object> future = this.future;
            if (future != null) {
                return future.get();
            }
            return null;
        } catch (InterruptedException unused) {
            o.a aVar = o.Companion;
            String TAG2 = TAG;
            Intrinsics.g(TAG2, "TAG");
            aVar.w(TAG2, "future.get() Interrupted on Thread " + Thread.currentThread().getName());
            Thread.currentThread().interrupt();
            return null;
        } catch (ExecutionException e11) {
            o.a aVar2 = o.Companion;
            String TAG3 = TAG;
            Intrinsics.g(TAG3, "TAG");
            aVar2.e(TAG3, "error on execution", e11);
            return null;
        }
    }

    @Override // java.util.concurrent.Future
    public Object get(long j11, TimeUnit unit) {
        Intrinsics.h(unit, "unit");
        try {
            Future<Object> future = this.future;
            if (future != null) {
                return future.get(j11, unit);
            }
            return null;
        } catch (InterruptedException unused) {
            o.a aVar = o.Companion;
            String TAG2 = TAG;
            Intrinsics.g(TAG2, "TAG");
            aVar.w(TAG2, "future.get() Interrupted on Thread " + Thread.currentThread().getName());
            Thread.currentThread().interrupt();
            return null;
        } catch (ExecutionException e11) {
            o.a aVar2 = o.Companion;
            String TAG3 = TAG;
            Intrinsics.g(TAG3, "TAG");
            aVar2.e(TAG3, "error on execution", e11);
            return null;
        } catch (TimeoutException e12) {
            o.a aVar3 = o.Companion;
            String TAG4 = TAG;
            Intrinsics.g(TAG4, "TAG");
            aVar3.e(TAG4, "error on timeout", e12);
            Intrinsics.g(TAG4, "TAG");
            aVar3.w(TAG4, "future.get() Timeout on Thread " + Thread.currentThread().getName());
            return null;
        }
    }

    public final Future<Object> getFuture() {
        return this.future;
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        Future<Object> future = this.future;
        if (future != null) {
            return future.isCancelled();
        }
        return false;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        Future<Object> future = this.future;
        if (future != null) {
            return future.isDone();
        }
        return false;
    }
}
