package com.android.volley;

import android.os.Process;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: loaded from: classes2.dex */
public class CacheDispatcher extends Thread {
    private static final boolean DEBUG = l.f19256b;
    private final c mCache;
    private final BlockingQueue<Request> mCacheQueue;
    private final j mDelivery;
    private final BlockingQueue<Request> mNetworkQueue;
    private volatile boolean mQuit = false;
    private final m mWaitingRequestManager;

    public CacheDispatcher(BlockingQueue<Request> blockingQueue, BlockingQueue<Request> blockingQueue2, c cVar, j jVar) {
        this.mCacheQueue = blockingQueue;
        this.mNetworkQueue = blockingQueue2;
        this.mCache = cVar;
        this.mDelivery = jVar;
        this.mWaitingRequestManager = new m(this, blockingQueue2, jVar);
    }

    private void processRequest() throws InterruptedException {
        processRequest(this.mCacheQueue.take());
    }

    void processRequest(final Request request) throws InterruptedException {
        request.addMarker("cache-queue-take");
        request.sendEvent(1);
        try {
            if (request.isCanceled()) {
                request.finish("cache-discard-canceled");
                return;
            }
            c.a aVarA = this.mCache.a(request.getCacheKey());
            if (aVarA == null) {
                request.addMarker("cache-miss");
                if (!this.mWaitingRequestManager.c(request)) {
                    this.mNetworkQueue.put(request);
                }
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (aVarA.b(jCurrentTimeMillis)) {
                request.addMarker("cache-hit-expired");
                request.setCacheEntry(aVarA);
                if (!this.mWaitingRequestManager.c(request)) {
                    this.mNetworkQueue.put(request);
                }
                return;
            }
            request.addMarker("cache-hit");
            i networkResponse = request.parseNetworkResponse(new g(aVarA.f19220a, aVarA.f19226g));
            request.addMarker("cache-hit-parsed");
            if (!networkResponse.b()) {
                request.addMarker("cache-parsing-failed");
                this.mCache.b(request.getCacheKey(), true);
                request.setCacheEntry(null);
                if (!this.mWaitingRequestManager.c(request)) {
                    this.mNetworkQueue.put(request);
                }
                return;
            }
            if (aVarA.c(jCurrentTimeMillis)) {
                request.addMarker("cache-hit-refresh-needed");
                request.setCacheEntry(aVarA);
                networkResponse.f19254d = true;
                if (this.mWaitingRequestManager.c(request)) {
                    this.mDelivery.a(request, networkResponse);
                } else {
                    this.mDelivery.b(request, networkResponse, new Runnable() { // from class: com.android.volley.CacheDispatcher.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                CacheDispatcher.this.mNetworkQueue.put(request);
                            } catch (InterruptedException unused) {
                                Thread.currentThread().interrupt();
                            }
                        }
                    });
                }
            } else {
                this.mDelivery.a(request, networkResponse);
            }
        } finally {
            request.sendEvent(2);
        }
    }

    public void quit() {
        this.mQuit = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        if (DEBUG) {
            l.e("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.mCache.initialize();
        while (true) {
            try {
                processRequest();
            } catch (InterruptedException unused) {
                if (this.mQuit) {
                    Thread.currentThread().interrupt();
                    return;
                }
                l.c("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
