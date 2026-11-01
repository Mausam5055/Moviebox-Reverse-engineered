package com.squareup.okhttp;

import com.squareup.okhttp.internal.c;
import com.squareup.okhttp.internal.f;
import com.squareup.okhttp.internal.g;
import com.squareup.okhttp.internal.http.n;
import df.a;
import java.lang.ref.Reference;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class ConnectionPool {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final long DEFAULT_KEEP_ALIVE_DURATION_MS = 300000;
    private static final ConnectionPool systemDefault;
    private Runnable cleanupRunnable;
    private final Deque<a> connections;
    private final Executor executor;
    private final long keepAliveDurationNs;
    private final int maxIdleConnections;
    final f routeDatabase;

    static {
        String property = System.getProperty("http.keepAlive");
        String property2 = System.getProperty("http.keepAliveDuration");
        String property3 = System.getProperty("http.maxConnections");
        long j11 = property2 != null ? Long.parseLong(property2) : DEFAULT_KEEP_ALIVE_DURATION_MS;
        if (property != null && !Boolean.parseBoolean(property)) {
            systemDefault = new ConnectionPool(0, j11);
        } else if (property3 != null) {
            systemDefault = new ConnectionPool(Integer.parseInt(property3), j11);
        } else {
            systemDefault = new ConnectionPool(5, j11);
        }
    }

    public ConnectionPool(int i11, long j11) {
        this(i11, j11, TimeUnit.MILLISECONDS);
    }

    public ConnectionPool(int i11, long j11, TimeUnit timeUnit) {
        this.executor = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), g.s("OkHttp ConnectionPool", true));
        this.cleanupRunnable = new Runnable() { // from class: com.squareup.okhttp.ConnectionPool.1
            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    long jCleanup = ConnectionPool.this.cleanup(System.nanoTime());
                    if (jCleanup == -1) {
                        return;
                    }
                    if (jCleanup > 0) {
                        long j12 = jCleanup / 1000000;
                        long j13 = jCleanup - (1000000 * j12);
                        synchronized (ConnectionPool.this) {
                            try {
                                ConnectionPool.this.wait(j12, (int) j13);
                            } catch (InterruptedException unused) {
                            }
                        }
                    }
                }
            }
        };
        this.connections = new ArrayDeque();
        this.routeDatabase = new f();
        this.maxIdleConnections = i11;
        this.keepAliveDurationNs = timeUnit.toNanos(j11);
        if (j11 > 0) {
            return;
        }
        throw new IllegalArgumentException("keepAliveDuration <= 0: " + j11);
    }

    public static ConnectionPool getDefault() {
        return systemDefault;
    }

    private int pruneAndGetAllocationCount(a aVar, long j11) {
        List list = aVar.f61348j;
        int i11 = 0;
        while (i11 < list.size()) {
            if (((Reference) list.get(i11)).get() != null) {
                i11++;
            } else {
                c.logger.warning("A connection to " + aVar.getRoute().getAddress().url() + " was leaked. Did you forget to close a response body?");
                list.remove(i11);
                aVar.f61349k = true;
                if (list.isEmpty()) {
                    aVar.f61350l = j11 - this.keepAliveDurationNs;
                    return 0;
                }
            }
        }
        return list.size();
    }

    long cleanup(long j11) {
        synchronized (this) {
            try {
                int i11 = 0;
                long j12 = Long.MIN_VALUE;
                a aVar = null;
                int i12 = 0;
                for (a aVar2 : this.connections) {
                    if (pruneAndGetAllocationCount(aVar2, j11) > 0) {
                        i12++;
                    } else {
                        i11++;
                        long j13 = j11 - aVar2.f61350l;
                        if (j13 > j12) {
                            aVar = aVar2;
                            j12 = j13;
                        }
                    }
                }
                long j14 = this.keepAliveDurationNs;
                if (j12 < j14 && i11 <= this.maxIdleConnections) {
                    if (i11 > 0) {
                        return j14 - j12;
                    }
                    if (i12 > 0) {
                        return j14;
                    }
                    return -1L;
                }
                this.connections.remove(aVar);
                g.d(aVar.getSocket());
                return 0L;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    boolean connectionBecameIdle(a aVar) {
        if (aVar.f61349k || this.maxIdleConnections == 0) {
            this.connections.remove(aVar);
            return true;
        }
        notifyAll();
        return false;
    }

    public void evictAll() {
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            try {
                Iterator<a> it = this.connections.iterator();
                while (it.hasNext()) {
                    a next = it.next();
                    if (next.f61348j.isEmpty()) {
                        next.f61349k = true;
                        arrayList.add(next);
                        it.remove();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            g.d(((a) it2.next()).getSocket());
        }
    }

    a get(Address address, n nVar) {
        for (a aVar : this.connections) {
            if (aVar.f61348j.size() < aVar.a() && address.equals(aVar.getRoute().address) && !aVar.f61349k) {
                nVar.a(aVar);
                return aVar;
            }
        }
        return null;
    }

    public synchronized int getConnectionCount() {
        return this.connections.size();
    }

    public synchronized int getHttpConnectionCount() {
        return this.connections.size() - getMultiplexedConnectionCount();
    }

    public synchronized int getIdleConnectionCount() {
        int i11;
        Iterator<a> it = this.connections.iterator();
        i11 = 0;
        while (it.hasNext()) {
            if (it.next().f61348j.isEmpty()) {
                i11++;
            }
        }
        return i11;
    }

    public synchronized int getMultiplexedConnectionCount() {
        int i11;
        Iterator<a> it = this.connections.iterator();
        i11 = 0;
        while (it.hasNext()) {
            if (it.next().i()) {
                i11++;
            }
        }
        return i11;
    }

    @Deprecated
    public synchronized int getSpdyConnectionCount() {
        return getMultiplexedConnectionCount();
    }

    void put(a aVar) {
        if (this.connections.isEmpty()) {
            this.executor.execute(this.cleanupRunnable);
        }
        this.connections.add(aVar);
    }

    void setCleanupRunnableForTest(Runnable runnable) {
        this.cleanupRunnable = runnable;
    }
}
