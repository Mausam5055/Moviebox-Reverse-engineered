package com.transsion.transfer.androidasync.http.cache;

import com.transsion.transfer.androidasync.http.a0;
import com.transsion.transfer.androidasync.http.g;
import com.transsion.transfer.androidasync.j;
import com.transsion.transfer.androidasync.t;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ResponseCacheMiddleware extends a0 {

    /* JADX INFO: renamed from: com.transsion.transfer.androidasync.http.cache.ResponseCacheMiddleware$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ ResponseCacheMiddleware this$0;
        final /* synthetic */ g.a val$data;
        final /* synthetic */ a val$socket;

        AnonymousClass1(ResponseCacheMiddleware responseCacheMiddleware, g.a aVar, a aVar2) {
            this.val$data = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.val$data.f55352c.a(null, null);
            throw null;
        }
    }

    private static class CachedBodyEmitter extends t {

        /* JADX INFO: renamed from: com.transsion.transfer.androidasync.http.cache.ResponseCacheMiddleware$CachedBodyEmitter$1, reason: invalid class name */
        class AnonymousClass1 implements Runnable {
            final /* synthetic */ CachedBodyEmitter this$0;

            AnonymousClass1(CachedBodyEmitter cachedBodyEmitter) {
            }

            @Override // java.lang.Runnable
            public void run() {
                throw null;
            }
        }

        /* JADX INFO: renamed from: com.transsion.transfer.androidasync.http.cache.ResponseCacheMiddleware$CachedBodyEmitter$2, reason: invalid class name */
        class AnonymousClass2 implements Runnable {
            final /* synthetic */ CachedBodyEmitter this$0;

            AnonymousClass2(CachedBodyEmitter cachedBodyEmitter) {
            }

            @Override // java.lang.Runnable
            public void run() {
                throw null;
            }
        }
    }

    private class a extends CachedBodyEmitter implements j {
    }
}
