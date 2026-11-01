package com.facebook.biddingkit.logging;

import android.os.Handler;
import android.os.Looper;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class EventLogDispatcher {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile EventLogDispatcher f24114g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f24115a;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private i f24120f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f24116b = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ThreadPoolExecutor f24119e = new ThreadPoolExecutor(1, 1, 0, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Runnable f24117c = new Runnable() { // from class: com.facebook.biddingkit.logging.EventLogDispatcher.1
        @Override // java.lang.Runnable
        public void run() {
            EventLogDispatcher.this.g();
            EventLogDispatcher.this.f24116b.postDelayed(EventLogDispatcher.this.f24118d, EventLogDispatcher.this.f24115a);
        }
    };

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Runnable f24118d = new Runnable() { // from class: com.facebook.biddingkit.logging.EventLogDispatcher.2
        @Override // java.lang.Runnable
        public void run() {
            if (EventLogDispatcher.this.f24119e.getQueue().isEmpty()) {
                EventLogDispatcher.this.f24119e.execute(EventLogDispatcher.this.f24117c);
            }
        }
    };

    private EventLogDispatcher() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject = new JSONObject();
        try {
            List listE = f.e(10);
            if (listE != null && !listE.isEmpty()) {
                Iterator it = listE.iterator();
                while (it.hasNext()) {
                    jSONArray.put(((e) it.next()).m());
                }
                jSONObject.put("tokens", a.a());
                jSONObject.put("events", jSONArray);
                l8.e eVarB = m8.b.b(this.f24120f.b(), 2000, jSONObject.toString());
                if (eVarB == null || eVarB.a() != 200) {
                    this.f24115a = this.f24120f.c();
                } else {
                    this.f24115a = this.f24120f.a();
                }
                Iterator it2 = listE.iterator();
                while (it2.hasNext()) {
                    f.b(((e) it2.next()).k());
                }
            }
        } catch (Throwable th2) {
            b.b("EventLogDispatcher", "Failed dispatching events", th2);
        }
    }

    public static EventLogDispatcher h() {
        if (f24114g == null) {
            synchronized (EventLogDispatcher.class) {
                try {
                    if (f24114g == null) {
                        f24114g = new EventLogDispatcher();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f24114g;
    }

    public static void j(i iVar) {
        h().i(iVar);
        h().k();
    }

    public void i(i iVar) {
        this.f24120f = iVar;
        this.f24115a = iVar.a();
    }

    protected void k() {
        this.f24116b.postDelayed(this.f24118d, this.f24115a);
    }
}
