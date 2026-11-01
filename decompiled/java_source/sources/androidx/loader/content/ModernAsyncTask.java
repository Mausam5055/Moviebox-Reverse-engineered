package androidx.loader.content;

import android.os.Binder;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.util.Log;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
abstract class ModernAsyncTask {
    private static final int CORE_POOL_SIZE = 5;
    private static final int KEEP_ALIVE = 1;
    private static final String LOG_TAG = "AsyncTask";
    private static final int MAXIMUM_POOL_SIZE = 128;
    private static final int MESSAGE_POST_PROGRESS = 2;
    private static final int MESSAGE_POST_RESULT = 1;
    public static final Executor THREAD_POOL_EXECUTOR;
    private static volatile Executor sDefaultExecutor;
    private static e sHandler;
    private static final BlockingQueue<Runnable> sPoolWorkQueue;
    private static final ThreadFactory sThreadFactory;
    private final FutureTask<Object> mFuture;
    private final f mWorker;
    private volatile Status mStatus = Status.PENDING;
    final AtomicBoolean mCancelled = new AtomicBoolean();
    final AtomicBoolean mTaskInvoked = new AtomicBoolean();

    public enum Status {
        PENDING,
        RUNNING,
        FINISHED
    }

    static class a implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AtomicInteger f9694a = new AtomicInteger(1);

        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "ModernAsyncTask #" + this.f9694a.getAndIncrement());
        }
    }

    class b extends f {
        b() {
        }

        @Override // java.util.concurrent.Callable
        public Object call() {
            ModernAsyncTask.this.mTaskInvoked.set(true);
            Object objDoInBackground = null;
            try {
                Process.setThreadPriority(10);
                objDoInBackground = ModernAsyncTask.this.doInBackground(this.f9699a);
                Binder.flushPendingCommands();
                ModernAsyncTask.this.postResult(objDoInBackground);
                return objDoInBackground;
            } catch (Throwable th2) {
                try {
                    ModernAsyncTask.this.mCancelled.set(true);
                    throw th2;
                } catch (Throwable th3) {
                    ModernAsyncTask.this.postResult(objDoInBackground);
                    throw th3;
                }
            }
        }
    }

    static /* synthetic */ class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f9696a;

        static {
            int[] iArr = new int[Status.values().length];
            f9696a = iArr;
            try {
                iArr[Status.RUNNING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9696a[Status.FINISHED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ModernAsyncTask f9697a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Object[] f9698b;

        d(ModernAsyncTask modernAsyncTask, Object... objArr) {
            this.f9697a = modernAsyncTask;
            this.f9698b = objArr;
        }
    }

    private static class e extends Handler {
        e() {
            super(Looper.getMainLooper());
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            d dVar = (d) message.obj;
            int i11 = message.what;
            if (i11 == 1) {
                dVar.f9697a.finish(dVar.f9698b[0]);
            } else {
                if (i11 != 2) {
                    return;
                }
                dVar.f9697a.onProgressUpdate(dVar.f9698b);
            }
        }
    }

    private static abstract class f implements Callable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Object[] f9699a;

        f() {
        }
    }

    static {
        a aVar = new a();
        sThreadFactory = aVar;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue(10);
        sPoolWorkQueue = linkedBlockingQueue;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, linkedBlockingQueue, aVar);
        THREAD_POOL_EXECUTOR = threadPoolExecutor;
        sDefaultExecutor = threadPoolExecutor;
    }

    ModernAsyncTask() {
        b bVar = new b();
        this.mWorker = bVar;
        this.mFuture = new FutureTask<Object>(bVar) { // from class: androidx.loader.content.ModernAsyncTask.3
            @Override // java.util.concurrent.FutureTask
            protected void done() {
                try {
                    ModernAsyncTask.this.postResultIfNotInvoked(get());
                } catch (InterruptedException e11) {
                    Log.w(ModernAsyncTask.LOG_TAG, e11);
                } catch (CancellationException unused) {
                    ModernAsyncTask.this.postResultIfNotInvoked(null);
                } catch (ExecutionException e12) {
                    throw new RuntimeException("An error occurred while executing doInBackground()", e12.getCause());
                } catch (Throwable th2) {
                    throw new RuntimeException("An error occurred while executing doInBackground()", th2);
                }
            }
        };
    }

    private static Handler a() {
        e eVar;
        synchronized (ModernAsyncTask.class) {
            try {
                if (sHandler == null) {
                    sHandler = new e();
                }
                eVar = sHandler;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return eVar;
    }

    public static void execute(Runnable runnable) {
        sDefaultExecutor.execute(runnable);
    }

    public static void setDefaultExecutor(Executor executor) {
        sDefaultExecutor = executor;
    }

    public final boolean cancel(boolean z10) {
        this.mCancelled.set(true);
        return this.mFuture.cancel(z10);
    }

    protected abstract Object doInBackground(Object... objArr);

    public final ModernAsyncTask execute(Object... objArr) {
        return executeOnExecutor(sDefaultExecutor, objArr);
    }

    public final ModernAsyncTask executeOnExecutor(Executor executor, Object... objArr) {
        if (this.mStatus == Status.PENDING) {
            this.mStatus = Status.RUNNING;
            onPreExecute();
            this.mWorker.f9699a = objArr;
            executor.execute(this.mFuture);
            return this;
        }
        int i11 = c.f9696a[this.mStatus.ordinal()];
        if (i11 == 1) {
            throw new IllegalStateException("Cannot execute task: the task is already running.");
        }
        if (i11 != 2) {
            throw new IllegalStateException("We should never reach this state");
        }
        throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
    }

    void finish(Object obj) {
        if (isCancelled()) {
            onCancelled(obj);
        } else {
            onPostExecute(obj);
        }
        this.mStatus = Status.FINISHED;
    }

    public final Object get() throws ExecutionException, InterruptedException {
        return this.mFuture.get();
    }

    public final Object get(long j11, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return this.mFuture.get(j11, timeUnit);
    }

    public final Status getStatus() {
        return this.mStatus;
    }

    public final boolean isCancelled() {
        return this.mCancelled.get();
    }

    protected void onCancelled() {
    }

    protected abstract void onCancelled(Object obj);

    protected abstract void onPostExecute(Object obj);

    protected void onPreExecute() {
    }

    protected void onProgressUpdate(Object... objArr) {
    }

    Object postResult(Object obj) {
        a().obtainMessage(1, new d(this, obj)).sendToTarget();
        return obj;
    }

    void postResultIfNotInvoked(Object obj) {
        if (this.mTaskInvoked.get()) {
            return;
        }
        postResult(obj);
    }

    protected final void publishProgress(Object... objArr) {
        if (isCancelled()) {
            return;
        }
        a().obtainMessage(2, new d(this, objArr)).sendToTarget();
    }
}
