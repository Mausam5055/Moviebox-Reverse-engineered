package com.bumptech.glide.request;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.util.Util;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes2.dex */
public class RequestFutureTarget<R> implements FutureTarget<R>, RequestListener<R> {
    private static final Waiter DEFAULT_WAITER = new Waiter();
    private final boolean assertBackgroundThread;

    @Nullable
    private GlideException exception;
    private final int height;
    private boolean isCancelled;
    private boolean loadFailed;

    @Nullable
    private Request request;

    @Nullable
    private R resource;
    private boolean resultReceived;
    private final Waiter waiter;
    private final int width;

    static class Waiter {
        Waiter() {
        }

        void notifyAll(Object obj) {
            obj.notifyAll();
        }

        void waitForTimeout(Object obj, long j11) throws InterruptedException {
            obj.wait(j11);
        }
    }

    public RequestFutureTarget(int i11, int i12) {
        this(i11, i12, true, DEFAULT_WAITER);
    }

    RequestFutureTarget(int i11, int i12, boolean z10, Waiter waiter) {
        this.width = i11;
        this.height = i12;
        this.assertBackgroundThread = z10;
        this.waiter = waiter;
    }

    private synchronized R doGet(Long l11) throws ExecutionException, InterruptedException, TimeoutException {
        try {
            if (this.assertBackgroundThread && !isDone()) {
                Util.assertBackgroundThread();
            }
            if (this.isCancelled) {
                throw new CancellationException();
            }
            if (this.loadFailed) {
                throw new ExecutionException(this.exception);
            }
            if (this.resultReceived) {
                return this.resource;
            }
            if (l11 == null) {
                this.waiter.waitForTimeout(this, 0L);
            } else if (l11.longValue() > 0) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                long jLongValue = l11.longValue() + jCurrentTimeMillis;
                while (!isDone() && jCurrentTimeMillis < jLongValue) {
                    this.waiter.waitForTimeout(this, jLongValue - jCurrentTimeMillis);
                    jCurrentTimeMillis = System.currentTimeMillis();
                }
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            if (this.loadFailed) {
                throw new ExecutionException(this.exception);
            }
            if (this.isCancelled) {
                throw new CancellationException();
            }
            if (!this.resultReceived) {
                throw new TimeoutException();
            }
            return this.resource;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z10) {
        synchronized (this) {
            try {
                if (isDone()) {
                    return false;
                }
                this.isCancelled = true;
                this.waiter.notifyAll(this);
                Request request = null;
                if (z10) {
                    Request request2 = this.request;
                    this.request = null;
                    request = request2;
                }
                if (request != null) {
                    request.clear();
                }
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // java.util.concurrent.Future
    public R get() throws ExecutionException, InterruptedException {
        try {
            return doGet(null);
        } catch (TimeoutException e11) {
            throw new AssertionError(e11);
        }
    }

    @Override // java.util.concurrent.Future
    public R get(long j11, @NonNull TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return doGet(Long.valueOf(timeUnit.toMillis(j11)));
    }

    @Override // com.bumptech.glide.request.target.Target
    @Nullable
    public synchronized Request getRequest() {
        return this.request;
    }

    @Override // com.bumptech.glide.request.target.Target
    public void getSize(@NonNull SizeReadyCallback sizeReadyCallback) {
        sizeReadyCallback.onSizeReady(this.width, this.height);
    }

    @Override // java.util.concurrent.Future
    public synchronized boolean isCancelled() {
        return this.isCancelled;
    }

    @Override // java.util.concurrent.Future
    public synchronized boolean isDone() {
        return this.isCancelled || this.resultReceived || this.loadFailed;
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onDestroy() {
    }

    @Override // com.bumptech.glide.request.target.Target
    public void onLoadCleared(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public synchronized void onLoadFailed(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.RequestListener
    public synchronized boolean onLoadFailed(@Nullable GlideException glideException, Object obj, @NonNull Target<R> target, boolean z10) {
        this.loadFailed = true;
        this.exception = glideException;
        this.waiter.notifyAll(this);
        return false;
    }

    @Override // com.bumptech.glide.request.target.Target
    public void onLoadStarted(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public synchronized void onResourceReady(@NonNull R r11, @Nullable Transition<? super R> transition) {
    }

    @Override // com.bumptech.glide.request.RequestListener
    public synchronized boolean onResourceReady(@NonNull R r11, @NonNull Object obj, Target<R> target, @NonNull DataSource dataSource, boolean z10) {
        this.resultReceived = true;
        this.resource = r11;
        this.waiter.notifyAll(this);
        return false;
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onStart() {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onStop() {
    }

    @Override // com.bumptech.glide.request.target.Target
    public void removeCallback(@NonNull SizeReadyCallback sizeReadyCallback) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public synchronized void setRequest(@Nullable Request request) {
        this.request = request;
    }

    public String toString() {
        Request request;
        String str;
        String str2 = super.toString() + "[status=";
        synchronized (this) {
            try {
                request = null;
                if (this.isCancelled) {
                    str = "CANCELLED";
                } else if (this.loadFailed) {
                    str = "FAILURE";
                } else if (this.resultReceived) {
                    str = "SUCCESS";
                } else {
                    str = "PENDING";
                    request = this.request;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (request == null) {
            return str2 + str + "]";
        }
        return str2 + str + ", request=[" + request + "]]";
    }
}
