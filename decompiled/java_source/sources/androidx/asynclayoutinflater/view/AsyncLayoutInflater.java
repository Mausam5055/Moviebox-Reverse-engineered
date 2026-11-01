package androidx.asynclayoutinflater.view;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.util.h;
import java.util.concurrent.ArrayBlockingQueue;

/* JADX INFO: loaded from: classes.dex */
public final class AsyncLayoutInflater {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    LayoutInflater f2133a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Handler.Callback f2136d = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Handler f2134b = new Handler(this.f2136d);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    InflateThread f2135c = InflateThread.getInstance();

    private static class InflateThread extends Thread {
        private static final InflateThread sInstance;
        private ArrayBlockingQueue<c> mQueue = new ArrayBlockingQueue<>(10);
        private h mRequestPool = new h(10);

        static {
            InflateThread inflateThread = new InflateThread();
            sInstance = inflateThread;
            inflateThread.start();
        }

        private InflateThread() {
        }

        public static InflateThread getInstance() {
            return sInstance;
        }

        public void enqueue(c cVar) {
            try {
                this.mQueue.put(cVar);
            } catch (InterruptedException e11) {
                throw new RuntimeException("Failed to enqueue async inflate request", e11);
            }
        }

        public c obtainRequest() {
            c cVar = (c) this.mRequestPool.acquire();
            return cVar == null ? new c() : cVar;
        }

        public void releaseRequest(c cVar) {
            cVar.f2143e = null;
            cVar.f2139a = null;
            cVar.f2140b = null;
            cVar.f2141c = 0;
            cVar.f2142d = null;
            this.mRequestPool.release(cVar);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (true) {
                runInner();
            }
        }

        public void runInner() {
            try {
                c cVarTake = this.mQueue.take();
                try {
                    cVarTake.f2142d = cVarTake.f2139a.f2133a.inflate(cVarTake.f2141c, cVarTake.f2140b, false);
                } catch (RuntimeException e11) {
                    Log.w("AsyncLayoutInflater", "Failed to inflate resource in the background! Retrying on the UI thread", e11);
                }
                Message.obtain(cVarTake.f2139a.f2134b, 0, cVarTake).sendToTarget();
            } catch (InterruptedException e12) {
                Log.w("AsyncLayoutInflater", e12);
            }
        }
    }

    class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            c cVar = (c) message.obj;
            if (cVar.f2142d == null) {
                cVar.f2142d = AsyncLayoutInflater.this.f2133a.inflate(cVar.f2141c, cVar.f2140b, false);
            }
            cVar.f2143e.a(cVar.f2142d, cVar.f2141c, cVar.f2140b);
            AsyncLayoutInflater.this.f2135c.releaseRequest(cVar);
            return true;
        }
    }

    private static class b extends LayoutInflater {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final String[] f2138a = {"android.widget.", "android.webkit.", "android.app."};

        b(Context context) {
            super(context);
        }

        @Override // android.view.LayoutInflater
        public LayoutInflater cloneInContext(Context context) {
            return new b(context);
        }

        @Override // android.view.LayoutInflater
        protected View onCreateView(String str, AttributeSet attributeSet) {
            for (String str2 : f2138a) {
                try {
                    View viewCreateView = createView(str, str2, attributeSet);
                    if (viewCreateView != null) {
                        return viewCreateView;
                    }
                } catch (ClassNotFoundException unused) {
                }
            }
            return super.onCreateView(str, attributeSet);
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        AsyncLayoutInflater f2139a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ViewGroup f2140b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f2141c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        View f2142d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        d f2143e;

        c() {
        }
    }

    public interface d {
        void a(View view, int i11, ViewGroup viewGroup);
    }

    public AsyncLayoutInflater(Context context) {
        this.f2133a = new b(context);
    }

    public void a(int i11, ViewGroup viewGroup, d dVar) {
        if (dVar == null) {
            throw new NullPointerException("callback argument may not be null!");
        }
        c cVarObtainRequest = this.f2135c.obtainRequest();
        cVarObtainRequest.f2139a = this;
        cVarObtainRequest.f2141c = i11;
        cVarObtainRequest.f2140b = viewGroup;
        cVarObtainRequest.f2143e = dVar;
        this.f2135c.enqueue(cVarObtainRequest);
    }
}
