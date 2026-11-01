package com.bumptech.glide.integration.cronet;

import android.util.Log;
import androidx.annotation.Nullable;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.HttpException;
import com.bumptech.glide.load.engine.executor.GlideExecutor;
import com.bumptech.glide.load.model.GlideUrl;
import com.google.common.base.Suppliers;
import com.google.common.base.q;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import org.chromium.net.CronetException;
import org.chromium.net.UrlRequest;
import org.chromium.net.UrlResponseInfo;

/* JADX INFO: loaded from: classes2.dex */
final class ChromiumRequestSerializer {
    private static final q GLIDE_EXECUTOR_SUPPLIER;
    private static final Map<Priority, Integer> GLIDE_TO_CHROMIUM_PRIORITY;
    private static final String TAG = "ChromiumSerializer";

    @Nullable
    private final DataLogger dataLogger;
    private final JobPool jobPool = new JobPool();
    private final Map<GlideUrl, Job> jobs = new HashMap();
    private final CronetRequestFactory requestFactory;

    private class Job extends UrlRequest.Callback {
        private BufferQueue.Builder builder;
        private long endTimeMs;
        private GlideUrl glideUrl;
        private volatile boolean isCancelled;
        private final List<Listener> listeners;
        private Priority priority;
        private UrlRequest request;
        private long responseStartTimeMs;
        private long startTime;

