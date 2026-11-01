package com.mbridge.msdk.reward.controller;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.m0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.w0;
import com.mbridge.msdk.foundation.tools.y0;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.out.RewardInfo;
import com.mbridge.msdk.videocommon.listener.InterVideoOutListener;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static String f37063b0 = "";

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static String f37064c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private static ConcurrentHashMap<String, Integer> f37065d0 = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private static ConcurrentHashMap<String, String> f37066e0 = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static ConcurrentHashMap<String, i> f37067f0 = new ConcurrentHashMap<>();
    private Queue<Integer> I;
    private String J;
    private CopyOnWriteArrayList<CampaignEx> S;
    private List<CampaignEx> T;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f37068a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.mbridge.msdk.reward.adapter.c f37070b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.mbridge.msdk.videocommon.setting.c f37071c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.mbridge.msdk.videocommon.setting.a f37072d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile InterVideoOutListener f37073e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile h f37074f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f37075g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f37076h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private MBridgeIds f37077i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    g f37078j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f37079k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private volatile String f37080l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f37081m;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f37085q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f37086r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f37087s;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f37092x;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f37082n = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f37084p = 2;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f37088t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f37089u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f37090v = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f37091w = false;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f37093y = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private String f37094z = "";
    private String A = "";
    private ArrayList<Integer> B = new ArrayList<>(7);
    private boolean C = false;
    private final Object D = new Object();
    public boolean E = false;
    int F = 25;
    int G = 1;
    private List<CampaignEx> H = new ArrayList();
    private com.mbridge.msdk.foundation.db.g K = null;
    private volatile boolean L = true;
    private volatile boolean M = false;
    private volatile boolean N = false;
    private volatile boolean O = false;
    private volatile boolean P = false;
    private volatile boolean Q = false;
    private volatile boolean R = false;
    volatile boolean U = false;
    volatile boolean V = false;
    volatile boolean W = false;
    volatile boolean X = false;
    volatile boolean Y = false;
    private JSONArray Z = new JSONArray();

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private int f37069a0 = 1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Handler f37083o = new com.mbridge.msdk.reward.controller.b(this);

    /* JADX INFO: renamed from: com.mbridge.msdk.reward.controller.a$a, reason: collision with other inner class name */
    class C0527a implements com.mbridge.msdk.videocommon.net.c {
        C0527a() {
        }

        @Override // com.mbridge.msdk.videocommon.net.c
        public void a(String str) {
        }

        @Override // com.mbridge.msdk.videocommon.net.c
        public void onFailed(String str) {
        }
    }

    class b implements com.mbridge.msdk.reward.adapter.b.h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        com.mbridge.msdk.foundation.same.report.metrics.c f37096a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CampaignEx f37097b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f37098c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.reward.adapter.c f37099d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f37100e;

        /* JADX INFO: renamed from: com.mbridge.msdk.reward.controller.a$b$a, reason: collision with other inner class name */
        class RunnableC0528a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ CampaignEx f37102a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ CopyOnWriteArrayList f37103b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ String f37104c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ String f37105d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ String f37106e;

            /* JADX INFO: renamed from: com.mbridge.msdk.reward.controller.a$b$a$a, reason: collision with other inner class name */
            class C0529a implements com.mbridge.msdk.reward.adapter.b.o {
                C0529a() {
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, com.mbridge.msdk.videocommon.a.C0572a c0572a, com.mbridge.msdk.foundation.error.b bVar) {
                    RunnableC0528a runnableC0528a = RunnableC0528a.this;
                    a aVar = a.this;
                    aVar.c(runnableC0528a.f37105d, (List<CampaignEx>) aVar.T);
                    if (a.this.f37074f == null || a.this.X) {
                        return;
                    }
                    a.this.X = true;
                    bVar.c("errorCode: 3301 errorMessage: temp preload failed");
                    b bVar2 = b.this;
                    if (bVar2.f37096a == null) {
                        bVar2.f37096a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    b bVar3 = b.this;
                    bVar3.f37096a.b(a.this.S);
                    b.this.f37096a.a(bVar);
                    a.this.f37074f.b(bVar, b.this.f37096a);
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, String str4, String str5, com.mbridge.msdk.videocommon.a.C0572a c0572a) {
                    RunnableC0528a runnableC0528a = RunnableC0528a.this;
                    b bVar = b.this;
                    com.mbridge.msdk.reward.adapter.c cVar = bVar.f37099d;
                    if (cVar != null && cVar.a(runnableC0528a.f37103b, bVar.f37098c, bVar.f37100e)) {
                        if (a.this.f37074f == null || a.this.Y) {
                            return;
                        }
                        a.this.Y = true;
                        RunnableC0528a runnableC0528a2 = RunnableC0528a.this;
                        a.this.a(runnableC0528a2.f37103b);
                        a.this.f37074f.d(str2, str3, b.this.f37096a);
                        return;
                    }
                    a aVar = a.this;
                    aVar.c(str3, (List<CampaignEx>) aVar.T);
                    if (a.this.f37074f == null || a.this.X) {
                        return;
                    }
                    a.this.X = true;
                    com.mbridge.msdk.foundation.error.b bVarA = com.mbridge.msdk.foundation.error.a.a(880015, "errorCode: 3502 errorMessage: temp preload success but isReady false");
                    b bVar2 = b.this;
                    if (bVar2.f37096a == null) {
                        bVar2.f37096a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    RunnableC0528a runnableC0528a3 = RunnableC0528a.this;
                    b.this.f37096a.b(runnableC0528a3.f37103b);
                    b.this.f37096a.a(bVarA);
                    a.this.f37074f.b(bVarA, b.this.f37096a);
                }
            }

            RunnableC0528a(CampaignEx campaignEx, CopyOnWriteArrayList copyOnWriteArrayList, String str, String str2, String str3) {
                this.f37102a = campaignEx;
                this.f37103b = copyOnWriteArrayList;
                this.f37104c = str;
                this.f37105d = str2;
                this.f37106e = str3;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.mbridge.msdk.reward.adapter.b.b().a(a.this.f37093y, a.this.f37083o, a.this.f37088t, a.this.f37089u, null, this.f37102a.getRewardTemplateMode().e(), a.this.f37084p, b.this.f37097b, this.f37103b, H5DownLoadManager.getInstance().getH5ResAddress(this.f37102a.getRewardTemplateMode().e()), this.f37104c, this.f37105d, this.f37106e, this.f37102a.getRequestIdNotice(), a.this.f37071c, new C0529a());
            }
        }

        /* JADX INFO: renamed from: com.mbridge.msdk.reward.controller.a$b$b, reason: collision with other inner class name */
        class RunnableC0530b implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ String f37109a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f37110b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ String f37111c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ CopyOnWriteArrayList f37112d;

            /* JADX INFO: renamed from: com.mbridge.msdk.reward.controller.a$b$b$a, reason: collision with other inner class name */
            class C0531a implements com.mbridge.msdk.reward.adapter.b.o {
                C0531a() {
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, com.mbridge.msdk.videocommon.a.C0572a c0572a, com.mbridge.msdk.foundation.error.b bVar) {
                    RunnableC0530b runnableC0530b = RunnableC0530b.this;
                    a aVar = a.this;
                    aVar.c(runnableC0530b.f37111c, (List<CampaignEx>) aVar.T);
                    if (a.this.f37074f == null || a.this.X) {
                        return;
                    }
                    a.this.X = true;
                    if (bVar != null) {
                        bVar.c("errorCode: 3302 errorMessage: tpl preload failed");
                    }
                    b bVar2 = b.this;
                    if (bVar2.f37096a == null) {
                        bVar2.f37096a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    RunnableC0530b runnableC0530b2 = RunnableC0530b.this;
                    b.this.f37096a.b(runnableC0530b2.f37112d);
                    b.this.f37096a.a(bVar);
                    a.this.f37074f.b(bVar, b.this.f37096a);
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, String str4, String str5, com.mbridge.msdk.videocommon.a.C0572a c0572a) {
                    RunnableC0530b runnableC0530b = RunnableC0530b.this;
                    b bVar = b.this;
                    com.mbridge.msdk.reward.adapter.c cVar = bVar.f37099d;
                    if (cVar != null && cVar.a(runnableC0530b.f37112d, bVar.f37098c, bVar.f37100e)) {
                        if (a.this.f37074f == null || a.this.Y) {
                            return;
                        }
                        a.this.Y = true;
                        o0.a("RewardVideoController", "Cache onVideoLoadSuccessForCache");
                        RunnableC0530b runnableC0530b2 = RunnableC0530b.this;
                        a.this.a(runnableC0530b2.f37112d);
                        RunnableC0530b runnableC0530b3 = RunnableC0530b.this;
                        com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = b.this.f37096a;
                        if (cVar2 != null) {
                            cVar2.b(runnableC0530b3.f37112d);
                        }
                        a.this.f37074f.d(str2, str3, b.this.f37096a);
                        return;
                    }
                    a aVar = a.this;
                    aVar.c(str3, (List<CampaignEx>) aVar.T);
                    if (a.this.f37074f == null || a.this.X) {
                        return;
                    }
                    a.this.X = true;
                    com.mbridge.msdk.foundation.error.b bVarA = com.mbridge.msdk.foundation.error.a.a(880015, "errorCode: 3504 errorMessage: tpl temp preload success but isReady false");
                    b bVar2 = b.this;
                    if (bVar2.f37096a == null) {
                        bVar2.f37096a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    b.this.f37096a.a(bVarA);
                    RunnableC0530b runnableC0530b4 = RunnableC0530b.this;
                    b.this.f37096a.b(runnableC0530b4.f37112d);
                    a.this.f37074f.b(bVarA, b.this.f37096a);
                }
            }

            RunnableC0530b(String str, String str2, String str3, CopyOnWriteArrayList copyOnWriteArrayList) {
                this.f37109a = str;
                this.f37110b = str2;
                this.f37111c = str3;
                this.f37112d = copyOnWriteArrayList;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.mbridge.msdk.reward.adapter.b.b().a(a.this.f37093y, a.this.f37083o, a.this.f37088t, a.this.f37089u, this.f37109a, b.this.f37097b.getRequestIdNotice(), this.f37110b, this.f37111c, b.this.f37097b.getCMPTEntryUrl(), a.this.f37084p, b.this.f37097b, this.f37112d, H5DownLoadManager.getInstance().getH5ResAddress(b.this.f37097b.getCMPTEntryUrl()), this.f37111c, a.this.f37071c, new C0531a(), true);
            }
        }

        b(CampaignEx campaignEx, boolean z10, com.mbridge.msdk.reward.adapter.c cVar, int i11) {
            this.f37097b = campaignEx;
            this.f37098c = z10;
            this.f37099d = cVar;
            this.f37100e = i11;
            this.f37096a = com.mbridge.msdk.foundation.same.report.metrics.d.b().c().get(campaignEx.getLocalRequestId());
        }

        @Override // com.mbridge.msdk.reward.adapter.b.h
        public void a(String str, String str2, String str3, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
            a.this.U = true;
            if (this.f37098c) {
                if (!a.this.V || a.this.W || a.this.f37083o == null) {
                    return;
                }
                a.this.W = true;
                a.this.f37083o.post(new RunnableC0530b(str3, str, str2, copyOnWriteArrayList));
                return;
            }
            for (CampaignEx campaignEx : copyOnWriteArrayList) {
                if (campaignEx == null || campaignEx.getRewardTemplateMode() == null || TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e()) || campaignEx.getRewardTemplateMode().e().contains(CampaignEx.KEY_IS_CMPT_ENTRY) || a.this.f37083o == null) {
                    com.mbridge.msdk.reward.adapter.c cVar = this.f37099d;
                    if (cVar == null || !cVar.a(copyOnWriteArrayList, this.f37098c, this.f37100e)) {
                        a aVar = a.this;
                        aVar.c(str2, (List<CampaignEx>) aVar.T);
                        if (a.this.f37074f != null && !a.this.X) {
                            a.this.X = true;
                            com.mbridge.msdk.foundation.error.b bVarA = com.mbridge.msdk.foundation.error.a.a(880015, "errorCode: 3503 errorMessage: have no temp but isReady false");
                            if (this.f37096a == null) {
                                this.f37096a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                            }
                            this.f37096a.b(a.this.S);
                            this.f37096a.a(bVarA);
                            a.this.f37074f.b(bVarA, this.f37096a);
                        }
                    } else if (a.this.f37074f != null && !a.this.Y) {
                        a.this.Y = true;
                        o0.a("RewardVideoController", "Cache onVideoLoadSuccessForCache");
                        a.this.a(copyOnWriteArrayList);
                        com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = this.f37096a;
                        if (cVar2 != null) {
                            cVar2.b(copyOnWriteArrayList);
                        }
                        a.this.f37074f.d(str, str2, this.f37096a);
                    }
                } else {
                    a.this.f37083o.post(new RunnableC0528a(campaignEx, copyOnWriteArrayList, str, str2, str3));
                }
            }
        }

        @Override // com.mbridge.msdk.reward.adapter.b.h
        public void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, com.mbridge.msdk.foundation.error.b bVar) {
            a.this.U = false;
            a aVar = a.this;
            aVar.c(aVar.f37076h, (List<CampaignEx>) a.this.T);
            if (a.this.f37074f == null || a.this.X) {
                return;
            }
            a.this.X = true;
            if (this.f37096a == null) {
                this.f37096a = new com.mbridge.msdk.foundation.same.report.metrics.c();
            }
            this.f37096a.b(copyOnWriteArrayList);
            if (bVar != null) {
                bVar.c("errorCode: 3201 errorMessage: campaign resource download failed");
            }
            this.f37096a.a(bVar);
            a.this.f37074f.b(bVar, this.f37096a);
        }
    }

    class c implements com.mbridge.msdk.reward.adapter.b.n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        com.mbridge.msdk.foundation.same.report.metrics.c f37115a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CampaignEx f37116b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CopyOnWriteArrayList f37117c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f37118d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f37119e;

        c(CampaignEx campaignEx, CopyOnWriteArrayList copyOnWriteArrayList, boolean z10, int i11) {
            this.f37116b = campaignEx;
            this.f37117c = copyOnWriteArrayList;
            this.f37118d = z10;
            this.f37119e = i11;
            this.f37115a = com.mbridge.msdk.foundation.same.report.metrics.d.b().c().get(campaignEx.getLocalRequestId());
        }

        @Override // com.mbridge.msdk.reward.adapter.b.n
        public void a(String str, String str2, com.mbridge.msdk.foundation.error.b bVar) {
            String unitId = bVar == null ? "" : bVar.e().getUnitId();
            a aVar = a.this;
            aVar.c(unitId, (List<CampaignEx>) aVar.T);
            if (bVar != null) {
                bVar.c("errorCode: 3202 errorMessage: temp resource download failed");
            }
            if (this.f37115a == null) {
                this.f37115a = new com.mbridge.msdk.foundation.same.report.metrics.c();
            }
            this.f37115a.b(this.f37117c);
            this.f37115a.a(bVar);
            if (!this.f37118d && a.this.f37074f != null) {
                if (a.this.X) {
                    return;
                }
                a.this.X = true;
                a.this.f37074f.b(bVar, this.f37115a);
                return;
            }
            if (this.f37119e != 1 || a.this.X || a.this.f37074f == null) {
                return;
            }
            a.this.X = true;
            a.this.f37074f.b(bVar, this.f37115a);
        }

        @Override // com.mbridge.msdk.reward.adapter.b.n
        public void a(String str, String str2, String str3, String str4) {
        }
    }

    class d implements com.mbridge.msdk.reward.adapter.b.n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        com.mbridge.msdk.foundation.same.report.metrics.c f37121a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CampaignEx f37122b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CopyOnWriteArrayList f37123c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.reward.adapter.c f37124d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ boolean f37125e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f37126f;

        /* JADX INFO: renamed from: com.mbridge.msdk.reward.controller.a$d$a, reason: collision with other inner class name */
        class RunnableC0532a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ String f37128a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f37129b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ String f37130c;

            /* JADX INFO: renamed from: com.mbridge.msdk.reward.controller.a$d$a$a, reason: collision with other inner class name */
            class C0533a implements com.mbridge.msdk.reward.adapter.b.o {
                C0533a() {
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, com.mbridge.msdk.videocommon.a.C0572a c0572a, com.mbridge.msdk.foundation.error.b bVar) {
                    RunnableC0532a runnableC0532a = RunnableC0532a.this;
                    a aVar = a.this;
                    aVar.c(runnableC0532a.f37130c, (List<CampaignEx>) aVar.T);
                    if (a.this.f37074f == null || a.this.X) {
                        return;
                    }
                    a.this.X = true;
                    if (bVar != null) {
                        bVar.c("errorCode: 3303 errorMessage: tpl temp preload failed");
                    }
                    d dVar = d.this;
                    if (dVar.f37121a == null) {
                        dVar.f37121a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    d dVar2 = d.this;
                    dVar2.f37121a.b(dVar2.f37123c);
                    d.this.f37121a.a(bVar);
                    a.this.f37074f.b(bVar, d.this.f37121a);
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, String str4, String str5, com.mbridge.msdk.videocommon.a.C0572a c0572a) {
                    d dVar = d.this;
                    com.mbridge.msdk.reward.adapter.c cVar = dVar.f37124d;
                    if (cVar != null && cVar.a(dVar.f37123c, dVar.f37125e, dVar.f37126f)) {
                        if (a.this.f37074f == null || a.this.Y) {
                            return;
                        }
                        a.this.Y = true;
                        o0.a("RewardVideoController", "Cache onVideoLoadSuccess");
                        d dVar2 = d.this;
                        a.this.a(dVar2.f37123c);
                        d dVar3 = d.this;
                        com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = dVar3.f37121a;
                        if (cVar2 != null) {
                            cVar2.b(dVar3.f37123c);
                        }
                        a.this.f37074f.d(str2, str3, d.this.f37121a);
                        return;
                    }
                    a aVar = a.this;
                    aVar.c(str3, (List<CampaignEx>) aVar.T);
                    if (a.this.f37074f == null || a.this.X) {
                        return;
                    }
                    a.this.X = true;
                    com.mbridge.msdk.foundation.error.b bVarA = com.mbridge.msdk.foundation.error.a.a(880015, "errorCode: 3505 errorMessage: tpl temp preload success but isReady false");
                    d dVar4 = d.this;
                    if (dVar4.f37121a == null) {
                        dVar4.f37121a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    d dVar5 = d.this;
                    dVar5.f37121a.b(dVar5.f37123c);
                    d.this.f37121a.a(bVarA);
                    a.this.f37074f.b(bVarA, d.this.f37121a);
                }
            }

            RunnableC0532a(String str, String str2, String str3) {
                this.f37128a = str;
                this.f37129b = str2;
                this.f37130c = str3;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.mbridge.msdk.reward.adapter.b bVarB = com.mbridge.msdk.reward.adapter.b.b();
                boolean z10 = a.this.f37093y;
                Handler handler = a.this.f37083o;
                boolean z11 = a.this.f37088t;
                boolean z12 = a.this.f37089u;
                String str = this.f37128a;
                String requestIdNotice = d.this.f37122b.getRequestIdNotice();
                String str2 = this.f37129b;
                String str3 = this.f37130c;
                String cMPTEntryUrl = d.this.f37122b.getCMPTEntryUrl();
                int i11 = a.this.f37084p;
                d dVar = d.this;
                bVarB.a(z10, handler, z11, z12, str, requestIdNotice, str2, str3, cMPTEntryUrl, i11, dVar.f37122b, dVar.f37123c, H5DownLoadManager.getInstance().getH5ResAddress(d.this.f37122b.getCMPTEntryUrl()), this.f37130c, a.this.f37071c, new C0533a(), true);
            }
        }

        d(CampaignEx campaignEx, CopyOnWriteArrayList copyOnWriteArrayList, com.mbridge.msdk.reward.adapter.c cVar, boolean z10, int i11) {
            this.f37122b = campaignEx;
            this.f37123c = copyOnWriteArrayList;
            this.f37124d = cVar;
            this.f37125e = z10;
            this.f37126f = i11;
            this.f37121a = com.mbridge.msdk.foundation.same.report.metrics.d.b().c().get(campaignEx.getLocalRequestId());
        }

        @Override // com.mbridge.msdk.reward.adapter.b.n
        public void a(String str, String str2, com.mbridge.msdk.foundation.error.b bVar) {
            String unitId;
            if (bVar != null) {
                unitId = bVar.e().getUnitId();
                bVar.c("errorCode: 3203 errorMessage: tpl temp resource download failed");
            } else {
                unitId = "";
            }
            a aVar = a.this;
            aVar.c(unitId, (List<CampaignEx>) aVar.T);
            if (this.f37121a == null) {
                this.f37121a = new com.mbridge.msdk.foundation.same.report.metrics.c();
            }
            this.f37121a.a(bVar);
            this.f37121a.b(this.f37123c);
            a.this.V = false;
            if (a.this.f37074f == null || a.this.X) {
                return;
            }
            a.this.X = true;
            a.this.f37074f.b(bVar, this.f37121a);
        }

        @Override // com.mbridge.msdk.reward.adapter.b.n
        public void a(String str, String str2, String str3, String str4) {
            a.this.V = true;
            if (!a.this.U || a.this.W || a.this.f37083o == null) {
                return;
            }
            a.this.W = true;
            a.this.f37083o.post(new RunnableC0532a(str3, str, str2));
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (a.this.K == null) {
                    a.this.K = com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d());
                }
                com.mbridge.msdk.foundation.db.h hVarA = com.mbridge.msdk.foundation.db.h.a(a.this.K);
                if (hVarA != null) {
                    hVarA.b(a.this.f37076h);
                }
            } catch (Throwable unused) {
                o0.b("RewardVideoController", "can't find DailyPlayCapDao");
            }
        }
    }

    public class f implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.mbridge.msdk.reward.adapter.c f37134a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f37135b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f37136c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f37137d = false;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f37138e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f37139f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private com.mbridge.msdk.foundation.same.report.metrics.c f37140g;

        public f(com.mbridge.msdk.reward.adapter.c cVar, int i11, boolean z10, String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar2) {
            this.f37134a = cVar;
            this.f37135b = i11;
            this.f37136c = z10;
            if (cVar != null) {
                cVar.c(false);
            }
            this.f37139f = str;
            this.f37140g = cVar2;
        }

        public void a() {
            this.f37137d = true;
        }

        public void a(int i11) {
            this.f37138e = i11;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f37137d) {
                return;
            }
            com.mbridge.msdk.reward.adapter.c cVar = this.f37134a;
            if (cVar != null) {
                cVar.c(true);
            }
            o0.b("RewardVideoController", "adSource=" + this.f37135b + " CommonCancelTimeTask mIsDevCall：" + this.f37136c);
            a.this.a(com.mbridge.msdk.foundation.error.a.a(880023, "v3 is timeout"), this.f37140g);
        }
    }

    public class g implements com.mbridge.msdk.reward.adapter.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.mbridge.msdk.reward.adapter.c f37142a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f37143b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private f f37144c;

        public g(com.mbridge.msdk.reward.adapter.c cVar, boolean z10) {
            this.f37142a = cVar;
            this.f37143b = z10;
        }

        public void a(f fVar) {
            this.f37144c = fVar;
        }

        @Override // com.mbridge.msdk.reward.adapter.a
        public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            f fVar = this.f37144c;
            if (fVar != null) {
                fVar.a();
                a.this.f37083o.removeCallbacks(this.f37144c);
            }
            if (a.this.f37074f != null) {
                a.this.f37074f.a(a.this.f37080l, a.this.f37076h, cVar);
            }
        }

        @Override // com.mbridge.msdk.reward.adapter.a
        public void a(List<CampaignEx> list, com.mbridge.msdk.foundation.error.b bVar, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            f fVar = this.f37144c;
            if (fVar != null) {
                fVar.a();
                a.this.f37083o.removeCallbacks(this.f37144c);
            }
            com.mbridge.msdk.reward.adapter.c cVar2 = this.f37142a;
            if (cVar2 != null) {
                cVar2.a((com.mbridge.msdk.reward.adapter.a) null);
                this.f37142a = null;
            }
            a.this.a(list);
            if (a.this.f37074f != null) {
                a.this.f37074f.a(bVar, cVar);
            }
        }

        @Override // com.mbridge.msdk.reward.adapter.a
        public void a(List<CampaignEx> list, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            f fVar = this.f37144c;
            if (fVar != null) {
                fVar.a();
                a.this.f37083o.removeCallbacks(this.f37144c);
            }
            a.this.a(list);
            if (a.this.f37074f != null) {
                if (list != null && list.size() == 1) {
                    CampaignEx campaignEx = list.get(0);
                    if (!com.mbridge.msdk.foundation.same.c.a(a.this.f37068a, campaignEx) && campaignEx.getFilterAdsVideoCallState() == 0) {
                        if (a.this.f37069a0 > 1) {
                            a.m(a.this);
                            return;
                        }
                        com.mbridge.msdk.foundation.error.b bVarA = com.mbridge.msdk.foundation.error.a.a(880020, "load exception second");
                        if (cVar != null) {
                            cVar.a(bVarA);
                            cVar.b(true);
                        }
                        a.this.f37074f.a(bVarA, cVar);
                        return;
                    }
                }
                a.this.f37074f.c(a.this.f37080l, a.this.f37076h, cVar);
            }
        }
    }

    public final class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private WeakReference<InterVideoOutListener> f37146a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private volatile AtomicInteger f37147b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Handler f37148c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f37149d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f37150e;

        private h(InterVideoOutListener interVideoOutListener, Handler handler, String str) {
            this.f37146a = new WeakReference<>(interVideoOutListener);
            this.f37147b = new AtomicInteger(0);
            this.f37148c = handler;
            this.f37149d = str;
        }

        /* synthetic */ h(a aVar, InterVideoOutListener interVideoOutListener, Handler handler, String str, C0527a c0527a) {
            this(interVideoOutListener, handler, str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int a() {
            return this.f37147b.get();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(int i11) {
            this.f37147b.set(i11);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            this.f37147b.set(2);
            b(str, cVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str, String str2, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            WeakReference<InterVideoOutListener> weakReference = this.f37146a;
            InterVideoOutListener interVideoOutListener = weakReference != null ? weakReference.get() : null;
            if ((this.f37147b.get() != 1 && this.f37147b.get() != 3) || this.f37148c == null || a.this.N) {
                return;
            }
            a.this.N = true;
            a.this.a("2000127", cVar, interVideoOutListener);
            if (interVideoOutListener != null) {
                Message messageObtain = Message.obtain();
                Bundle bundle = new Bundle();
                bundle.putString(MBridgeConstans.PLACEMENT_ID, str);
                bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                bundle.putBoolean(MBridgeConstans.PROPERTIES_IS_CACHED_CAMPAIGN, false);
                if (cVar != null) {
                    bundle.putString("metrics_data_lrid", cVar.o());
                }
                messageObtain.setData(bundle);
                messageObtain.obj = str2;
                messageObtain.what = 17;
                this.f37148c.sendMessage(messageObtain);
                if (q0.a().a("l_s_i_l_v_s", false)) {
                    c(str, str2, cVar);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(com.mbridge.msdk.foundation.error.b bVar, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            WeakReference<InterVideoOutListener> weakReference = this.f37146a;
            InterVideoOutListener interVideoOutListener = weakReference != null ? weakReference.get() : null;
            if (this.f37147b.get() == 2 || this.f37148c == null) {
                return;
            }
            a.this.Q = true;
            String strG = bVar != null ? bVar.g() : "";
            if (strG.contains("resource load timeout")) {
                a.this.P = true;
            }
            if (a.this.Q && a.this.P && !a.this.O) {
                this.f37147b.set(2);
                if (interVideoOutListener != null) {
                    Message messageObtain = Message.obtain();
                    messageObtain.obj = strG;
                    messageObtain.what = 16;
                    if (cVar != null) {
                        Bundle bundle = new Bundle();
                        bundle.putString("metrics_data_lrid", cVar.o());
                        messageObtain.setData(bundle);
                    }
                    this.f37148c.sendMessage(messageObtain);
                }
                if (cVar == null) {
                    cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                }
                cVar.a(true);
                a.this.a("2000047", cVar, interVideoOutListener);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            WeakReference<InterVideoOutListener> weakReference = this.f37146a;
            a.this.a("2000047", cVar, weakReference != null ? weakReference.get() : null);
            if (this.f37148c != null) {
                Message messageObtain = Message.obtain();
                messageObtain.obj = str;
                messageObtain.what = 18;
                if (cVar != null) {
                    Bundle bundle = new Bundle();
                    bundle.putString("metrics_data_lrid", cVar.o());
                    messageObtain.setData(bundle);
                }
                this.f37148c.sendMessage(messageObtain);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(String str, String str2, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            WeakReference<InterVideoOutListener> weakReference = this.f37146a;
            InterVideoOutListener interVideoOutListener = weakReference != null ? weakReference.get() : null;
            if (this.f37148c == null || a.this.N) {
                return;
            }
            a.this.N = true;
            a.this.a("2000127", cVar, interVideoOutListener);
            if (interVideoOutListener != null) {
                Message messageObtain = Message.obtain();
                Bundle bundle = new Bundle();
                bundle.putString(MBridgeConstans.PLACEMENT_ID, str);
                bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                bundle.putBoolean(MBridgeConstans.PROPERTIES_IS_CACHED_CAMPAIGN, true);
                if (cVar != null) {
                    bundle.putString("metrics_data_lrid", cVar.o());
                }
                messageObtain.setData(bundle);
                messageObtain.obj = str2;
                messageObtain.what = 17;
                this.f37148c.sendMessage(messageObtain);
                if (q0.a().a("l_s_i_l_v_s", false)) {
                    d(str, str2, cVar);
                }
            }
        }

        public void a(com.mbridge.msdk.foundation.error.b bVar, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            String strG;
            CampaignEx campaignEx;
            if (bVar == null || cVar == null) {
                strG = "";
            } else {
                strG = bVar.g();
                cVar.a(bVar);
            }
            if (a.this.f37070b != null && a.this.f37069a0 == 1) {
                a.this.f37070b.a(a.this.f37078j);
                CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListF = a.this.f37070b.f();
                CampaignEx campaignEx2 = (a.this.H == null || a.this.H.size() == 0) ? null : (CampaignEx) a.this.H.get(0);
                if (campaignEx2 != null) {
                    campaignEx = campaignEx2;
                } else if (copyOnWriteArrayListF == null || copyOnWriteArrayListF.size() == 0) {
                    campaignEx = null;
                } else {
                    campaignEx2 = copyOnWriteArrayListF.get(0);
                    campaignEx = campaignEx2;
                }
                if (a.this.f37089u && ((campaignEx == null || TextUtils.isEmpty(campaignEx.getNLRid())) && ((copyOnWriteArrayListF == null || copyOnWriteArrayListF.size() == 0) && a.this.f37070b.a(campaignEx, true, bVar, 2, cVar)))) {
                    return;
                } else {
                    a.this.f37070b.a((com.mbridge.msdk.reward.adapter.a) null);
                }
            }
            Handler handler = this.f37148c;
            if (handler != null) {
                handler.removeMessages(1001002);
            }
            WeakReference<InterVideoOutListener> weakReference = this.f37146a;
            InterVideoOutListener interVideoOutListener = weakReference != null ? weakReference.get() : null;
            if (this.f37147b.get() == 2 || this.f37148c == null) {
                return;
            }
            a.this.P = true;
            if (!a.this.R || strG.contains("resource load timeout")) {
                a.this.Q = true;
            }
            if (a.this.O) {
                this.f37147b.set(2);
            }
            if (a.this.P && a.this.Q && !a.this.O) {
                if (a.this.f37069a0 > 1) {
                    a.m(a.this);
                    a.this.f37070b.a(a.this.f37078j);
                    return;
                }
                this.f37147b.set(2);
                a.this.a("2000047", cVar, interVideoOutListener);
                if (interVideoOutListener != null) {
                    Message messageObtain = Message.obtain();
                    messageObtain.obj = strG;
                    messageObtain.what = 16;
                    if (cVar != null) {
                        Bundle bundle = new Bundle();
                        bundle.putString("metrics_data_lrid", cVar.o());
                        messageObtain.setData(bundle);
                    }
                    this.f37148c.sendMessage(messageObtain);
                }
            }
        }

        public void a(boolean z10) {
            this.f37150e = z10;
        }

        public void c(String str, String str2, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            Handler handler = this.f37148c;
            if (handler != null) {
                handler.removeMessages(1001002);
            }
            WeakReference<InterVideoOutListener> weakReference = this.f37146a;
            InterVideoOutListener interVideoOutListener = weakReference != null ? weakReference.get() : null;
            if (this.f37147b.get() == 2 || this.f37148c == null) {
                return;
            }
            a.m(a.this);
            this.f37147b.set(2);
            if (a.this.O) {
                return;
            }
            a.this.O = true;
            if (cVar == null) {
                cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
            }
            cVar.b(a.this.H);
            a.this.a("2000048", cVar, interVideoOutListener);
            if (interVideoOutListener != null) {
                Message messageObtain = Message.obtain();
                Bundle bundle = new Bundle();
                bundle.putString(MBridgeConstans.PLACEMENT_ID, str);
                bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                bundle.putString("metrics_data_lrid", cVar.o());
                messageObtain.setData(bundle);
                messageObtain.obj = str2;
                messageObtain.what = 9;
                this.f37148c.sendMessage(messageObtain);
            }
        }

        public void d(String str, String str2, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            Handler handler = this.f37148c;
            if (handler != null) {
                handler.removeMessages(1001002);
            }
            WeakReference<InterVideoOutListener> weakReference = this.f37146a;
            InterVideoOutListener interVideoOutListener = weakReference != null ? weakReference.get() : null;
            if (this.f37147b.get() == 2 || this.f37148c == null) {
                return;
            }
            if (this.f37147b.get() == 1) {
                this.f37147b.set(3);
            }
            if (a.this.O) {
                return;
            }
            a.this.O = true;
            if (cVar == null) {
                cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
            }
            cVar.a(true);
            cVar.b(a.this.H);
            a.this.a("2000048", cVar, interVideoOutListener);
            if (interVideoOutListener != null) {
                Message messageObtain = Message.obtain();
                Bundle bundle = new Bundle();
                bundle.putString(MBridgeConstans.PLACEMENT_ID, str);
                bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                bundle.putSerializable("metrics_data_lrid", cVar.o());
                messageObtain.setData(bundle);
                messageObtain.obj = str2;
                messageObtain.what = 9;
                this.f37148c.sendMessage(messageObtain);
            }
            if (a.this.P) {
                this.f37147b.set(2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final class i extends com.mbridge.msdk.video.bt.module.orglistener.b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private a f37152c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Handler f37153d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f37154e;

        /* JADX INFO: renamed from: com.mbridge.msdk.reward.controller.a$i$a, reason: collision with other inner class name */
        class RunnableC0534a implements Runnable {
            RunnableC0534a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (i.this.f37152c != null) {
                    i.this.f37152c.a(false, com.mbridge.msdk.foundation.same.report.metrics.d.b().a(0, a.this.f37088t ? MBSupportMuteAdType.INTERSTITIAL_VIDEO : 94, a.this.f37076h, true, 1));
                }
            }
        }

        private i(a aVar, Handler handler) {
            this.f37154e = 0;
            this.f37152c = aVar;
            this.f37153d = handler;
        }

        /* synthetic */ i(a aVar, a aVar2, Handler handler, C0527a c0527a) {
            this(aVar2, handler);
        }

        @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
        public void a(int i11, String str, String str2) {
            this.f37154e = i11;
            a aVar = this.f37152c;
            if (aVar == null || aVar.f37089u || this.f37152c.f37088t || this.f37152c.f37071c == null || !this.f37152c.f37071c.a(this.f37154e) || this.f37152c.f37074f == null || this.f37152c.f37074f.a() == 1 || this.f37152c.f37074f.a() == 3 || a.this.B.contains(Integer.valueOf(this.f37154e))) {
                return;
            }
            a.this.B.add(Integer.valueOf(this.f37154e));
            int iF = this.f37152c.f37071c.f() * 1000;
            if (this.f37154e == 4) {
                iF = AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS;
            }
            Handler handler = this.f37153d;
            if (handler == null) {
                new Handler(Looper.getMainLooper()).postDelayed(new RunnableC0534a(), iF);
            } else {
                handler.removeMessages(1001001);
                this.f37153d.sendEmptyMessageDelayed(1001001, iF);
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
        public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            a.this.E = false;
            try {
                com.mbridge.msdk.reward.candidate.a aVar = new com.mbridge.msdk.reward.candidate.a(a.this.f37076h, a.this.f37088t);
                a aVar2 = this.f37152c;
                aVar.a(cVar.o(), (aVar2 == null || aVar2.f37070b == null) ? "" : this.f37152c.f37070b.H, 3, a.f37063b0);
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", e11.getMessage());
                }
            }
            try {
                a aVar3 = this.f37152c;
                if (aVar3 != null) {
                    aVar3.C = true;
                    if (this.f37152c.f37070b != null) {
                        this.f37152c.f37070b.H = "";
                    }
                    this.f37152c.q();
                    if (a.this.f37089u) {
                        a.this.a();
                    }
                    a aVar4 = a.this;
                    aVar4.a("2000130", cVar, aVar4.f37073e, "");
                    b();
                    if (this.f37152c.f37073e != null) {
                        this.f37152c.f37073e.onAdShow(a.this.f37077i);
                        this.f37154e = 2;
                    }
                }
            } catch (Throwable th2) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", th2.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
        public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar, String str) {
            try {
                a aVar = a.this;
                aVar.E = false;
                if (this.f37152c != null) {
                    if (aVar.f37089u) {
                        a.this.a();
                    }
                    this.f37152c.C = false;
                    a.this.a("2000131", cVar, this.f37152c.f37073e, str);
                    a();
                    if (this.f37152c.f37073e != null) {
                        try {
                            this.f37152c.f37073e.onShowFail(cVar, a.this.f37077i, str);
                        } catch (Exception e11) {
                            if (MBridgeConstans.DEBUG) {
                                o0.b("RewardVideoController", e11.getMessage());
                            }
                        }
                        this.f37154e = 4;
                    }
                }
            } catch (Exception e12) {
                this.f37154e = 0;
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", e12.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
        public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar, boolean z10, com.mbridge.msdk.videocommon.entity.c cVar2) {
            try {
                a aVar = this.f37152c;
                if (aVar != null && aVar.f37073e != null) {
                    if (cVar2 == null) {
                        cVar2 = com.mbridge.msdk.videocommon.entity.c.a(this.f37152c.f37081m);
                    }
                    if (a.this.f37089u) {
                        a.this.a();
                        a.this.v();
                        com.mbridge.msdk.foundation.same.buffer.b.d(a.this.f37076h, a.this.m());
                    }
                    this.f37152c.f37073e.onAdClose(a.this.f37077i, new RewardInfo(z10, cVar2.c(), String.valueOf(cVar2.a())));
                    this.f37154e = 7;
                    this.f37152c.C = false;
                    e();
                }
                com.mbridge.msdk.foundation.same.report.metrics.d.b().b("2000152", cVar, null);
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", e11.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
        public void a(String str, String str2) {
            try {
                a aVar = this.f37152c;
                if (aVar == null || aVar.f37073e == null) {
                    return;
                }
                try {
                    this.f37152c.f37073e.onEndcardShow(a.this.f37077i);
                    com.mbridge.msdk.foundation.feedback.b.b().a(str2 + "_2", 2);
                } catch (Exception e11) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardVideoController", e11.getMessage());
                    }
                }
                this.f37154e = 6;
            } catch (Exception e12) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", e12.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
        public void a(boolean z10, int i11) {
            try {
                a aVar = this.f37152c;
                if (aVar != null && aVar.f37073e != null) {
                    try {
                        this.f37152c.f37073e.onAdCloseWithIVReward(a.this.f37077i, new RewardInfo(z10, i11));
                    } catch (Exception e11) {
                        if (MBridgeConstans.DEBUG) {
                            o0.b("RewardVideoController", e11.getMessage());
                        }
                    }
                }
            } catch (Exception e12) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", e12.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
        public void a(boolean z10, String str, String str2) {
            try {
                a aVar = this.f37152c;
                if (aVar == null || aVar.f37073e == null) {
                    return;
                }
                if (a.this.f37089u) {
                    a.this.a();
                }
                this.f37152c.C = false;
                try {
                    this.f37152c.f37073e.onVideoAdClicked(z10, a.this.f37077i);
                } catch (Exception e11) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardVideoController", e11.getMessage());
                    }
                }
            } catch (Exception e12) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", e12.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
        public void b(String str, String str2) {
            try {
                a aVar = this.f37152c;
                if (aVar == null || aVar.f37073e == null) {
                    return;
                }
                try {
                    this.f37152c.f37073e.onVideoComplete(a.this.f37077i);
                } catch (Exception e11) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardVideoController", e11.getMessage());
                    }
                }
                this.f37154e = 5;
            } catch (Exception e12) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", e12.getMessage());
                }
            }
        }

        public void e() {
            a.this.B.clear();
            this.f37152c = null;
        }
    }

    public class j {
        public j() {
        }

        public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            a.this.f37069a0++;
            a aVar = a.this;
            aVar.b(aVar.f37092x, str, cVar);
        }
    }

    private com.mbridge.msdk.foundation.same.report.metrics.c a(com.mbridge.msdk.foundation.same.report.metrics.e eVar) {
        com.mbridge.msdk.foundation.same.report.metrics.c cVar;
        CampaignEx campaignEx;
        try {
            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListB = com.mbridge.msdk.videocommon.download.b.getInstance().b(this.f37076h);
            String currentLocalRid = "";
            if (copyOnWriteArrayListB != null && copyOnWriteArrayListB.size() > 0 && (campaignEx = copyOnWriteArrayListB.get(0)) != null) {
                currentLocalRid = campaignEx.getCurrentLocalRid();
            }
            com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = TextUtils.isEmpty(currentLocalRid) ? null : com.mbridge.msdk.foundation.same.report.metrics.d.b().c().get(currentLocalRid);
            if (cVar2 != null) {
                cVar2.b(copyOnWriteArrayListB);
                cVar2.a("2000128", eVar);
                cVar2.h(currentLocalRid);
                cVar2.m(this.f37076h);
                com.mbridge.msdk.reward.report.metrics.a.a().a("2000128", cVar2);
                return cVar2;
            }
            cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
            try {
                cVar.m(this.f37076h);
                eVar.a("metrics_data_reason", "未获取到待展示的campaign信息 本地new metricsData");
                cVar.a("2000128", eVar);
                if (TextUtils.isEmpty(currentLocalRid)) {
                    cVar.h(SameMD5.getMD5(t0.d()));
                } else {
                    cVar.h(currentLocalRid);
                    cVar.b(copyOnWriteArrayListB);
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().c().put(currentLocalRid, cVar);
                }
                com.mbridge.msdk.reward.report.metrics.a.a().a("2000128", cVar);
            } catch (Exception e11) {
                e = e11;
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", e.getMessage());
                }
            }
            return cVar;
        } catch (Exception e12) {
            e = e12;
            cVar = null;
        }
    }

    private String a(String str) {
        try {
            String md5 = TextUtils.isEmpty(str) ? SameMD5.getMD5(t0.d()) : "";
            String[] strArrSplit = str.split("_");
            if (strArrSplit != null && strArrSplit.length >= 3) {
                md5 = strArrSplit[2];
            }
            return TextUtils.isEmpty(md5) ? SameMD5.getMD5(t0.d()) : md5;
        } catch (Exception e11) {
            if (!MBridgeConstans.DEBUG) {
                return "";
            }
            e11.printStackTrace();
            return "";
        }
    }

    private CopyOnWriteArrayList<CampaignEx> a(String str, List<CampaignEx> list) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        if (list != null && list.size() > 0 && !TextUtils.isEmpty(str)) {
            for (CampaignEx campaignEx : list) {
                if (campaignEx != null && str.equals(campaignEx.getBidToken())) {
                    copyOnWriteArrayList.add(campaignEx);
                }
            }
        }
        return copyOnWriteArrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.mbridge.msdk.foundation.error.b bVar, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (this.f37074f != null) {
            this.Q = true;
            this.f37074f.a(bVar, cVar);
        }
    }

    private void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (this.f37074f != null) {
            com.mbridge.msdk.foundation.error.b bVarA = com.mbridge.msdk.foundation.error.a.a(880035, "");
            if (cVar != null) {
                cVar.a(bVarA);
                cVar.b(true);
            }
            this.f37074f.a("bidToken is empty", cVar);
        }
    }

    public static void a(String str, int i11) {
        try {
            if (f37065d0 == null || !y0.b(str)) {
                return;
            }
            f37065d0.put(str, Integer.valueOf(i11));
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardVideoController", e11.getMessage());
            }
        }
    }

    private void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        com.mbridge.msdk.videocommon.setting.c cVar2;
        com.mbridge.msdk.videocommon.setting.c cVar3;
        try {
            if (this.f37070b == null) {
                f();
            }
            if (this.f37070b != null) {
                o0.b("RewardVideoController", "controller 819");
                C0527a c0527a = null;
                if (this.f37089u ? a(false) : this.f37070b.l()) {
                    o0.c("RewardVideoController", "invoke adapter show isReady");
                    i iVar = new i(this, this, this.f37083o, c0527a);
                    f37067f0.put(this.f37076h, iVar);
                    this.f37070b.a(iVar, str, this.f37075g, this.f37084p, this.f37079k, cVar);
                    this.E = false;
                    return;
                }
                if (this.f37089u ? b() : this.f37070b.m()) {
                    o0.c("RewardVideoController", "invoke adapter show isSpareOfferReady");
                    i iVar2 = new i(this, this, this.f37083o, c0527a);
                    f37067f0.put(this.f37076h, iVar2);
                    this.f37070b.a(iVar2, str, this.f37075g, this.f37084p, this.f37079k, cVar);
                    this.E = false;
                    return;
                }
            }
            this.E = false;
            a("2000131", cVar, this.f37073e, "can't show because load is failed");
            if (this.f37073e != null) {
                try {
                    this.f37073e.onShowFail(cVar, this.f37077i, "can't show because load is failed");
                } catch (Exception e11) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardVideoController", e11.getMessage());
                    }
                }
            }
            if (this.f37088t || this.f37089u || (cVar3 = this.f37071c) == null || !cVar3.a(4) || this.f37074f == null || this.f37074f.a() == 1 || this.f37074f.a() == 3) {
                return;
            }
            a(false, com.mbridge.msdk.foundation.same.report.metrics.d.b().a(0, 94, this.f37076h, true, 1));
        } catch (Exception e12) {
            this.E = false;
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardVideoController", e12.getLocalizedMessage());
            }
            a("2000131", cVar, this.f37073e, "show exception");
            if (this.f37073e != null) {
                try {
                    this.f37073e.onShowFail(cVar, this.f37077i, "show exception");
                } catch (Exception unused) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardVideoController", e12.getMessage());
                    }
                }
            }
            if (this.f37088t || this.f37089u || (cVar2 = this.f37071c) == null || !cVar2.a(4) || this.f37074f == null || this.f37074f.a() == 1 || this.f37074f.a() == 3) {
                return;
            }
            a(false, com.mbridge.msdk.foundation.same.report.metrics.d.b().a(0, 94, this.f37076h, true, 1));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar, InterVideoOutListener interVideoOutListener) {
        if (this.f37092x) {
            if (cVar == null) {
                cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                cVar.b(this.H);
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                if (interVideoOutListener != null) {
                    eVar.a("listener_state", 1);
                } else {
                    eVar.a("listener_state", 2);
                }
                cVar.a(str, eVar);
                com.mbridge.msdk.reward.report.metrics.a.a().a(str, cVar);
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    e11.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar, InterVideoOutListener interVideoOutListener, String str2) {
        if (cVar == null) {
            try {
                cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                cVar.b(this.H);
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    e11.printStackTrace();
                    return;
                }
                return;
            }
        }
        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        if (!TextUtils.isEmpty(str2)) {
            eVar.a("reason", str2);
        }
        if (interVideoOutListener != null) {
            eVar.a("listener_state", 1);
        } else {
            eVar.a("listener_state", 2);
        }
        cVar.a(str, eVar);
        com.mbridge.msdk.reward.report.metrics.a.a().a(str, cVar);
    }

    public static void a(String str, String str2) {
        ConcurrentHashMap<String, String> concurrentHashMap;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || (concurrentHashMap = f37066e0) == null || concurrentHashMap.containsKey(str)) {
            return;
        }
        f37066e0.put(str, str2);
    }

    private void a(Queue<Integer> queue, boolean z10, String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        Integer numPoll;
        try {
            this.F = 25;
            this.G = 1;
            if (queue != null && queue.size() > 0 && (numPoll = queue.poll()) != null) {
                this.F = numPoll.intValue();
            }
            try {
                a(this.G, this.F, z10, str, cVar);
            } catch (Exception e11) {
                com.mbridge.msdk.foundation.error.b bVarA = com.mbridge.msdk.foundation.error.a.a(880020, "load mv api error:" + e11.getMessage());
                if (cVar != null) {
                    cVar.a(bVarA);
                    cVar.b(true);
                }
                a(bVarA, cVar);
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", e11.getMessage());
                }
            }
        } catch (Exception e12) {
            com.mbridge.msdk.foundation.error.b bVarA2 = com.mbridge.msdk.foundation.error.a.a(880020, "load mv api error:" + e12.getMessage());
            if (cVar != null) {
                cVar.a(bVarA2);
                cVar.b(true);
            }
            a(bVarA2, cVar);
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardVideoController", e12.getMessage());
            }
        }
    }

    private void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, com.mbridge.msdk.reward.adapter.c cVar) {
        CampaignEx campaignEx = copyOnWriteArrayList.get(0);
        boolean zIsEmpty = TextUtils.isEmpty(campaignEx.getCMPTEntryUrl());
        boolean z10 = !zIsEmpty;
        int nscpt = campaignEx.getNscpt();
        this.U = false;
        this.V = false;
        this.W = false;
        this.X = false;
        this.Y = false;
        com.mbridge.msdk.reward.adapter.b.b().a(this.f37068a, z10, nscpt, this.f37089u, this.f37088t ? MBSupportMuteAdType.INTERSTITIAL_VIDEO : 94, this.f37080l, this.f37076h, campaignEx.getRequestId(), copyOnWriteArrayList, new b(campaignEx, z10, cVar, nscpt), new c(campaignEx, copyOnWriteArrayList, z10, nscpt));
        if (zIsEmpty) {
            return;
        }
        com.mbridge.msdk.reward.adapter.b.b().a(this.f37068a, campaignEx, this.f37080l, this.f37076h, campaignEx.getRequestId(), new d(campaignEx, copyOnWriteArrayList, cVar, z10, nscpt));
    }

    private void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
            return;
        }
        try {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("cache", 1);
            cVar.a("2000127", eVar);
            cVar.a("2000048", eVar);
            cVar.a(copyOnWriteArrayList);
        } catch (Exception e11) {
            o0.b("RewardVideoController", e11.getMessage());
        }
        this.R = true;
        this.f37074f.a(this.f37089u);
        this.f37074f.b(this.f37080l, this.f37076h, cVar);
        CampaignEx campaignEx = copyOnWriteArrayList.get(0);
        a(campaignEx.getRequestId(), str);
        com.mbridge.msdk.reward.adapter.c cVar2 = this.f37070b;
        if (cVar2 == null || !cVar2.a(copyOnWriteArrayList, true ^ TextUtils.isEmpty(campaignEx.getCMPTEntryUrl()), campaignEx.getNscpt())) {
            a(copyOnWriteArrayList, this.f37070b);
        } else {
            a(copyOnWriteArrayList);
            this.f37074f.d(this.f37080l, this.f37076h, cVar);
        }
    }

    private void a(boolean z10, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (!this.f37092x) {
            if (z10) {
                this.f37092x = z10;
            }
        } else if (z10) {
            String strB = com.mbridge.msdk.foundation.error.a.b(880016, "errorCode: 3501 errorMessage: current unit is loading");
            com.mbridge.msdk.foundation.error.b bVarA = com.mbridge.msdk.foundation.error.a.a(880016, "errorCode: 3501 errorMessage: current unit is loading");
            if (cVar != null) {
                cVar.a(bVarA);
                cVar.b(true);
            }
            this.f37074f.b(strB, cVar);
        }
    }

    private void a(boolean z10, com.mbridge.msdk.foundation.same.report.metrics.c cVar, com.mbridge.msdk.foundation.same.report.metrics.e eVar) {
        if (eVar == null) {
            eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        }
        cVar.m(this.f37076h);
        cVar.a(this.f37088t ? MBSupportMuteAdType.INTERSTITIAL_VIDEO : 94);
        eVar.a("result", Integer.valueOf(z10 ? 1 : 2));
        eVar.a(CampaignEx.JSON_KEY_HB, Integer.valueOf(this.f37089u ? 1 : 0));
        cVar.a("m_offer_ready", eVar);
        com.mbridge.msdk.reward.report.metrics.a.a().a("m_offer_ready", cVar);
    }

    private void a(boolean z10, com.mbridge.msdk.foundation.same.report.metrics.c cVar, List<CampaignEx> list) {
        if (cVar == null) {
            cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
        }
        if (list != null && list.size() > 0) {
            CampaignEx campaignEx = list.get(0);
            if (campaignEx != null) {
                cVar.h(campaignEx.getLocalRequestId());
                cVar.f(campaignEx.getBidToken());
            }
            cVar.b(list);
        }
        a(z10, cVar, (com.mbridge.msdk.foundation.same.report.metrics.e) null);
    }

    private void a(boolean z10, String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        com.mbridge.msdk.reward.candidate.a aVar;
        com.mbridge.msdk.reward.candidate.a aVar2;
        if (this.f37074f != null) {
            if (!this.f37089u) {
                this.R = b(this.f37076h, cVar.o());
                if (!this.R) {
                    if (!c()) {
                        this.R = false;
                        com.mbridge.msdk.reward.adapter.c cVar2 = this.f37070b;
                        if (cVar2 != null) {
                            cVar2.c(this.S);
                        }
                        this.f37074f.a(this.f37089u);
                        a(this.I, z10, str, cVar);
                        return;
                    }
                    if (z10) {
                        if (this.f37074f != null) {
                            String strB = com.mbridge.msdk.foundation.error.a.b(880019, "");
                            cVar.a(com.mbridge.msdk.foundation.error.a.a(880019, ""));
                            cVar.b(true);
                            this.f37074f.a(strB, cVar);
                            return;
                        }
                        return;
                    }
                    this.R = false;
                    com.mbridge.msdk.reward.adapter.c cVar3 = this.f37070b;
                    if (cVar3 != null) {
                        cVar3.c(this.S);
                    }
                    this.f37074f.a(this.f37089u);
                    a(this.I, z10, str, cVar);
                    return;
                }
                if (c()) {
                    o0.a("RewardVideoController", "非BID，本地存在可用的缓存，超过上限");
                    CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.S;
                    if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
                        Iterator<CampaignEx> it = this.S.iterator();
                        while (it.hasNext()) {
                            com.mbridge.msdk.videocommon.cache.a.a().a(it.next(), this.f37076h);
                        }
                    }
                    com.mbridge.msdk.reward.adapter.c cVar4 = this.f37070b;
                    if (cVar4 != null) {
                        cVar4.c(this.S);
                    }
                    if (!z10) {
                        this.R = false;
                        this.f37074f.a(this.f37089u);
                        a(this.I, z10, str, cVar);
                        return;
                    } else {
                        if (this.f37074f != null) {
                            String strB2 = com.mbridge.msdk.foundation.error.a.b(880019, "");
                            cVar.a(com.mbridge.msdk.foundation.error.a.a(880019, ""));
                            cVar.b(true);
                            this.f37074f.a(strB2, cVar);
                            return;
                        }
                        return;
                    }
                }
                CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2 = this.S;
                if (copyOnWriteArrayList2 == null || copyOnWriteArrayList2.size() <= 0) {
                    return;
                }
                try {
                    com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                    eVar.a("cache", 1);
                    cVar.a("2000127", eVar);
                    cVar.a("2000048", eVar);
                    cVar.a(copyOnWriteArrayList2);
                } catch (Exception e11) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardVideoController", e11.getMessage());
                    }
                }
                this.f37074f.b(this.f37080l, this.f37076h, cVar);
                CampaignEx campaignEx = copyOnWriteArrayList2.get(0);
                this.f37074f.a(this.f37089u);
                com.mbridge.msdk.reward.adapter.c cVar5 = this.f37070b;
                if (cVar5 == null || !cVar5.a(copyOnWriteArrayList2, !TextUtils.isEmpty(campaignEx.getCMPTEntryUrl()), campaignEx.getNscpt())) {
                    a(copyOnWriteArrayList2, this.f37070b);
                } else {
                    a(copyOnWriteArrayList2);
                    this.f37074f.d(this.f37080l, this.f37076h, cVar);
                }
                if (this.L) {
                    com.mbridge.msdk.reward.adapter.c cVar6 = this.f37070b;
                    if (cVar6 != null) {
                        cVar6.c(this.S);
                    }
                    a(this.I, z10, str, cVar);
                    return;
                }
                return;
            }
            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListB = com.mbridge.msdk.videocommon.cache.a.a().b(this.f37076h, 1, this.f37089u, "");
            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListB2 = null;
            if (copyOnWriteArrayListB != null && copyOnWriteArrayListB.size() > 0) {
                if (c()) {
                    com.mbridge.msdk.videocommon.cache.a.a().b(this.f37076h, str);
                    if (!z10 || this.f37074f == null) {
                        return;
                    }
                    String strB3 = com.mbridge.msdk.foundation.error.a.b(880019, "");
                    com.mbridge.msdk.foundation.error.b bVarA = com.mbridge.msdk.foundation.error.a.a(880019, "");
                    if (cVar != null) {
                        cVar.a(bVarA);
                        cVar.b(true);
                    }
                    this.f37074f.a(strB3, cVar);
                    return;
                }
                if (this.f37070b == null) {
                    f();
                }
                CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListA = a(str, copyOnWriteArrayListB);
                if (copyOnWriteArrayListA != null && copyOnWriteArrayListA.size() > 0) {
                    a(copyOnWriteArrayListA, str, cVar);
                    return;
                }
                try {
                    com.mbridge.msdk.reward.candidate.a aVar3 = new com.mbridge.msdk.reward.candidate.a(this.f37076h, this.f37088t);
                    com.mbridge.msdk.foundation.cache.c cVar7 = new com.mbridge.msdk.foundation.cache.c();
                    if (aVar3.a(str)) {
                        aVar2 = aVar3;
                        cVar7 = aVar3.a(str, cVar, (CampaignEx) null, new com.mbridge.msdk.foundation.error.b(880038), 1, this.f37070b);
                        if (cVar7 != null && cVar7.g() == com.mbridge.msdk.foundation.cache.c.f34984l && cVar7.c() != null && cVar7.c().size() > 0 && this.f37070b != null) {
                            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListC = cVar7.c();
                            ArrayList arrayList = new ArrayList();
                            for (CampaignEx campaignEx2 : copyOnWriteArrayListB) {
                                if (campaignEx2 != null) {
                                    String requestId = campaignEx2.getRequestId();
                                    if (!TextUtils.isEmpty(requestId)) {
                                        for (int i11 = 0; i11 < copyOnWriteArrayListC.size(); i11++) {
                                            CampaignEx campaignEx3 = copyOnWriteArrayListC.get(i11);
                                            if (campaignEx3 != null) {
                                                if (requestId.equals(campaignEx3.getRequestId())) {
                                                    break;
                                                } else if (i11 == copyOnWriteArrayListC.size() - 1) {
                                                    arrayList.add(campaignEx2);
                                                }
                                            }
                                        }
                                        if (copyOnWriteArrayListC.size() != 0) {
                                            break;
                                        }
                                        arrayList.add(campaignEx2);
                                        break;
                                    }
                                }
                            }
                            this.f37070b.c(arrayList);
                            this.f37070b.a(cVar7.c(), false, true, true);
                            copyOnWriteArrayListB2 = new CopyOnWriteArrayList<>(cVar7.c());
                        }
                    } else {
                        aVar2 = aVar3;
                        copyOnWriteArrayListB2 = b(str, copyOnWriteArrayListB);
                        if (copyOnWriteArrayListB2.size() > 0) {
                            com.mbridge.msdk.foundation.db.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(str, copyOnWriteArrayListB2);
                        }
                        cVar7.d("cb is closed");
                        cVar7.a(com.mbridge.msdk.foundation.cache.c.f34983k);
                    }
                    aVar2.a(cVar, str, cVar7, (List<com.mbridge.msdk.foundation.cache.a.b>) null, (JSONObject) null, 1);
                    if (copyOnWriteArrayListB2 != null && copyOnWriteArrayListB2.size() > 0) {
                        a(copyOnWriteArrayListB2, str, cVar);
                        if (this.f37070b != null && !aVar2.a(str)) {
                            this.f37070b.c(copyOnWriteArrayListB2);
                        }
                    }
                } catch (Exception e12) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardVideoController", e12.getMessage());
                    }
                }
                this.R = false;
                this.f37074f.a(this.f37089u);
                a(this.I, z10, str, cVar);
                return;
            }
            if (c()) {
                com.mbridge.msdk.videocommon.cache.a.a().b(this.f37076h, str);
                if (!z10 || this.f37074f == null) {
                    return;
                }
                String strB4 = com.mbridge.msdk.foundation.error.a.b(880019, "");
                com.mbridge.msdk.foundation.error.b bVarA2 = com.mbridge.msdk.foundation.error.a.a(880019, "");
                if (cVar != null) {
                    cVar.a(bVarA2);
                    cVar.b(true);
                }
                this.f37074f.a(strB4, cVar);
                return;
            }
            try {
                com.mbridge.msdk.reward.candidate.a aVar4 = new com.mbridge.msdk.reward.candidate.a(this.f37076h, this.f37088t);
                com.mbridge.msdk.foundation.cache.c cVar8 = new com.mbridge.msdk.foundation.cache.c();
                if (aVar4.a(str)) {
                    if (this.f37070b == null) {
                        com.mbridge.msdk.reward.adapter.c cVar9 = new com.mbridge.msdk.reward.adapter.c(this.f37068a, this.f37080l, this.f37076h);
                        this.f37070b = cVar9;
                        cVar9.d(this.f37088t);
                        this.f37070b.e(this.f37089u);
                        if (this.f37088t) {
                            this.f37070b.a(this.f37085q, this.f37086r, this.f37087s);
                        }
                        this.f37070b.a(this.f37084p);
                        this.f37070b.a(this.f37071c);
                    }
                    aVar = aVar4;
                    cVar8 = aVar4.a(str, cVar, (CampaignEx) null, new com.mbridge.msdk.foundation.error.b(880038), 1, this.f37070b);
                    if (cVar8 != null && cVar8.g() == com.mbridge.msdk.foundation.cache.c.f34984l && cVar8.c() != null && cVar8.c().size() > 0 && this.f37070b != null) {
                        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListC2 = cVar8.c();
                        if (copyOnWriteArrayListB != null) {
                            ArrayList arrayList2 = new ArrayList();
                            for (CampaignEx campaignEx4 : copyOnWriteArrayListB) {
                                if (campaignEx4 != null) {
                                    String requestId2 = campaignEx4.getRequestId();
                                    if (!TextUtils.isEmpty(requestId2)) {
                                        for (int i12 = 0; i12 < copyOnWriteArrayListC2.size(); i12++) {
                                            CampaignEx campaignEx5 = copyOnWriteArrayListC2.get(i12);
                                            if (campaignEx5 != null) {
                                                if (requestId2.equals(campaignEx5.getRequestId())) {
                                                    break;
                                                } else if (i12 == copyOnWriteArrayListC2.size() - 1) {
                                                    arrayList2.add(campaignEx4);
                                                }
                                            }
                                        }
                                        if (copyOnWriteArrayListC2.size() != 0) {
                                            break;
                                        }
                                        arrayList2.add(campaignEx4);
                                        break;
                                    }
                                }
                            }
                            this.f37070b.c(arrayList2);
                        }
                        this.f37070b.a(cVar8.c(), false, true, true);
                        copyOnWriteArrayListB2 = new CopyOnWriteArrayList<>(cVar8.c());
                    }
                } else {
                    aVar = aVar4;
                    copyOnWriteArrayListB2 = b(str, copyOnWriteArrayListB);
                    if (copyOnWriteArrayListB2.size() > 0) {
                        com.mbridge.msdk.foundation.db.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(str, copyOnWriteArrayListB2);
                    }
                    cVar8.d("cb is closed 2");
                    cVar8.a(com.mbridge.msdk.foundation.cache.c.f34983k);
                }
                aVar.a(cVar, str, cVar8, (List<com.mbridge.msdk.foundation.cache.a.b>) null, (JSONObject) null, 1);
                if (copyOnWriteArrayListB2 != null && copyOnWriteArrayListB2.size() > 0) {
                    a(copyOnWriteArrayListB2, str, cVar);
                    if (this.f37070b != null && !aVar.a(str)) {
                        this.f37070b.c(copyOnWriteArrayListB2);
                    }
                }
            } catch (Exception e13) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", e13.getMessage());
                }
            }
            this.R = false;
            this.f37074f.a(this.f37089u);
            a(this.I, z10, str, cVar);
        }
    }

    private boolean a(List<com.mbridge.msdk.foundation.entity.c> list, String str, boolean z10) {
        if (list == null) {
            return false;
        }
        for (com.mbridge.msdk.foundation.entity.c cVar : list) {
            if (cVar != null && str.equals(cVar.b())) {
                this.f37070b.c(cVar.a());
                this.f37070b.b(cVar.d());
                if (this.f37070b.l()) {
                    if (z10) {
                        com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = new com.mbridge.msdk.foundation.same.report.metrics.c();
                        cVar2.h(cVar.d());
                        a(false, cVar2, (List<CampaignEx>) this.f37070b.h());
                    }
                    return true;
                }
            }
        }
        return false;
    }

    private boolean a(boolean z10) {
        if (this.f37070b == null) {
            f();
        }
        List<com.mbridge.msdk.foundation.entity.c> listA = com.mbridge.msdk.videocommon.cache.a.a().a(this.f37076h);
        String str = this.A;
        if (listA == null || listA.size() <= 0) {
            if (!z10) {
                return false;
            }
            d("is_ready_ctir_false", "no effective campaign list");
            com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
            cVar.h(str);
            cVar.f(this.f37094z);
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 8);
            cVar.a("m_offer_ready", eVar);
            a(false, cVar, (List<CampaignEx>) this.f37070b.h());
            return false;
        }
        String strD = com.mbridge.msdk.foundation.same.buffer.b.d(this.f37076h);
        boolean zA = TextUtils.isEmpty(strD) ? false : a(listA, strD, z10);
        if (z10) {
            d("is_ready_ctir_" + zA, "");
        }
        if (zA) {
            if (!z10) {
                return zA;
            }
            com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = new com.mbridge.msdk.foundation.same.report.metrics.c();
            cVar2.h(str);
            a(zA, cVar2, this.f37070b.h());
            return zA;
        }
        for (com.mbridge.msdk.foundation.entity.c cVar3 : listA) {
            if (cVar3 != null) {
                this.f37070b.c(cVar3.a());
                this.f37070b.b(cVar3.d());
                if (this.f37070b.b(z10)) {
                    cVar3.d();
                    return true;
                }
            }
        }
        return zA;
    }

    private com.mbridge.msdk.foundation.same.report.metrics.c b(boolean z10, String str, com.mbridge.msdk.foundation.same.report.metrics.e eVar) {
        com.mbridge.msdk.foundation.same.report.metrics.c cVar;
        com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = new com.mbridge.msdk.foundation.same.report.metrics.c();
        try {
            b(z10);
            String md5 = TextUtils.isEmpty(str) ? SameMD5.getMD5(t0.d()) : a(str);
            this.A = md5;
            cVar2 = com.mbridge.msdk.foundation.same.report.metrics.d.b().a(md5);
            if (cVar2 == null) {
                cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                try {
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().c().put(md5, cVar);
                    cVar.d(true);
                    cVar2 = cVar;
                } catch (Exception e11) {
                    e = e11;
                }
            }
            cVar2.h(md5);
            cVar2.m(this.f37076h);
            if (eVar != null) {
                if (eVar.a("adtp")) {
                    cVar2.a(Integer.parseInt((String) eVar.b("adtp")));
                }
                if (eVar.a(CampaignEx.JSON_KEY_HB)) {
                    String str2 = (String) eVar.b(CampaignEx.JSON_KEY_HB);
                    cVar2.g(str2);
                    if (str2.equals("1")) {
                        cVar2.f(str);
                    }
                }
            }
            cVar2.e(z10 ? "2" : "1");
            if (!z10) {
                return cVar2;
            }
            com.mbridge.msdk.reward.report.metrics.a.a().a("2000123", cVar2);
            return cVar2;
        } catch (Exception e12) {
            e = e12;
            cVar = cVar2;
        }
        if (MBridgeConstans.DEBUG) {
            o0.b("RewardVideoController", e.getMessage());
        }
        return cVar;
    }

    private CopyOnWriteArrayList<CampaignEx> b(String str, List<CampaignEx> list) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        if (list != null) {
            try {
                if (list.size() > 0) {
                    int vcn = 1;
                    for (CampaignEx campaignEx : list) {
                        if (campaignEx != null) {
                            if (campaignEx.getVcn() > vcn) {
                                vcn = campaignEx.getVcn();
                            }
                            if (campaignEx.getTokenRule() == 1) {
                                String requestId = campaignEx.getRequestId();
                                if (!TextUtils.isEmpty(requestId)) {
                                    if (linkedHashMap.containsKey(requestId)) {
                                        List list2 = (List) linkedHashMap.get(requestId);
                                        if (list2 != null) {
                                            list2.add(campaignEx);
                                        }
                                    } else {
                                        ArrayList arrayList = new ArrayList();
                                        arrayList.add(campaignEx);
                                        linkedHashMap.put(requestId, arrayList);
                                    }
                                }
                            } else {
                                String requestId2 = campaignEx.getRequestId();
                                if (!TextUtils.isEmpty(requestId2)) {
                                    if (linkedHashMap2.containsKey(requestId2)) {
                                        List list3 = (List) linkedHashMap2.get(requestId2);
                                        if (list3 != null) {
                                            list3.add(campaignEx);
                                        }
                                    } else {
                                        ArrayList arrayList2 = new ArrayList();
                                        arrayList2.add(campaignEx);
                                        linkedHashMap2.put(requestId2, arrayList2);
                                    }
                                }
                            }
                        }
                    }
                    if (linkedHashMap2.size() + linkedHashMap.size() >= vcn && linkedHashMap.size() > 0 && linkedHashMap.entrySet() != null && linkedHashMap.entrySet().iterator() != null && linkedHashMap.entrySet().iterator().next() != null && ((Map.Entry) linkedHashMap.entrySet().iterator().next()).getValue() != null) {
                        copyOnWriteArrayList.addAll((Collection) ((Map.Entry) linkedHashMap.entrySet().iterator().next()).getValue());
                        com.mbridge.msdk.foundation.same.buffer.b.a(this.f37076h, str, vcn);
                    }
                }
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", e11.getMessage());
                }
            }
        }
        return copyOnWriteArrayList;
    }

    private void b(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (this.f37074f != null) {
            String strB = com.mbridge.msdk.foundation.error.a.b(880001, "");
            com.mbridge.msdk.foundation.error.b bVarA = com.mbridge.msdk.foundation.error.a.a(880001, "");
            if (cVar != null) {
                cVar.a(bVarA);
                cVar.b(true);
            }
            this.f37074f.a(strB, cVar);
        }
    }

    private void b(boolean z10) {
        List<String> listE;
        if (z10) {
            try {
                com.mbridge.msdk.foundation.db.e eVarA = com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(this.f37068a));
                if (eVarA != null && (listE = eVarA.e(this.f37076h)) != null && listE.size() > 0) {
                    Iterator<String> it = listE.iterator();
                    while (it.hasNext()) {
                        com.mbridge.msdk.foundation.same.report.metrics.d.b().c(it.next());
                    }
                }
                LinkedHashMap<String, com.mbridge.msdk.foundation.same.report.metrics.c> linkedHashMapC = com.mbridge.msdk.foundation.same.report.metrics.d.b().c();
                if (linkedHashMapC == null || linkedHashMapC.size() <= 0) {
                    return;
                }
                Iterator<Map.Entry<String, com.mbridge.msdk.foundation.same.report.metrics.c>> it2 = linkedHashMapC.entrySet().iterator();
                while (it2.hasNext()) {
                    Map.Entry<String, com.mbridge.msdk.foundation.same.report.metrics.c> next = it2.next();
                    if (next != null && next.getValue().z()) {
                        it2.remove();
                    }
                }
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    e11.printStackTrace();
                }
            }
        }
    }

    private boolean b() {
        if (this.f37070b == null) {
            f();
        }
        List<com.mbridge.msdk.foundation.entity.c> listA = com.mbridge.msdk.videocommon.cache.a.a().a(this.f37076h);
        if (listA == null || listA.size() <= 0) {
            return false;
        }
        for (com.mbridge.msdk.foundation.entity.c cVar : listA) {
            if (cVar != null) {
                this.f37070b.c(cVar.a());
                this.f37070b.b(cVar.d());
                if (this.f37070b.m()) {
                    return true;
                }
                com.mbridge.msdk.videocommon.cache.a.a().d(this.f37076h, cVar.a());
            }
        }
        return false;
    }

    private boolean b(String str, String str2) {
        try {
            com.mbridge.msdk.reward.adapter.c cVar = this.f37070b;
            if (cVar == null || !str.equals(cVar.j())) {
                com.mbridge.msdk.reward.adapter.c cVar2 = new com.mbridge.msdk.reward.adapter.c(this.f37068a, this.f37080l, str);
                this.f37070b = cVar2;
                cVar2.d(this.f37088t);
                this.f37070b.e(this.f37089u);
            }
            this.f37070b.a(this.f37084p);
            this.f37070b.a(this.f37071c);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardVideoController", e11.getMessage());
            }
        }
        List<CampaignEx> listB = com.mbridge.msdk.videocommon.cache.a.a().b(str, 1, this.f37089u);
        this.T = com.mbridge.msdk.videocommon.cache.a.a().a(str, 1, this.f37089u);
        if (listB == null || listB.size() <= 0) {
            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.S;
            if (copyOnWriteArrayList == null) {
                return false;
            }
            copyOnWriteArrayList.clear();
            return false;
        }
        com.mbridge.msdk.videocommon.cache.a.a().a(str, listB, str2);
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2 = this.S;
        if (copyOnWriteArrayList2 == null) {
            this.S = new CopyOnWriteArrayList<>();
        } else {
            copyOnWriteArrayList2.clear();
        }
        for (CampaignEx campaignEx : listB) {
            campaignEx.setLocalRequestId(str2);
            this.S.add(campaignEx);
        }
        a(this.S);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str, List<CampaignEx> list) {
        if (list != null) {
            try {
                if (list.size() <= 0 || this.O) {
                    return;
                }
                com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d())).b(list, str);
            } catch (Throwable th2) {
                o0.b("RewardVideoController", th2.getMessage());
            }
        }
    }

    private boolean c() {
        try {
            if (this.K == null) {
                this.K = com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d());
            }
            com.mbridge.msdk.foundation.db.h hVarA = com.mbridge.msdk.foundation.db.h.a(this.K);
            if (this.f37071c == null) {
                this.f37071c = com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.f37076h, this.f37088t);
            }
            return hVarA != null && hVarA.a(this.f37076h, this.f37071c.k());
        } catch (Throwable unused) {
            o0.b("RewardVideoController", "cap check error");
        }
    }

    private void d(String str, String str2) {
        try {
            com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
            cVar.m(this.f37076h);
            cVar.a(this.f37088t ? MBSupportMuteAdType.INTERSTITIAL_VIDEO : 94);
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("event_name", str);
            eVar.a("reason", str2);
            cVar.a("m_temp_is_ready_check", eVar);
            com.mbridge.msdk.reward.report.metrics.a.a().a("m_temp_is_ready_check", cVar);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }

    private boolean d() {
        if (this.f37070b == null) {
            f();
        }
        com.mbridge.msdk.reward.adapter.c cVar = this.f37070b;
        if (cVar != null) {
            return cVar.b(true);
        }
        return false;
    }

    private void f() {
        com.mbridge.msdk.reward.adapter.c cVar = new com.mbridge.msdk.reward.adapter.c(this.f37068a, this.f37080l, this.f37076h);
        this.f37070b = cVar;
        cVar.d(this.f37088t);
        this.f37070b.e(this.f37089u);
        if (this.f37088t) {
            this.f37070b.a(this.f37085q, this.f37086r, this.f37087s);
        }
        this.f37070b.a(this.f37071c);
    }

    static /* synthetic */ int m(a aVar) {
        int i11 = aVar.f37069a0;
        aVar.f37069a0 = i11 - 1;
        return i11;
    }

    private void w() {
        com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(this.f37068a)).b(this.f37076h);
    }

    private void x() {
        try {
            List<CampaignEx> listC = com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(this.f37068a)).c(this.f37076h);
            if (listC == null || listC.size() <= 0) {
                return;
            }
            for (CampaignEx campaignEx : listC) {
                if (TextUtils.isEmpty(campaignEx.getCMPTEntryUrl())) {
                    com.mbridge.msdk.videocommon.a.b(campaignEx.getAdType(), campaignEx);
                } else {
                    com.mbridge.msdk.videocommon.a.e(this.f37076h + "_" + campaignEx.getRequestId() + "_" + campaignEx.getCMPTEntryUrl());
                    if (campaignEx.getRewardTemplateMode() != null && !TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e())) {
                        com.mbridge.msdk.videocommon.a.e(this.f37076h + "_" + campaignEx.getId() + "_" + campaignEx.getRequestId() + "_" + campaignEx.getRewardTemplateMode().e());
                    }
                }
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardVideoController", e11.getMessage());
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001f  */
    public com.mbridge.msdk.foundation.same.report.metrics.c a(Message message) {
        com.mbridge.msdk.foundation.same.report.metrics.c cVarA;
        if (message != null) {
            try {
                Bundle data = message.getData();
                if (data != null) {
                    cVarA = com.mbridge.msdk.foundation.same.report.metrics.d.b().a(data.getString("metrics_data_lrid"));
                } else {
                    cVarA = null;
                }
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    e11.printStackTrace();
                }
            }
        } else {
            cVarA = null;
        }
        return cVarA == null ? new com.mbridge.msdk.foundation.same.report.metrics.c() : cVarA;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0038  */
    /* JADX WARN: Code duplicated, block: B:16:0x003f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:17:0x0040 A[Catch: Exception -> 0x002b, TryCatch #0 {Exception -> 0x002b, blocks: (B:4:0x0009, B:6:0x000f, B:8:0x0016, B:12:0x002f, B:14:0x0039, B:17:0x0040, B:21:0x0075, B:23:0x0088, B:25:0x0096), top: B:31:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:19:0x0070  */
    /* JADX WARN: Code duplicated, block: B:20:0x0073  */
    public com.mbridge.msdk.foundation.same.report.metrics.c a(List<CampaignEx> list, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        String nLRid;
        String str;
        int i11;
        com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = new com.mbridge.msdk.foundation.same.report.metrics.c();
        String localRequestId = "";
        if (list != null) {
            try {
                if (list.size() > 0) {
                    if (list.get(0) != null) {
                        localRequestId = list.get(0).getLocalRequestId();
                        nLRid = list.get(0).getNLRid();
                    } else {
                        nLRid = "";
                    }
                    cVar2.h(localRequestId);
                    cVar2.b(list);
                    str = localRequestId;
                    localRequestId = nLRid;
                } else {
                    str = "";
                }
                if (TextUtils.isEmpty(localRequestId)) {
                    return cVar;
                }
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("cache", 1);
                eVar.a(CampaignEx.JSON_KEY_HB, 1);
                eVar.a("auto_load", 2);
                cVar2.a("2000127", eVar);
                cVar2.a("2000048", eVar);
                if (this.f37088t) {
                    i11 = MBSupportMuteAdType.INTERSTITIAL_VIDEO;
                } else {
                    i11 = 94;
                }
                cVar2.a(i11);
                cVar2.g("1");
                cVar2.e("2");
                if (!TextUtils.isEmpty(str) && !com.mbridge.msdk.foundation.same.report.metrics.d.b().c().containsKey(str)) {
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().c().put(str, cVar2);
                }
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    e11.printStackTrace();
                }
            }
        } else {
            str = "";
            if (TextUtils.isEmpty(localRequestId)) {
                return cVar;
            }
            com.mbridge.msdk.foundation.same.report.metrics.e eVar2 = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar2.a("cache", 1);
            eVar2.a(CampaignEx.JSON_KEY_HB, 1);
            eVar2.a("auto_load", 2);
            cVar2.a("2000127", eVar2);
            cVar2.a("2000048", eVar2);
            if (this.f37088t) {
                i11 = MBSupportMuteAdType.INTERSTITIAL_VIDEO;
            } else {
                i11 = 94;
            }
            cVar2.a(i11);
            cVar2.g("1");
            cVar2.e("2");
            if (!TextUtils.isEmpty(str)) {
                com.mbridge.msdk.foundation.same.report.metrics.d.b().c().put(str, cVar2);
            }
        }
        return cVar2;
    }

    public void a() {
        try {
            String str = "";
            MBridgeIds mBridgeIds = this.f37077i;
            if (mBridgeIds != null) {
                if (!this.C) {
                    mBridgeIds.setBidToken("");
                    return;
                }
                String strM = m();
                if (TextUtils.isEmpty(strM)) {
                    return;
                }
                ConcurrentHashMap<String, String> concurrentHashMap = f37066e0;
                if (concurrentHashMap != null && concurrentHashMap.containsKey(strM) && !TextUtils.isEmpty(f37066e0.get(strM))) {
                    str = f37066e0.get(strM);
                }
                this.f37077i.setBidToken(str);
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }

    public void a(int i11) {
        this.f37084p = i11;
    }

    public void a(int i11, int i12, int i13) {
        this.f37085q = i11;
        this.f37086r = i12;
        if (i12 == com.mbridge.msdk.foundation.same.a.K) {
            this.f37087s = i13 < 0 ? 5 : i13;
        }
        if (i12 == com.mbridge.msdk.foundation.same.a.J) {
            this.f37087s = i13 < 0 ? 80 : i13;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ivRewardEnable", 1);
            jSONObject.put("ivRewardMode", i11 == com.mbridge.msdk.foundation.same.a.H ? 0 : 1);
            jSONObject.put("ivRewardPlayValueMode", i12 == com.mbridge.msdk.foundation.same.a.J ? 0 : 1);
            jSONObject.put("ivRewardPlayValue", i13);
            com.mbridge.msdk.setting.h.b().i(this.f37076h, jSONObject.toString());
        } catch (Exception unused) {
            o0.b("RewardVideoController", "setIVRewardEnable to SP was ERROR");
        }
    }

    public void a(int i11, int i12, boolean z10, String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        try {
            com.mbridge.msdk.reward.adapter.c cVar2 = this.f37070b;
            if (cVar2 == null || !this.f37076h.equals(cVar2.j())) {
                com.mbridge.msdk.reward.adapter.c cVar3 = new com.mbridge.msdk.reward.adapter.c(this.f37068a, this.f37080l, this.f37076h);
                this.f37070b = cVar3;
                cVar3.d(this.f37088t);
                this.f37070b.e(this.f37089u);
            }
            if (this.f37088t) {
                this.f37070b.a(this.f37085q, this.f37086r, this.f37087s);
            }
            this.H = new ArrayList();
            this.f37070b.a(this.f37084p);
            this.f37070b.a(this.f37071c);
            f fVar = new f(this.f37070b, i11, z10, str, cVar);
            fVar.a(i12);
            g gVar = new g(this.f37070b, z10);
            this.f37078j = gVar;
            gVar.a(fVar);
            this.f37070b.a(this.f37078j);
            this.f37070b.a(0, "");
            this.f37070b.a(new j());
            this.f37070b.a(i11, i12, z10, str, this.f37093y, cVar);
            this.f37083o.postDelayed(fVar, i12 * 1000);
        } catch (Exception e11) {
            com.mbridge.msdk.foundation.error.b bVarA = com.mbridge.msdk.foundation.error.a.a(880020, e11.getMessage());
            if (cVar != null) {
                cVar.a(bVarA);
                cVar.b(true);
            }
            a(bVarA, cVar);
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardVideoController", e11.getMessage());
            }
        }
    }

    public void a(InterVideoOutListener interVideoOutListener) {
        this.f37073e = interVideoOutListener;
        this.f37074f = new h(this, interVideoOutListener, this.f37083o, this.f37076h, null);
    }

    /* JADX WARN: Code duplicated, block: B:129:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:164:0x01fa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public void a(String str, String str2, String str3, com.mbridge.msdk.foundation.same.report.metrics.e eVar) {
        com.mbridge.msdk.videocommon.setting.c cVar;
        com.mbridge.msdk.videocommon.setting.c cVar2;
        com.mbridge.msdk.videocommon.setting.c cVar3;
        com.mbridge.msdk.videocommon.setting.c cVar4;
        com.mbridge.msdk.foundation.same.report.metrics.c cVarA = a(eVar);
        try {
            this.f37081m = str;
            this.f37075g = str2;
            this.f37079k = str3;
            synchronized (this.D) {
                if (this.E) {
                    a("2000131", cVarA, this.f37073e, "campaing is show progressing ");
                    if (this.f37073e != null) {
                        try {
                            this.f37073e.onShowFail(cVarA, this.f37077i, "campaing is show progressing ");
                        } catch (Exception e11) {
                            if (MBridgeConstans.DEBUG) {
                                o0.b("RewardVideoController", e11.getMessage());
                            }
                        }
                    }
                    return;
                }
                this.E = true;
                Context context = this.f37068a;
                if (context == null) {
                    a("2000131", cVarA, this.f37073e, "context is null");
                    if (this.f37073e != null) {
                        try {
                            this.f37073e.onShowFail(cVarA, this.f37077i, "context is null");
                        } catch (Exception e12) {
                            if (MBridgeConstans.DEBUG) {
                                o0.b("RewardVideoController", e12.getMessage());
                            }
                        }
                    }
                    if (!this.f37088t && !this.f37089u && (cVar4 = this.f37071c) != null && cVar4.a(4) && this.f37074f != null && this.f37074f.a() != 1 && this.f37074f.a() != 3) {
                        a(false, com.mbridge.msdk.foundation.same.report.metrics.d.b().a(0, 94, this.f37076h, true, 1));
                    }
                    this.E = false;
                    return;
                }
                if (this.f37088t && !t0.l(context) && q0.a().a("s_a_w_n_c", true)) {
                    a("2000131", cVarA, this.f37073e, "network exception");
                    if (this.f37073e != null) {
                        try {
                            this.f37073e.onShowFail(cVarA, this.f37077i, "network exception");
                        } catch (Exception e13) {
                            if (MBridgeConstans.DEBUG) {
                                o0.b("RewardVideoController", e13.getMessage());
                            }
                        }
                    }
                    if (!this.f37088t && !this.f37089u && (cVar3 = this.f37071c) != null && cVar3.a(4) && this.f37074f != null && this.f37074f.a() != 1 && this.f37074f.a() != 3) {
                        a(false, com.mbridge.msdk.foundation.same.report.metrics.d.b().a(0, 94, this.f37076h, true, 1));
                    }
                    this.E = false;
                    return;
                }
                if (!c()) {
                    if (TextUtils.isEmpty(this.f37075g)) {
                        this.f37075g = com.mbridge.msdk.foundation.tools.f.d();
                    }
                    try {
                        String str4 = new SimpleDateFormat("dd").format(new Date());
                        String str5 = (String) w0.a(this.f37068a, "reward_date", "0");
                        if (!TextUtils.isEmpty(str5) && !TextUtils.isEmpty(str4) && !str5.equals(str4)) {
                            w0.b(this.f37068a, "reward_date", str4);
                        }
                    } catch (Exception e14) {
                        if (MBridgeConstans.DEBUG) {
                            o0.b("RewardVideoController", e14.getMessage());
                        }
                    }
                    a(str, cVarA);
                    return;
                }
                a("2000131", cVarA, this.f37073e, "Play more than limit");
                if (this.f37073e != null) {
                    try {
                        this.f37073e.onShowFail(cVarA, this.f37077i, "Play more than limit");
                    } catch (Exception e15) {
                        if (MBridgeConstans.DEBUG) {
                            o0.b("RewardVideoController", e15.getMessage());
                        }
                    }
                }
                if (!this.f37088t && !this.f37089u && (cVar2 = this.f37071c) != null && cVar2.a(4) && this.f37074f != null && this.f37074f.a() != 1 && this.f37074f.a() != 3) {
                    a(false, com.mbridge.msdk.foundation.same.report.metrics.d.b().a(0, 94, this.f37076h, true, 1));
                }
                this.E = false;
                return;
                this.E = false;
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", e.getLocalizedMessage());
                }
                a("2000131", cVarA, this.f37073e, "show exception");
                if (this.f37073e != null) {
                    try {
                        this.f37073e.onShowFail(cVarA, this.f37077i, "show exception");
                    } catch (Exception unused) {
                        if (MBridgeConstans.DEBUG) {
                            o0.b("RewardVideoController", e.getMessage());
                        }
                    }
                }
                if (!this.f37088t || this.f37089u || (cVar = this.f37071c) == null || !cVar.a(4) || this.f37074f == null || this.f37074f.a() == 1 || this.f37074f.a() == 3) {
                    return;
                }
                a(false, com.mbridge.msdk.foundation.same.report.metrics.d.b().a(0, 94, this.f37076h, true, 1));
            }
        } catch (Exception e16) {
            this.E = false;
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardVideoController", e16.getLocalizedMessage());
            }
            a("2000131", cVarA, this.f37073e, "show exception");
            if (this.f37073e != null) {
                this.f37073e.onShowFail(cVarA, this.f37077i, "show exception");
            }
            if (this.f37088t) {
            }
        }
    }

    public void a(String str, String str2, String str3, String str4) {
        if (!TextUtils.isEmpty(str)) {
            w0.b(this.f37068a, "MBridge_ConfirmTitle" + this.f37076h, str.trim());
        }
        if (!TextUtils.isEmpty(str2)) {
            w0.b(this.f37068a, "MBridge_ConfirmContent" + this.f37076h, str2.trim());
        }
        if (!TextUtils.isEmpty(str4)) {
            w0.b(this.f37068a, "MBridge_CancelText" + this.f37076h, str4.trim());
        }
        if (TextUtils.isEmpty(str3)) {
            return;
        }
        w0.b(this.f37068a, "MBridge_ConfirmText" + this.f37076h, str3.trim());
    }

    public void a(List<CampaignEx> list) {
        if (list == null || list.size() <= 0) {
            this.H = new ArrayList();
        } else {
            this.H = list;
        }
    }

    public void a(boolean z10, com.mbridge.msdk.foundation.same.report.metrics.e eVar) {
        a(z10, "", eVar);
    }

    public void a(boolean z10, String str, com.mbridge.msdk.foundation.same.report.metrics.e eVar) {
        com.mbridge.msdk.foundation.same.report.metrics.c cVarB = b(z10, str, eVar);
        this.f37094z = str;
        if (this.f37074f == null) {
            this.f37074f = new h(this, null, this.f37083o, this.f37076h, null);
        }
        if (this.f37074f != null && this.f37074f.a() == 1) {
            a(z10, cVarB);
            return;
        }
        this.f37069a0 = 1;
        if (this.f37074f == null || this.f37074f.a() != 3) {
            this.L = true;
            if (this.f37074f != null) {
                this.f37074f.a(1);
            }
        } else {
            this.L = false;
        }
        this.f37092x = z10;
        this.f37083o.removeMessages(1001001);
        this.O = false;
        this.N = false;
        this.P = false;
        this.Q = false;
        x();
        w();
        com.mbridge.msdk.reward.adapter.b.b().c();
        try {
            if (TextUtils.isEmpty(str)) {
                if (this.f37088t) {
                    com.mbridge.msdk.timer.b.getInstance().addInterstitialList(this.f37080l, this.f37076h);
                } else {
                    com.mbridge.msdk.timer.b.getInstance().addRewardList(this.f37080l, this.f37076h);
                }
            }
            if (this.f37089u && TextUtils.isEmpty(str)) {
                a(cVarB);
                return;
            }
            if (com.mbridge.msdk.system.a.map == null) {
                b(cVarB);
                return;
            }
            com.mbridge.msdk.videocommon.setting.c cVarC = com.mbridge.msdk.videocommon.setting.b.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), this.f37076h);
            this.f37071c = cVarC;
            if (cVarC == null) {
                this.J = com.mbridge.msdk.foundation.controller.c.m().b();
                com.mbridge.msdk.videocommon.setting.b.b().a(this.J, com.mbridge.msdk.foundation.controller.c.m().c(), this.f37076h, new C0527a());
                this.f37071c = com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.f37076h, this.f37088t);
            }
            if (!TextUtils.isEmpty(this.f37080l)) {
                this.f37071c.f(this.f37080l);
            }
            int iN = this.f37071c.n() * 1000;
            if (this.f37083o != null) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 1001002;
                if (cVarB != null) {
                    Bundle bundle = new Bundle();
                    bundle.putString("metrics_data_lrid", cVarB.o());
                    messageObtain.setData(bundle);
                }
                this.f37083o.sendMessageDelayed(messageObtain, iN);
            }
            this.I = this.f37071c.z();
            try {
                a(z10, str, cVarB);
            } catch (Exception e11) {
                if (this.f37074f != null) {
                    com.mbridge.msdk.foundation.error.b bVarA = com.mbridge.msdk.foundation.error.a.a(880020, "load exception");
                    if (cVarB != null) {
                        cVarB.a(bVarA);
                        cVarB.b(true);
                    }
                    this.f37074f.a(bVarA, cVarB);
                }
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardVideoController", e11.getMessage());
                }
            }
        } catch (Exception e12) {
            if (this.f37074f != null) {
                com.mbridge.msdk.foundation.error.b bVarA2 = com.mbridge.msdk.foundation.error.a.a(880001, "");
                if (cVarB != null) {
                    cVarB.a(bVarA2);
                    cVarB.b(true);
                }
                this.f37074f.a(bVarA2, cVarB);
            }
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardVideoController", e12.getMessage());
            }
        }
    }

    public void b(boolean z10, String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        com.mbridge.msdk.foundation.same.report.metrics.c cVarA = com.mbridge.msdk.foundation.same.report.metrics.d.b().a(cVar);
        String str2 = cVarA.o() + "label_second";
        cVarA.h(str2);
        com.mbridge.msdk.foundation.same.report.metrics.d.b().c().put(str2, cVarA);
        try {
            com.mbridge.msdk.reward.adapter.c cVar2 = this.f37070b;
            if (cVar2 == null || !this.f37076h.equals(cVar2.j())) {
                com.mbridge.msdk.reward.adapter.c cVar3 = new com.mbridge.msdk.reward.adapter.c(this.f37068a, this.f37080l, this.f37076h);
                this.f37070b = cVar3;
                cVar3.d(this.f37088t);
                this.f37070b.e(this.f37089u);
            }
            if (this.f37088t) {
                this.f37070b.a(this.f37085q, this.f37086r, this.f37087s);
            }
            if (cVarA.j() != null && !cVarA.j().isEmpty()) {
                this.Z.put(cVarA.j().get(0).getId());
            }
            this.f37070b.a(this.f37084p);
            this.f37070b.a(this.f37071c);
            f fVar = new f(this.f37070b, this.G, z10, str, cVarA);
            fVar.a(this.F);
            this.f37078j.a(fVar);
            this.f37070b.a(this.f37078j);
            this.f37070b.a(1, this.Z.toString());
            this.f37070b.a(this.G, this.F, z10, str, this.f37093y, cVarA);
            this.f37083o.postDelayed(fVar, this.F * 1000);
        } catch (Exception e11) {
            com.mbridge.msdk.foundation.error.b bVarA = com.mbridge.msdk.foundation.error.a.a(880020, e11.getMessage());
            cVarA.a(bVarA);
            cVarA.b(true);
            a(bVarA, cVarA);
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardVideoController", e11.getMessage());
            }
        }
    }

    public void c(String str, String str2) {
        try {
            this.f37068a = com.mbridge.msdk.foundation.controller.c.m().d();
            this.f37076h = str2;
            if (TextUtils.isEmpty(str)) {
                str = "";
            }
            this.f37080l = str;
            this.f37077i = new MBridgeIds(this.f37080l, this.f37076h);
            this.f37072d = com.mbridge.msdk.videocommon.setting.b.b().c();
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new com.mbridge.msdk.reward.controller.c(this.f37068a, this.f37076h));
            if (this.K == null) {
                this.K = com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d());
            }
        } catch (Throwable th2) {
            o0.b("RewardVideoController", th2.getMessage(), th2);
        }
    }

    public boolean c(boolean z10) {
        boolean zA;
        try {
            if (c()) {
                if (!z10) {
                    return false;
                }
                d("is_ready_start", "over cap check error");
                com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 10);
                cVar.a("m_offer_ready", eVar);
                a(false, cVar, (List<CampaignEx>) this.f37070b.h());
                return false;
            }
            if (this.f37089u) {
                try {
                    zA = a(z10);
                } catch (Exception e11) {
                    if (!MBridgeConstans.DEBUG) {
                        return false;
                    }
                    o0.b("RewardVideoController", e11.getMessage());
                    return false;
                }
            } else {
                zA = d();
            }
            return zA;
        } catch (Throwable th2) {
            if (!MBridgeConstans.DEBUG) {
                return false;
            }
            o0.b("RewardVideoController", th2.getMessage());
            return false;
        }
    }

    public void d(boolean z10) {
        this.f37088t = z10;
        if (z10) {
            this.f37084p = com.mbridge.msdk.foundation.same.a.X;
        } else {
            this.f37084p = com.mbridge.msdk.foundation.same.a.W;
        }
    }

    public void e() {
        m0.b();
    }

    public void e(boolean z10) {
        this.f37089u = z10;
    }

    public void f(boolean z10) {
        this.f37093y = z10;
    }

    public MBridgeIds g() {
        return this.f37077i;
    }

    public List<CampaignEx> h() {
        return this.T;
    }

    public CopyOnWriteArrayList<CampaignEx> i() {
        return this.S;
    }

    public String j() {
        com.mbridge.msdk.reward.adapter.c cVar = this.f37070b;
        return cVar != null ? cVar.g() : "";
    }

    public h k() {
        return this.f37074f;
    }

    public String l() {
        return this.f37080l;
    }

    public String m() {
        com.mbridge.msdk.reward.adapter.c cVar = this.f37070b;
        return cVar != null ? cVar.a(this.C) : "";
    }

    public com.mbridge.msdk.reward.adapter.c n() {
        return this.f37070b;
    }

    public InterVideoOutListener o() {
        return this.f37073e;
    }

    public String p() {
        return this.f37076h;
    }

    public void q() {
        com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new e());
    }

    public boolean r() {
        return this.f37089u;
    }

    public boolean s() {
        return this.f37092x;
    }

    public boolean t() {
        return this.f37088t;
    }

    public boolean u() {
        return (this.f37073e == null || this.f37074f == null) ? false : true;
    }

    public void v() {
        ConcurrentHashMap<String, String> concurrentHashMap;
        if (!this.C || (concurrentHashMap = f37066e0) == null || concurrentHashMap.containsKey(m())) {
            return;
        }
        f37066e0.remove(m());
    }
}
