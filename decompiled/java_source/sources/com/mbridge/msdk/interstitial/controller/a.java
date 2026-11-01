package com.mbridge.msdk.interstitial.controller;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.mbridge.msdk.out.InterstitialListener;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.setting.j;
import com.mbridge.msdk.setting.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static String f35917o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static Map<String, Integer> f35918p = new HashMap();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static Map<String, Integer> f35919q = new HashMap();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static Map<String, d> f35920r = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f35922b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f35923c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f35924d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f35925e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private MBridgeIds f35926f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Handler f35927g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private l f35928h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private InterstitialListener f35929i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f35921a = "InterstitialController";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f35930j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f35931k = "";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f35932l = "";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f35933m = "";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f35934n = false;

    /* JADX INFO: renamed from: com.mbridge.msdk.interstitial.controller.a$a, reason: collision with other inner class name */
    class HandlerC0498a extends Handler {
        HandlerC0498a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message == null) {
                return;
            }
            int i11 = message.what;
            if (i11 == 1) {
                if (a.this.f35929i != null) {
                    a.this.f35929i.onInterstitialLoadSuccess(a.this.f35926f);
                    return;
                }
                return;
            }
            String str = "";
            if (i11 == 2) {
                if (a.this.f35929i != null) {
                    Object obj = message.obj;
                    if (obj != null && (obj instanceof String)) {
                        str = (String) obj;
                    }
                    a.this.f35929i.onInterstitialLoadFail(a.this.f35926f, TextUtils.isEmpty(str) ? "can't show because unknow error" : str);
                    return;
                }
                return;
            }
            if (i11 == 3) {
                a aVar = a.this;
                aVar.f35930j = true;
                if (aVar.f35929i != null) {
                    a.this.f35929i.onInterstitialShowSuccess(a.this.f35926f);
                    return;
                }
                return;
            }
            if (i11 == 4) {
                if (a.this.f35929i != null) {
                    Object obj2 = message.obj;
                    if (obj2 != null && (obj2 instanceof String)) {
                        str = (String) obj2;
                    }
                    a.this.f35929i.onInterstitialShowFail(a.this.f35926f, TextUtils.isEmpty(str) ? "can't show because unknow error" : str);
                    return;
                }
                return;
            }
            if (i11 == 6) {
                if (a.this.f35929i != null) {
                    a.this.f35929i.onInterstitialAdClick(a.this.f35926f);
                }
            } else {
                if (i11 != 7) {
                    return;
                }
                a aVar2 = a.this;
                aVar2.f35930j = false;
                if (aVar2.f35929i != null) {
                    a.this.f35929i.onInterstitialClosed(a.this.f35926f);
                }
            }
        }
    }

    public class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.mbridge.msdk.interstitial.adapter.a f35936a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private c f35937b;

        public b(com.mbridge.msdk.interstitial.adapter.a aVar, c cVar) {
            this.f35936a = aVar;
            this.f35937b = cVar;
        }

        public void a(boolean z10, String str) {
            try {
                com.mbridge.msdk.interstitial.adapter.a aVar = this.f35936a;
                if (aVar != null) {
                    aVar.a((b) null);
                    this.f35936a = null;
                }
                if (this.f35937b != null) {
                    if (a.this.f35927g != null) {
                        a.this.f35927g.removeCallbacks(this.f35937b);
                    }
                    if (z10) {
                        if (a.this.f35929i != null) {
                            a.this.c(str);
                        }
                    } else if (a.this.f35929i != null) {
                        a.this.b(str);
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }

        public void b(boolean z10, String str) {
            try {
                a.this.f35931k = str;
                try {
                    ArrayList arrayList = new ArrayList();
                    com.mbridge.msdk.interstitial.adapter.a aVar = this.f35936a;
                    if (aVar != null && aVar.d() != null) {
                        arrayList.add(this.f35936a.d());
                    }
                    a.this.f35932l = com.mbridge.msdk.foundation.same.c.b(arrayList);
                } catch (Exception e11) {
                    o0.b(a.this.f35921a, e11.getMessage());
                }
                if (this.f35937b != null) {
                    if (a.this.f35927g != null) {
                        a.this.f35927g.removeCallbacks(this.f35937b);
                    }
                    if (z10) {
                        a.this.b(false);
                    } else if (a.this.f35929i != null) {
                        a.this.h();
                    }
                }
            } catch (Exception e12) {
                e12.printStackTrace();
            }
        }
    }

    public class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.mbridge.msdk.interstitial.adapter.a f35939a;

        public c(com.mbridge.msdk.interstitial.adapter.a aVar) {
            this.f35939a = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                com.mbridge.msdk.interstitial.adapter.a aVar = this.f35939a;
                if (aVar != null) {
                    if (aVar.f()) {
                        a.this.c("load timeout");
                    } else if (a.this.f35929i != null) {
                        a.this.b("load timeout");
                    }
                    this.f35939a.a((b) null);
                    this.f35939a = null;
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public class d {
        public d() {
        }

        public void a() {
            try {
                if (a.this.f35927g != null) {
                    a.this.f35927g.sendEmptyMessage(6);
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }

        public void a(String str) {
            try {
                a.this.c(str);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }

        public void b() {
            try {
                if (a.this.f35927g != null) {
                    a.this.f35927g.sendEmptyMessage(7);
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }

        public void c() {
            try {
                a.this.i();
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public a() {
        try {
            c();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public static int a(String str) {
        Map<String, Integer> map;
        Integer num;
        try {
            if (TextUtils.isEmpty(str) || (map = f35918p) == null || !map.containsKey(str) || (num = f35918p.get(str)) == null) {
                return 0;
            }
            return num.intValue();
        } catch (Exception e11) {
            e11.printStackTrace();
            return 0;
        }
    }

    private void a(CampaignEx campaignEx) {
        d dVar = new d();
        if (f35920r != null && !TextUtils.isEmpty(this.f35923c)) {
            f35920r.put(this.f35923c, dVar);
        }
        Intent intent = new Intent(this.f35922b, (Class<?>) MBInterstitialActivity.class);
        intent.addFlags(67108864);
        intent.addFlags(ASTNode.DEOP);
        if (!TextUtils.isEmpty(this.f35923c)) {
            intent.putExtra("unitId", this.f35923c);
        }
        if (campaignEx != null) {
            this.f35933m = campaignEx.getRequestId();
            intent.putExtra(MBInterstitialActivity.INTENT_CAMAPIGN, campaignEx);
        }
        Context context = this.f35922b;
        if (context != null) {
            context.startActivity(intent);
        }
    }

    public static void a(String str, int i11) {
        try {
            if (f35918p == null || TextUtils.isEmpty(str)) {
                return;
            }
            f35918p.put(str, Integer.valueOf(i11));
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        try {
            if (this.f35927g != null) {
                Message messageObtain = Message.obtain();
                messageObtain.obj = str;
                messageObtain.what = 2;
                this.f35927g.sendMessage(messageObtain);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z10) {
        try {
            CampaignEx campaignExD = new com.mbridge.msdk.interstitial.adapter.a(this.f35922b, this.f35923c, this.f35924d, this.f35925e, true).d();
            if (campaignExD != null) {
                a(campaignExD);
            } else if (z10) {
                a(true);
            } else {
                c("no ads available can show");
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            if (this.f35929i != null) {
                c("can't show because unknow error");
            }
        }
    }

    private void c() {
        try {
            this.f35927g = new HandlerC0498a(Looper.getMainLooper());
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        try {
            if (this.f35927g != null) {
                Message messageObtain = Message.obtain();
                messageObtain.obj = str;
                messageObtain.what = 4;
                this.f35927g.sendMessage(messageObtain);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private void d() {
        try {
            l lVar = this.f35928h;
            if (lVar != null) {
                int iE = lVar.e();
                int iY = this.f35928h.y();
                if (iE <= 0) {
                    iE = 1;
                }
                if (iY <= 0) {
                    iY = 1;
                }
                int i11 = iY * iE;
                if (f35919q == null || TextUtils.isEmpty(this.f35923c)) {
                    return;
                }
                f35919q.put(this.f35923c, Integer.valueOf(i11));
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private void e() {
        try {
            g();
            l lVarE = h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), this.f35923c);
            this.f35928h = lVarE;
            if (lVarE == null) {
                this.f35928h = l.h(this.f35923c);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        Handler handler = this.f35927g;
        if (handler != null) {
            handler.sendEmptyMessage(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        Handler handler = this.f35927g;
        if (handler != null) {
            handler.sendEmptyMessage(3);
        }
    }

    public String a() {
        return this.f35932l;
    }

    public void a(InterstitialListener interstitialListener) {
        this.f35929i = interstitialListener;
    }

    public void a(boolean z10) {
        try {
            com.mbridge.msdk.interstitial.adapter.a aVar = new com.mbridge.msdk.interstitial.adapter.a(this.f35922b, this.f35923c, this.f35924d, this.f35925e, z10);
            c cVar = new c(aVar);
            aVar.a(new b(aVar, cVar));
            Handler handler = this.f35927g;
            if (handler != null) {
                handler.postDelayed(cVar, 30000L);
            }
            aVar.j();
        } catch (Exception e11) {
            e11.printStackTrace();
            if (z10) {
                return;
            }
            b("can't show because unknow error");
        }
    }

    public boolean a(Context context, Map<String, Object> map) {
        try {
            this.f35934n = false;
            if (map != null && context != null && map.containsKey(MBridgeConstans.PROPERTIES_UNIT_ID) && (map.get(MBridgeConstans.PROPERTIES_UNIT_ID) instanceof String)) {
                if (map.containsKey(MBridgeConstans.PROPERTIES_API_REUQEST_CATEGORY) && (map.get(MBridgeConstans.PROPERTIES_API_REUQEST_CATEGORY) instanceof String)) {
                    this.f35925e = (String) map.get(MBridgeConstans.PROPERTIES_API_REUQEST_CATEGORY);
                }
                this.f35923c = (String) map.get(MBridgeConstans.PROPERTIES_UNIT_ID);
                this.f35922b = context;
                if (map.containsKey(MBridgeConstans.PLACEMENT_ID) && map.get(MBridgeConstans.PLACEMENT_ID) != null) {
                    this.f35924d = (String) map.get(MBridgeConstans.PLACEMENT_ID);
                }
                this.f35926f = new MBridgeIds(this.f35924d, this.f35923c);
                this.f35934n = true;
                return this.f35934n;
            }
            return false;
        } catch (Exception e11) {
            e11.printStackTrace();
            this.f35934n = false;
        }
    }

    public String b() {
        return this.f35930j ? this.f35933m : this.f35931k;
    }

    public void f() {
        try {
            if (this.f35922b == null) {
                b("context is null");
                return;
            }
            if (TextUtils.isEmpty(this.f35923c)) {
                b("unitid is null");
            } else {
                if (!this.f35934n) {
                    b("init error");
                    return;
                }
                e();
                d();
                a(false);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            b("can't show because unknow error");
        }
    }

    public void g() {
        try {
            new j().a(this.f35922b, (String) null, (String) null, this.f35923c);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public void j() {
        try {
            if (this.f35922b == null) {
                c("context is null");
                return;
            }
            if (TextUtils.isEmpty(this.f35923c)) {
                c("unitid is null");
            } else if (!this.f35934n) {
                c("init error");
            } else {
                e();
                b(true);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            c("can't show because unknow error");
        }
    }
}
