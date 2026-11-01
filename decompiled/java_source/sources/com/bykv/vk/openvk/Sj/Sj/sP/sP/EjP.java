package com.bykv.vk.openvk.Sj.Sj.sP.sP;

import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.bykv.vk.openvk.Sj.Sj.sP.sP.Sj.TKC;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class EjP {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static volatile EjP f20198k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile int f20199a = 163840;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SparseArray f20200b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final sP f20201c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ExecutorService f20202d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile com.bykv.vk.openvk.Sj.Sj.sP.sP.sP.e f20203e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile TKC f20204f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final HashSet f20205g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final com.bykv.vk.openvk.Sj.Sj.sP.sP.sP.b f20206h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private volatile String f20207i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private volatile boolean f20208j;

    class a implements com.bykv.vk.openvk.Sj.Sj.sP.sP.sP.b {
        a() {
        }

        @Override // com.bykv.vk.openvk.Sj.Sj.sP.sP.sP.b
        public void a(com.bykv.vk.openvk.Sj.Sj.sP.sP.sP sPVar) {
            int iVS = sPVar.vS();
            synchronized (EjP.this.f20200b) {
                try {
                    Map map = (Map) EjP.this.f20200b.get(iVS);
                    if (map != null) {
                        map.remove(sPVar.Dq);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b) {
                new StringBuilder("afterExecute, key: ").append(sPVar.Dq);
            }
        }
    }

    static class b implements RejectedExecutionHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ sP f20210a;

        b(sP sPVar) {
            this.f20210a = sPVar;
        }

        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            try {
                this.f20210a.offerFirst(runnable);
                boolean z10 = com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b;
            } catch (Throwable unused) {
            }
        }
    }

    private static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final boolean f20211a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final boolean f20212b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final int f20213c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final String f20214d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final Map f20215e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final String[] f20216f;

        c(boolean z10, boolean z11, int i11, String str, Map map, String[] strArr) {
            this.f20211a = z10;
            this.f20212b = z11;
            this.f20213c = i11;
            this.f20214d = str;
            this.f20215e = map;
            this.f20216f = strArr;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || c.class != obj.getClass()) {
                return false;
            }
            c cVar = (c) obj;
            if (this.f20211a == cVar.f20211a && this.f20212b == cVar.f20212b && this.f20213c == cVar.f20213c) {
                return this.f20214d.equals(cVar.f20214d);
            }
            return false;
        }

        public int hashCode() {
            return ((((((this.f20211a ? 1 : 0) * 31) + (this.f20212b ? 1 : 0)) * 31) + this.f20213c) * 31) + this.f20214d.hashCode();
        }
    }

    private static final class sP<T> extends LinkedBlockingDeque<T> {
        private ThreadPoolExecutor Sj;

        private sP() {
        }

        /* synthetic */ sP(a aVar) {
            this();
        }

        public void Sj(ThreadPoolExecutor threadPoolExecutor) {
            synchronized (this) {
                try {
                    if (this.Sj != null) {
                        throw new IllegalStateException("You can only call setExecutor() once!");
                    }
                    if (threadPoolExecutor == null) {
                        throw new NullPointerException("executor argument can't be null!");
                    }
                    this.Sj = threadPoolExecutor;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // java.util.concurrent.LinkedBlockingDeque, java.util.Queue, java.util.concurrent.BlockingDeque, java.util.concurrent.BlockingQueue, java.util.Deque
        public boolean offer(T t11) {
            synchronized (this) {
                int poolSize = this.Sj.getPoolSize();
                int activeCount = this.Sj.getActiveCount();
                int maximumPoolSize = this.Sj.getMaximumPoolSize();
                if (activeCount < poolSize || poolSize >= maximumPoolSize) {
                    return offerFirst(t11);
                }
                boolean z10 = com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b;
                return false;
            }
        }
    }

    private EjP() {
        SparseArray sparseArray = new SparseArray(2);
        this.f20200b = sparseArray;
        this.f20205g = new HashSet();
        this.f20206h = new a();
        sP sPVar = new sP(null);
        this.f20201c = sPVar;
        ExecutorService executorServiceD = d(sPVar);
        this.f20202d = executorServiceD;
        sPVar.Sj((ThreadPoolExecutor) executorServiceD);
        sparseArray.put(0, new HashMap());
        sparseArray.put(1, new HashMap());
    }

    private static ExecutorService d(sP sPVar) {
        int i11;
        int iA = f6.a.a();
        if (iA > 0) {
            if (iA > 4) {
                i11 = 4;
            }
            return new ThreadPoolExecutor(0, i11, 60L, TimeUnit.SECONDS, sPVar, new ThreadFactory() { // from class: com.bykv.vk.openvk.Sj.Sj.sP.sP.EjP.4
                @Override // java.util.concurrent.ThreadFactory
                public Thread newThread(Runnable runnable) {
                    Thread thread = new Thread(runnable) { // from class: com.bykv.vk.openvk.Sj.Sj.sP.sP.EjP.4.1
                        @Override // java.lang.Thread, java.lang.Runnable
                        public void run() {
                            try {
                                Process.setThreadPriority(10);
                            } catch (Throwable unused) {
                            }
                            super.run();
                        }
                    };
                    thread.setName("csj_video_preload_" + thread.getId());
                    thread.setDaemon(true);
                    if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b) {
                        new StringBuilder("new preload thead: ").append(thread.getName());
                    }
                    return thread;
                }
            }, new b(sPVar));
        }
        iA = 1;
        i11 = iA;
        return new ThreadPoolExecutor(0, i11, 60L, TimeUnit.SECONDS, sPVar, new ThreadFactory() { // from class: com.bykv.vk.openvk.Sj.Sj.sP.sP.EjP.4
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable) { // from class: com.bykv.vk.openvk.Sj.Sj.sP.sP.EjP.4.1
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        try {
                            Process.setThreadPriority(10);
                        } catch (Throwable unused) {
                        }
                        super.run();
                    }
                };
                thread.setName("csj_video_preload_" + thread.getId());
                thread.setDaemon(true);
                if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b) {
                    new StringBuilder("new preload thead: ").append(thread.getName());
                }
                return thread;
            }
        }, new b(sPVar));
    }

    public static EjP j() {
        if (f20198k == null) {
            synchronized (EjP.class) {
                try {
                    if (f20198k == null) {
                        f20198k = new EjP();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f20198k;
    }

    public void a() {
        f6.a.l(new com.bytedance.sdk.component.Dq.Dq("cancelAll") { // from class: com.bykv.vk.openvk.Sj.Sj.sP.sP.EjP.3
            @Override // java.lang.Runnable
            public void run() {
                ArrayList<com.bykv.vk.openvk.Sj.Sj.sP.sP.sP> arrayList = new ArrayList();
                synchronized (EjP.this.f20200b) {
                    try {
                        int size = EjP.this.f20200b.size();
                        for (int i11 = 0; i11 < size; i11++) {
                            Map map = (Map) EjP.this.f20200b.get(EjP.this.f20200b.keyAt(i11));
                            if (map != null) {
                                arrayList.addAll(map.values());
                                map.clear();
                            }
                        }
                        EjP.this.f20201c.clear();
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                for (com.bykv.vk.openvk.Sj.Sj.sP.sP.sP sPVar : arrayList) {
                    sPVar.Sj();
                    if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b) {
                        Log.w("TAG_PROXY_Preloader", "PreloadTask: " + sPVar + ", canceled!!!");
                    }
                }
            }
        });
    }

    com.bykv.vk.openvk.Sj.Sj.sP.sP.c c() {
        return null;
    }

    public void e(String str) {
        i(false, false, str);
    }

    void f(boolean z10, String str) {
        com.bykv.vk.openvk.Sj.Sj.sP.sP.sP sPVar;
        this.f20207i = str;
        this.f20208j = z10;
        if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b) {
            "setCurrentPlayKey, ".concat(String.valueOf(str));
        }
        HashSet<com.bykv.vk.openvk.Sj.Sj.sP.sP.sP> hashSet = null;
        HashSet<c> hashSet2 = null;
        if (str == null) {
            synchronized (this.f20205g) {
                try {
                    if (!this.f20205g.isEmpty()) {
                        hashSet2 = new HashSet(this.f20205g);
                        this.f20205g.clear();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (hashSet2 != null) {
                for (c cVar : hashSet2) {
                    g(cVar.f20211a, cVar.f20212b, cVar.f20213c, cVar.f20214d, cVar.f20215e, cVar.f20216f);
                    if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b) {
                        new StringBuilder("setCurrentPlayKey, resume preload: ").append(cVar.f20214d);
                    }
                }
                return;
            }
            return;
        }
        int i11 = com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20241g;
        if (i11 != 3 && i11 != 2) {
            if (i11 == 1) {
                synchronized (this.f20200b) {
                    try {
                        Map map = (Map) this.f20200b.get(com.bykv.vk.openvk.Sj.Sj.sP.sP.sP.f.a(z10));
                        sPVar = map != null ? (com.bykv.vk.openvk.Sj.Sj.sP.sP.sP) map.remove(str) : null;
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
                if (sPVar != null) {
                    sPVar.Sj();
                    return;
                }
                return;
            }
            return;
        }
        synchronized (this.f20200b) {
            try {
                int size = this.f20200b.size();
                for (int i12 = 0; i12 < size; i12++) {
                    SparseArray sparseArray = this.f20200b;
                    Map map2 = (Map) sparseArray.get(sparseArray.keyAt(i12));
                    if (map2 != null) {
                        Collection collectionValues = map2.values();
                        if (collectionValues != null && !collectionValues.isEmpty()) {
                            if (hashSet == null) {
                                hashSet = new HashSet();
                            }
                            hashSet.addAll(collectionValues);
                        }
                        map2.clear();
                    }
                }
            } catch (Throwable th4) {
                throw th4;
            }
        }
        if (hashSet == null || hashSet.isEmpty()) {
            return;
        }
        for (com.bykv.vk.openvk.Sj.Sj.sP.sP.sP sPVar2 : hashSet) {
            sPVar2.Sj();
            if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b) {
                new StringBuilder("setCurrentPlayKey, cancel preload: ").append(sPVar2.Jcg);
            }
        }
        if (i11 == 3) {
            synchronized (this.f20205g) {
                try {
                    Iterator it = hashSet.iterator();
                    while (it.hasNext()) {
                        c cVar2 = (c) ((com.bykv.vk.openvk.Sj.Sj.sP.sP.sP) it.next()).sef;
                        if (cVar2 != null) {
                            this.f20205g.add(cVar2);
                        }
                    }
                } catch (Throwable th5) {
                    throw th5;
                }
            }
        }
    }

    public void g(boolean z10, boolean z11, int i11, String str, Map map, String... strArr) {
        if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b) {
            Log.e("TAG_PROXY_Preloader", "cache or videoProxyDB null in Preloader!!!");
        }
    }

    public void h(boolean z10, boolean z11, int i11, String str, String... strArr) {
        g(z10, z11, i11, str, null, strArr);
    }

    public void i(final boolean z10, final boolean z11, final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f6.a.l(new com.bytedance.sdk.component.Dq.Dq("cancel b b S") { // from class: com.bykv.vk.openvk.Sj.Sj.sP.sP.EjP.2
            @Override // java.lang.Runnable
            public void run() {
                com.bykv.vk.openvk.Sj.Sj.sP.sP.sP sPVar;
                synchronized (EjP.this.f20200b) {
                    try {
                        Map map = (Map) EjP.this.f20200b.get(com.bykv.vk.openvk.Sj.Sj.sP.sP.sP.f.a(z10));
                        if (map != null) {
                            sPVar = (com.bykv.vk.openvk.Sj.Sj.sP.sP.sP) map.remove(z11 ? str : w5.c.a(str));
                        } else {
                            sPVar = null;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (sPVar != null) {
                    sPVar.Sj();
                }
            }
        });
    }

    com.bykv.vk.openvk.Sj.Sj.sP.sP.c l() {
        return null;
    }
}