        private Job() {
            this.listeners = new ArrayList(2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearListeners() {
            synchronized (ChromiumRequestSerializer.this) {
                this.listeners.clear();
                this.request = null;
                this.isCancelled = false;
            }
        }

        private void maybeLogResult(boolean z10, Exception exc, boolean z11, ByteBuffer byteBuffer) {
            if (!z10 || !Log.isLoggable(ChromiumRequestSerializer.TAG, 2)) {
                if (z10 || !Log.isLoggable(ChromiumRequestSerializer.TAG, 6) || z11) {
                    return;
                }
                Log.e(ChromiumRequestSerializer.TAG, "Request failed", exc);
                return;
            }
            Log.v(ChromiumRequestSerializer.TAG, "Successfully completed request, url: " + this.glideUrl + ", duration: " + (System.currentTimeMillis() - this.startTime) + ", file size: " + (byteBuffer.limit() / 1024) + "kb");
        }

        private void notifyFailure(Exception exc) {
            int size = this.listeners.size();
            for (int i11 = 0; i11 < size; i11++) {
                this.listeners.get(i11).onRequestFailed(exc);
            }
        }

        private void notifySuccess(ByteBuffer byteBuffer) {
            int size = this.listeners.size();
            for (int i11 = 0; i11 < size; i11++) {
                this.listeners.get(i11).onRequestComplete(byteBuffer);
                byteBuffer = (ByteBuffer) byteBuffer.asReadOnlyBuffer().position(0);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onRequestFinished(UrlResponseInfo urlResponseInfo, @Nullable CronetException cronetException, boolean z10, ByteBuffer byteBuffer) {
            synchronized (ChromiumRequestSerializer.this) {
                ChromiumRequestSerializer.this.jobs.remove(this.glideUrl);
            }
            IOException exceptionIfFailed = ChromiumRequestSerializer.getExceptionIfFailed(urlResponseInfo, cronetException, z10);
            boolean z11 = exceptionIfFailed == null && !z10;
            this.endTimeMs = System.currentTimeMillis();
            maybeLogResult(z11, exceptionIfFailed, z10, byteBuffer);
            if (z11) {
                notifySuccess(byteBuffer);
            } else {
                notifyFailure(exceptionIfFailed);
            }
            if (ChromiumRequestSerializer.this.dataLogger != null) {
                ChromiumRequestSerializer.this.dataLogger.logNetworkData(urlResponseInfo, this.startTime, this.responseStartTimeMs, this.endTimeMs);
            }
            this.builder = null;
            ChromiumRequestSerializer.this.jobPool.put(this);
        }

        void addListener(Listener listener) {
            synchronized (ChromiumRequestSerializer.this) {
                this.listeners.add(listener);
            }
        }

        void init(GlideUrl glideUrl) {
            this.startTime = System.currentTimeMillis();
            this.glideUrl = glideUrl;
        }

        @Override // org.chromium.net.UrlRequest.Callback
        public void onCanceled(UrlRequest urlRequest, @Nullable final UrlResponseInfo urlResponseInfo) {
            ((Executor) ChromiumRequestSerializer.GLIDE_EXECUTOR_SUPPLIER.get()).execute(new PriorityRunnable(this.priority) { // from class: com.bumptech.glide.integration.cronet.ChromiumRequestSerializer.Job.3
                @Override // java.lang.Runnable
                public void run() {
                    Job.this.onRequestFinished(urlResponseInfo, null, true, null);
                }
            });
        }

        @Override // org.chromium.net.UrlRequest.Callback
        public void onFailed(UrlRequest urlRequest, final UrlResponseInfo urlResponseInfo, final CronetException cronetException) {
            ((Executor) ChromiumRequestSerializer.GLIDE_EXECUTOR_SUPPLIER.get()).execute(new PriorityRunnable(this.priority) { // from class: com.bumptech.glide.integration.cronet.ChromiumRequestSerializer.Job.2
                @Override // java.lang.Runnable
                public void run() {
                    Job.this.onRequestFinished(urlResponseInfo, cronetException, false, null);
                }
            });
        }

        @Override // org.chromium.net.UrlRequest.Callback
        public void onReadCompleted(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, ByteBuffer byteBuffer) throws Exception {
            this.request.read(this.builder.getNextBuffer(byteBuffer));
        }

        @Override // org.chromium.net.UrlRequest.Callback
        public void onRedirectReceived(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, String str) throws Exception {
            urlRequest.followRedirect();
        }

        @Override // org.chromium.net.UrlRequest.Callback
        public void onResponseStarted(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
            this.responseStartTimeMs = System.currentTimeMillis();
            BufferQueue.Builder builder = BufferQueue.builder();
            this.builder = builder;
            urlRequest.read(builder.getFirstBuffer(urlResponseInfo));
        }

        @Override // org.chromium.net.UrlRequest.Callback
        public void onSucceeded(UrlRequest urlRequest, final UrlResponseInfo urlResponseInfo) {
            ((Executor) ChromiumRequestSerializer.GLIDE_EXECUTOR_SUPPLIER.get()).execute(new PriorityRunnable(this.priority) { // from class: com.bumptech.glide.integration.cronet.ChromiumRequestSerializer.Job.1
                @Override // java.lang.Runnable
                public void run() {
                    Job job = Job.this;
                    job.onRequestFinished(urlResponseInfo, null, false, job.builder.build().coalesceToBuffer());
                }
            });
        }

        void removeListener(Listener listener) {
            UrlRequest urlRequest;
            synchronized (ChromiumRequestSerializer.this) {
                try {
                    this.listeners.remove(listener);
                    if (this.listeners.isEmpty()) {
                        this.isCancelled = true;
                        ChromiumRequestSerializer.this.jobs.remove(this.glideUrl);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (!this.isCancelled || (urlRequest = this.request) == null) {
                return;
            }
            urlRequest.cancel();
        }
    }

    private class JobPool {
        private static final int MAX_POOL_SIZE = 50;
        private final ArrayDeque<Job> pool;

        private JobPool() {
            this.pool = new ArrayDeque<>();
        }

        public synchronized Job get(GlideUrl glideUrl) {
            Job jobPoll;
            try {
                jobPoll = this.pool.poll();
                if (jobPoll == null) {
                    jobPoll = new Job();
                }
                jobPoll.init(glideUrl);
            } catch (Throwable th2) {
                throw th2;
            }
            return jobPoll;
        }

        public void put(Job job) {
            job.clearListeners();
            synchronized (this) {
                try {
                    if (this.pool.size() < 50) {
                        this.pool.offer(job);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    interface Listener {
        void onRequestComplete(ByteBuffer byteBuffer);

        void onRequestFailed(@Nullable Exception exc);
    }

    private static abstract class PriorityRunnable implements Runnable, Comparable<PriorityRunnable> {
        private final int priority;

        private PriorityRunnable(Priority priority) {
            this.priority = priority.ordinal();
        }

        @Override // java.lang.Comparable
        public final int compareTo(PriorityRunnable priorityRunnable) {
            int i11 = priorityRunnable.priority;
            int i12 = this.priority;
            if (i11 > i12) {
                return -1;
            }
            return i11 < i12 ? 1 : 0;
        }
    }

    static {
        EnumMap enumMap = new EnumMap(Priority.class);
        GLIDE_TO_CHROMIUM_PRIORITY = enumMap;
        GLIDE_EXECUTOR_SUPPLIER = Suppliers.a(new q() { // from class: com.bumptech.glide.integration.cronet.ChromiumRequestSerializer.1
            @Override // com.google.common.base.q
            public GlideExecutor get() {
                return GlideExecutor.newSourceExecutor(1, "chromium-serializer", GlideExecutor.UncaughtThrowableStrategy.DEFAULT);
            }
        });
        enumMap.put(Priority.IMMEDIATE, 4);
        enumMap.put(Priority.HIGH, 3);
        enumMap.put(Priority.NORMAL, 2);
        enumMap.put(Priority.LOW, 1);
    }

    ChromiumRequestSerializer(CronetRequestFactory cronetRequestFactory, @Nullable DataLogger dataLogger) {
        this.requestFactory = cronetRequestFactory;
        this.dataLogger = dataLogger;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static IOException getExceptionIfFailed(UrlResponseInfo urlResponseInfo, IOException iOException, boolean z10) {
        if (z10) {
            return null;
        }
        if (iOException != null) {
            return iOException;
        }
        if (urlResponseInfo.getHttpStatusCode() != 200) {
            return new HttpException(urlResponseInfo.getHttpStatusCode());
        }
        return null;
    }

    void cancelRequest(GlideUrl glideUrl, Listener listener) {
        Job job;
        synchronized (this) {
            job = this.jobs.get(glideUrl);
        }
        if (job != null) {
            job.removeListener(listener);
        }
    }

    void startRequest(Priority priority, GlideUrl glideUrl, Listener listener) {
        Job job;
        boolean z10;
        synchronized (this) {
            try {
                job = this.jobs.get(glideUrl);
                if (job == null) {
                    job = this.jobPool.get(glideUrl);
                    this.jobs.put(glideUrl, job);
                    z10 = true;
                } else {
                    z10 = false;
                }
                job.addListener(listener);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            if (Log.isLoggable(TAG, 2)) {
                Log.v(TAG, "Fetching image url using cronet url: " + glideUrl);
            }
            job.priority = priority;
            job.request = this.requestFactory.newRequest(glideUrl.toStringUrl(), GLIDE_TO_CHROMIUM_PRIORITY.get(priority).intValue(), glideUrl.getHeaders(), job).build();
            job.request.start();
            if (job.isCancelled) {
                job.request.cancel();
            }
        }
    }
}
