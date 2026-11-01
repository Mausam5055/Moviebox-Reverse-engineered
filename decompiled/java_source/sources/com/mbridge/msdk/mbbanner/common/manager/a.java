package com.mbridge.msdk.mbbanner.common.manager;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.same.report.metrics.e;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.setting.l;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f36054g = "a";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static volatile a f36055h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f36056a = com.mbridge.msdk.foundation.controller.c.m().d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.mbridge.msdk.mbbanner.common.util.a f36057b = new com.mbridge.msdk.mbbanner.common.util.a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Map<String, com.mbridge.msdk.mbbanner.common.data.b> f36058c = new ConcurrentHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map<String, Boolean> f36059d = new ConcurrentHashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Map<String, Handler> f36060e = new ConcurrentHashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Map<String, Integer> f36061f = new ConcurrentHashMap();

    /* JADX INFO: renamed from: com.mbridge.msdk.mbbanner.common.manager.a$a, reason: collision with other inner class name */
    class C0499a implements com.mbridge.msdk.mbbanner.common.listener.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.mbbanner.common.data.a f36062a;

        C0499a(com.mbridge.msdk.mbbanner.common.data.a aVar) {
            this.f36062a = aVar;
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.d
        public void a(String str) {
            synchronized (a.b()) {
                this.f36062a.a("");
                a.this.f36059d.put(str, Boolean.FALSE);
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f36064a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MBridgeIds f36065b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.mbbanner.common.listener.b f36066c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f36067d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.mbbanner.common.data.a f36068e;

        b(String str, MBridgeIds mBridgeIds, com.mbridge.msdk.mbbanner.common.listener.b bVar, String str2, com.mbridge.msdk.mbbanner.common.data.a aVar) {
            this.f36064a = str;
            this.f36065b = mBridgeIds;
            this.f36066c = bVar;
            this.f36067d = str2;
            this.f36068e = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            Boolean bool;
            if (a.this.f36059d == null || !a.this.f36059d.containsKey(this.f36064a) || (bool = (Boolean) a.this.f36059d.get(this.f36064a)) == null || !bool.booleanValue()) {
                if (a.this.f36061f.containsKey(this.f36064a)) {
                    Integer num = (Integer) a.this.f36061f.get(this.f36064a);
                    int iIntValue = num != null ? num.intValue() : 0;
                    if (iIntValue == 2 || iIntValue == 4) {
                        o0.b(a.f36054g, "doUnitRotation: autoRotationStatus=" + iIntValue + " && unitId=" + this.f36064a);
                        if (a.this.f36057b != null) {
                            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880026);
                            bVar.a(this.f36065b);
                            a.this.f36057b.a(this.f36066c, bVar);
                            return;
                        }
                        return;
                    }
                }
                a.this.b(this.f36067d, this.f36064a, this.f36068e, this.f36066c);
            }
        }
    }

    private a() {
    }

    private com.mbridge.msdk.mbbanner.common.data.b a(String str) {
        if (this.f36058c.containsKey(str)) {
            return this.f36058c.get(str);
        }
        l lVarE = h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), str);
        if (lVarE == null) {
            lVarE = l.i(str);
        }
        com.mbridge.msdk.mbbanner.common.data.b bVar = new com.mbridge.msdk.mbbanner.common.data.b(str, "", 0, lVarE.y());
        this.f36058c.put(str, bVar);
        return bVar;
    }

    public static a b() {
        if (f36055h == null) {
            synchronized (a.class) {
                try {
                    if (f36055h == null) {
                        f36055h = new a();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f36055h;
    }

    public void a(int i11, String str, String str2, com.mbridge.msdk.mbbanner.common.data.a aVar, com.mbridge.msdk.mbbanner.common.listener.b bVar) {
        Handler handler;
        Handler handler2;
        Handler handler3;
        Integer num;
        int iIntValue = (!this.f36061f.containsKey(str2) || (num = this.f36061f.get(str2)) == null) ? 0 : num.intValue();
        if (i11 == 1) {
            if (this.f36060e.containsKey(str2) && (handler = this.f36060e.get(str2)) != null) {
                handler.removeCallbacksAndMessages(null);
            }
            this.f36061f.put(str2, Integer.valueOf(i11));
            return;
        }
        if (i11 == 2) {
            if (iIntValue == 1) {
                if (this.f36060e.containsKey(str2) && (handler2 = this.f36060e.get(str2)) != null) {
                    handler2.removeCallbacksAndMessages(null);
                }
                this.f36061f.put(str2, Integer.valueOf(i11));
                return;
            }
            return;
        }
        if (i11 == 3) {
            if (iIntValue == 2 || iIntValue == 4) {
                this.f36061f.put(str2, 1);
                a(str, str2, aVar, bVar);
                return;
            }
            return;
        }
        if (i11 != 4) {
            return;
        }
        if (iIntValue == 0) {
            this.f36061f.put(str2, 0);
            return;
        }
        if (this.f36060e.containsKey(str2) && (handler3 = this.f36060e.get(str2)) != null) {
            handler3.removeCallbacksAndMessages(null);
        }
        this.f36061f.put(str2, Integer.valueOf(i11));
    }

    public void a(String str, String str2, com.mbridge.msdk.mbbanner.common.data.a aVar, com.mbridge.msdk.mbbanner.common.listener.b bVar) {
        Handler handler;
        MBridgeIds mBridgeIds = new MBridgeIds(str, str2);
        if (aVar == null || aVar.d() <= 0) {
            o0.b(f36054g, "doUnitRotation: Illegal banner request parameters! && unitId=" + str2);
            return;
        }
        if (TextUtils.isEmpty(aVar.b())) {
            aVar.b(com.mbridge.msdk.mbbanner.common.report.a.b(""));
        }
        if (this.f36060e.containsKey(str2)) {
            handler = this.f36060e.get(str2);
        } else {
            handler = new Handler();
            this.f36060e.put(str2, handler);
        }
        Handler handler2 = handler;
        b bVar2 = new b(str2, mBridgeIds, bVar, str, aVar);
        if (handler2 != null) {
            handler2.removeCallbacksAndMessages(null);
            handler2.postDelayed(bVar2, aVar.d());
        }
    }

    public void b(String str) {
        if (this.f36060e.containsKey(str)) {
            Handler handler = this.f36060e.get(str);
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            this.f36060e.remove(str);
        }
    }

    public void b(String str, String str2, com.mbridge.msdk.mbbanner.common.data.a aVar, com.mbridge.msdk.mbbanner.common.listener.b bVar) {
        Boolean bool;
        MBridgeIds mBridgeIds = new MBridgeIds(str, str2);
        String strB = aVar.b();
        com.mbridge.msdk.foundation.same.report.metrics.c cVarA = com.mbridge.msdk.mbbanner.common.report.a.a(str2, strB);
        cVarA.g(!TextUtils.isEmpty(aVar.a()) ? "1" : "0");
        cVarA.f(aVar.a());
        cVarA.e(aVar.f() ? "1" : "2");
        cVarA.b(aVar.f() ? 1 : 2);
        cVarA.c(aVar.d());
        com.mbridge.msdk.mbbanner.common.report.a.a("2000123", cVarA, (e) null);
        if (this.f36056a == null) {
            com.mbridge.msdk.foundation.error.b bVar2 = new com.mbridge.msdk.foundation.error.b(880025);
            bVar2.a(mBridgeIds);
            bVar2.b(strB);
            this.f36057b.a(bVar, bVar2);
            return;
        }
        if (bVar == null) {
            com.mbridge.msdk.foundation.error.b bVar3 = new com.mbridge.msdk.foundation.error.b(880001);
            bVar3.a(mBridgeIds);
            bVar3.b(strB);
            this.f36057b.a(bVar, bVar3);
            return;
        }
        Map<String, Boolean> map = this.f36059d;
        if (map != null && map.containsKey(str2) && (bool = this.f36059d.get(str2)) != null && bool.booleanValue()) {
            com.mbridge.msdk.foundation.error.b bVar4 = new com.mbridge.msdk.foundation.error.b(880016, "Current unit is loading!");
            bVar4.a(mBridgeIds);
            bVar4.b(strB);
            this.f36057b.a(bVar, bVar4);
            return;
        }
        this.f36059d.put(str2, Boolean.TRUE);
        com.mbridge.msdk.mbbanner.common.data.b bVarA = a(str2);
        bVarA.a(strB);
        new com.mbridge.msdk.mbbanner.common.manager.b(this.f36056a, bVarA, bVar, this.f36057b).a(str, str2, aVar, new C0499a(aVar));
        com.mbridge.msdk.mbbanner.common.report.a.a("2000125", cVarA, (e) null);
    }

    public void c() {
        Map<String, com.mbridge.msdk.mbbanner.common.data.b> map = this.f36058c;
        if (map != null) {
            map.clear();
        }
        Map<String, Boolean> map2 = this.f36059d;
        if (map2 != null) {
            map2.clear();
        }
        Map<String, Handler> map3 = this.f36060e;
        if (map3 != null) {
            for (Map.Entry<String, Handler> entry : map3.entrySet()) {
                if (entry.getValue() != null) {
                    entry.getValue().removeCallbacksAndMessages(null);
                }
            }
            this.f36060e.clear();
        }
        Map<String, Integer> map4 = this.f36061f;
        if (map4 != null) {
            map4.clear();
        }
    }
}
