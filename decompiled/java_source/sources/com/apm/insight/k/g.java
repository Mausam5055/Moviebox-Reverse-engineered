package com.apm.insight.k;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apm.insight.Npth;
import com.apm.insight.runtime.l;
import com.apm.insight.runtime.m;
import com.apm.insight.runtime.p;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.json.JSONException;

/* JADX INFO: loaded from: classes2.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ConcurrentHashMap<Object, ConcurrentLinkedQueue<com.apm.insight.entity.c>> f19633a = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final HashMap<Object, HashMap<String, ConcurrentLinkedQueue<com.apm.insight.entity.c>>> f19634b = new HashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile g f19635c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f19637e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Runnable f19638f = new Runnable() { // from class: com.apm.insight.k.g.1
        @Override // java.lang.Runnable
        public final void run() {
            if (Npth.isStopUpload()) {
                return;
            }
            if (!g.f19634b.isEmpty() && l.e()) {
                g.f();
            }
            g.this.c();
            g.this.f19636d.a(g.this.f19638f, 30000L);
        }
    };

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final p f19636d = m.a();

    private g() {
    }

    public static g a() {
        if (f19635c == null) {
            synchronized (g.class) {
                try {
                    if (f19635c == null) {
                        f19635c = new g();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f19635c;
    }

    public static void a(@NonNull com.apm.insight.entity.c cVar) {
        a(com.apm.insight.d.a(), cVar);
    }

    public static void a(@Nullable final Object obj, @NonNull final com.apm.insight.entity.c cVar) {
        String string;
        Handler handlerA = m.a().a();
        if (handlerA == null || handlerA.getLooper() != Looper.myLooper()) {
            m.a().a(new Runnable() { // from class: com.apm.insight.k.g.2
                @Override // java.lang.Runnable
                public final void run() {
                    g.a(obj, cVar);
                }
            });
            return;
        }
        if (obj == null) {
            obj = com.apm.insight.d.a();
        }
        if (!l.e()) {
            com.apm.insight.a.a("EventUploadQueue", "enqueue before init.");
            c(obj, cVar);
            return;
        }
        if (!com.apm.insight.runtime.a.a(obj)) {
            a.b();
        }
        f();
        try {
            string = cVar.c().getString("log_type");
        } catch (JSONException e11) {
            e11.printStackTrace();
            string = null;
        }
        if (TextUtils.isEmpty(string) || !com.apm.insight.runtime.a.b(obj)) {
            com.apm.insight.a.a("EventUploadQueue", "logType " + string + " not sampled");
            return;
        }
        com.apm.insight.a.a("EventUploadQueue", "logType " + string + " enqueued");
        b(obj, cVar);
    }

    private static void b(Object obj, com.apm.insight.entity.c cVar) {
        ConcurrentHashMap<Object, ConcurrentLinkedQueue<com.apm.insight.entity.c>> concurrentHashMap;
        ConcurrentLinkedQueue<com.apm.insight.entity.c> concurrentLinkedQueue;
        synchronized (obj) {
            try {
                concurrentHashMap = f19633a;
                concurrentLinkedQueue = concurrentHashMap.get(obj);
                if (concurrentLinkedQueue == null) {
                    concurrentLinkedQueue = new ConcurrentLinkedQueue<>();
                    concurrentHashMap.put(obj, concurrentLinkedQueue);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        concurrentLinkedQueue.add(cVar);
        int size = concurrentHashMap.size();
        boolean z10 = size >= 30;
        com.apm.insight.a.b((Object) "[enqueue] size=".concat(String.valueOf(size)));
        if (z10) {
            g();
        }
    }

    private static void c(Object obj, com.apm.insight.entity.c cVar) {
        ConcurrentLinkedQueue<com.apm.insight.entity.c> concurrentLinkedQueue;
        try {
            String string = cVar.c().getString("log_type");
            HashMap<Object, HashMap<String, ConcurrentLinkedQueue<com.apm.insight.entity.c>>> map = f19634b;
            synchronized (map) {
                try {
                    HashMap<String, ConcurrentLinkedQueue<com.apm.insight.entity.c>> map2 = map.get(string);
                    if (map2 == null) {
                        map2 = new HashMap<>();
                        map.put(obj, map2);
                    }
                    concurrentLinkedQueue = map2.get(string);
                    if (concurrentLinkedQueue == null) {
                        concurrentLinkedQueue = new ConcurrentLinkedQueue<>();
                        map2.put(string, concurrentLinkedQueue);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            concurrentLinkedQueue.add(cVar);
            if (concurrentLinkedQueue.size() > 100) {
                concurrentLinkedQueue.poll();
            }
        } catch (JSONException e11) {
            e11.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void f() {
        HashMap map;
        HashMap<Object, HashMap<String, ConcurrentLinkedQueue<com.apm.insight.entity.c>>> map2 = f19634b;
        synchronized (map2) {
            map = new HashMap(map2);
            map2.clear();
        }
        if (!com.apm.insight.runtime.a.a()) {
            com.apm.insight.a.a("EventUploadQueue", "ApmConfig not inited, clear cache.");
            return;
        }
        for (Map.Entry entry : map.entrySet()) {
            for (Map.Entry entry2 : ((HashMap) entry.getValue()).entrySet()) {
                String str = (String) entry2.getKey();
                ConcurrentLinkedQueue concurrentLinkedQueue = (ConcurrentLinkedQueue) entry2.getValue();
                if (concurrentLinkedQueue == null || (com.apm.insight.runtime.a.a() && !com.apm.insight.runtime.a.b(entry.getKey()))) {
                    com.apm.insight.a.a("EventUploadQueue", "logType " + str + " not sampled");
                } else {
                    while (!concurrentLinkedQueue.isEmpty()) {
                        try {
                            com.apm.insight.entity.c cVar = (com.apm.insight.entity.c) concurrentLinkedQueue.poll();
                            if (cVar == null) {
                                break;
                            } else {
                                b(entry.getKey(), cVar);
                            }
                        } catch (Throwable unused) {
                        }
                    }
                }
            }
        }
    }

    private static void g() {
        if (!l.e() || Npth.isStopUpload()) {
            return;
        }
        try {
            m.a().a(new Runnable() { // from class: com.apm.insight.k.g.3
                @Override // java.lang.Runnable
                public final void run() {
                    g.a().c();
                }
            });
        } catch (Throwable unused) {
        }
    }

    public final void b() {
        if (f19633a.isEmpty()) {
            this.f19636d.a(this.f19638f, 30000L);
        } else {
            this.f19636d.a(this.f19638f);
        }
    }

    public final void c() {
        synchronized (this.f19636d) {
            try {
                if (this.f19637e) {
                    return;
                }
                this.f19637e = true;
                LinkedList linkedList = new LinkedList();
                for (Map.Entry<Object, ConcurrentLinkedQueue<com.apm.insight.entity.c>> entry : f19633a.entrySet()) {
                    ConcurrentLinkedQueue<com.apm.insight.entity.c> value = entry.getValue();
                    Object key = entry.getKey();
                    while (!value.isEmpty()) {
                        for (int i11 = 0; i11 < 30; i11++) {
                            try {
                                if (value.isEmpty()) {
                                    break;
                                }
                                linkedList.add(value.poll());
                            } catch (Throwable th2) {
                                com.apm.insight.a.b(th2);
                            }
                        }
                        if (linkedList.isEmpty()) {
                            break;
                        }
                        com.apm.insight.entity.a aVarA = com.apm.insight.runtime.a.f.a().a(linkedList, com.apm.insight.entity.b.a(key));
                        if (aVarA != null) {
                            com.apm.insight.a.a((Object) "upload events");
                            d.a().b(aVarA.c());
                        }
                        linkedList.clear();
                    }
                }
                this.f19637e = false;
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }
}
