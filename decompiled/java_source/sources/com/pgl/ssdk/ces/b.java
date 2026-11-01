package com.pgl.ssdk.ces;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.cloud.tmc.integration.net.UrlKt;
import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.pgl.ssdk.a0;
import com.pgl.ssdk.b0;
import com.pgl.ssdk.c0;
import com.pgl.ssdk.c1;
import com.pgl.ssdk.ces.out.PglSSConfig;
import com.pgl.ssdk.d0;
import com.pgl.ssdk.e0;
import com.pgl.ssdk.f0;
import com.pgl.ssdk.g0;
import com.pgl.ssdk.h0;
import com.pgl.ssdk.i0;
import com.pgl.ssdk.j0;
import com.pgl.ssdk.k0;
import com.pgl.ssdk.l0;
import com.pgl.ssdk.o0;
import com.pgl.ssdk.s;
import com.pgl.ssdk.t;
import com.pgl.ssdk.t0;
import com.pgl.ssdk.u;
import com.pgl.ssdk.u0;
import com.pgl.ssdk.v;
import com.pgl.ssdk.v0;
import com.pgl.ssdk.w;
import com.pgl.ssdk.x;
import com.pgl.ssdk.y;
import com.pgl.ssdk.z;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile b f40098a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f40099b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Map<String, Object> f40100c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f40101d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static t0.a f40102e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Context f40104g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f40105h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f40106i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f40107j;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f40111n;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f40103f = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f40108k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f40109l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f40110m = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f40112o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f40113p = 2;

    static class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            x.b(x.b());
        }
    }

    /* JADX INFO: renamed from: com.pgl.ssdk.ces.b$b, reason: collision with other inner class name */
    class RunnableC0577b implements Runnable {
        RunnableC0577b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i0.a(b.this.f40104g).a();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.b(b.this.f40104g);
        }
    }

    private b(Context context, String str) {
        this.f40104g = context;
        this.f40105h = str;
    }

    public static b a(Context context, String str, int i11, int i12, String str2) {
        if (f40098a == null) {
            synchronized (b.class) {
                try {
                    if (f40098a == null) {
                        if (context == null) {
                            context = z.a().getApplicationContext();
                        }
                        if (context == null) {
                            f40101d = 4;
                            return null;
                        }
                        a(i11);
                        t0.a aVarB = t0.b(context, "nms");
                        if (aVarB != null) {
                            f40101d = aVarB.f40209a;
                            f40102e = aVarB;
                            return null;
                        }
                        b bVar = new b(context, str);
                        f40098a = bVar;
                        bVar.f40106i = i12;
                        f40098a.f40107j = str2;
                        f40098a.b(context);
                        f40098a.d(a(context));
                        x.c(context);
                        f40101d = 0;
                        o0.b(new a());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f40098a;
    }

    private static String a(Context context) {
        String strA = u0.a(context, "iid");
        if (!TextUtils.isEmpty(strA)) {
            return strA;
        }
        String string = UUID.randomUUID().toString();
        u0.b(context, "iid", string);
        return string;
    }

    private String a(Object obj) {
        Map<String, Object> map;
        if (!(obj instanceof String) || !"Start".equals((String) obj) || (map = f40100c) == null || map.isEmpty()) {
            return "{}";
        }
        try {
            return new JSONObject(f40100c).toString();
        } catch (Exception unused) {
            return "{}";
        }
    }

    public static void a(int i11) {
        k0.a(i11);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x003c  */
    private void a(String str) {
        byte b11;
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                Object obj = jSONObject.get(next);
                int iHashCode = next.hashCode();
                if (iHashCode != -93508180) {
                    if (iHashCode == 944591168 && next.equals("report_ratio")) {
                        b11 = 1;
                    } else {
                        b11 = -1;
                    }
                } else if (next.equals("autoctl_detect_enable")) {
                    b11 = 0;
                } else {
                    b11 = -1;
                }
                if (b11 != 0) {
                    if (b11 == 1 && (obj instanceof Integer) && ((Integer) obj).intValue() > 0) {
                        this.f40113p = ((Integer) obj).intValue();
                    }
                } else if (obj instanceof Boolean) {
                    h0.f40139b = ((Boolean) obj).booleanValue();
                }
            }
        } catch (JSONException unused) {
        }
    }

    private void b(Context context) {
        if (context == null || f40099b) {
            return;
        }
        try {
            com.pgl.ssdk.ces.a.meta(101, null, "1");
            com.pgl.ssdk.ces.a.meta(102, null, this.f40105h);
            com.pgl.ssdk.ces.a.meta(Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE, null, Integer.valueOf(this.f40106i));
            StringBuilder sb2 = new StringBuilder();
            sb2.append(z.g(context));
            com.pgl.ssdk.ces.a.meta(105, null, sb2.toString());
            com.pgl.ssdk.ces.a.meta(106, null, z.e(context));
            com.pgl.ssdk.ces.a.meta(107, null, z.d(context));
            com.pgl.ssdk.ces.a.meta(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, null, z.c(context));
            com.pgl.ssdk.ces.a.meta(109, null, z.c());
            com.pgl.ssdk.ces.a.meta(110, null, z.b());
            com.pgl.ssdk.ces.a.meta(Sdk$SDKError.Reason.INVALID_INDEX_URL_VALUE, null, this.f40107j);
            f40099b = true;
        } catch (Throwable unused) {
        }
    }

    public static String c() {
        if (h() != null) {
            return h().f40105h;
        }
        return null;
    }

    public static String d() {
        if (h() != null) {
            return h().f40108k;
        }
        return null;
    }

    private void d(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f40111n = str;
        com.pgl.ssdk.ces.a.meta(104, null, str);
    }

    public static String f() {
        b bVarH = h();
        if (bVarH == null || !bVarH.f40110m || TextUtils.isEmpty(bVarH.f40109l)) {
            return null;
        }
        return bVarH.f40109l;
    }

    public static int g() {
        return f40101d;
    }

    public static b h() {
        return f40098a;
    }

    public static t0.a i() {
        return f40102e;
    }

    public Object a(int i11, Object obj) {
        Object objValueOf;
        if (i11 == 123) {
            objValueOf = d0.a(this.f40104g);
        } else if (i11 == 121) {
            objValueOf = b0.a();
        } else if (i11 == 122) {
            objValueOf = b0.b();
        } else if (i11 == 126) {
            objValueOf = b0.b(this.f40104g);
        } else if (i11 == 128) {
            objValueOf = b0.c(this.f40104g);
        } else if (i11 == 120) {
            objValueOf = a0.c();
        } else if (i11 == 124) {
            objValueOf = e0.c(this.f40104g);
        } else if (i11 == 130) {
            objValueOf = e0.a(this.f40104g);
        } else if (i11 == 145) {
            objValueOf = f0.b(this.f40104g);
        } else if (i11 == 125) {
            objValueOf = e0.b(this.f40104g);
        } else if (i11 == 129) {
            objValueOf = c0.e(this.f40104g);
        } else if (i11 == 141) {
            objValueOf = c0.d(this.f40104g);
        } else if (i11 == 134) {
            objValueOf = h0.a(this.f40104g).b();
        } else if (i11 == 140) {
            objValueOf = i0.a(this.f40104g).e();
        } else if (i11 == 144) {
            objValueOf = i0.a(this.f40104g).d();
        } else if (i11 == 133) {
            objValueOf = a(obj);
        } else {
            if (i11 == 135) {
                return t.f();
            }
            if (i11 == 201) {
                objValueOf = b0.a(this.f40104g);
            } else if (i11 == 202) {
                objValueOf = b0.c();
            } else {
                if (i11 == 236) {
                    return v0.a((String) obj);
                }
                if (i11 == 142) {
                    objValueOf = z.f(this.f40104g);
                } else if (i11 == 143) {
                    objValueOf = f0.a(this.f40104g);
                } else {
                    if (i11 == 146) {
                        try {
                            return t.b();
                        } catch (Throwable unused) {
                            return null;
                        }
                    }
                    if (i11 == 147) {
                        objValueOf = Boolean.valueOf(z.h(this.f40104g));
                    } else if (i11 == 148) {
                        objValueOf = s.b(this.f40104g);
                    } else if (i11 == 149) {
                        objValueOf = u.a(this.f40104g);
                    } else if (i11 == 150) {
                        objValueOf = Integer.valueOf(v.a());
                    } else if (i11 == 151) {
                        objValueOf = u.c();
                    } else if (i11 == 161) {
                        objValueOf = Boolean.valueOf(t.g());
                    } else if (i11 == 169) {
                        objValueOf = Boolean.valueOf(y.b(this.f40104g));
                    } else {
                        if (i11 != 170) {
                            return null;
                        }
                        objValueOf = Integer.valueOf(w.b((String) obj));
                    }
                }
            }
        }
        return objValueOf;
    }

    public Map<String, String> a(String str, byte[] bArr) {
        HashMap map = new HashMap();
        if (str == null) {
            str = "";
        }
        if (bArr == null) {
            bArr = new byte[0];
        }
        String str2 = (String) com.pgl.ssdk.ces.a.meta(224, this.f40104g, new Object[]{str, bArr});
        if (!TextUtils.isEmpty(str2)) {
            map.put("X-Armors", str2);
        }
        return map;
    }

    public void a() {
        o0.b(new RunnableC0577b());
    }

    public void a(MotionEvent motionEvent) {
        w.a(motionEvent, this.f40104g);
    }

    public void a(String str, String str2, String str3, String str4) {
        b(str2);
        c(str4);
        try {
            l();
        } catch (Throwable unused) {
        }
    }

    public void a(String str, Map<String, Object> map) {
        try {
            long j11 = "Start".equals(str) ? 10000L : 0L;
            Handler handlerB = o0.b();
            if (handlerB != null) {
                handlerB.postDelayed(new l0(this.f40104g, Sdk$SDKError.Reason.INVALID_WATERFALL_PLACEMENT_ID_VALUE, new Object[]{str, map}), j11);
            }
            a();
            x.a();
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x006c  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public synchronized void a(Map<String, Object> map) {
        byte b11;
        if (map != null) {
            try {
                if (!map.isEmpty()) {
                    try {
                        for (String str : map.keySet()) {
                            Object obj = map.get(str);
                            if (obj != null) {
                                switch (str.hashCode()) {
                                    case -2021683300:
                                        if (str.equals(PglSSConfig.CUSTOMINFO_KEY_TRANSFER_HOST)) {
                                            b11 = 2;
                                        } else {
                                            b11 = -1;
                                        }
                                        break;
                                    case -1195280656:
                                        if (str.equals(PglSSConfig.CUSTOMINFO_KEY_SEC_CONFIG_STR)) {
                                            b11 = 5;
                                        } else {
                                            b11 = -1;
                                        }
                                        break;
                                    case 156851746:
                                        if (str.equals(PglSSConfig.CUSTOMINFO_KEY_ALLOWED_FIELDS)) {
                                            b11 = 3;
                                        } else {
                                            b11 = -1;
                                        }
                                        break;
                                    case 398905722:
                                        if (str.equals(PglSSConfig.CUSTOMINFO_KEY_CHECKCLAZZ)) {
                                            b11 = 0;
                                        } else {
                                            b11 = -1;
                                        }
                                        break;
                                    case 485444716:
                                        if (str.equals(PglSSConfig.CUSTOMINFO_KEY_TARGET_IDC)) {
                                            b11 = 4;
                                        } else {
                                            b11 = -1;
                                        }
                                        break;
                                    case 500804551:
                                        if (str.equals(PglSSConfig.CUSTOMINFO_KEY_IPV6)) {
                                            b11 = 1;
                                        } else {
                                            b11 = -1;
                                        }
                                        break;
                                    default:
                                        b11 = -1;
                                        break;
                                }
                                if (b11 != 0) {
                                    if (b11 != 1) {
                                        if (b11 != 2) {
                                            if (b11 != 3) {
                                                if (b11 != 4) {
                                                    if (b11 == 5 && (obj instanceof String)) {
                                                        a((String) obj);
                                                    }
                                                } else if (obj instanceof String) {
                                                    k0.b((String) obj);
                                                }
                                            } else if (obj instanceof Set) {
                                                Set set = (Set) obj;
                                                com.pgl.ssdk.ces.a.meta(165, null, Boolean.valueOf(set.contains("boot")));
                                                com.pgl.ssdk.ces.a.meta(166, null, Boolean.valueOf(set.contains("mnc")));
                                                com.pgl.ssdk.ces.a.meta(167, null, Boolean.valueOf(set.contains("mcc")));
                                                com.pgl.ssdk.ces.a.meta(168, null, Boolean.valueOf(set.contains(UrlKt.KEY_MINI_GAID)));
                                                this.f40110m = set.contains(UrlKt.KEY_MINI_GAID);
                                            }
                                        } else if (obj instanceof String) {
                                            k0.a((String) obj);
                                        }
                                    } else if (obj instanceof String) {
                                        String str2 = (String) obj;
                                        if (!TextUtils.isEmpty(str2)) {
                                            j0.a(str2);
                                        }
                                    }
                                } else if (obj instanceof String) {
                                    String strA = g0.a((String) obj);
                                    if (!TextUtils.isEmpty(strA)) {
                                        com.pgl.ssdk.ces.a.meta(159, null, strA);
                                    }
                                }
                            }
                        }
                        if (f40100c == null) {
                            f40100c = new HashMap();
                        }
                        f40100c.putAll(map);
                    } catch (Throwable unused) {
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void b() {
        o0.b(new c());
    }

    public synchronized void b(String str) {
        if (!TextUtils.isEmpty(str) && !str.equals(this.f40108k)) {
            this.f40108k = str;
            com.pgl.ssdk.ces.a.meta(103, null, str);
            c1.b();
        }
    }

    public synchronized void c(String str) {
        if (!TextUtils.isEmpty(str) && !str.equals(this.f40109l)) {
            com.pgl.ssdk.ces.a.meta(111, null, str);
            this.f40109l = str;
            c1.b();
        }
    }

    public long e() {
        return x.a(this.f40104g);
    }

    public String j() {
        return x.c();
    }

    public String k() {
        return c1.a();
    }

    public void l() {
        this.f40112o = true;
        c1.a(this.f40104g, this.f40105h);
        a("Start", (Map<String, Object>) null);
    }
}
