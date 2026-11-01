package com.android.volley;

import android.annotation.TargetApi;
import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: loaded from: classes2.dex */
public class NetworkDispatcher extends Thread {
    private final c mCache;
    private final j mDelivery;
    private final f mNetwork;
    private final BlockingQueue<Request> mQueue;
    private volatile boolean mQuit = false;

    public NetworkDispatcher(BlockingQueue<Request> blockingQueue, f fVar, c cVar, j jVar) {
        this.mQueue = blockingQueue;
        this.mNetwork = fVar;
        this.mCache = cVar;
        this.mDelivery = jVar;
    }

    @TargetApi(14)
    private void addTrafficStatsTag(Request request) {
        TrafficStats.setThreadStatsTag(request.getTrafficStatsTag());
    }

    private void parseAndDeliverNetworkError(Request request, VolleyError volleyError) {
        this.mDelivery.c(request, request.parseNetworkError(volleyError));
    }

    private void processRequest() throws InterruptedException {
        processRequest(this.mQueue.take());
    }

    void processRequest(Request request) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        request.sendEvent(3);
        try {
            try {
                try {
                    request.addMarker("network-queue-take");
                    if (request.isCanceled()) {
                        request.finish("network-discard-cancelled");
                        request.notifyListenerResponseNotUsable();
                        return;
                    }
                    addTrafficStatsTag(request);
                    g gVarA = this.mNetwork.a(request);
                    request.addMarker("network-http-complete");
                    if (gVarA.f19238e && request.hasHadResponseDelivered()) {
                        request.finish("not-modified");
                        request.notifyListenerResponseNotUsable();
                        return;
                    }
                    i networkResponse = request.parseNetworkResponse(gVarA);
                    request.addMarker("network-parse-complete");
                    if (request.shouldCache() && networkResponse.f19252b != null) {
                        this.mCache.c(request.getCacheKey(), networkResponse.f19252b);
                        request.addMarker("network-cache-written");
                    }
                    request.markDelivered();
                    this.mDelivery.a(request, networkResponse);
                    request.notifyListenerResponseReceived(networkResponse);
                } catch (VolleyError e11) {
                    e11.setNetworkTimeMs(SystemClock.elapsedRealtime() - jElapsedRealtime);
                    parseAndDeliverNetworkError(request, e11);
                    request.notifyListenerResponseNotUsable();
                }
            } catch (Exception e12) {
                l.d(e12, "Unhandled exception %s", e12.toString());
                VolleyError volleyError = new VolleyError(e12);
                volleyError.setNetworkTimeMs(SystemClock.elapsedRealtime() - jElapsedRealtime);
                this.mDelivery.c(request, volleyError);
                request.notifyListenerResponseNotUsable();
            }
        } finally {
            request.sendEvent(4);
        }
    }

    public void quit() {
        this.mQuit = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                processRequest();
            } catch (InterruptedException unused) {
                if (this.mQuit) {
                    Thread.currentThread().interrupt();
                    return;
                }
                l.c("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
