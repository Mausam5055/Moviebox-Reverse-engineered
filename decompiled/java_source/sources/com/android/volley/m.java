package com.android.volley;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: loaded from: classes2.dex */
class m implements Request.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j f19265b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final CacheDispatcher f19267d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final BlockingQueue f19268e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f19264a = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final h f19266c = null;

    m(CacheDispatcher cacheDispatcher, BlockingQueue blockingQueue, j jVar) {
        this.f19265b = jVar;
        this.f19267d = cacheDispatcher;
        this.f19268e = blockingQueue;
    }

    @Override // com.android.volley.Request.a
    public void a(Request request, i iVar) {
        List list;
        c.a aVar = iVar.f19252b;
        if (aVar == null || aVar.a()) {
            b(request);
            return;
        }
        String cacheKey = request.getCacheKey();
        synchronized (this) {
            list = (List) this.f19264a.remove(cacheKey);
        }
        if (list != null) {
            if (l.f19256b) {
                l.e("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(list.size()), cacheKey);
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                this.f19265b.a((Request) it.next(), iVar);
            }
        }
    }

    @Override // com.android.volley.Request.a
    public synchronized void b(Request request) {
        BlockingQueue blockingQueue;
        try {
            String cacheKey = request.getCacheKey();
            List list = (List) this.f19264a.remove(cacheKey);
            if (list != null && !list.isEmpty()) {
                if (l.f19256b) {
                    l.e("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(list.size()), cacheKey);
                }
                Request request2 = (Request) list.remove(0);
                this.f19264a.put(cacheKey, list);
                request2.setNetworkRequestCompleteListener(this);
                h hVar = this.f19266c;
                if (hVar != null) {
                    hVar.f(request2);
                } else if (this.f19267d != null && (blockingQueue = this.f19268e) != null) {
                    try {
                        blockingQueue.put(request2);
                    } catch (InterruptedException e11) {
                        l.c("Couldn't add request to queue. %s", e11.toString());
                        Thread.currentThread().interrupt();
                        this.f19267d.quit();
                    }
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    synchronized boolean c(Request request) {
        try {
            String cacheKey = request.getCacheKey();
            if (!this.f19264a.containsKey(cacheKey)) {
                this.f19264a.put(cacheKey, null);
                request.setNetworkRequestCompleteListener(this);
                if (l.f19256b) {
                    l.b("new request, sending to network %s", cacheKey);
                }
                return false;
            }
            List arrayList = (List) this.f19264a.get(cacheKey);
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            request.addMarker("waiting-for-response");
            arrayList.add(request);
            this.f19264a.put(cacheKey, arrayList);
            if (l.f19256b) {
                l.b("Request for cacheKey=%s is in flight, putting on hold.", cacheKey);
            }
            return true;
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
