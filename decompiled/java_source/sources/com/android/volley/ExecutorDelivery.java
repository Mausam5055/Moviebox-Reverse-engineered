package com.android.volley;

import android.os.Handler;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public class ExecutorDelivery implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f19217a;

    private static class ResponseDeliveryRunnable implements Runnable {
        private final Request mRequest;
        private final i mResponse;
        private final Runnable mRunnable;

        public ResponseDeliveryRunnable(Request request, i iVar, Runnable runnable) {
            this.mRequest = request;
            this.mResponse = iVar;
            this.mRunnable = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mRequest.isCanceled()) {
                this.mRequest.finish("canceled-at-delivery");
                return;
            }
            if (this.mResponse.b()) {
                this.mRequest.deliverResponse(this.mResponse.f19251a);
            } else {
                this.mRequest.deliverError(this.mResponse.f19253c);
            }
            if (this.mResponse.f19254d) {
                this.mRequest.addMarker("intermediate-response");
            } else {
                this.mRequest.finish("done");
            }
            Runnable runnable = this.mRunnable;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    class a implements Executor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Handler f19218a;

        a(Handler handler) {
            this.f19218a = handler;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f19218a.post(runnable);
        }
    }

    public ExecutorDelivery(Handler handler) {
        this.f19217a = new a(handler);
    }

    @Override // com.android.volley.j
    public void a(Request request, i iVar) {
        b(request, iVar, null);
    }

    @Override // com.android.volley.j
    public void b(Request request, i iVar, Runnable runnable) {
        request.markDelivered();
        request.addMarker("post-response");
        this.f19217a.execute(new ResponseDeliveryRunnable(request, iVar, runnable));
    }

    @Override // com.android.volley.j
    public void c(Request request, VolleyError volleyError) {
        request.addMarker("post-error");
        this.f19217a.execute(new ResponseDeliveryRunnable(request, i.a(volleyError), null));
    }
}
