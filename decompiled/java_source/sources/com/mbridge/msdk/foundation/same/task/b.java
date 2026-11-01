package com.mbridge.msdk.foundation.same.task;

import android.annotation.SuppressLint;
import android.content.Context;
import com.mbridge.msdk.foundation.tools.q0;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ThreadPoolExecutor f35634a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    HashMap<Long, com.mbridge.msdk.foundation.same.task.a> f35635b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    WeakReference<Context> f35636c;

    class a implements com.mbridge.msdk.foundation.same.task.a.InterfaceC0492a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.foundation.same.task.a f35637a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.foundation.same.task.a.InterfaceC0492a f35638b;

        a(com.mbridge.msdk.foundation.same.task.a aVar, com.mbridge.msdk.foundation.same.task.a.InterfaceC0492a interfaceC0492a) {
            this.f35637a = aVar;
            this.f35638b = interfaceC0492a;
        }

        @Override // com.mbridge.msdk.foundation.same.task.a.InterfaceC0492a
        public void a(com.mbridge.msdk.foundation.same.task.a.b bVar) {
            if (bVar == com.mbridge.msdk.foundation.same.task.a.b.CANCEL || bVar == com.mbridge.msdk.foundation.same.task.a.b.FINISH) {
                b.this.f35635b.remove(Long.valueOf(this.f35637a.getId()));
            } else if (bVar == com.mbridge.msdk.foundation.same.task.a.b.RUNNING && b.this.f35636c.get() == null) {
                b.this.a();
            }
            com.mbridge.msdk.foundation.same.task.a.InterfaceC0492a interfaceC0492a = this.f35638b;
            if (interfaceC0492a != null) {
                interfaceC0492a.a(bVar);
            }
        }
    }

    @SuppressLint({"UseSparseArrays"})
    public b(Context context) {
        if (q0.a().a("c_t_l_t_p", true)) {
            this.f35634a = c.b();
        } else {
            if (q0.a().a("c_t_p_t_l", true)) {
                int iAvailableProcessors = (Runtime.getRuntime().availableProcessors() * 2) + 1;
                this.f35634a = new ThreadPoolExecutor(iAvailableProcessors, iAvailableProcessors, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadPoolExecutor.DiscardPolicy());
            } else {
                this.f35634a = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadPoolExecutor.DiscardPolicy());
            }
            this.f35634a.allowCoreThreadTimeOut(true);
        }
        this.f35635b = new HashMap<>();
        this.f35636c = new WeakReference<>(context);
    }

    @SuppressLint({"UseSparseArrays"})
    public b(Context context, int i11) {
        if (q0.a().a("c_t_l_t_p", true)) {
            this.f35634a = c.b();
        } else {
            if (i11 == 0) {
                this.f35634a = new ThreadPoolExecutor(1, 5, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadPoolExecutor.DiscardPolicy());
            } else {
                this.f35634a = new ThreadPoolExecutor(i11, (i11 * 2) + 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadPoolExecutor.DiscardPolicy());
            }
            this.f35634a.allowCoreThreadTimeOut(true);
        }
        this.f35635b = new HashMap<>();
        this.f35636c = new WeakReference<>(context);
    }

    private synchronized void a(com.mbridge.msdk.foundation.same.task.a aVar, com.mbridge.msdk.foundation.same.task.a.InterfaceC0492a interfaceC0492a) {
        this.f35635b.put(Long.valueOf(aVar.getId()), aVar);
        aVar.setOnStateChangeListener(new a(aVar, interfaceC0492a));
    }

    public synchronized void a() {
        try {
            Iterator<Map.Entry<Long, com.mbridge.msdk.foundation.same.task.a>> it = this.f35635b.entrySet().iterator();
            while (it.hasNext()) {
                it.next().getValue().cancel();
            }
            this.f35635b.clear();
        } catch (Exception unused) {
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void a(com.mbridge.msdk.foundation.same.task.a aVar) {
        a(aVar, null);
        this.f35634a.execute(aVar);
    }

    public void b(com.mbridge.msdk.foundation.same.task.a aVar, com.mbridge.msdk.foundation.same.task.a.InterfaceC0492a interfaceC0492a) {
        a(aVar, interfaceC0492a);
        this.f35634a.execute(aVar);
    }
}
