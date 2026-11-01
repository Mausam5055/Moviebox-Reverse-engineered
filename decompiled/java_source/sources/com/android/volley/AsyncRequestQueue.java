package com.android.volley;

import android.os.SystemClock;
import java.util.Comparator;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AsyncRequestQueue extends h {

    /* JADX INFO: renamed from: com.android.volley.AsyncRequestQueue$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ AsyncRequestQueue this$0;

        /* JADX INFO: renamed from: com.android.volley.AsyncRequestQueue$1$a */
        class a implements com.android.volley.a.b {
            a() {
            }
        }

        AnonymousClass1(AsyncRequestQueue asyncRequestQueue) {
        }

        @Override // java.lang.Runnable
        public void run() {
            AsyncRequestQueue.j(null).b(new a());
        }
    }

    /* JADX INFO: renamed from: com.android.volley.AsyncRequestQueue$2, reason: invalid class name */
    class AnonymousClass2 implements Runnable {
        final /* synthetic */ AsyncRequestQueue this$0;

        /* JADX INFO: renamed from: com.android.volley.AsyncRequestQueue$2$1, reason: invalid class name */
        class AnonymousClass1 implements Runnable {
            AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public void run() {
                AnonymousClass2.this.getClass();
                AsyncRequestQueue.i(null);
            }
        }

        AnonymousClass2(AsyncRequestQueue asyncRequestQueue) {
        }

        @Override // java.lang.Runnable
        public void run() {
            throw null;
        }
    }

    /* JADX INFO: renamed from: com.android.volley.AsyncRequestQueue$3, reason: invalid class name */
    class AnonymousClass3 implements Comparator<Runnable> {
        AnonymousClass3() {
        }

        @Override // java.util.Comparator
        public int compare(Runnable runnable, Runnable runnable2) {
            if (!(runnable instanceof RequestTask)) {
                return runnable2 instanceof RequestTask ? -1 : 0;
            }
            if (runnable2 instanceof RequestTask) {
                return ((RequestTask) runnable).compareTo((RequestTask) runnable2);
            }
            return 1;
        }
    }

    private class CacheParseTask<T> extends RequestTask<T> {
        c.a entry;
        long startTimeMillis;
        final /* synthetic */ AsyncRequestQueue this$0;

        /* JADX INFO: renamed from: com.android.volley.AsyncRequestQueue$CacheParseTask$1, reason: invalid class name */
        class AnonymousClass1 implements Runnable {
            AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public void run() {
                CacheParseTask.this.getClass();
                Request request = CacheParseTask.this.mRequest;
                throw null;
            }
        }

        CacheParseTask(AsyncRequestQueue asyncRequestQueue, Request request, c.a aVar, long j11) {
            super(request);
            this.entry = aVar;
            this.startTimeMillis = j11;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mRequest.addMarker("cache-hit");
            Request request = this.mRequest;
            c.a aVar = this.entry;
            i networkResponse = request.parseNetworkResponse(new g(200, aVar.f19220a, false, 0L, aVar.f19227h));
            this.mRequest.addMarker("cache-hit-parsed");
            if (!this.entry.c(this.startTimeMillis)) {
                throw null;
            }
            this.mRequest.addMarker("cache-hit-refresh-needed");
            this.mRequest.setCacheEntry(this.entry);
            networkResponse.f19254d = true;
            if (!AsyncRequestQueue.l(null).c(this.mRequest)) {
                throw null;
            }
            throw null;
        }
    }

    private class CachePutTask<T> extends RequestTask<T> {
        i response;
        final /* synthetic */ AsyncRequestQueue this$0;

        class a implements com.android.volley.a.b {
            a() {
            }
        }

        CachePutTask(AsyncRequestQueue asyncRequestQueue, Request request, i iVar) {
            super(request);
            this.response = iVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            AsyncRequestQueue.j(null).getClass();
            AsyncRequestQueue.j(null).c(this.mRequest.getCacheKey(), this.response.f19252b, new a());
        }
    }

    private class CacheTask<T> extends RequestTask<T> {
        final /* synthetic */ AsyncRequestQueue this$0;

        class a implements com.android.volley.a.InterfaceC0174a {
            a() {
            }
        }

        CacheTask(AsyncRequestQueue asyncRequestQueue, Request request) {
            super(request);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mRequest.isCanceled()) {
                this.mRequest.finish("cache-discard-canceled");
                return;
            }
            this.mRequest.addMarker("cache-queue-take");
            AsyncRequestQueue.j(null).getClass();
            AsyncRequestQueue.j(null).a(this.mRequest.getCacheKey(), new a());
        }
    }

    private class NetworkParseTask<T> extends RequestTask<T> {
        g networkResponse;
        final /* synthetic */ AsyncRequestQueue this$0;

        NetworkParseTask(AsyncRequestQueue asyncRequestQueue, Request request, g gVar) {
            super(request);
            this.networkResponse = gVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            i networkResponse = this.mRequest.parseNetworkResponse(this.networkResponse);
            this.mRequest.addMarker("network-parse-complete");
            if (!this.mRequest.shouldCache() || networkResponse.f19252b == null) {
                AsyncRequestQueue.o(null, this.mRequest, networkResponse, false);
            } else if (AsyncRequestQueue.j(null) != null) {
                AsyncRequestQueue.k(null).execute(new CachePutTask(null, this.mRequest, networkResponse));
            } else {
                AsyncRequestQueue.m(null).execute(new CachePutTask(null, this.mRequest, networkResponse));
            }
        }
    }

    private class NetworkTask<T> extends RequestTask<T> {
        final /* synthetic */ AsyncRequestQueue this$0;

        class a implements b.a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ long f19215a;

            a(long j11) {
                this.f19215a = j11;
            }

            @Override // com.android.volley.b.a
            public void a(VolleyError volleyError) {
                volleyError.setNetworkTimeMs(SystemClock.elapsedRealtime() - this.f19215a);
                NetworkTask.this.getClass();
                ExecutorService executorServiceM = AsyncRequestQueue.m(null);
                NetworkTask.this.getClass();
                executorServiceM.execute(new ParseErrorTask(null, NetworkTask.this.mRequest, volleyError));
            }
        }

        NetworkTask(AsyncRequestQueue asyncRequestQueue, Request request) {
            super(request);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mRequest.isCanceled()) {
                this.mRequest.finish("network-discard-cancelled");
                this.mRequest.notifyListenerResponseNotUsable();
            } else {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                this.mRequest.addMarker("network-queue-take");
                AsyncRequestQueue.n(null);
                new a(jElapsedRealtime);
                throw null;
            }
        }
    }

    private class ParseErrorTask<T> extends RequestTask<T> {
        final /* synthetic */ AsyncRequestQueue this$0;
        VolleyError volleyError;

        ParseErrorTask(AsyncRequestQueue asyncRequestQueue, Request request, VolleyError volleyError) {
            super(request);
            this.volleyError = volleyError;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mRequest.parseNetworkError(this.volleyError);
            throw null;
        }
    }

    static /* synthetic */ void i(AsyncRequestQueue asyncRequestQueue) {
        throw null;
    }

    static /* synthetic */ a j(AsyncRequestQueue asyncRequestQueue) {
        throw null;
    }

    static /* synthetic */ ExecutorService k(AsyncRequestQueue asyncRequestQueue) {
        throw null;
    }

    static /* synthetic */ m l(AsyncRequestQueue asyncRequestQueue) {
        throw null;
    }

    static /* synthetic */ ExecutorService m(AsyncRequestQueue asyncRequestQueue) {
        throw null;
    }

    static /* synthetic */ b n(AsyncRequestQueue asyncRequestQueue) {
        throw null;
    }

    static /* synthetic */ void o(AsyncRequestQueue asyncRequestQueue, Request request, i iVar, boolean z10) {
        throw null;
    }
}
