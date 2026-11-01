package com.squareup.okhttp;

import com.squareup.okhttp.internal.g;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class Dispatcher {
    private ExecutorService executorService;
    private int maxRequests = 64;
    private int maxRequestsPerHost = 5;
    private final Deque<Call.AsyncCall> readyCalls = new ArrayDeque();
    private final Deque<Call.AsyncCall> runningCalls = new ArrayDeque();
    private final Deque<Call> executedCalls = new ArrayDeque();

    public Dispatcher() {
    }

    public Dispatcher(ExecutorService executorService) {
        this.executorService = executorService;
    }

    private void promoteCalls() {
        if (this.runningCalls.size() < this.maxRequests && !this.readyCalls.isEmpty()) {
            Iterator<Call.AsyncCall> it = this.readyCalls.iterator();
            while (it.hasNext()) {
                Call.AsyncCall next = it.next();
                if (runningCallsForHost(next) < this.maxRequestsPerHost) {
                    it.remove();
                    this.runningCalls.add(next);
                    getExecutorService().execute(next);
                }
                if (this.runningCalls.size() >= this.maxRequests) {
                    return;
                }
            }
        }
    }

    private int runningCallsForHost(Call.AsyncCall asyncCall) {
        Iterator<Call.AsyncCall> it = this.runningCalls.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            if (it.next().host().equals(asyncCall.host())) {
                i11++;
            }
        }
        return i11;
    }

    public synchronized void cancel(Object obj) {
        try {
            for (Call.AsyncCall asyncCall : this.readyCalls) {
                if (g.h(obj, asyncCall.tag())) {
                    asyncCall.cancel();
                }
            }
            for (Call.AsyncCall asyncCall2 : this.runningCalls) {
                if (g.h(obj, asyncCall2.tag())) {
                    asyncCall2.get().canceled = true;
                    com.squareup.okhttp.internal.http.g gVar = asyncCall2.get().engine;
                    if (gVar != null) {
                        gVar.e();
                    }
                }
            }
            for (Call call : this.executedCalls) {
                if (g.h(obj, call.tag())) {
                    call.cancel();
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    synchronized void enqueue(Call.AsyncCall asyncCall) {
        try {
            if (this.runningCalls.size() >= this.maxRequests || runningCallsForHost(asyncCall) >= this.maxRequestsPerHost) {
                this.readyCalls.add(asyncCall);
            } else {
                this.runningCalls.add(asyncCall);
                getExecutorService().execute(asyncCall);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    synchronized void executed(Call call) {
        this.executedCalls.add(call);
    }

    synchronized void finished(Call.AsyncCall asyncCall) {
        if (!this.runningCalls.remove(asyncCall)) {
            throw new AssertionError("AsyncCall wasn't running!");
        }
        promoteCalls();
    }

    synchronized void finished(Call call) {
        if (!this.executedCalls.remove(call)) {
            throw new AssertionError("Call wasn't in-flight!");
        }
    }

    public synchronized ExecutorService getExecutorService() {
        try {
            if (this.executorService == null) {
                this.executorService = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), g.s("OkHttp Dispatcher", false));
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.executorService;
    }

    public synchronized int getMaxRequests() {
        return this.maxRequests;
    }

    public synchronized int getMaxRequestsPerHost() {
        return this.maxRequestsPerHost;
    }

    public synchronized int getQueuedCallCount() {
        return this.readyCalls.size();
    }

    public synchronized int getRunningCallCount() {
        return this.runningCalls.size();
    }

    public synchronized void setMaxRequests(int i11) {
        try {
            if (i11 < 1) {
                throw new IllegalArgumentException("max < 1: " + i11);
            }
            this.maxRequests = i11;
            promoteCalls();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void setMaxRequestsPerHost(int i11) {
        try {
            if (i11 < 1) {
                throw new IllegalArgumentException("max < 1: " + i11);
            }
            this.maxRequestsPerHost = i11;
            promoteCalls();
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
