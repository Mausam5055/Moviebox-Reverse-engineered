package com.mbridge.msdk.mbnative.controller;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.tmc.integration.ui.p001native.NativeImgComponent;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.entity.k;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.i0;
import com.mbridge.msdk.foundation.tools.m0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.mbridge.msdk.nativex.view.MBMediaView;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.out.PreloadListener;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.setting.j;
import com.mbridge.msdk.setting.l;
import com.mbridge.msdk.tracker.network.g;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class d extends com.mbridge.msdk.mbnative.controller.b {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final String f36343r = "d";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static Map<String, Map<Long, Object>> f36344s = new HashMap();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static Map<String, Boolean> f36345t = new HashMap();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static Map<String, k> f36346u = new HashMap();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static Map<String, Integer> f36347v = new HashMap();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static Map<String, Integer> f36348w = new HashMap();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static d f36349x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static int f36350y = -1;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static int f36351z = -2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private j f36352b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.mbridge.msdk.click.a f36353c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private l f36354d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f36355e;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Map<String, Object> f36359i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private List<Integer> f36360j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected List<Integer> f36361k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private List<Integer> f36362l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f36363m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f36364n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f36365o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f36366p;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Queue<Integer> f36356f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    Queue<Long> f36357g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f36358h = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private com.mbridge.msdk.foundation.same.task.b f36367q = new com.mbridge.msdk.foundation.same.task.b(com.mbridge.msdk.foundation.controller.c.m().d());

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
        }
    }

    public class b extends com.mbridge.msdk.mbnative.service.net.b implements com.mbridge.msdk.foundation.same.task.d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f36369c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f36370d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f36371e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f36372f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f36373g;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private Runnable f36376j;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private com.mbridge.msdk.preload.listenter.a f36378l;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private List<String> f36374h = null;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private boolean f36375i = false;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private boolean f36377k = true;

        class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ CampaignUnit f36380a;

            a(CampaignUnit campaignUnit) {
                this.f36380a = campaignUnit;
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean z10;
                if (MBridgeConstans.PRELOAD_RESULT_IN_SUBTHREAD && Looper.myLooper() == null) {
                    Looper.prepare();
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (b.this.f36376j != null) {
                    b bVar = b.this;
                    d.this.f36331a.removeCallbacks(bVar.f36376j);
                }
                if (com.mbridge.msdk.util.b.a()) {
                    d.this.a(this.f36380a);
                }
                if (d.f36344s.containsKey("0_" + b.this.unitId)) {
                    d.f36344s.remove("0_" + b.this.unitId);
                }
                if (b.this.f36373g > 0) {
                    if (this.f36380a.ads.size() > b.this.f36373g) {
                        b bVar2 = b.this;
                        bVar2.f36370d = bVar2.f36373g;
                    } else {
                        b.this.f36370d = this.f36380a.ads.size();
                    }
                } else if (b.this.f36373g == -1) {
                    b.this.f36370d = 0;
                } else if (b.this.f36373g == -3) {
                    b.this.f36370d = this.f36380a.ads.size();
                } else if (b.this.f36373g == -2) {
                    if (this.f36380a.getTemplate() == 3) {
                        if (b.this.f36372f != 0) {
                            b bVar3 = b.this;
                            bVar3.f36370d = bVar3.f36372f;
                        }
                    } else if (b.this.f36371e != 0) {
                        b bVar4 = b.this;
                        bVar4.f36370d = bVar4.f36371e;
                    }
                    if (b.this.f36370d <= 0) {
                        b.this.f36370d = ((Integer) d.f36347v.get(b.this.unitId)).intValue();
                    }
                }
                if (this.f36380a.ads.size() < b.this.f36370d) {
                    b.this.f36370d = this.f36380a.ads.size();
                }
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (int i11 = 0; i11 < this.f36380a.ads.size(); i11++) {
                    CampaignEx campaignEx = this.f36380a.ads.get(i11);
                    campaignEx.setCampaignUnitId(b.this.unitId);
                    boolean zC = t0.c(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx.getPackageName());
                    d.this.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx);
                    if (arrayList.size() < b.this.f36370d && campaignEx.getOfferType() != 99) {
                        if (t0.c(campaignEx)) {
                            campaignEx.setRtinsType(zC ? 1 : 2);
                        }
                        if (com.mbridge.msdk.foundation.same.c.b(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx)) {
                            arrayList.add(campaignEx);
                            if (!TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
                                arrayList2.add(campaignEx);
                            }
                        } else {
                            t0.a(b.this.unitId, campaignEx, com.mbridge.msdk.foundation.same.a.f35352x);
                        }
                        b.this.a(campaignEx, null, null);
                    }
                    d dVar = d.this;
                    dVar.a(dVar.f36363m, campaignEx);
                }
                b bVar5 = b.this;
                d.this.a(arrayList2, bVar5.unitId);
                com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> bVarA = com.mbridge.msdk.mbnative.cache.c.a(this.f36380a.getAds().get(0) != null ? this.f36380a.getAds().get(0).getType() : 1);
                if (bVarA != null) {
                    bVarA.a(b.this.unitId, arrayList);
                }
                d.a(b.this.f36369c, b.this.unitId);
                if (Looper.myLooper() != null && z10) {
                    Looper.loop();
                }
                if (this.f36380a.getAds().get(0) != null) {
                    com.mbridge.msdk.click.c.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f36380a.getAds().get(0).getMaitve(), this.f36380a.getAds().get(0).getMaitve_src());
                }
            }
        }

        /* JADX INFO: renamed from: com.mbridge.msdk.mbnative.controller.d$b$b, reason: collision with other inner class name */
        class C0509b extends com.mbridge.msdk.foundation.same.c.a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ CampaignEx f36382a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Context f36383b;

            C0509b(CampaignEx campaignEx, Context context, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
                this.f36382a = campaignEx;
                this.f36383b = context;
            }

            @Override // com.mbridge.msdk.foundation.same.c.a
            public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
                com.mbridge.msdk.mbnative.report.a.a(str, cVar, this.f36382a, this.f36383b, (com.mbridge.msdk.foundation.same.report.metrics.callback.a) null);
            }
        }

        class c implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ String f36385a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f36386b;

            c(String str, int i11) {
                this.f36385a = str;
                this.f36386b = i11;
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean z10;
                if (MBridgeConstans.PRELOAD_RESULT_IN_SUBTHREAD && Looper.myLooper() == null) {
                    Looper.prepare();
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!b.this.f36375i) {
                    if (b.this.f36376j != null) {
                        b bVar = b.this;
                        d.this.f36331a.removeCallbacks(bVar.f36376j);
                    }
                    if (b.this.a() == 1 || b.this.f36377k) {
                        b bVar2 = b.this;
                        d dVar = d.this;
                        String str = this.f36385a;
                        int iA = bVar2.a();
                        b bVar3 = b.this;
                        dVar.a(str, iA, bVar3.unitId, bVar3.placementId, bVar3.f36378l);
                    }
                } else if (b.this.f36377k) {
                    b bVar4 = b.this;
                    d dVar2 = d.this;
                    String str2 = this.f36385a;
                    int iA2 = bVar4.a();
                    b bVar5 = b.this;
                    dVar2.a(str2, iA2, bVar5.unitId, bVar5.placementId, bVar5.f36378l);
                }
                if (this.f36386b == -1) {
                    d.b(b.this.f36369c, b.this.unitId);
                }
                if (Looper.myLooper() == null || !z10) {
                    return;
                }
                Looper.loop();
            }
        }

        /* JADX INFO: renamed from: com.mbridge.msdk.mbnative.controller.d$b$d, reason: collision with other inner class name */
        class RunnableC0510d implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ List f36388a;

            RunnableC0510d(List list) {
                this.f36388a = list;
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean z10;
                if (MBridgeConstans.PRELOAD_RESULT_IN_SUBTHREAD && Looper.myLooper() == null) {
                    Looper.prepare();
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!b.this.f36375i && b.this.f36376j != null) {
                    b bVar = b.this;
                    d.this.f36331a.removeCallbacks(bVar.f36376j);
                }
                List list = this.f36388a;
                if (list != null && list.size() > 0) {
                    Iterator it = this.f36388a.iterator();
                    while (it.hasNext()) {
                        for (CampaignEx campaignEx : ((Frame) it.next()).getCampaigns()) {
                            d dVar = d.this;
                            dVar.a(dVar.f36363m, campaignEx);
                        }
                    }
                    HashMap map = new HashMap();
                    map.put(Long.valueOf(System.currentTimeMillis()), this.f36388a);
                    if (d.f36344s.containsKey("1_" + b.this.unitId)) {
                        d.f36344s.remove("1_" + b.this.unitId);
                    }
                    d.f36344s.put("1_" + b.this.unitId, map);
                }
                if (Looper.myLooper() == null || !z10) {
                    return;
                }
                Looper.loop();
            }
        }

        public b(int i11) {
            this.f36369c = i11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.c cVar, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
            try {
                Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
                com.mbridge.msdk.foundation.same.c.a(campaignEx, contextD, cVar, new C0509b(campaignEx, contextD, aVar));
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    e11.printStackTrace();
                }
            }
        }

        @Override // com.mbridge.msdk.mbnative.service.net.b
        public void a(int i11, String str) {
            d.this.a(new Thread(new c(str, i11)));
        }

        public void a(com.mbridge.msdk.preload.listenter.a aVar) {
            this.f36378l = aVar;
        }

        public void a(Runnable runnable) {
            this.f36376j = runnable;
        }

        @Override // com.mbridge.msdk.mbnative.service.net.b
        public void a(List<Frame> list) {
            d.this.a(new Thread(new RunnableC0510d(list)));
        }

        @Override // com.mbridge.msdk.mbnative.service.net.b
        public void a(List<g> list, CampaignUnit campaignUnit) {
            d.this.f36364n = true;
            d.this.a(true, this.f36378l, (String) null);
            d.this.a(new Thread(new a(campaignUnit)));
        }

        @Override // com.mbridge.msdk.foundation.same.task.d
        public void a(boolean z10) {
            this.f36375i = z10;
        }

        public void b(int i11) {
            this.f36373g = i11;
        }

        public void b(List<String> list) {
            this.f36374h = list;
        }

        public void b(boolean z10) {
            this.f36377k = z10;
        }

        public void c(int i11) {
            this.f36371e = i11;
        }

        public void d(int i11) {
            this.f36370d = i11;
        }

        public void e(int i11) {
            this.f36372f = i11;
        }
    }

    public class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f36390a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private com.mbridge.msdk.foundation.same.task.d f36391b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f36392c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f36393d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f36394e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private com.mbridge.msdk.preload.listenter.a f36395f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f36396g = false;

        public c(int i11, com.mbridge.msdk.foundation.same.task.d dVar, int i12, String str, String str2) {
            this.f36390a = i11;
            this.f36391b = dVar;
            this.f36392c = i12;
            this.f36393d = str;
            this.f36394e = str2;
        }

        public void a(com.mbridge.msdk.preload.listenter.a aVar) {
            this.f36395f = aVar;
        }

        public void a(String str) {
            this.f36393d = str;
        }

        public void a(boolean z10) {
            this.f36396g = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f36391b.a(true);
            int i11 = this.f36390a;
            if (i11 != 1) {
                if (i11 != 2) {
                    return;
                }
                d.this.a("REQUEST_TIMEOUT", this.f36392c, this.f36393d, this.f36394e, this.f36395f);
            } else {
                d.this.f36364n = true;
                if (this.f36396g || this.f36392c == 1) {
                    d.this.a("REQUEST_TIMEOUT", this.f36392c, this.f36393d, this.f36394e, this.f36395f);
                }
            }
        }
    }

    public d() {
        if (Looper.myLooper() == null) {
            Looper.prepare();
        }
        this.f36331a = new a();
    }

    private int a(String str) {
        if (str == null) {
            return 0;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            if (jSONArray.length() > 0) {
                for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                    JSONObject jSONObject = (JSONObject) jSONArray.opt(i11);
                    if (2 == jSONObject.optInt("id", 0)) {
                        return jSONObject.optInt("ad_num");
                    }
                }
            }
        } catch (Exception e11) {
            o0.b(f36343r, com.mbridge.msdk.mbnative.common.a.a(e11));
        }
        return 0;
    }

    public static void a(int i11, String str) {
        k kVar = f36346u.containsKey(str) ? f36346u.get(str) : new k();
        int iIntValue = f36347v.get(str).intValue();
        int iIntValue2 = d().containsKey(str) ? d().get(str).intValue() : 1;
        if (i11 == 1) {
            int iA = iIntValue + kVar.a();
            kVar.a(iA <= iIntValue2 ? iA : 0);
        } else if (i11 == 2) {
            int iB = iIntValue + kVar.b();
            kVar.b(iB <= iIntValue2 ? iB : 0);
        }
        f36346u.put(str, kVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<CampaignEx> list, String str) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    try {
                        int i11 = MBMediaView.f36656p0;
                        Object objInvoke = com.mbridge.msdk.videocommon.download.b.class.getMethod("getInstance", null).invoke(null, null);
                        if (objInvoke != null) {
                            com.mbridge.msdk.videocommon.download.b.class.getMethod("createUnitCache", Context.class, String.class, CopyOnWriteArrayList.class, Integer.TYPE, com.mbridge.msdk.videocommon.listener.a.class).invoke(objInvoke, com.mbridge.msdk.foundation.controller.c.m().d(), str, new CopyOnWriteArrayList(list), 1, null);
                            com.mbridge.msdk.videocommon.download.b.class.getMethod(NativeImgComponent.EVENT_LOAD, String.class).invoke(objInvoke, str);
                            return;
                        }
                        return;
                    } catch (Exception unused) {
                        o0.b(f36343r, "please import the videocommon aar");
                        return;
                    }
                    o0.b(f36343r, com.mbridge.msdk.mbnative.common.a.a(e));
                }
            } catch (Exception e11) {
                o0.b(f36343r, com.mbridge.msdk.mbnative.common.a.a(e11));
            }
        }
    }

    public static void b(int i11, String str) {
        if (f36346u.containsKey(str)) {
            k kVar = f36346u.get(str);
            if (i11 == 1) {
                kVar.a(0);
            } else if (i11 == 2) {
                kVar.b(0);
            }
            f36346u.put(str, kVar);
        }
    }

    public static Map<String, Integer> c() {
        return f36347v;
    }

    public static Map<String, Integer> d() {
        return f36348w;
    }

    public static Map<String, k> e() {
        return f36346u;
    }

    public static Map<String, Map<Long, Object>> f() {
        return f36344s;
    }

    public static Map<String, Boolean> g() {
        return f36345t;
    }

    public List<Campaign> a(String str, int i11) {
        com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> bVarA;
        l lVarE = h.b().e("", str);
        this.f36354d = lVarE;
        if (lVarE == null) {
            this.f36354d = l.i(str);
        }
        List<Integer> listB = this.f36354d.b();
        this.f36360j = listB;
        if (listB == null || listB.size() <= 0 || !this.f36360j.contains(1) || (bVarA = com.mbridge.msdk.mbnative.cache.c.a(1)) == null) {
            return null;
        }
        return bVarA.a(str, i11);
    }

    /* JADX WARN: Code duplicated, block: B:126:0x02b5 A[Catch: Exception -> 0x009c, TryCatch #3 {Exception -> 0x009c, blocks: (B:3:0x001c, B:6:0x0069, B:8:0x006f, B:10:0x0077, B:12:0x007f, B:14:0x0087, B:16:0x0091, B:19:0x009f, B:21:0x00a9, B:22:0x00b3, B:24:0x00bd, B:26:0x00c7, B:28:0x00cd, B:29:0x00d6, B:31:0x00ef, B:32:0x00f6, B:34:0x00fc, B:35:0x0101, B:37:0x0128, B:38:0x012d, B:45:0x0148, B:48:0x0150, B:50:0x0158, B:52:0x015e, B:54:0x0163, B:56:0x0167, B:60:0x017b, B:62:0x0183, B:64:0x0189, B:68:0x0194, B:69:0x01a6, B:71:0x01aa, B:72:0x01c0, B:74:0x01c8, B:76:0x01d7, B:77:0x01ed, B:80:0x01fe, B:82:0x0204, B:86:0x0211, B:88:0x0218, B:90:0x021e, B:115:0x0269, B:116:0x0276, B:124:0x028c, B:126:0x02b5, B:127:0x02bc, B:129:0x02c4, B:131:0x02d6, B:132:0x02df, B:134:0x02ea, B:140:0x02fa, B:144:0x030a, B:149:0x0317, B:153:0x0343, B:155:0x037e, B:156:0x0383, B:158:0x038b, B:160:0x0395, B:161:0x03b5, B:163:0x03bf, B:165:0x03c9, B:166:0x03e9, B:170:0x041f, B:172:0x044d, B:176:0x047f, B:175:0x0466, B:169:0x041c, B:152:0x032f, B:141:0x02ff, B:142:0x0304, B:98:0x022b, B:100:0x0231, B:109:0x0252, B:118:0x027d, B:177:0x0485), top: B:187:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:129:0x02c4 A[Catch: Exception -> 0x009c, TryCatch #3 {Exception -> 0x009c, blocks: (B:3:0x001c, B:6:0x0069, B:8:0x006f, B:10:0x0077, B:12:0x007f, B:14:0x0087, B:16:0x0091, B:19:0x009f, B:21:0x00a9, B:22:0x00b3, B:24:0x00bd, B:26:0x00c7, B:28:0x00cd, B:29:0x00d6, B:31:0x00ef, B:32:0x00f6, B:34:0x00fc, B:35:0x0101, B:37:0x0128, B:38:0x012d, B:45:0x0148, B:48:0x0150, B:50:0x0158, B:52:0x015e, B:54:0x0163, B:56:0x0167, B:60:0x017b, B:62:0x0183, B:64:0x0189, B:68:0x0194, B:69:0x01a6, B:71:0x01aa, B:72:0x01c0, B:74:0x01c8, B:76:0x01d7, B:77:0x01ed, B:80:0x01fe, B:82:0x0204, B:86:0x0211, B:88:0x0218, B:90:0x021e, B:115:0x0269, B:116:0x0276, B:124:0x028c, B:126:0x02b5, B:127:0x02bc, B:129:0x02c4, B:131:0x02d6, B:132:0x02df, B:134:0x02ea, B:140:0x02fa, B:144:0x030a, B:149:0x0317, B:153:0x0343, B:155:0x037e, B:156:0x0383, B:158:0x038b, B:160:0x0395, B:161:0x03b5, B:163:0x03bf, B:165:0x03c9, B:166:0x03e9, B:170:0x041f, B:172:0x044d, B:176:0x047f, B:175:0x0466, B:169:0x041c, B:152:0x032f, B:141:0x02ff, B:142:0x0304, B:98:0x022b, B:100:0x0231, B:109:0x0252, B:118:0x027d, B:177:0x0485), top: B:187:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:131:0x02d6 A[Catch: Exception -> 0x009c, TryCatch #3 {Exception -> 0x009c, blocks: (B:3:0x001c, B:6:0x0069, B:8:0x006f, B:10:0x0077, B:12:0x007f, B:14:0x0087, B:16:0x0091, B:19:0x009f, B:21:0x00a9, B:22:0x00b3, B:24:0x00bd, B:26:0x00c7, B:28:0x00cd, B:29:0x00d6, B:31:0x00ef, B:32:0x00f6, B:34:0x00fc, B:35:0x0101, B:37:0x0128, B:38:0x012d, B:45:0x0148, B:48:0x0150, B:50:0x0158, B:52:0x015e, B:54:0x0163, B:56:0x0167, B:60:0x017b, B:62:0x0183, B:64:0x0189, B:68:0x0194, B:69:0x01a6, B:71:0x01aa, B:72:0x01c0, B:74:0x01c8, B:76:0x01d7, B:77:0x01ed, B:80:0x01fe, B:82:0x0204, B:86:0x0211, B:88:0x0218, B:90:0x021e, B:115:0x0269, B:116:0x0276, B:124:0x028c, B:126:0x02b5, B:127:0x02bc, B:129:0x02c4, B:131:0x02d6, B:132:0x02df, B:134:0x02ea, B:140:0x02fa, B:144:0x030a, B:149:0x0317, B:153:0x0343, B:155:0x037e, B:156:0x0383, B:158:0x038b, B:160:0x0395, B:161:0x03b5, B:163:0x03bf, B:165:0x03c9, B:166:0x03e9, B:170:0x041f, B:172:0x044d, B:176:0x047f, B:175:0x0466, B:169:0x041c, B:152:0x032f, B:141:0x02ff, B:142:0x0304, B:98:0x022b, B:100:0x0231, B:109:0x0252, B:118:0x027d, B:177:0x0485), top: B:187:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:134:0x02ea A[Catch: Exception -> 0x009c, TryCatch #3 {Exception -> 0x009c, blocks: (B:3:0x001c, B:6:0x0069, B:8:0x006f, B:10:0x0077, B:12:0x007f, B:14:0x0087, B:16:0x0091, B:19:0x009f, B:21:0x00a9, B:22:0x00b3, B:24:0x00bd, B:26:0x00c7, B:28:0x00cd, B:29:0x00d6, B:31:0x00ef, B:32:0x00f6, B:34:0x00fc, B:35:0x0101, B:37:0x0128, B:38:0x012d, B:45:0x0148, B:48:0x0150, B:50:0x0158, B:52:0x015e, B:54:0x0163, B:56:0x0167, B:60:0x017b, B:62:0x0183, B:64:0x0189, B:68:0x0194, B:69:0x01a6, B:71:0x01aa, B:72:0x01c0, B:74:0x01c8, B:76:0x01d7, B:77:0x01ed, B:80:0x01fe, B:82:0x0204, B:86:0x0211, B:88:0x0218, B:90:0x021e, B:115:0x0269, B:116:0x0276, B:124:0x028c, B:126:0x02b5, B:127:0x02bc, B:129:0x02c4, B:131:0x02d6, B:132:0x02df, B:134:0x02ea, B:140:0x02fa, B:144:0x030a, B:149:0x0317, B:153:0x0343, B:155:0x037e, B:156:0x0383, B:158:0x038b, B:160:0x0395, B:161:0x03b5, B:163:0x03bf, B:165:0x03c9, B:166:0x03e9, B:170:0x041f, B:172:0x044d, B:176:0x047f, B:175:0x0466, B:169:0x041c, B:152:0x032f, B:141:0x02ff, B:142:0x0304, B:98:0x022b, B:100:0x0231, B:109:0x0252, B:118:0x027d, B:177:0x0485), top: B:187:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:143:0x0309  */
    /* JADX WARN: Code duplicated, block: B:147:0x0314  */
    /* JADX WARN: Code duplicated, block: B:149:0x0317 A[Catch: Exception -> 0x009c, TRY_ENTER, TryCatch #3 {Exception -> 0x009c, blocks: (B:3:0x001c, B:6:0x0069, B:8:0x006f, B:10:0x0077, B:12:0x007f, B:14:0x0087, B:16:0x0091, B:19:0x009f, B:21:0x00a9, B:22:0x00b3, B:24:0x00bd, B:26:0x00c7, B:28:0x00cd, B:29:0x00d6, B:31:0x00ef, B:32:0x00f6, B:34:0x00fc, B:35:0x0101, B:37:0x0128, B:38:0x012d, B:45:0x0148, B:48:0x0150, B:50:0x0158, B:52:0x015e, B:54:0x0163, B:56:0x0167, B:60:0x017b, B:62:0x0183, B:64:0x0189, B:68:0x0194, B:69:0x01a6, B:71:0x01aa, B:72:0x01c0, B:74:0x01c8, B:76:0x01d7, B:77:0x01ed, B:80:0x01fe, B:82:0x0204, B:86:0x0211, B:88:0x0218, B:90:0x021e, B:115:0x0269, B:116:0x0276, B:124:0x028c, B:126:0x02b5, B:127:0x02bc, B:129:0x02c4, B:131:0x02d6, B:132:0x02df, B:134:0x02ea, B:140:0x02fa, B:144:0x030a, B:149:0x0317, B:153:0x0343, B:155:0x037e, B:156:0x0383, B:158:0x038b, B:160:0x0395, B:161:0x03b5, B:163:0x03bf, B:165:0x03c9, B:166:0x03e9, B:170:0x041f, B:172:0x044d, B:176:0x047f, B:175:0x0466, B:169:0x041c, B:152:0x032f, B:141:0x02ff, B:142:0x0304, B:98:0x022b, B:100:0x0231, B:109:0x0252, B:118:0x027d, B:177:0x0485), top: B:187:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:150:0x032c  */
    /* JADX WARN: Code duplicated, block: B:152:0x032f A[Catch: Exception -> 0x009c, TryCatch #3 {Exception -> 0x009c, blocks: (B:3:0x001c, B:6:0x0069, B:8:0x006f, B:10:0x0077, B:12:0x007f, B:14:0x0087, B:16:0x0091, B:19:0x009f, B:21:0x00a9, B:22:0x00b3, B:24:0x00bd, B:26:0x00c7, B:28:0x00cd, B:29:0x00d6, B:31:0x00ef, B:32:0x00f6, B:34:0x00fc, B:35:0x0101, B:37:0x0128, B:38:0x012d, B:45:0x0148, B:48:0x0150, B:50:0x0158, B:52:0x015e, B:54:0x0163, B:56:0x0167, B:60:0x017b, B:62:0x0183, B:64:0x0189, B:68:0x0194, B:69:0x01a6, B:71:0x01aa, B:72:0x01c0, B:74:0x01c8, B:76:0x01d7, B:77:0x01ed, B:80:0x01fe, B:82:0x0204, B:86:0x0211, B:88:0x0218, B:90:0x021e, B:115:0x0269, B:116:0x0276, B:124:0x028c, B:126:0x02b5, B:127:0x02bc, B:129:0x02c4, B:131:0x02d6, B:132:0x02df, B:134:0x02ea, B:140:0x02fa, B:144:0x030a, B:149:0x0317, B:153:0x0343, B:155:0x037e, B:156:0x0383, B:158:0x038b, B:160:0x0395, B:161:0x03b5, B:163:0x03bf, B:165:0x03c9, B:166:0x03e9, B:170:0x041f, B:172:0x044d, B:176:0x047f, B:175:0x0466, B:169:0x041c, B:152:0x032f, B:141:0x02ff, B:142:0x0304, B:98:0x022b, B:100:0x0231, B:109:0x0252, B:118:0x027d, B:177:0x0485), top: B:187:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:155:0x037e A[Catch: Exception -> 0x009c, TryCatch #3 {Exception -> 0x009c, blocks: (B:3:0x001c, B:6:0x0069, B:8:0x006f, B:10:0x0077, B:12:0x007f, B:14:0x0087, B:16:0x0091, B:19:0x009f, B:21:0x00a9, B:22:0x00b3, B:24:0x00bd, B:26:0x00c7, B:28:0x00cd, B:29:0x00d6, B:31:0x00ef, B:32:0x00f6, B:34:0x00fc, B:35:0x0101, B:37:0x0128, B:38:0x012d, B:45:0x0148, B:48:0x0150, B:50:0x0158, B:52:0x015e, B:54:0x0163, B:56:0x0167, B:60:0x017b, B:62:0x0183, B:64:0x0189, B:68:0x0194, B:69:0x01a6, B:71:0x01aa, B:72:0x01c0, B:74:0x01c8, B:76:0x01d7, B:77:0x01ed, B:80:0x01fe, B:82:0x0204, B:86:0x0211, B:88:0x0218, B:90:0x021e, B:115:0x0269, B:116:0x0276, B:124:0x028c, B:126:0x02b5, B:127:0x02bc, B:129:0x02c4, B:131:0x02d6, B:132:0x02df, B:134:0x02ea, B:140:0x02fa, B:144:0x030a, B:149:0x0317, B:153:0x0343, B:155:0x037e, B:156:0x0383, B:158:0x038b, B:160:0x0395, B:161:0x03b5, B:163:0x03bf, B:165:0x03c9, B:166:0x03e9, B:170:0x041f, B:172:0x044d, B:176:0x047f, B:175:0x0466, B:169:0x041c, B:152:0x032f, B:141:0x02ff, B:142:0x0304, B:98:0x022b, B:100:0x0231, B:109:0x0252, B:118:0x027d, B:177:0x0485), top: B:187:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:158:0x038b A[Catch: Exception -> 0x009c, TryCatch #3 {Exception -> 0x009c, blocks: (B:3:0x001c, B:6:0x0069, B:8:0x006f, B:10:0x0077, B:12:0x007f, B:14:0x0087, B:16:0x0091, B:19:0x009f, B:21:0x00a9, B:22:0x00b3, B:24:0x00bd, B:26:0x00c7, B:28:0x00cd, B:29:0x00d6, B:31:0x00ef, B:32:0x00f6, B:34:0x00fc, B:35:0x0101, B:37:0x0128, B:38:0x012d, B:45:0x0148, B:48:0x0150, B:50:0x0158, B:52:0x015e, B:54:0x0163, B:56:0x0167, B:60:0x017b, B:62:0x0183, B:64:0x0189, B:68:0x0194, B:69:0x01a6, B:71:0x01aa, B:72:0x01c0, B:74:0x01c8, B:76:0x01d7, B:77:0x01ed, B:80:0x01fe, B:82:0x0204, B:86:0x0211, B:88:0x0218, B:90:0x021e, B:115:0x0269, B:116:0x0276, B:124:0x028c, B:126:0x02b5, B:127:0x02bc, B:129:0x02c4, B:131:0x02d6, B:132:0x02df, B:134:0x02ea, B:140:0x02fa, B:144:0x030a, B:149:0x0317, B:153:0x0343, B:155:0x037e, B:156:0x0383, B:158:0x038b, B:160:0x0395, B:161:0x03b5, B:163:0x03bf, B:165:0x03c9, B:166:0x03e9, B:170:0x041f, B:172:0x044d, B:176:0x047f, B:175:0x0466, B:169:0x041c, B:152:0x032f, B:141:0x02ff, B:142:0x0304, B:98:0x022b, B:100:0x0231, B:109:0x0252, B:118:0x027d, B:177:0x0485), top: B:187:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:163:0x03bf A[Catch: Exception -> 0x009c, TryCatch #3 {Exception -> 0x009c, blocks: (B:3:0x001c, B:6:0x0069, B:8:0x006f, B:10:0x0077, B:12:0x007f, B:14:0x0087, B:16:0x0091, B:19:0x009f, B:21:0x00a9, B:22:0x00b3, B:24:0x00bd, B:26:0x00c7, B:28:0x00cd, B:29:0x00d6, B:31:0x00ef, B:32:0x00f6, B:34:0x00fc, B:35:0x0101, B:37:0x0128, B:38:0x012d, B:45:0x0148, B:48:0x0150, B:50:0x0158, B:52:0x015e, B:54:0x0163, B:56:0x0167, B:60:0x017b, B:62:0x0183, B:64:0x0189, B:68:0x0194, B:69:0x01a6, B:71:0x01aa, B:72:0x01c0, B:74:0x01c8, B:76:0x01d7, B:77:0x01ed, B:80:0x01fe, B:82:0x0204, B:86:0x0211, B:88:0x0218, B:90:0x021e, B:115:0x0269, B:116:0x0276, B:124:0x028c, B:126:0x02b5, B:127:0x02bc, B:129:0x02c4, B:131:0x02d6, B:132:0x02df, B:134:0x02ea, B:140:0x02fa, B:144:0x030a, B:149:0x0317, B:153:0x0343, B:155:0x037e, B:156:0x0383, B:158:0x038b, B:160:0x0395, B:161:0x03b5, B:163:0x03bf, B:165:0x03c9, B:166:0x03e9, B:170:0x041f, B:172:0x044d, B:176:0x047f, B:175:0x0466, B:169:0x041c, B:152:0x032f, B:141:0x02ff, B:142:0x0304, B:98:0x022b, B:100:0x0231, B:109:0x0252, B:118:0x027d, B:177:0x0485), top: B:187:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:168:0x041a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:169:0x041c A[Catch: Exception -> 0x009c, TryCatch #3 {Exception -> 0x009c, blocks: (B:3:0x001c, B:6:0x0069, B:8:0x006f, B:10:0x0077, B:12:0x007f, B:14:0x0087, B:16:0x0091, B:19:0x009f, B:21:0x00a9, B:22:0x00b3, B:24:0x00bd, B:26:0x00c7, B:28:0x00cd, B:29:0x00d6, B:31:0x00ef, B:32:0x00f6, B:34:0x00fc, B:35:0x0101, B:37:0x0128, B:38:0x012d, B:45:0x0148, B:48:0x0150, B:50:0x0158, B:52:0x015e, B:54:0x0163, B:56:0x0167, B:60:0x017b, B:62:0x0183, B:64:0x0189, B:68:0x0194, B:69:0x01a6, B:71:0x01aa, B:72:0x01c0, B:74:0x01c8, B:76:0x01d7, B:77:0x01ed, B:80:0x01fe, B:82:0x0204, B:86:0x0211, B:88:0x0218, B:90:0x021e, B:115:0x0269, B:116:0x0276, B:124:0x028c, B:126:0x02b5, B:127:0x02bc, B:129:0x02c4, B:131:0x02d6, B:132:0x02df, B:134:0x02ea, B:140:0x02fa, B:144:0x030a, B:149:0x0317, B:153:0x0343, B:155:0x037e, B:156:0x0383, B:158:0x038b, B:160:0x0395, B:161:0x03b5, B:163:0x03bf, B:165:0x03c9, B:166:0x03e9, B:170:0x041f, B:172:0x044d, B:176:0x047f, B:175:0x0466, B:169:0x041c, B:152:0x032f, B:141:0x02ff, B:142:0x0304, B:98:0x022b, B:100:0x0231, B:109:0x0252, B:118:0x027d, B:177:0x0485), top: B:187:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:172:0x044d A[Catch: Exception -> 0x009c, TryCatch #3 {Exception -> 0x009c, blocks: (B:3:0x001c, B:6:0x0069, B:8:0x006f, B:10:0x0077, B:12:0x007f, B:14:0x0087, B:16:0x0091, B:19:0x009f, B:21:0x00a9, B:22:0x00b3, B:24:0x00bd, B:26:0x00c7, B:28:0x00cd, B:29:0x00d6, B:31:0x00ef, B:32:0x00f6, B:34:0x00fc, B:35:0x0101, B:37:0x0128, B:38:0x012d, B:45:0x0148, B:48:0x0150, B:50:0x0158, B:52:0x015e, B:54:0x0163, B:56:0x0167, B:60:0x017b, B:62:0x0183, B:64:0x0189, B:68:0x0194, B:69:0x01a6, B:71:0x01aa, B:72:0x01c0, B:74:0x01c8, B:76:0x01d7, B:77:0x01ed, B:80:0x01fe, B:82:0x0204, B:86:0x0211, B:88:0x0218, B:90:0x021e, B:115:0x0269, B:116:0x0276, B:124:0x028c, B:126:0x02b5, B:127:0x02bc, B:129:0x02c4, B:131:0x02d6, B:132:0x02df, B:134:0x02ea, B:140:0x02fa, B:144:0x030a, B:149:0x0317, B:153:0x0343, B:155:0x037e, B:156:0x0383, B:158:0x038b, B:160:0x0395, B:161:0x03b5, B:163:0x03bf, B:165:0x03c9, B:166:0x03e9, B:170:0x041f, B:172:0x044d, B:176:0x047f, B:175:0x0466, B:169:0x041c, B:152:0x032f, B:141:0x02ff, B:142:0x0304, B:98:0x022b, B:100:0x0231, B:109:0x0252, B:118:0x027d, B:177:0x0485), top: B:187:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:173:0x0461  */
    /* JADX WARN: Code duplicated, block: B:175:0x0466 A[Catch: Exception -> 0x009c, TryCatch #3 {Exception -> 0x009c, blocks: (B:3:0x001c, B:6:0x0069, B:8:0x006f, B:10:0x0077, B:12:0x007f, B:14:0x0087, B:16:0x0091, B:19:0x009f, B:21:0x00a9, B:22:0x00b3, B:24:0x00bd, B:26:0x00c7, B:28:0x00cd, B:29:0x00d6, B:31:0x00ef, B:32:0x00f6, B:34:0x00fc, B:35:0x0101, B:37:0x0128, B:38:0x012d, B:45:0x0148, B:48:0x0150, B:50:0x0158, B:52:0x015e, B:54:0x0163, B:56:0x0167, B:60:0x017b, B:62:0x0183, B:64:0x0189, B:68:0x0194, B:69:0x01a6, B:71:0x01aa, B:72:0x01c0, B:74:0x01c8, B:76:0x01d7, B:77:0x01ed, B:80:0x01fe, B:82:0x0204, B:86:0x0211, B:88:0x0218, B:90:0x021e, B:115:0x0269, B:116:0x0276, B:124:0x028c, B:126:0x02b5, B:127:0x02bc, B:129:0x02c4, B:131:0x02d6, B:132:0x02df, B:134:0x02ea, B:140:0x02fa, B:144:0x030a, B:149:0x0317, B:153:0x0343, B:155:0x037e, B:156:0x0383, B:158:0x038b, B:160:0x0395, B:161:0x03b5, B:163:0x03bf, B:165:0x03c9, B:166:0x03e9, B:170:0x041f, B:172:0x044d, B:176:0x047f, B:175:0x0466, B:169:0x041c, B:152:0x032f, B:141:0x02ff, B:142:0x0304, B:98:0x022b, B:100:0x0231, B:109:0x0252, B:118:0x027d, B:177:0x0485), top: B:187:0x001c }] */
    /* JADX WARN: Instruction removed from duplicated block: B:149:0x0317, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:152:0x032f, please report this as an issue */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    @Override // com.mbridge.msdk.mbnative.controller.b
    public void a(int i11, long j11, int i12, l lVar, String str, String str2, com.mbridge.msdk.preload.listenter.a aVar, boolean z10) {
        int i13;
        int i14;
        int iOptInt;
        int iA;
        int i15;
        String strA;
        b bVar;
        long j12;
        k kVar;
        JSONArray jSONArrayB;
        String str3;
        int iOptInt2;
        String string;
        List<Campaign> listA;
        List<Campaign> listA2;
        try {
            com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d())).a();
            int iF = this.f36354d.f();
            int iE = this.f36354d.e();
            com.mbridge.msdk.mbnative.service.net.a aVar2 = new com.mbridge.msdk.mbnative.service.net.a(com.mbridge.msdk.foundation.controller.c.m().d());
            com.mbridge.msdk.foundation.same.net.wrapper.e eVar = new com.mbridge.msdk.foundation.same.net.wrapper.e();
            String strB = com.mbridge.msdk.foundation.controller.c.m().b();
            String strC = com.mbridge.msdk.foundation.controller.c.m().c();
            Map<String, Object> map = this.f36359i;
            if (map != null && map.containsKey("app_id") && this.f36359i.containsKey(MBridgeConstans.APP_KEY) && this.f36359i.containsKey(MBridgeConstans.KEY_WORD) && this.f36359i.get(MBridgeConstans.KEY_WORD) != null) {
                if (this.f36359i.get("app_id") instanceof String) {
                    strB = (String) this.f36359i.get("app_id");
                }
                if (this.f36359i.get(MBridgeConstans.APP_KEY) instanceof String) {
                    strC = (String) this.f36359i.get(MBridgeConstans.APP_KEY);
                }
                String str4 = this.f36359i.get(MBridgeConstans.KEY_WORD) instanceof String ? (String) this.f36359i.get(MBridgeConstans.KEY_WORD) : null;
                if (!TextUtils.isEmpty(str4)) {
                    eVar.a("smart", i0.b(str4));
                }
            }
            String str5 = strB;
            String str6 = strC;
            eVar.a("app_id", str5);
            eVar.a(MBridgeConstans.PROPERTIES_UNIT_ID, str);
            eVar.a("req_type", "1");
            if (!TextUtils.isEmpty(this.f36355e)) {
                eVar.a("category", this.f36355e);
            }
            if (!TextUtils.isEmpty(str2)) {
                eVar.a(MBridgeConstans.PLACEMENT_ID, str2);
            }
            eVar.a(TmcConstants.EXTRA_APP_DEV_TOKEN, SameMD5.getMD5(str5 + str6));
            eVar.a("only_impression", "1");
            String strD = t0.d(str);
            if (!TextUtils.isEmpty(strD)) {
                eVar.a("j", strD);
            }
            int iIntValue = f36347v.get(str).intValue();
            if (iF == f36350y || iF == 0 || iIntValue == 0) {
                a("The request was refused", i12, str, str2, aVar);
                return;
            }
            if (i12 == 0) {
                com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> bVarA = com.mbridge.msdk.mbnative.cache.c.a(i11);
                if (z10) {
                    if (bVarA != null && (listA2 = bVarA.a(str, iIntValue)) != null && listA2.size() > 0) {
                        a(true, aVar, (String) null);
                        return;
                    } else {
                        if (this.f36364n) {
                            a("", i12, str, str2, aVar);
                            return;
                        }
                        return;
                    }
                }
                if (i11 != 1 && bVarA != null && (listA = bVarA.a(str, iIntValue)) != null && listA.size() > 0) {
                    a(true, aVar, (String) null);
                    return;
                }
            }
            if (iIntValue != 0) {
                eVar.a("ad_num", iIntValue + "");
            }
            if (this.f36358h != 0) {
                eVar.a("frame_num", this.f36358h + "");
            }
            if (!this.f36359i.containsKey(MBridgeConstans.NATIVE_INFO)) {
                i13 = iIntValue;
                if (iF != f36351z && iF != 0) {
                    i14 = 0;
                    iOptInt = 0;
                }
                eVar.a("ad_num", iF + "");
                eVar.a("ping_mode", "1");
                if (h.b().d(com.mbridge.msdk.foundation.controller.c.m().b()) == null) {
                    h.b().a();
                }
                if (!NativeController.b(this.f36359i)) {
                    jSONArrayB = t0.b(com.mbridge.msdk.foundation.controller.c.m().d(), str);
                    if (jSONArrayB.length() > 0) {
                        eVar.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f35501h, t0.a(jSONArrayB));
                    }
                }
                a(eVar, i11);
                if (f36346u.containsKey(str)) {
                    iA = 0;
                } else {
                    iA = 0;
                }
                if (this.f36359i.containsKey(MBridgeConstans.NATIVE_INFO)) {
                    i15 = 1;
                    if (i11 == 1) {
                        eVar.a("tnum", this.f36365o + "");
                    }
                    eVar.a("offset", iA + "");
                    eVar.a("ad_type", "42");
                    eVar.a(CampaignEx.JSON_KEY_AD_SOURCE_ID, i11 + "");
                    strA = com.mbridge.msdk.foundation.same.buffer.b.a(str, "native");
                    if (!TextUtils.isEmpty(strA)) {
                        eVar.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f35500g, strA);
                    }
                    if (this.f36359i.containsKey(MBridgeConstans.NATIVE_VIDEO_WIDTH)) {
                        eVar.a("video_width", ((Integer) this.f36359i.get(MBridgeConstans.NATIVE_VIDEO_WIDTH)).intValue() + "");
                    }
                    if (this.f36359i.containsKey(MBridgeConstans.NATIVE_VIDEO_HEIGHT)) {
                        eVar.a("video_height", ((Integer) this.f36359i.get(MBridgeConstans.NATIVE_VIDEO_HEIGHT)).intValue() + "");
                    }
                    eVar.a("video_version", MBridgeConstans.NATIVE_VIDEO_VERSION);
                    bVar = new b(i11);
                    bVar.setUnitId(str);
                    bVar.setPlacementId(str2);
                    bVar.setAdType(42);
                    bVar.d(i13);
                    bVar.c(iOptInt);
                    bVar.e(i14);
                    bVar.b(iE);
                    bVar.a(aVar);
                    if (i11 == 1) {
                        bVar.b(true);
                    } else {
                        bVar.b(true);
                    }
                    bVar.b(NativeController.a(this.f36359i));
                    c cVar = new c(1, bVar, i12, str, str2);
                    bVar.a(cVar);
                    bVar.a(i12);
                    cVar.a(aVar);
                    cVar.a(z10);
                    cVar.a(str);
                    if (i12 == 0) {
                        j12 = j11;
                        aVar2.choiceV3OrV5BySetting(1, eVar, bVar, "", com.mbridge.msdk.foundation.same.c.a(j12, 30000L));
                    } else {
                        j12 = j11;
                        if (i12 == 1) {
                            aVar2.getLoadOrSetting(1, com.mbridge.msdk.foundation.same.net.utils.d.h().f35465b0, eVar, bVar, MBInterstitialActivity.INTENT_CAMAPIGN, com.mbridge.msdk.foundation.same.c.a(j12, 30000L));
                        }
                    }
                    this.f36331a.postDelayed(cVar, j12);
                }
                i15 = 1;
                if (i11 == i15) {
                    eVar.a("tnum", this.f36366p + "");
                }
                eVar.a("offset", iA + "");
                eVar.a("ad_type", "42");
                eVar.a(CampaignEx.JSON_KEY_AD_SOURCE_ID, i11 + "");
                strA = com.mbridge.msdk.foundation.same.buffer.b.a(str, "native");
                if (!TextUtils.isEmpty(strA)) {
                    eVar.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f35500g, strA);
                }
                if (this.f36359i.containsKey(MBridgeConstans.NATIVE_VIDEO_WIDTH)) {
                    eVar.a("video_width", ((Integer) this.f36359i.get(MBridgeConstans.NATIVE_VIDEO_WIDTH)).intValue() + "");
                }
                if (this.f36359i.containsKey(MBridgeConstans.NATIVE_VIDEO_HEIGHT)) {
                    eVar.a("video_height", ((Integer) this.f36359i.get(MBridgeConstans.NATIVE_VIDEO_HEIGHT)).intValue() + "");
                }
                eVar.a("video_version", MBridgeConstans.NATIVE_VIDEO_VERSION);
                bVar = new b(i11);
                bVar.setUnitId(str);
                bVar.setPlacementId(str2);
                bVar.setAdType(42);
                bVar.d(i13);
                bVar.c(iOptInt);
                bVar.e(i14);
                bVar.b(iE);
                bVar.a(aVar);
                if (i11 == 1) {
                    bVar.b(true);
                } else {
                    bVar.b(true);
                }
                bVar.b(NativeController.a(this.f36359i));
                c cVar2 = new c(1, bVar, i12, str, str2);
                bVar.a(cVar2);
                bVar.a(i12);
                cVar2.a(aVar);
                cVar2.a(z10);
                cVar2.a(str);
                if (i12 == 0) {
                    j12 = j11;
                    aVar2.choiceV3OrV5BySetting(1, eVar, bVar, "", com.mbridge.msdk.foundation.same.c.a(j12, 30000L));
                } else {
                    j12 = j11;
                    if (i12 == 1) {
                        aVar2.getLoadOrSetting(1, com.mbridge.msdk.foundation.same.net.utils.d.h().f35465b0, eVar, bVar, MBInterstitialActivity.INTENT_CAMAPIGN, com.mbridge.msdk.foundation.same.c.a(j12, 30000L));
                    }
                }
                this.f36331a.postDelayed(cVar2, j12);
            }
            String str7 = (String) this.f36359i.get(MBridgeConstans.NATIVE_INFO);
            if (TextUtils.isEmpty(str7)) {
                i13 = iIntValue;
            } else {
                o0.b(f36343r, "nativeinfo" + str7);
                try {
                    JSONArray jSONArray = new JSONArray(str7);
                    if (jSONArray.length() > 0) {
                        str3 = str7;
                        int i16 = 0;
                        iOptInt = 0;
                        iOptInt2 = 0;
                        while (i16 < jSONArray.length()) {
                            try {
                                JSONObject jSONObject = (JSONObject) jSONArray.opt(i16);
                                int i17 = iOptInt;
                                i13 = iIntValue;
                                try {
                                    int iOptInt3 = jSONObject.optInt("id", 0);
                                    if (2 == iOptInt3) {
                                        iOptInt = jSONObject.optInt("ad_num");
                                        if (iF > 0) {
                                            try {
                                                jSONObject.put("ad_num", iF);
                                            } catch (JSONException e11) {
                                                e = e11;
                                                o0.b(f36343r, com.mbridge.msdk.mbnative.common.a.a(e));
                                                i14 = iOptInt2;
                                                string = str3;
                                                eVar.a(MBridgeConstans.NATIVE_INFO, string);
                                                iF = i13;
                                                eVar.a("ad_num", iF + "");
                                                eVar.a("ping_mode", "1");
                                                if (h.b().d(com.mbridge.msdk.foundation.controller.c.m().b()) == null) {
                                                    h.b().a();
                                                }
                                                if (!NativeController.b(this.f36359i)) {
                                                    jSONArrayB = t0.b(com.mbridge.msdk.foundation.controller.c.m().d(), str);
                                                    if (jSONArrayB.length() > 0) {
                                                        eVar.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f35501h, t0.a(jSONArrayB));
                                                    }
                                                }
                                                a(eVar, i11);
                                                if (f36346u.containsKey(str)) {
                                                    iA = 0;
                                                } else {
                                                    iA = 0;
                                                }
                                                if (this.f36359i.containsKey(MBridgeConstans.NATIVE_INFO)) {
                                                    i15 = 1;
                                                    if (i11 == 1) {
                                                        eVar.a("tnum", this.f36365o + "");
                                                    }
                                                    eVar.a("offset", iA + "");
                                                    eVar.a("ad_type", "42");
                                                    eVar.a(CampaignEx.JSON_KEY_AD_SOURCE_ID, i11 + "");
                                                    strA = com.mbridge.msdk.foundation.same.buffer.b.a(str, "native");
                                                    if (!TextUtils.isEmpty(strA)) {
                                                        eVar.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f35500g, strA);
                                                    }
                                                    if (this.f36359i.containsKey(MBridgeConstans.NATIVE_VIDEO_WIDTH)) {
                                                        eVar.a("video_width", ((Integer) this.f36359i.get(MBridgeConstans.NATIVE_VIDEO_WIDTH)).intValue() + "");
                                                    }
                                                    if (this.f36359i.containsKey(MBridgeConstans.NATIVE_VIDEO_HEIGHT)) {
                                                        eVar.a("video_height", ((Integer) this.f36359i.get(MBridgeConstans.NATIVE_VIDEO_HEIGHT)).intValue() + "");
                                                    }
                                                    eVar.a("video_version", MBridgeConstans.NATIVE_VIDEO_VERSION);
                                                    bVar = new b(i11);
                                                    bVar.setUnitId(str);
                                                    bVar.setPlacementId(str2);
                                                    bVar.setAdType(42);
                                                    bVar.d(i13);
                                                    bVar.c(iOptInt);
                                                    bVar.e(i14);
                                                    bVar.b(iE);
                                                    bVar.a(aVar);
                                                    if (i11 == 1) {
                                                        bVar.b(true);
                                                    } else {
                                                        bVar.b(true);
                                                    }
                                                    bVar.b(NativeController.a(this.f36359i));
                                                    c cVar3 = new c(1, bVar, i12, str, str2);
                                                    bVar.a(cVar3);
                                                    bVar.a(i12);
                                                    cVar3.a(aVar);
                                                    cVar3.a(z10);
                                                    cVar3.a(str);
                                                    if (i12 == 0) {
                                                        j12 = j11;
                                                        aVar2.choiceV3OrV5BySetting(1, eVar, bVar, "", com.mbridge.msdk.foundation.same.c.a(j12, 30000L));
                                                    } else {
                                                        j12 = j11;
                                                        if (i12 == 1) {
                                                            aVar2.getLoadOrSetting(1, com.mbridge.msdk.foundation.same.net.utils.d.h().f35465b0, eVar, bVar, MBInterstitialActivity.INTENT_CAMAPIGN, com.mbridge.msdk.foundation.same.c.a(j12, 30000L));
                                                        }
                                                    }
                                                    this.f36331a.postDelayed(cVar3, j12);
                                                }
                                                i15 = 1;
                                                if (i11 == i15) {
                                                    eVar.a("tnum", this.f36366p + "");
                                                }
                                                eVar.a("offset", iA + "");
                                                eVar.a("ad_type", "42");
                                                eVar.a(CampaignEx.JSON_KEY_AD_SOURCE_ID, i11 + "");
                                                strA = com.mbridge.msdk.foundation.same.buffer.b.a(str, "native");
                                                if (!TextUtils.isEmpty(strA)) {
                                                    eVar.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f35500g, strA);
                                                }
                                                if (this.f36359i.containsKey(MBridgeConstans.NATIVE_VIDEO_WIDTH)) {
                                                    eVar.a("video_width", ((Integer) this.f36359i.get(MBridgeConstans.NATIVE_VIDEO_WIDTH)).intValue() + "");
                                                }
                                                if (this.f36359i.containsKey(MBridgeConstans.NATIVE_VIDEO_HEIGHT)) {
                                                    eVar.a("video_height", ((Integer) this.f36359i.get(MBridgeConstans.NATIVE_VIDEO_HEIGHT)).intValue() + "");
                                                }
                                                eVar.a("video_version", MBridgeConstans.NATIVE_VIDEO_VERSION);
                                                bVar = new b(i11);
                                                bVar.setUnitId(str);
                                                bVar.setPlacementId(str2);
                                                bVar.setAdType(42);
                                                bVar.d(i13);
                                                bVar.c(iOptInt);
                                                bVar.e(i14);
                                                bVar.b(iE);
                                                bVar.a(aVar);
                                                if (i11 == 1) {
                                                    bVar.b(true);
                                                } else {
                                                    bVar.b(true);
                                                }
                                                bVar.b(NativeController.a(this.f36359i));
                                                c cVar4 = new c(1, bVar, i12, str, str2);
                                                bVar.a(cVar4);
                                                bVar.a(i12);
                                                cVar4.a(aVar);
                                                cVar4.a(z10);
                                                cVar4.a(str);
                                                if (i12 == 0) {
                                                    j12 = j11;
                                                    aVar2.choiceV3OrV5BySetting(1, eVar, bVar, "", com.mbridge.msdk.foundation.same.c.a(j12, 30000L));
                                                } else {
                                                    j12 = j11;
                                                    if (i12 == 1) {
                                                        aVar2.getLoadOrSetting(1, com.mbridge.msdk.foundation.same.net.utils.d.h().f35465b0, eVar, bVar, MBInterstitialActivity.INTENT_CAMAPIGN, com.mbridge.msdk.foundation.same.c.a(j12, 30000L));
                                                    }
                                                }
                                                this.f36331a.postDelayed(cVar4, j12);
                                            }
                                        } else {
                                            continue;
                                        }
                                    } else {
                                        if (3 == iOptInt3) {
                                            iOptInt2 = jSONObject.optInt("ad_num");
                                            if (iF > 0) {
                                                jSONObject.put("ad_num", iF);
                                            }
                                        }
                                        iOptInt = i17;
                                    }
                                    i16++;
                                    iIntValue = i13;
                                } catch (JSONException e12) {
                                    e = e12;
                                    iOptInt = i17;
                                }
                            } catch (JSONException e13) {
                                e = e13;
                                i13 = iIntValue;
                            }
                        }
                        i13 = iIntValue;
                        i14 = iOptInt2;
                    } else {
                        i13 = iIntValue;
                        str3 = str7;
                        i14 = 0;
                        iOptInt = 0;
                    }
                    try {
                        this.f36365o = Math.max(iOptInt, i14);
                        string = jSONArray.toString();
                    } catch (JSONException e14) {
                        e = e14;
                        iOptInt2 = i14;
                        o0.b(f36343r, com.mbridge.msdk.mbnative.common.a.a(e));
                        i14 = iOptInt2;
                        string = str3;
                    }
                } catch (JSONException e15) {
                    e = e15;
                    i13 = iIntValue;
                    str3 = str7;
                    iOptInt = 0;
                    iOptInt2 = 0;
                }
                eVar.a(MBridgeConstans.NATIVE_INFO, string);
            }
            iF = i13;
            eVar.a("ad_num", iF + "");
            eVar.a("ping_mode", "1");
            if (h.b().d(com.mbridge.msdk.foundation.controller.c.m().b()) == null) {
                h.b().a();
            }
            if (!NativeController.b(this.f36359i)) {
                jSONArrayB = t0.b(com.mbridge.msdk.foundation.controller.c.m().d(), str);
                if (jSONArrayB.length() > 0) {
                    eVar.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f35501h, t0.a(jSONArrayB));
                }
            }
            a(eVar, i11);
            if (f36346u.containsKey(str) || (kVar = f36346u.get(str)) == null) {
                iA = 0;
            } else {
                iA = (i11 == 1 || i11 != 2) ? kVar.a() : kVar.b();
            }
            if (this.f36359i.containsKey(MBridgeConstans.NATIVE_INFO)) {
                i15 = 1;
                if (i11 == 1) {
                    eVar.a("tnum", this.f36365o + "");
                }
                eVar.a("offset", iA + "");
                eVar.a("ad_type", "42");
                eVar.a(CampaignEx.JSON_KEY_AD_SOURCE_ID, i11 + "");
                strA = com.mbridge.msdk.foundation.same.buffer.b.a(str, "native");
                if (!TextUtils.isEmpty(strA)) {
                    eVar.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f35500g, strA);
                }
                if (this.f36359i.containsKey(MBridgeConstans.NATIVE_VIDEO_WIDTH) && (this.f36359i.get(MBridgeConstans.NATIVE_VIDEO_WIDTH) instanceof Integer)) {
                    eVar.a("video_width", ((Integer) this.f36359i.get(MBridgeConstans.NATIVE_VIDEO_WIDTH)).intValue() + "");
                }
                if (this.f36359i.containsKey(MBridgeConstans.NATIVE_VIDEO_HEIGHT) && (this.f36359i.get(MBridgeConstans.NATIVE_VIDEO_HEIGHT) instanceof Integer)) {
                    eVar.a("video_height", ((Integer) this.f36359i.get(MBridgeConstans.NATIVE_VIDEO_HEIGHT)).intValue() + "");
                }
                eVar.a("video_version", MBridgeConstans.NATIVE_VIDEO_VERSION);
                bVar = new b(i11);
                bVar.setUnitId(str);
                bVar.setPlacementId(str2);
                bVar.setAdType(42);
                bVar.d(i13);
                bVar.c(iOptInt);
                bVar.e(i14);
                bVar.b(iE);
                bVar.a(aVar);
                if (i11 == 1 || z10) {
                    bVar.b(true);
                }
                bVar.b(NativeController.a(this.f36359i));
                c cVar5 = new c(1, bVar, i12, str, str2);
                bVar.a(cVar5);
                bVar.a(i12);
                cVar5.a(aVar);
                cVar5.a(z10);
                cVar5.a(str);
                if (i12 == 0) {
                    j12 = j11;
                    aVar2.choiceV3OrV5BySetting(1, eVar, bVar, "", com.mbridge.msdk.foundation.same.c.a(j12, 30000L));
                } else {
                    j12 = j11;
                    if (i12 == 1) {
                        aVar2.getLoadOrSetting(1, com.mbridge.msdk.foundation.same.net.utils.d.h().f35465b0, eVar, bVar, MBInterstitialActivity.INTENT_CAMAPIGN, com.mbridge.msdk.foundation.same.c.a(j12, 30000L));
                    }
                }
                this.f36331a.postDelayed(cVar5, j12);
            }
            i15 = 1;
            if (i11 == i15) {
                eVar.a("tnum", this.f36366p + "");
            }
            eVar.a("offset", iA + "");
            eVar.a("ad_type", "42");
            eVar.a(CampaignEx.JSON_KEY_AD_SOURCE_ID, i11 + "");
            strA = com.mbridge.msdk.foundation.same.buffer.b.a(str, "native");
            if (!TextUtils.isEmpty(strA)) {
                eVar.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f35500g, strA);
            }
            if (this.f36359i.containsKey(MBridgeConstans.NATIVE_VIDEO_WIDTH)) {
                eVar.a("video_width", ((Integer) this.f36359i.get(MBridgeConstans.NATIVE_VIDEO_WIDTH)).intValue() + "");
            }
            if (this.f36359i.containsKey(MBridgeConstans.NATIVE_VIDEO_HEIGHT)) {
                eVar.a("video_height", ((Integer) this.f36359i.get(MBridgeConstans.NATIVE_VIDEO_HEIGHT)).intValue() + "");
            }
            eVar.a("video_version", MBridgeConstans.NATIVE_VIDEO_VERSION);
            bVar = new b(i11);
            bVar.setUnitId(str);
            bVar.setPlacementId(str2);
            bVar.setAdType(42);
            bVar.d(i13);
            bVar.c(iOptInt);
            bVar.e(i14);
            bVar.b(iE);
            bVar.a(aVar);
            if (i11 == 1) {
                bVar.b(true);
            } else {
                bVar.b(true);
            }
            bVar.b(NativeController.a(this.f36359i));
            c cVar6 = new c(1, bVar, i12, str, str2);
            bVar.a(cVar6);
            bVar.a(i12);
            cVar6.a(aVar);
            cVar6.a(z10);
            cVar6.a(str);
            if (i12 == 0) {
                j12 = j11;
                aVar2.choiceV3OrV5BySetting(1, eVar, bVar, "", com.mbridge.msdk.foundation.same.c.a(j12, 30000L));
            } else {
                j12 = j11;
                if (i12 == 1) {
                    aVar2.getLoadOrSetting(1, com.mbridge.msdk.foundation.same.net.utils.d.h().f35465b0, eVar, bVar, MBInterstitialActivity.INTENT_CAMAPIGN, com.mbridge.msdk.foundation.same.c.a(j12, 30000L));
                }
            }
            this.f36331a.postDelayed(cVar6, j12);
            i14 = 0;
            iOptInt = 0;
            iF = i13;
            eVar.a("ad_num", iF + "");
            eVar.a("ping_mode", "1");
            if (h.b().d(com.mbridge.msdk.foundation.controller.c.m().b()) == null) {
                h.b().a();
            }
            if (!NativeController.b(this.f36359i)) {
                jSONArrayB = t0.b(com.mbridge.msdk.foundation.controller.c.m().d(), str);
                if (jSONArrayB.length() > 0) {
                    eVar.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f35501h, t0.a(jSONArrayB));
                }
            }
            a(eVar, i11);
            if (f36346u.containsKey(str)) {
                iA = 0;
            } else {
                iA = 0;
            }
            if (this.f36359i.containsKey(MBridgeConstans.NATIVE_INFO)) {
                i15 = 1;
                if (i11 == 1) {
                    eVar.a("tnum", this.f36365o + "");
                }
                eVar.a("offset", iA + "");
                eVar.a("ad_type", "42");
                eVar.a(CampaignEx.JSON_KEY_AD_SOURCE_ID, i11 + "");
                strA = com.mbridge.msdk.foundation.same.buffer.b.a(str, "native");
                if (!TextUtils.isEmpty(strA)) {
                    eVar.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f35500g, strA);
                }
                if (this.f36359i.containsKey(MBridgeConstans.NATIVE_VIDEO_WIDTH)) {
                    eVar.a("video_width", ((Integer) this.f36359i.get(MBridgeConstans.NATIVE_VIDEO_WIDTH)).intValue() + "");
                }
                if (this.f36359i.containsKey(MBridgeConstans.NATIVE_VIDEO_HEIGHT)) {
                    eVar.a("video_height", ((Integer) this.f36359i.get(MBridgeConstans.NATIVE_VIDEO_HEIGHT)).intValue() + "");
                }
                eVar.a("video_version", MBridgeConstans.NATIVE_VIDEO_VERSION);
                bVar = new b(i11);
                bVar.setUnitId(str);
                bVar.setPlacementId(str2);
                bVar.setAdType(42);
                bVar.d(i13);
                bVar.c(iOptInt);
                bVar.e(i14);
                bVar.b(iE);
                bVar.a(aVar);
                if (i11 == 1) {
                    bVar.b(true);
                } else {
                    bVar.b(true);
                }
                bVar.b(NativeController.a(this.f36359i));
                c cVar7 = new c(1, bVar, i12, str, str2);
                bVar.a(cVar7);
                bVar.a(i12);
                cVar7.a(aVar);
                cVar7.a(z10);
                cVar7.a(str);
                if (i12 == 0) {
                    j12 = j11;
                    aVar2.choiceV3OrV5BySetting(1, eVar, bVar, "", com.mbridge.msdk.foundation.same.c.a(j12, 30000L));
                } else {
                    j12 = j11;
                    if (i12 == 1) {
                        aVar2.getLoadOrSetting(1, com.mbridge.msdk.foundation.same.net.utils.d.h().f35465b0, eVar, bVar, MBInterstitialActivity.INTENT_CAMAPIGN, com.mbridge.msdk.foundation.same.c.a(j12, 30000L));
                    }
                }
                this.f36331a.postDelayed(cVar7, j12);
            }
            i15 = 1;
            if (i11 == i15) {
                eVar.a("tnum", this.f36366p + "");
            }
            eVar.a("offset", iA + "");
            eVar.a("ad_type", "42");
            eVar.a(CampaignEx.JSON_KEY_AD_SOURCE_ID, i11 + "");
            strA = com.mbridge.msdk.foundation.same.buffer.b.a(str, "native");
            if (!TextUtils.isEmpty(strA)) {
                eVar.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f35500g, strA);
            }
            if (this.f36359i.containsKey(MBridgeConstans.NATIVE_VIDEO_WIDTH)) {
                eVar.a("video_width", ((Integer) this.f36359i.get(MBridgeConstans.NATIVE_VIDEO_WIDTH)).intValue() + "");
            }
            if (this.f36359i.containsKey(MBridgeConstans.NATIVE_VIDEO_HEIGHT)) {
                eVar.a("video_height", ((Integer) this.f36359i.get(MBridgeConstans.NATIVE_VIDEO_HEIGHT)).intValue() + "");
            }
            eVar.a("video_version", MBridgeConstans.NATIVE_VIDEO_VERSION);
            bVar = new b(i11);
            bVar.setUnitId(str);
            bVar.setPlacementId(str2);
            bVar.setAdType(42);
            bVar.d(i13);
            bVar.c(iOptInt);
            bVar.e(i14);
            bVar.b(iE);
            bVar.a(aVar);
            if (i11 == 1) {
                bVar.b(true);
            } else {
                bVar.b(true);
            }
            bVar.b(NativeController.a(this.f36359i));
            c cVar8 = new c(1, bVar, i12, str, str2);
            bVar.a(cVar8);
            bVar.a(i12);
            cVar8.a(aVar);
            cVar8.a(z10);
            cVar8.a(str);
            if (i12 == 0) {
                j12 = j11;
                aVar2.choiceV3OrV5BySetting(1, eVar, bVar, "", com.mbridge.msdk.foundation.same.c.a(j12, 30000L));
            } else {
                j12 = j11;
                if (i12 == 1) {
                    aVar2.getLoadOrSetting(1, com.mbridge.msdk.foundation.same.net.utils.d.h().f35465b0, eVar, bVar, MBInterstitialActivity.INTENT_CAMAPIGN, com.mbridge.msdk.foundation.same.c.a(j12, 30000L));
                }
            }
            this.f36331a.postDelayed(cVar8, j12);
        } catch (Exception e16) {
            String str8 = f36343r;
            o0.b(str8, com.mbridge.msdk.mbnative.common.a.a(e16));
            o0.b(str8, e16.getMessage());
        }
    }

    public void a(int i11, long j11, String str, String str2, Map<String, Object> map, int i12, l lVar, com.mbridge.msdk.preload.listenter.a aVar) {
        com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> bVarA;
        if (i11 != 1 && (bVarA = com.mbridge.msdk.mbnative.cache.c.a(i11)) != null) {
            List<Campaign> listA = bVarA.a(str, this.f36366p);
            if (listA != null && listA.size() > 0) {
                a(true, aVar, (String) null);
                return;
            }
        }
        if (i11 == 1) {
            a(i11, j11, i12, lVar, str, str2, true, aVar);
        } else if (i11 != 2) {
            a(i11, j11, i12, lVar, str, str2, aVar, false);
        } else {
            a(2, j11, i12, lVar, str, str2, aVar, false);
        }
    }

    public void a(int i11, l lVar, String str, String str2, com.mbridge.msdk.preload.listenter.a aVar) {
        Queue<Integer> queue = this.f36356f;
        if (queue == null || queue.size() <= 0) {
            return;
        }
        try {
            int iIntValue = this.f36356f.poll().intValue();
            long jLongValue = MBridgeConstans.REQUEST_TIME_OUT;
            Queue<Long> queue2 = this.f36357g;
            if (queue2 != null && queue2.size() > 0) {
                jLongValue = this.f36357g.poll().longValue();
            }
            o0.c(f36343r, "preload start queue adsource = " + iIntValue);
            a(iIntValue, jLongValue, str, str2, this.f36359i, i11, lVar, aVar);
        } catch (Throwable unused) {
            o0.b(f36343r, "queue poll exception");
        }
    }

    public void a(String str, int i11, String str2, String str3, com.mbridge.msdk.preload.listenter.a aVar) {
        Log.e(f36343r, str);
        try {
            Queue<Integer> queue = this.f36356f;
            if (queue == null || queue.size() > 0) {
                if (this.f36356f != null) {
                    a(i11, this.f36354d, str2, str3, aVar);
                    return;
                }
            }
            a(false, aVar, str);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }

    public void a(String str, String str2, String str3) {
        if (this.f36352b == null) {
            this.f36352b = new j();
        }
        this.f36352b.a(com.mbridge.msdk.foundation.controller.c.m().d(), str, str2, str3);
    }

    public void a(Thread thread) {
        if (MBridgeConstans.PRELOAD_RESULT_IN_SUBTHREAD) {
            thread.start();
        } else {
            thread.run();
        }
    }

    /* JADX WARN: Code duplicated, block: B:81:0x01f7  */
    public void a(Map<String, Object> map, int i11) {
        String str;
        Object obj;
        int i12;
        int i13;
        List<Campaign> listA;
        Object obj2;
        try {
            this.f36359i = map;
            this.f36364n = false;
            if (map.containsKey(MBridgeConstans.PROPERTIES_UNIT_ID)) {
                String str2 = (String) map.get(MBridgeConstans.PROPERTIES_UNIT_ID);
                if (f36344s.containsKey(((i11 + 1) % 2) + "_" + str2)) {
                    if (!f36344s.containsKey(i11 + "_" + str2)) {
                        return;
                    }
                }
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                if (map.containsKey(MBridgeConstans.PREIMAGE)) {
                    this.f36363m = ((Boolean) map.get(MBridgeConstans.PREIMAGE)).booleanValue();
                }
                com.mbridge.msdk.click.a aVar = this.f36353c;
                if (aVar == null) {
                    this.f36353c = new com.mbridge.msdk.click.a(com.mbridge.msdk.foundation.controller.c.m().d(), str2);
                } else {
                    aVar.a(str2);
                }
                if (map.containsKey(MBridgeConstans.PROPERTIES_AD_FRAME_NUM)) {
                    this.f36358h = ((Integer) map.get(MBridgeConstans.PROPERTIES_AD_FRAME_NUM)).intValue();
                }
                if (map.containsKey(MBridgeConstans.PROPERTIES_API_REUQEST_CATEGORY)) {
                    this.f36355e = (String) map.get(MBridgeConstans.PROPERTIES_API_REUQEST_CATEGORY);
                }
                if (f36345t.containsKey(str2) && f36345t.get(str2).booleanValue()) {
                    Map<String, Map<Long, Object>> mapF = f();
                    Map<Long, Object> map2 = mapF.get(i11 + "_" + str2);
                    com.mbridge.msdk.setting.g gVarD = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
                    if (map2 != null && map2.size() > 0) {
                        Long next = map2.keySet().iterator().next();
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        if (gVarD == null) {
                            gVarD = h.b().a();
                        }
                        if (jCurrentTimeMillis - next.longValue() >= gVarD.Z() * 1000) {
                            mapF.remove(str2);
                        } else if (i11 == 1) {
                            return;
                        }
                    }
                }
                f36345t.put(str2, Boolean.TRUE);
                this.f36366p = 1;
                try {
                    if (map.containsKey("ad_num")) {
                        int iIntValue = ((Integer) map.get("ad_num")).intValue();
                        this.f36366p = iIntValue;
                        if (iIntValue < 1) {
                            this.f36366p = 1;
                        }
                        if (this.f36366p > 10) {
                            this.f36366p = 10;
                        }
                    }
                } catch (Exception unused) {
                    o0.b(f36343r, "ADNUM MUST BE INTEGER");
                }
                f36347v.put(str2, Integer.valueOf(this.f36366p));
                com.mbridge.msdk.preload.listenter.a aVar2 = (!map.containsKey(MBridgeConstans.PRELOAD_RESULT_LISTENER) || (obj2 = map.get(MBridgeConstans.PRELOAD_RESULT_LISTENER)) == null) ? null : new com.mbridge.msdk.preload.listenter.a((PreloadListener) obj2);
                String strB = com.mbridge.msdk.foundation.controller.c.m().b();
                String strC = com.mbridge.msdk.foundation.controller.c.m().c();
                if (map.containsKey("app_id") && map.containsKey(MBridgeConstans.APP_KEY) && map.containsKey(MBridgeConstans.KEY_WORD)) {
                    strB = (String) map.get("app_id");
                    strC = (String) map.get(MBridgeConstans.APP_KEY);
                }
                a(strB, strC, str2);
                l lVarE = h.b().e(strB, str2);
                this.f36354d = lVarE;
                if (lVarE == null) {
                    this.f36354d = l.i(str2);
                }
                if (!map.containsKey(MBridgeConstans.PLACEMENT_ID) || map.get(MBridgeConstans.PLACEMENT_ID) == null) {
                    str = "";
                } else {
                    str = (String) map.get(MBridgeConstans.PLACEMENT_ID);
                    if (TextUtils.isEmpty(str)) {
                        str = "";
                    }
                }
                String str3 = str;
                this.f36360j = this.f36354d.b();
                this.f36361k = this.f36354d.c();
                this.f36362l = this.f36354d.c();
                List<Integer> list = this.f36360j;
                if (list == null || list.size() <= 0) {
                    if (aVar2 != null) {
                        aVar2.onPreloadFaild("do not have sorceList");
                        return;
                    }
                    return;
                }
                this.f36356f = new LinkedList();
                Iterator<Integer> it = this.f36360j.iterator();
                while (it.hasNext()) {
                    this.f36356f.add(it.next());
                }
                List<Integer> list2 = this.f36362l;
                if (list2 != null && list2.size() > 0) {
                    this.f36357g = new LinkedList();
                    Iterator<Integer> it2 = this.f36362l.iterator();
                    while (it2.hasNext()) {
                        this.f36357g.add(Long.valueOf(it2.next().intValue() * 1000));
                    }
                }
                if (this.f36360j.contains(1) && i11 == 0) {
                    try {
                        long jIntValue = this.f36361k.get(this.f36360j.indexOf(1)).intValue() * 1000;
                        l lVar = this.f36354d;
                        obj = MBridgeConstans.NATIVE_INFO;
                        i13 = 0;
                        try {
                            a(1, jIntValue, i11, lVar, str2, str3, false, aVar2);
                            com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> bVarA = com.mbridge.msdk.mbnative.cache.c.a(1);
                            if (bVarA == null || (listA = bVarA.a(str2, 0)) == null || listA.size() <= 0) {
                                i12 = 1;
                            } else {
                                i12 = 1;
                                try {
                                    a(true, aVar2, (String) null);
                                } catch (Exception unused2) {
                                }
                            }
                        } catch (Exception unused3) {
                        }
                    } catch (Exception unused4) {
                        obj = MBridgeConstans.NATIVE_INFO;
                        i12 = 1;
                        i13 = 0;
                    }
                } else {
                    obj = MBridgeConstans.NATIVE_INFO;
                    i12 = 1;
                    i13 = 0;
                }
                a(i11, this.f36354d, str2, str3, aVar2);
                l lVar2 = this.f36354d;
                d().put(str2, Integer.valueOf(lVar2 != null ? lVar2.y() * this.f36366p : i12));
                try {
                    int i14 = MBMediaView.f36656p0;
                    e.a(com.mbridge.msdk.foundation.controller.c.m().d(), str2);
                    m0.a();
                    if (TextUtils.isEmpty(str2)) {
                        return;
                    }
                    com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d())).a();
                    Object obj3 = obj;
                    int iA = a(map.containsKey(obj3) ? (String) map.get(obj3) : null);
                    if (iA <= 0) {
                        iA = this.f36366p;
                    }
                    List<Campaign> listA2 = a(str2, iA);
                    if (listA2 != null) {
                        ArrayList arrayList = new ArrayList();
                        for (int i15 = i13; i15 < listA2.size(); i15 += i12) {
                            CampaignEx campaignEx = (CampaignEx) listA2.get(i15);
                            if (!TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
                                arrayList.add(campaignEx);
                            }
                        }
                        if (arrayList.size() > 0) {
                            Object objInvoke = com.mbridge.msdk.videocommon.download.b.class.getMethod("getInstance", null).invoke(null, null);
                            Class[] clsArr = new Class[5];
                            clsArr[i13] = Context.class;
                            clsArr[i12] = String.class;
                            clsArr[2] = CopyOnWriteArrayList.class;
                            clsArr[3] = Integer.TYPE;
                            clsArr[4] = com.mbridge.msdk.videocommon.listener.a.class;
                            Method method = com.mbridge.msdk.videocommon.download.b.class.getMethod("createUnitCache", clsArr);
                            Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
                            CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(arrayList);
                            Integer numValueOf = Integer.valueOf(i12);
                            Object[] objArr = new Object[5];
                            objArr[i13] = contextD;
                            objArr[i12] = str2;
                            objArr[2] = copyOnWriteArrayList;
                            objArr[3] = numValueOf;
                            objArr[4] = null;
                            method.invoke(objInvoke, objArr);
                            Class[] clsArr2 = new Class[i12];
                            clsArr2[i13] = String.class;
                            Method method2 = com.mbridge.msdk.videocommon.download.b.class.getMethod(NativeImgComponent.EVENT_LOAD, clsArr2);
                            Object[] objArr2 = new Object[i12];
                            objArr2[i13] = str2;
                            method2.invoke(objInvoke, objArr2);
                        }
                    }
                } catch (Throwable unused5) {
                    o0.b(f36343r, "init cam cache failed");
                }
            }
        } catch (Exception e11) {
            o0.b(f36343r, com.mbridge.msdk.mbnative.common.a.a(e11));
        }
    }

    public void a(boolean z10, Campaign campaign) {
        if (campaign == null) {
            return;
        }
        if (z10 && campaign.getIconDrawable() == null) {
            campaign.loadIconUrlAsyncWithBlock(null);
        }
        if (z10 && campaign.getBigDrawable() == null) {
            campaign.loadImageUrlAsyncWithBlock(null);
        }
    }

    public void a(boolean z10, com.mbridge.msdk.preload.listenter.a aVar, String str) {
        if (z10) {
            if (aVar == null || aVar.a()) {
                return;
            }
            aVar.a(true);
            aVar.onPreloadSucceed();
            return;
        }
        if (aVar == null || aVar.a()) {
            return;
        }
        aVar.a(true);
        aVar.onPreloadFaild(str);
    }
}
