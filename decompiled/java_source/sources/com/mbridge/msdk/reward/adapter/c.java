package com.mbridge.msdk.reward.adapter;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.db.j;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.download.download.ResDownloadCheckManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.y0;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.mbridge.msdk.reward.player.MBRewardVideoActivity;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes5.dex */
public class c {
    private String C;
    private h D;
    public String K;
    private List<CampaignEx> V;
    private CopyOnWriteArrayList<CampaignEx> W;
    private List<CampaignEx> X;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f36967a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f36968b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f36969c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f36970d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f36971e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f36972f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f36973g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f36974h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.mbridge.msdk.video.bt.module.orglistener.h f36975i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private volatile com.mbridge.msdk.reward.adapter.a f36976j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private volatile com.mbridge.msdk.reward.controller.a.j f36977k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private com.mbridge.msdk.videocommon.setting.c f36978l;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f36984r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f36985s;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f36987u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f36988v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f36989w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f36990x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private CampaignUnit f36991y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private CopyOnWriteArrayList<CampaignEx> f36992z;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f36979m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f36980n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Object f36981o = new Object();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private CopyOnWriteArrayList<CampaignEx> f36982p = new CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f36983q = 2;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f36986t = "";
    private boolean A = false;
    private long B = 0;
    private boolean E = false;
    private boolean F = false;
    public String G = "";
    public String H = "";
    public String I = "";
    public int J = 0;
    private Handler L = new a(Looper.getMainLooper());
    private boolean M = false;
    private long N = 0;
    volatile boolean O = false;
    volatile boolean P = false;
    volatile boolean Q = false;
    volatile boolean R = false;
    volatile boolean S = false;
    public volatile boolean T = false;
    private String U = "";

    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        /* JADX WARN: Code duplicated, block: B:90:0x0234  */
        /* JADX WARN: Code duplicated, block: B:91:0x0236  */
        /* JADX WARN: Code duplicated, block: B:95:0x0266  */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            CampaignEx campaignEx;
            com.mbridge.msdk.foundation.error.b bVarA;
            boolean z10;
            com.mbridge.msdk.foundation.same.report.metrics.c cVarA = c.this.a(message);
            try {
                try {
                    int i11 = message.what;
                    if (i11 == 8) {
                        if (c.this.f36976j == null || (campaignEx = (CampaignEx) message.obj) == null || TextUtils.isEmpty(c.this.f36968b)) {
                            return;
                        }
                        com.mbridge.msdk.reward.report.a.a(c.this.f36967a, campaignEx, c.this.f36968b);
                        c.this.l();
                        return;
                    }
                    if (i11 == 18) {
                        if (c.this.f36977k != null) {
                            c.this.f36977k.a(c.this.C, cVarA);
                            return;
                        }
                        return;
                    }
                    switch (i11) {
                        case 1:
                        case 2:
                            c.this.a((String) message.obj, cVarA);
                            break;
                        case 3:
                            if (c.this.f36976j != null) {
                                c.this.f36976j.a("campaign is ok", cVarA);
                            }
                            Message message2 = new Message();
                            message2.what = 5;
                            if (cVarA != null) {
                                Bundle bundle = new Bundle();
                                bundle.putString("metrics_data_lrid", cVarA.o());
                                message2.setData(bundle);
                            }
                            sendMessageDelayed(message2, com.mbridge.msdk.foundation.same.a.L);
                            break;
                        case 4:
                            if (c.this.f36976j != null) {
                                c cVar = c.this;
                                cVar.a(cVar.f36968b, (List<CampaignEx>) c.this.V, c.this.f36985s, "");
                                try {
                                    com.mbridge.msdk.foundation.error.b bVarA2 = com.mbridge.msdk.foundation.error.a.a(880002, "unknow error in load failed");
                                    Object obj = message.obj;
                                    if (obj == null) {
                                        if (c.this.L != null) {
                                            c.this.L.removeMessages(5);
                                        }
                                        removeMessages(6);
                                        o0.a("RewardMVVideoAdapter", "=====================onVideoLoadFail=====================00000");
                                        if (!c.this.S) {
                                            c.this.S = false;
                                            bVarA = com.mbridge.msdk.foundation.error.a.a(880002, "errorCode: 3506 errorMessage: data load failed");
                                            bVarA2 = bVarA;
                                        }
                                    } else {
                                        String str = (String) obj;
                                        int i12 = message.arg1;
                                        if (TextUtils.isEmpty(str)) {
                                            if (c.this.L != null) {
                                                c.this.L.removeMessages(5);
                                            }
                                            removeMessages(6);
                                            o0.a("RewardMVVideoAdapter", "=====================onVideoLoadFail=====================11111");
                                            if (!c.this.S) {
                                                c.this.S = false;
                                                bVarA = com.mbridge.msdk.foundation.error.a.a(880002, "errorCode: 3507 errorMessage: data load failed, errorMsg null");
                                            }
                                        } else {
                                            if (c.this.L != null) {
                                                c.this.L.removeMessages(5);
                                            }
                                            removeMessages(6);
                                            if (i12 == 880021) {
                                                bVarA = com.mbridge.msdk.foundation.error.a.a(880021, "errorCode: 3507 errorMessage: data load failed, errorMsg is APP ALREADY INSTALLED");
                                            } else if (i12 == 880003 || i12 == 6 || i12 == 7) {
                                                bVarA = com.mbridge.msdk.foundation.error.a.a(880003, "errorCode: 3507 errorMessage: data load failed, errorMsg is " + str);
                                            } else {
                                                bVarA = com.mbridge.msdk.foundation.error.a.a(880002, "errorCode: 3507 errorMessage: data load failed, errorMsg is " + str);
                                            }
                                        }
                                        bVarA2 = bVarA;
                                    }
                                    c.this.S = false;
                                    if (cVarA != null) {
                                        cVarA.b(c.this.V);
                                        if (cVarA.p() == null) {
                                            cVarA.a(bVarA2);
                                        } else {
                                            bVarA2 = cVarA.p();
                                        }
                                    }
                                    c.this.f36976j.a(c.this.V, bVarA2, cVarA);
                                } catch (Exception e11) {
                                    if (c.this.L != null) {
                                        c.this.L.removeMessages(5);
                                    }
                                    removeMessages(6);
                                    c cVar2 = c.this;
                                    cVar2.a(cVar2.f36968b, (List<CampaignEx>) c.this.V, c.this.f36985s, "");
                                    com.mbridge.msdk.foundation.error.b bVarA3 = com.mbridge.msdk.foundation.error.a.a(880002, "errorCode: 3508 errorMessage: data load failed, exception is: " + e11.getMessage());
                                    if (cVarA != null) {
                                        cVarA.b(c.this.V);
                                        cVarA.a(bVarA3);
                                    }
                                    c.this.f36976j.a(c.this.V, bVarA3, cVarA);
                                    return;
                                }
                            }
                            break;
                        case 5:
                            if (c.this.f36976j != null) {
                                if (c.this.V != null && c.this.V.size() > 0) {
                                    CampaignEx campaignEx2 = (CampaignEx) c.this.V.get(0);
                                    boolean z11 = !TextUtils.isEmpty(campaignEx2.getCMPTEntryUrl());
                                    int nscpt = campaignEx2.getNscpt();
                                    c cVar3 = c.this;
                                    if (cVar3.a((List<CampaignEx>) cVar3.f36992z, z11, nscpt, true, false)) {
                                        c cVar4 = c.this;
                                        cVar4.a(cVar4.f36968b, (List<CampaignEx>) c.this.V, (List<CampaignEx>) c.this.X, c.this.f36985s);
                                        sendEmptyMessage(6);
                                        removeMessages(5);
                                        if (!c.this.R) {
                                            c.this.R = true;
                                            c.this.f36976j.a(c.this.f36992z, cVarA);
                                        }
                                    }
                                }
                                c cVar5 = c.this;
                                cVar5.a(cVar5.f36968b, (List<CampaignEx>) c.this.V, c.this.f36985s, "");
                                if (c.this.L != null) {
                                    c.this.L.removeMessages(5);
                                    c.this.L.removeMessages(6);
                                }
                                CampaignEx campaignEx3 = (c.this.V == null || c.this.V.size() <= 0) ? null : (CampaignEx) c.this.V.get(0);
                                if (campaignEx3 == null && c.this.W != null && c.this.W.size() > 0) {
                                    campaignEx3 = (CampaignEx) c.this.W.get(0);
                                }
                                if (!c.this.S || (c.this.T && campaignEx3 != null && !TextUtils.isEmpty(campaignEx3.getNLRid()))) {
                                    com.mbridge.msdk.foundation.error.b bVarA4 = com.mbridge.msdk.foundation.error.a.a(880010, "errorCode: 3401 errorMessage: resource load timeout");
                                    c.this.S = false;
                                    if (cVarA != null) {
                                        cVarA.a(bVarA4);
                                    }
                                    c.this.f36976j.a(c.this.V, bVarA4, cVarA);
                                    if (c.this.f36992z != null && c.this.f36992z.size() > 0) {
                                        boolean z12 = false;
                                        for (CampaignEx campaignEx4 : c.this.f36992z) {
                                            if (campaignEx4 != null) {
                                                try {
                                                    if (!TextUtils.isEmpty(campaignEx4.getVideoUrlEncode()) && !ResDownloadCheckManager.getInstance().containsVideoKey(campaignEx4.getVideoUrlEncode())) {
                                                        z10 = true;
                                                    }
                                                    if (campaignEx4 != null && !TextUtils.isEmpty(campaignEx4.getendcard_url()) && !ResDownloadCheckManager.getInstance().containsZipKey(campaignEx4.getendcard_url())) {
                                                        z10 = true;
                                                    }
                                                    if (campaignEx4 != null && !TextUtils.isEmpty(campaignEx4.getCMPTEntryUrl())) {
                                                        if (!ResDownloadCheckManager.getInstance().containsZipKey(campaignEx4.getCMPTEntryUrl())) {
                                                            z10 = true;
                                                        } else if (!z12 && !z10) {
                                                            if (com.mbridge.msdk.videocommon.a.b(c.this.f36968b + "_" + campaignEx4.getRequestId() + "_" + campaignEx4.getCMPTEntryUrl()) == null) {
                                                                z12 = true;
                                                            }
                                                        }
                                                    }
                                                    if (campaignEx4 != null && campaignEx4.getRewardTemplateMode() != null && !TextUtils.isEmpty(campaignEx4.getRewardTemplateMode().e()) && !campaignEx4.getRewardTemplateMode().e().contains(CampaignEx.KEY_IS_CMPT_ENTRY) && ResDownloadCheckManager.getInstance().containsZipKey(campaignEx4.getRewardTemplateMode().e()) && TextUtils.isEmpty(campaignEx4.getCMPTEntryUrl()) && !z10) {
                                                        com.mbridge.msdk.videocommon.a.a(campaignEx4.getAdType(), campaignEx4);
                                                    }
                                                } catch (Exception e12) {
                                                    if (MBridgeConstans.DEBUG) {
                                                        o0.b("RewardMVVideoAdapter", e12.getMessage());
                                                    }
                                                }
                                            }
                                            z10 = false;
                                            if (campaignEx4 != null) {
                                                z10 = true;
                                            }
                                            if (campaignEx4 != null) {
                                                if (!ResDownloadCheckManager.getInstance().containsZipKey(campaignEx4.getCMPTEntryUrl())) {
                                                    z10 = true;
                                                } else if (!z12) {
                                                    if (com.mbridge.msdk.videocommon.a.b(c.this.f36968b + "_" + campaignEx4.getRequestId() + "_" + campaignEx4.getCMPTEntryUrl()) == null) {
                                                        z12 = true;
                                                    }
                                                }
                                            }
                                            if (campaignEx4 != null) {
                                                com.mbridge.msdk.videocommon.a.a(campaignEx4.getAdType(), campaignEx4);
                                            }
                                        }
                                        break;
                                    }
                                }
                            }
                            break;
                        case 6:
                            c cVar6 = c.this;
                            cVar6.a(cVar6.f36968b, (List<CampaignEx>) c.this.V, (List<CampaignEx>) c.this.X, c.this.f36985s);
                            if (c.this.f36976j != null) {
                                removeMessages(6);
                                if (c.this.L != null) {
                                    c.this.L.removeMessages(5);
                                }
                                if (c.this.f36976j != null && !c.this.R) {
                                    c.this.R = true;
                                    c.this.f36976j.a(c.this.f36992z, cVarA);
                                    break;
                                }
                            }
                            break;
                    }
                } catch (Exception e13) {
                    e13.printStackTrace();
                }
            } catch (Throwable th2) {
                o0.a("RewardMVVideoAdapter", th2.getMessage());
            }
        }
    }

    class b extends com.mbridge.msdk.reward.request.a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.foundation.same.report.metrics.c f36994e;

        b(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            this.f36994e = cVar;
        }

        @Override // com.mbridge.msdk.reward.request.a
        public void a(CampaignUnit campaignUnit) throws Throwable {
            CampaignEx campaignEx;
            try {
                c.this.c(campaignUnit);
                c.this.a(campaignUnit);
                if (campaignUnit != null) {
                    c.this.G = campaignUnit.getRequestId();
                }
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    e11.printStackTrace();
                }
                if (c.this.f36992z != null && c.this.f36992z.size() > 0 && (campaignEx = (CampaignEx) c.this.f36992z.get(0)) != null && TextUtils.isEmpty(campaignEx.getNLRid())) {
                    c.this.f36992z.clear();
                }
                if (c.this.V != null) {
                    c.this.V.clear();
                }
                c.this.O = false;
                c.this.P = false;
                synchronized (c.this.f36981o) {
                    try {
                        if (c.this.Q) {
                            c.this.Q = false;
                        }
                        c.this.S = false;
                        c.this.R = false;
                        c.this.b("exception after load success", this.f36994e);
                        c.this.n();
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }

        @Override // com.mbridge.msdk.reward.request.a
        public void b(int i11, String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            CampaignEx campaignEx;
            if (i11 == -1) {
                c.this.B = System.currentTimeMillis();
            }
            if (c.this.f36992z != null && c.this.f36992z.size() > 0 && (campaignEx = (CampaignEx) c.this.f36992z.get(0)) != null && TextUtils.isEmpty(campaignEx.getNLRid())) {
                c.this.f36992z.clear();
            }
            if (c.this.V != null) {
                c.this.V.clear();
            }
            c.this.O = false;
            c.this.P = false;
            synchronized (c.this.f36981o) {
                try {
                    if (c.this.Q) {
                        c.this.Q = false;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            c.this.a(cVar, i11);
            c.this.S = false;
            c.this.R = false;
            if (!c.this.M) {
                c.this.a(i11, str, cVar);
            }
            c.this.n();
        }
    }

    /* JADX INFO: renamed from: com.mbridge.msdk.reward.adapter.c$c, reason: collision with other inner class name */
    class C0523c implements com.mbridge.msdk.reward.adapter.b.h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        com.mbridge.msdk.foundation.same.report.metrics.c f36996a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CampaignEx f36997b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f36998c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ CopyOnWriteArrayList f36999d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f37000e;

        /* JADX INFO: renamed from: com.mbridge.msdk.reward.adapter.c$c$a */
        class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ CampaignEx f37002a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f37003b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ String f37004c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ String f37005d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ CopyOnWriteArrayList f37006e;

            /* JADX INFO: renamed from: com.mbridge.msdk.reward.adapter.c$c$a$a, reason: collision with other inner class name */
            class C0524a implements com.mbridge.msdk.reward.adapter.b.o {
                C0524a() {
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, com.mbridge.msdk.videocommon.a.C0572a c0572a, com.mbridge.msdk.foundation.error.b bVar) {
                    if (bVar != null) {
                        bVar.a("his_reason", "preload template failed is tpl :" + C0523c.this.f36998c);
                    }
                    if (C0523c.this.f36997b.getRsIgnoreCheckRule() != null && C0523c.this.f36997b.getRsIgnoreCheckRule().size() > 0 && C0523c.this.f36997b.getRsIgnoreCheckRule().contains(1)) {
                        o0.c("RewardMVVideoAdapter", "template download fail but hit ignoreCheckRule");
                        return;
                    }
                    a aVar = a.this;
                    c cVar = c.this;
                    cVar.a(aVar.f37004c, (List<CampaignEx>) cVar.V, c.this.f36985s, str2);
                    if (c.this.L != null) {
                        c.this.L.removeMessages(5);
                    }
                    if (c.this.f36976j == null || c.this.S) {
                        return;
                    }
                    c.this.S = false;
                    C0523c c0523c = C0523c.this;
                    if (c0523c.f36996a == null) {
                        c0523c.f36996a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    C0523c c0523c2 = C0523c.this;
                    c0523c2.f36996a.b(c0523c2.f36999d);
                    C0523c.this.f36996a.a(bVar);
                    c.this.f36976j.a(c.this.V, bVar, C0523c.this.f36996a);
                    o0.a("RewardMVVideoAdapter", "Campaign 下载失败： 非大模板，播放模板预加载失败 onVideoLoadFail");
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, String str4, String str5, com.mbridge.msdk.videocommon.a.C0572a c0572a) {
                    C0523c c0523c = C0523c.this;
                    if (c.this.a(c0523c.f36999d, c0523c.f36998c, c0523c.f37000e)) {
                        c cVar = c.this;
                        String str6 = cVar.f36968b;
                        a aVar = a.this;
                        cVar.a(str6, aVar.f37006e, (List<CampaignEx>) c.this.X, c.this.f36985s);
                        if (c.this.L != null) {
                            c.this.L.removeMessages(5);
                        }
                        if (c.this.f36976j == null || c.this.R) {
                            return;
                        }
                        c.this.R = true;
                        C0523c c0523c2 = C0523c.this;
                        com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = c0523c2.f36996a;
                        if (cVar2 != null) {
                            cVar2.b(c0523c2.f36999d);
                        }
                        com.mbridge.msdk.reward.adapter.a aVar2 = c.this.f36976j;
                        C0523c c0523c3 = C0523c.this;
                        aVar2.a(c0523c3.f36999d, c0523c3.f36996a);
                        return;
                    }
                    c cVar3 = c.this;
                    cVar3.a(str3, (List<CampaignEx>) cVar3.V, c.this.f36985s, str4);
                    if (c.this.L != null) {
                        c.this.L.removeMessages(5);
                    }
                    if (c.this.f36976j == null || c.this.S) {
                        return;
                    }
                    c.this.S = false;
                    com.mbridge.msdk.foundation.error.b bVarA = com.mbridge.msdk.foundation.error.a.a(880015, "errorCode: 3502 errorMessage: temp preload success but isReady false");
                    C0523c c0523c4 = C0523c.this;
                    if (c0523c4.f36996a == null) {
                        c0523c4.f36996a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    C0523c c0523c5 = C0523c.this;
                    c0523c5.f36996a.b(c0523c5.f36999d);
                    C0523c.this.f36996a.a(bVarA);
                    com.mbridge.msdk.reward.adapter.a aVar3 = c.this.f36976j;
                    C0523c c0523c6 = C0523c.this;
                    aVar3.a(c0523c6.f36999d, bVarA, c0523c6.f36996a);
                    o0.a("RewardMVVideoAdapter", "Campaign 下载成功： 非大模板，播放模板预加载成功,isReay false onVideoLoadFail");
                }
            }

            a(CampaignEx campaignEx, String str, String str2, String str3, CopyOnWriteArrayList copyOnWriteArrayList) {
                this.f37002a = campaignEx;
                this.f37003b = str;
                this.f37004c = str2;
                this.f37005d = str3;
                this.f37006e = copyOnWriteArrayList;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.mbridge.msdk.reward.adapter.b bVarB = com.mbridge.msdk.reward.adapter.b.b();
                boolean z10 = c.this.A;
                Handler handler = c.this.L;
                boolean z11 = c.this.f36984r;
                boolean z12 = c.this.f36985s;
                String strE = this.f37002a.getRewardTemplateMode().e();
                int i11 = c.this.f36983q;
                C0523c c0523c = C0523c.this;
                bVarB.a(z10, handler, z11, z12, null, strE, i11, c0523c.f36997b, c0523c.f36999d, H5DownLoadManager.getInstance().getH5ResAddress(this.f37002a.getRewardTemplateMode().e()), this.f37003b, this.f37004c, this.f37005d, this.f37002a.getRequestIdNotice(), c.this.f36978l, new C0524a());
            }
        }

        /* JADX INFO: renamed from: com.mbridge.msdk.reward.adapter.c$c$b */
        class b implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ String f37009a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f37010b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ CopyOnWriteArrayList f37011c;

            /* JADX INFO: renamed from: com.mbridge.msdk.reward.adapter.c$c$b$a */
            class a implements com.mbridge.msdk.reward.adapter.b.o {
                a() {
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, com.mbridge.msdk.videocommon.a.C0572a c0572a, com.mbridge.msdk.foundation.error.b bVar) {
                    if (bVar != null) {
                        bVar.a("his_reason", "errorCode: 3303 errorMessage: tpl temp preload failed");
                    }
                    if (C0523c.this.f36997b.getRsIgnoreCheckRule() != null && C0523c.this.f36997b.getRsIgnoreCheckRule().size() > 0 && C0523c.this.f36997b.getRsIgnoreCheckRule().contains(3)) {
                        o0.c("RewardMVVideoAdapter", "template download fail but hit ignoreCheckRule");
                        return;
                    }
                    b bVar2 = b.this;
                    c cVar = c.this;
                    cVar.a(bVar2.f37010b, (List<CampaignEx>) cVar.V, c.this.f36985s, str2);
                    if (c.this.L != null) {
                        c.this.L.removeMessages(5);
                    }
                    if (c.this.f36976j == null || c.this.S) {
                        return;
                    }
                    c.this.S = false;
                    C0523c c0523c = C0523c.this;
                    if (c0523c.f36996a == null) {
                        c0523c.f36996a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    C0523c c0523c2 = C0523c.this;
                    c0523c2.f36996a.b(c0523c2.f36999d);
                    C0523c.this.f36996a.a(bVar);
                    c.this.f36976j.a(c.this.V, bVar, C0523c.this.f36996a);
                    o0.a("RewardMVVideoAdapter", "Campaign 下载成功： 大模板预加载失败 onVideoLoadFail");
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, String str4, String str5, com.mbridge.msdk.videocommon.a.C0572a c0572a) {
                    C0523c c0523c = C0523c.this;
                    if (c.this.a(c0523c.f36999d, c0523c.f36998c, c0523c.f37000e)) {
                        c cVar = c.this;
                        String str6 = cVar.f36968b;
                        b bVar = b.this;
                        cVar.a(str6, bVar.f37011c, (List<CampaignEx>) c.this.X, c.this.f36985s);
                        if (c.this.L != null) {
                            c.this.L.removeMessages(5);
                        }
                        if (c.this.f36976j == null || c.this.R) {
                            return;
                        }
                        c.this.R = true;
                        C0523c c0523c2 = C0523c.this;
                        com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = c0523c2.f36996a;
                        if (cVar2 != null) {
                            cVar2.b(c0523c2.f36999d);
                        }
                        com.mbridge.msdk.reward.adapter.a aVar = c.this.f36976j;
                        C0523c c0523c3 = C0523c.this;
                        aVar.a(c0523c3.f36999d, c0523c3.f36996a);
                        return;
                    }
                    c cVar3 = c.this;
                    cVar3.a(str3, (List<CampaignEx>) cVar3.V, c.this.f36985s, str4);
                    if (c.this.L != null) {
                        c.this.L.removeMessages(5);
                    }
                    if (c.this.f36976j == null || c.this.S) {
                        return;
                    }
                    c.this.S = false;
                    com.mbridge.msdk.foundation.error.b bVarA = com.mbridge.msdk.foundation.error.a.a(880015, "errorCode: 3505 errorMessage: tpl temp preload success but isReady false");
                    C0523c c0523c4 = C0523c.this;
                    if (c0523c4.f36996a == null) {
                        c0523c4.f36996a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    C0523c c0523c5 = C0523c.this;
                    c0523c5.f36996a.b(c0523c5.f36999d);
                    C0523c.this.f36996a.a(bVarA);
                    c.this.f36976j.a(c.this.V, bVarA, C0523c.this.f36996a);
                    o0.a("RewardMVVideoAdapter", "Campaign 下载成功： 大模板预加载成功,isReady false onVideoLoadFail");
                }
            }

            b(String str, String str2, CopyOnWriteArrayList copyOnWriteArrayList) {
                this.f37009a = str;
                this.f37010b = str2;
                this.f37011c = copyOnWriteArrayList;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.mbridge.msdk.reward.adapter.b bVarB = com.mbridge.msdk.reward.adapter.b.b();
                boolean z10 = c.this.A;
                Handler handler = c.this.L;
                boolean z11 = c.this.f36984r;
                boolean z12 = c.this.f36985s;
                String str = this.f37009a;
                String requestIdNotice = C0523c.this.f36997b.getRequestIdNotice();
                String str2 = c.this.f36969c;
                String str3 = this.f37010b;
                String cMPTEntryUrl = C0523c.this.f36997b.getCMPTEntryUrl();
                int i11 = c.this.f36983q;
                C0523c c0523c = C0523c.this;
                bVarB.a(z10, handler, z11, z12, str, requestIdNotice, str2, str3, cMPTEntryUrl, i11, c0523c.f36997b, c0523c.f36999d, H5DownLoadManager.getInstance().getH5ResAddress(C0523c.this.f36997b.getCMPTEntryUrl()), this.f37010b, c.this.f36978l, new a(), false);
            }
        }

        /* JADX INFO: renamed from: com.mbridge.msdk.reward.adapter.c$c$c, reason: collision with other inner class name */
        class RunnableC0525c implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ CopyOnWriteArrayList f37014a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ com.mbridge.msdk.foundation.error.b f37015b;

            RunnableC0525c(CopyOnWriteArrayList copyOnWriteArrayList, com.mbridge.msdk.foundation.error.b bVar) {
                this.f37014a = copyOnWriteArrayList;
                this.f37015b = bVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                c cVar = c.this;
                cVar.a(cVar.f36968b, this.f37014a, c.this.f36985s, "");
                if (c.this.L != null) {
                    c.this.L.removeMessages(5);
                }
                if (c.this.S || c.this.f36976j == null) {
                    return;
                }
                c.this.S = false;
                C0523c c0523c = C0523c.this;
                if (c0523c.f36996a == null) {
                    c0523c.f36996a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                }
                C0523c c0523c2 = C0523c.this;
                c0523c2.f36996a.b(c0523c2.f36999d);
                com.mbridge.msdk.foundation.error.b bVar = this.f37015b;
                if (bVar != null) {
                    bVar.c("errorCode: 3201 errorMessage: campaign resource download failed");
                }
                C0523c.this.f36996a.a(this.f37015b);
                c.this.f36976j.a(this.f37014a, this.f37015b, C0523c.this.f36996a);
                o0.a("RewardMVVideoAdapter", "Campaign 下载失败：onVideoLoadFail");
            }
        }

        C0523c(CampaignEx campaignEx, boolean z10, CopyOnWriteArrayList copyOnWriteArrayList, int i11) {
            this.f36997b = campaignEx;
            this.f36998c = z10;
            this.f36999d = copyOnWriteArrayList;
            this.f37000e = i11;
            this.f36996a = com.mbridge.msdk.foundation.same.report.metrics.d.b().c().get(campaignEx.getLocalRequestId());
        }

        @Override // com.mbridge.msdk.reward.adapter.b.h
        public void a(String str, String str2, String str3, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
            c.this.O = true;
            if (this.f36998c) {
                if (!c.this.P || c.this.Q || c.this.L == null) {
                    return;
                }
                synchronized (c.this.f36981o) {
                    try {
                        if (c.this.Q) {
                            return;
                        }
                        c.this.Q = true;
                        c.this.L.post(new b(str3, str2, copyOnWriteArrayList));
                        return;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            for (CampaignEx campaignEx : copyOnWriteArrayList) {
                if (campaignEx != null && campaignEx.getRewardTemplateMode() != null && !TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e()) && !campaignEx.getRewardTemplateMode().e().contains(CampaignEx.KEY_IS_CMPT_ENTRY) && c.this.L != null) {
                    c.this.L.post(new a(campaignEx, str, str2, str3, copyOnWriteArrayList));
                } else if (c.this.a(this.f36999d, this.f36998c, this.f37000e)) {
                    c cVar = c.this;
                    cVar.a(cVar.f36968b, copyOnWriteArrayList, (List<CampaignEx>) c.this.X, c.this.f36985s);
                    if (c.this.L != null) {
                        c.this.L.removeMessages(5);
                    }
                    if (c.this.f36976j != null && !c.this.R) {
                        c.this.R = true;
                        com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = this.f36996a;
                        if (cVar2 != null) {
                            cVar2.b(this.f36999d);
                        }
                        c.this.f36976j.a(this.f36999d, this.f36996a);
                    }
                } else {
                    c cVar3 = c.this;
                    cVar3.a(str2, (List<CampaignEx>) cVar3.V, c.this.f36985s, str3);
                    if (c.this.L != null) {
                        c.this.L.removeMessages(5);
                    }
                    if (c.this.f36976j != null && !c.this.S) {
                        c.this.S = false;
                        com.mbridge.msdk.foundation.error.b bVarA = com.mbridge.msdk.foundation.error.a.a(880015, "errorCode: 3503 errorMessage: have no temp but isReady false");
                        if (this.f36996a == null) {
                            this.f36996a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                        }
                        this.f36996a.b(this.f36999d);
                        this.f36996a.a(bVarA);
                        c.this.f36976j.a(this.f36999d, bVarA, this.f36996a);
                        o0.a("RewardMVVideoAdapter", "Campaign 下载成功： 非大模板，不存在播放模板,isReay false onVideoLoadFail");
                    }
                }
            }
        }

        @Override // com.mbridge.msdk.reward.adapter.b.h
        public void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, com.mbridge.msdk.foundation.error.b bVar) {
            c.this.O = false;
            if (c.this.f36976j == null || c.this.L == null) {
                return;
            }
            c.this.L.post(new RunnableC0525c(copyOnWriteArrayList, bVar));
        }
    }

    class d implements com.mbridge.msdk.reward.adapter.b.n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        com.mbridge.msdk.foundation.same.report.metrics.c f37017a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CampaignEx f37018b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f37019c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ CopyOnWriteArrayList f37020d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f37021e;

        class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ String f37023a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ com.mbridge.msdk.foundation.error.b f37024b;

            a(String str, com.mbridge.msdk.foundation.error.b bVar) {
                this.f37023a = str;
                this.f37024b = bVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                c cVar = c.this;
                cVar.a(cVar.f36968b, (List<CampaignEx>) c.this.V, c.this.f36985s, this.f37023a);
                if (c.this.L != null) {
                    c.this.L.removeMessages(5);
                }
                if (c.this.S || c.this.f36976j == null) {
                    return;
                }
                c.this.S = false;
                com.mbridge.msdk.foundation.error.b bVar = this.f37024b;
                if (bVar != null) {
                    bVar.c("errorCode: 3202 errorMessage: temp resource download failed");
                }
                d dVar = d.this;
                if (dVar.f37017a == null) {
                    dVar.f37017a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                }
                d dVar2 = d.this;
                dVar2.f37017a.b(dVar2.f37020d);
                d.this.f37017a.a(this.f37024b);
                c.this.f36976j.a(c.this.V, this.f37024b, d.this.f37017a);
                o0.a("RewardMVVideoAdapter", "播放模板下载失败，非大模板 onVideoLoadFail");
            }
        }

        class b implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ String f37026a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ com.mbridge.msdk.foundation.error.b f37027b;

            b(String str, com.mbridge.msdk.foundation.error.b bVar) {
                this.f37026a = str;
                this.f37027b = bVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                c cVar = c.this;
                cVar.a(cVar.f36968b, (List<CampaignEx>) c.this.V, c.this.f36985s, this.f37026a);
                if (c.this.L != null) {
                    c.this.L.removeMessages(5);
                }
                if (c.this.S || c.this.f36976j == null) {
                    return;
                }
                c.this.S = false;
                com.mbridge.msdk.foundation.error.b bVar = this.f37027b;
                if (bVar != null) {
                    bVar.c("errorCode: 3203 errorMessage: tpl temp resource download failed");
                }
                d dVar = d.this;
                if (dVar.f37017a == null) {
                    dVar.f37017a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                }
                d dVar2 = d.this;
                dVar2.f37017a.b(dVar2.f37020d);
                d.this.f37017a.a(this.f37027b);
                c.this.f36976j.a(c.this.V, this.f37027b, d.this.f37017a);
                o0.a("RewardMVVideoAdapter", "播放模板下载失败，大模板，nscpt 1 onVideoLoadFail");
            }
        }

        d(CampaignEx campaignEx, boolean z10, CopyOnWriteArrayList copyOnWriteArrayList, int i11) {
            this.f37018b = campaignEx;
            this.f37019c = z10;
            this.f37020d = copyOnWriteArrayList;
            this.f37021e = i11;
            this.f37017a = com.mbridge.msdk.foundation.same.report.metrics.d.b().c().get(campaignEx.getLocalRequestId());
        }

        @Override // com.mbridge.msdk.reward.adapter.b.n
        public void a(String str, String str2, com.mbridge.msdk.foundation.error.b bVar) {
            o0.a("RewardMVVideoAdapter", "template 下载失败： ");
            if (bVar != null) {
                bVar.c("errorCode: 3202 errorMessage: temp resource download failed");
            }
            if (!this.f37019c && c.this.f36976j != null && c.this.L != null) {
                o0.a("RewardMVVideoAdapter", "播放模板下载失败，非大模板");
                if (this.f37018b.getRsIgnoreCheckRule() == null || this.f37018b.getRsIgnoreCheckRule().size() <= 0 || !this.f37018b.getRsIgnoreCheckRule().contains(1)) {
                    c.this.L.post(new a(str2, bVar));
                    return;
                } else {
                    o0.c("RewardMVVideoAdapter", "template download fail but hit ignoreCheckRule");
                    return;
                }
            }
            if (this.f37021e == 1) {
                if (this.f37018b.getRsIgnoreCheckRule() != null && this.f37018b.getRsIgnoreCheckRule().size() > 0) {
                    if (this.f37018b.getRsIgnoreCheckRule().contains(3)) {
                        o0.c("RewardMVVideoAdapter", "tpl download fail but hit ignoreCheckRule");
                        return;
                    } else if (this.f37018b.getCMPTEntryUrl().equals(this.f37018b.getendcard_url()) && this.f37018b.getRsIgnoreCheckRule().contains(2)) {
                        o0.c("RewardMVVideoAdapter", "endcard download fail but hit ignoreCheckRule at 3203");
                        return;
                    }
                }
                if (c.this.f36976j == null || c.this.L == null) {
                    return;
                }
                c.this.L.post(new b(str2, bVar));
            }
        }

        @Override // com.mbridge.msdk.reward.adapter.b.n
        public void a(String str, String str2, String str3, String str4) {
        }
    }

    class e implements com.mbridge.msdk.reward.adapter.b.n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        com.mbridge.msdk.foundation.same.report.metrics.c f37029a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CampaignEx f37030b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CopyOnWriteArrayList f37031c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f37032d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f37033e;

        class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ String f37035a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f37036b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ String f37037c;

            /* JADX INFO: renamed from: com.mbridge.msdk.reward.adapter.c$e$a$a, reason: collision with other inner class name */
            class C0526a implements com.mbridge.msdk.reward.adapter.b.o {
                C0526a() {
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, com.mbridge.msdk.videocommon.a.C0572a c0572a, com.mbridge.msdk.foundation.error.b bVar) {
                    o0.a("RewardMVVideoAdapter", "大模板业务，大模板预加载失败");
                    o0.b("HBOPTIMIZE", "模板加载失败 requestId " + str2);
                    a aVar = a.this;
                    c cVar = c.this;
                    cVar.a(aVar.f37037c, (List<CampaignEx>) cVar.V, c.this.f36985s, str2);
                    if (c.this.L != null) {
                        c.this.L.removeMessages(5);
                    }
                    if (c.this.f36976j == null || c.this.S) {
                        return;
                    }
                    c.this.S = false;
                    e eVar = e.this;
                    if (eVar.f37029a == null) {
                        eVar.f37029a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    e eVar2 = e.this;
                    eVar2.f37029a.b(eVar2.f37031c);
                    e.this.f37029a.a(bVar);
                    c.this.f36976j.a(c.this.V, bVar, e.this.f37029a);
                    o0.a("RewardMVVideoAdapter", "大模板业务，大模板预加载失败 onVideoLoadFail");
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, String str4, String str5, com.mbridge.msdk.videocommon.a.C0572a c0572a) {
                    o0.a("HBOPTIMIZE", "模板加载成功 requestId " + str4);
                    e eVar = e.this;
                    if (c.this.a(eVar.f37031c, eVar.f37032d, eVar.f37033e)) {
                        c cVar = c.this;
                        cVar.a(cVar.f36968b, (List<CampaignEx>) c.this.V, (List<CampaignEx>) c.this.X, c.this.f36985s);
                        if (c.this.L != null) {
                            c.this.L.removeMessages(5);
                        }
                        if (c.this.f36976j == null || c.this.R) {
                            return;
                        }
                        c.this.R = true;
                        e eVar2 = e.this;
                        com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = eVar2.f37029a;
                        if (cVar2 != null) {
                            cVar2.b(eVar2.f37031c);
                        }
                        com.mbridge.msdk.reward.adapter.a aVar = c.this.f36976j;
                        e eVar3 = e.this;
                        aVar.a(eVar3.f37031c, eVar3.f37029a);
                        return;
                    }
                    c cVar3 = c.this;
                    cVar3.a(str3, (List<CampaignEx>) cVar3.V, c.this.f36985s, a.this.f37035a);
                    if (c.this.L != null) {
                        c.this.L.removeMessages(5);
                    }
                    if (c.this.f36976j == null || c.this.S) {
                        return;
                    }
                    c.this.S = false;
                    com.mbridge.msdk.foundation.error.b bVarA = com.mbridge.msdk.foundation.error.a.a(880008, "errorCode: 3505 errorMessage: tpl temp preload success but isReady false");
                    e eVar4 = e.this;
                    if (eVar4.f37029a == null) {
                        eVar4.f37029a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    e eVar5 = e.this;
                    eVar5.f37029a.b(eVar5.f37031c);
                    e.this.f37029a.a(bVarA);
                    c.this.f36976j.a(c.this.V, bVarA, e.this.f37029a);
                    o0.a("RewardMVVideoAdapter", "大模板业务，大模板预加载成功 isReady false  onVideoLoadFail");
                }
            }

            a(String str, String str2, String str3) {
                this.f37035a = str;
                this.f37036b = str2;
                this.f37037c = str3;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.mbridge.msdk.reward.adapter.b bVarB = com.mbridge.msdk.reward.adapter.b.b();
                boolean z10 = c.this.A;
                Handler handler = c.this.L;
                boolean z11 = c.this.f36984r;
                boolean z12 = c.this.f36985s;
                String str = this.f37035a;
                String requestIdNotice = e.this.f37030b.getRequestIdNotice();
                String str2 = this.f37036b;
                String str3 = this.f37037c;
                String cMPTEntryUrl = e.this.f37030b.getCMPTEntryUrl();
                int i11 = c.this.f36983q;
                e eVar = e.this;
                bVarB.a(z10, handler, z11, z12, str, requestIdNotice, str2, str3, cMPTEntryUrl, i11, eVar.f37030b, eVar.f37031c, H5DownLoadManager.getInstance().getH5ResAddress(e.this.f37030b.getCMPTEntryUrl()), this.f37037c, c.this.f36978l, new C0526a(), false);
            }
        }

        e(CampaignEx campaignEx, CopyOnWriteArrayList copyOnWriteArrayList, boolean z10, int i11) {
            this.f37030b = campaignEx;
            this.f37031c = copyOnWriteArrayList;
            this.f37032d = z10;
            this.f37033e = i11;
            this.f37029a = com.mbridge.msdk.foundation.same.report.metrics.d.b().c().get(campaignEx.getLocalRequestId());
        }

        @Override // com.mbridge.msdk.reward.adapter.b.n
        public void a(String str, String str2, com.mbridge.msdk.foundation.error.b bVar) {
            o0.a("RewardMVVideoAdapter", "大模板业务，大模板下载失败");
            if (this.f37030b.getRsIgnoreCheckRule() != null && this.f37030b.getRsIgnoreCheckRule().size() > 0) {
                if (this.f37030b.getRsIgnoreCheckRule().contains(3)) {
                    o0.c("RewardMVVideoAdapter", "tpl download fail but hit ignoreCheckRule");
                    return;
                } else if (this.f37030b.getCMPTEntryUrl().equals(this.f37030b.getendcard_url()) && this.f37030b.getRsIgnoreCheckRule().contains(2)) {
                    o0.c("RewardMVVideoAdapter", "endcard download fail but hit ignoreCheckRule at 3203");
                    return;
                }
            }
            c cVar = c.this;
            cVar.a(cVar.f36968b, (List<CampaignEx>) c.this.V, c.this.f36985s, str2);
            c.this.P = false;
            if (c.this.L != null) {
                c.this.L.removeMessages(5);
            }
            if (c.this.f36976j == null || c.this.S) {
                return;
            }
            c.this.S = false;
            if (bVar != null) {
                bVar.c("errorCode: 3203 errorMessage: tpl temp resource download failed");
            }
            if (this.f37029a == null) {
                this.f37029a = new com.mbridge.msdk.foundation.same.report.metrics.c();
            }
            this.f37029a.b(this.f37031c);
            this.f37029a.a(bVar);
            c.this.f36976j.a(c.this.V, bVar, this.f37029a);
            o0.a("RewardMVVideoAdapter", "大模板业务，大模板下载失败 onVideoLoadFail");
        }

        @Override // com.mbridge.msdk.reward.adapter.b.n
        public void a(String str, String str2, String str3, String str4) {
            o0.a("RewardMVVideoAdapter", "大模板业务，大模板下载成功");
            c.this.P = true;
            if (!c.this.O || c.this.Q || c.this.L == null) {
                return;
            }
            synchronized (c.this.f36981o) {
                try {
                    if (c.this.Q) {
                        return;
                    }
                    c.this.Q = true;
                    c.this.L.post(new a(str3, str, str2));
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    class f extends com.mbridge.msdk.foundation.same.c.a {
        f() {
        }

        @Override // com.mbridge.msdk.foundation.same.c.a
        public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            com.mbridge.msdk.reward.report.metrics.a.a().a(str, cVar);
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CampaignUnit f37041a;

        g(CampaignUnit campaignUnit) {
            this.f37041a = campaignUnit;
        }

        @Override // java.lang.Runnable
        public void run() {
            j.a(com.mbridge.msdk.foundation.db.g.a(c.this.f36967a)).a();
            CampaignUnit campaignUnit = this.f37041a;
            if (campaignUnit == null || campaignUnit.getAds() == null || this.f37041a.getAds().size() <= 0) {
                return;
            }
            c.this.d(this.f37041a.getAds());
        }
    }

    public class h implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f37043a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private com.mbridge.msdk.foundation.same.report.metrics.c f37044b;

        public h(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            this.f37043a = str;
            this.f37044b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (c.this.E) {
                    return;
                }
                c.this.F = true;
                if (c.this.L != null) {
                    Message messageObtainMessage = c.this.L.obtainMessage();
                    messageObtainMessage.obj = this.f37043a;
                    messageObtainMessage.what = 2;
                    if (this.f37044b != null) {
                        Bundle bundle = new Bundle();
                        bundle.putString("metrics_data_lrid", this.f37044b.o());
                        messageObtainMessage.setData(bundle);
                    }
                    c.this.L.sendMessage(messageObtainMessage);
                }
            } catch (Exception e11) {
                o0.b("RewardMVVideoAdapter", e11.getMessage());
            }
        }
    }

    public class i implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f37046a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private com.mbridge.msdk.foundation.same.report.metrics.c f37047b;

        public i(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            this.f37046a = str;
            this.f37047b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (com.mbridge.msdk.util.b.a()) {
                    c cVar = c.this;
                    cVar.f36987u = com.mbridge.msdk.b.a(cVar.f36968b, c.this.f36967a);
                }
                c cVar2 = c.this;
                cVar2.f36974h = t0.a(cVar2.f36967a, c.this.f36968b);
                if (c.this.F) {
                    return;
                }
                if (c.this.D != null && c.this.L != null) {
                    c.this.L.removeCallbacks(c.this.D);
                }
                c.this.E = true;
                if (c.this.L != null) {
                    Message messageObtainMessage = c.this.L.obtainMessage();
                    messageObtainMessage.obj = this.f37046a;
                    messageObtainMessage.what = 1;
                    if (this.f37047b != null) {
                        Bundle bundle = new Bundle();
                        bundle.putString("metrics_data_lrid", this.f37047b.o());
                        messageObtainMessage.setData(bundle);
                    }
                    c.this.L.sendMessage(messageObtainMessage);
                }
                if (TextUtils.isEmpty(c.this.f36974h)) {
                    return;
                }
                o0.b("RewardMVVideoAdapter", "excludeId : " + c.this.f36974h);
            } catch (Exception e11) {
                o0.b("RewardMVVideoAdapter", e11.getMessage());
            }
        }
    }

    public c(Context context, String str, String str2) {
        try {
            this.f36967a = context.getApplicationContext();
            this.f36968b = str2;
            this.f36969c = str;
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.mbridge.msdk.foundation.same.report.metrics.c a(Message message) {
        com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
        if (message == null) {
            return cVar;
        }
        try {
            Bundle data = message.getData();
            return data != null ? com.mbridge.msdk.foundation.same.report.metrics.d.b().a(data.getString("metrics_data_lrid")) : cVar;
        } catch (Exception e11) {
            if (!MBridgeConstans.DEBUG) {
                return cVar;
            }
            e11.printStackTrace();
            return cVar;
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0082  */
    /* JADX WARN: Code duplicated, block: B:25:0x0085  */
    /* JADX WARN: Code duplicated, block: B:28:0x009a A[Catch: Exception -> 0x0021, TRY_LEAVE, TryCatch #1 {Exception -> 0x0021, blocks: (B:5:0x0009, B:7:0x000f, B:9:0x0016, B:12:0x0024, B:14:0x0032, B:21:0x004c, B:22:0x0052, B:26:0x0087, B:28:0x009a), top: B:36:0x0009 }] */
    private com.mbridge.msdk.foundation.same.report.metrics.c a(List<CampaignEx> list) {
        int i11;
        com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
        String localRequestId = "";
        if (list != null) {
            try {
                if (list.size() > 0) {
                    localRequestId = list.get(0) != null ? list.get(0).getLocalRequestId() : "";
                    if (com.mbridge.msdk.foundation.same.report.metrics.d.b().c().containsKey(localRequestId)) {
                        com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = com.mbridge.msdk.foundation.same.report.metrics.d.b().c().get(localRequestId);
                        if (cVar2 == null) {
                            try {
                                cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                            } catch (Exception e11) {
                                e = e11;
                                cVar = cVar2;
                                if (MBridgeConstans.DEBUG) {
                                    e.printStackTrace();
                                }
                            }
                        } else {
                            cVar = cVar2;
                        }
                    }
                    cVar.h(localRequestId);
                    cVar.b(list);
                }
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("cache", 1);
                eVar.a(CampaignEx.JSON_KEY_HB, 1);
                eVar.a("auto_load", 2);
                cVar.a("2000127", eVar);
                cVar.a("2000048", eVar);
                if (this.f36984r) {
                    i11 = MBSupportMuteAdType.INTERSTITIAL_VIDEO;
                } else {
                    i11 = 94;
                }
                cVar.a(i11);
                cVar.g("1");
                cVar.e("2");
                if (!TextUtils.isEmpty(localRequestId)) {
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().c().put(localRequestId, cVar);
                }
            } catch (Exception e12) {
                e = e12;
            }
        } else {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar2 = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar2.a("cache", 1);
            eVar2.a(CampaignEx.JSON_KEY_HB, 1);
            eVar2.a("auto_load", 2);
            cVar.a("2000127", eVar2);
            cVar.a("2000048", eVar2);
            if (this.f36984r) {
                i11 = MBSupportMuteAdType.INTERSTITIAL_VIDEO;
            } else {
                i11 = 94;
            }
            cVar.a(i11);
            cVar.g("1");
            cVar.e("2");
            if (!TextUtils.isEmpty(localRequestId)) {
                com.mbridge.msdk.foundation.same.report.metrics.d.b().c().put(localRequestId, cVar);
            }
        }
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:12:0x0043  */
    public com.mbridge.msdk.reward.adapter.d a(CampaignUnit campaignUnit) throws Throwable {
        boolean z10;
        this.f36991y = campaignUnit;
        com.mbridge.msdk.reward.adapter.d dVarB = b(campaignUnit);
        new com.mbridge.msdk.reward.candidate.a(this.f36968b, this.f36984r).a(dVarB.b(), this.C, this, this.f36968b);
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListB = dVarB.b();
        if (dVarB.e()) {
            if (dVarB.d() == 0) {
                copyOnWriteArrayListB.clear();
            } else if (dVarB.a()) {
                b(campaignUnit.getMetricsData());
            }
            if (dVarB.c() != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = true;
        }
        a(copyOnWriteArrayListB, true, false, z10);
        return dVarB;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x006f A[EDGE_INSN: B:26:0x006f->B:27:0x0072 BREAK  A[LOOP:0: B:18:0x004e->B:40:0x004e]] */
    private void a() {
        String strD;
        String strB;
        List<com.mbridge.msdk.foundation.entity.d> listA = com.mbridge.msdk.foundation.db.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(this.f36968b, this.H);
        if (listA != null) {
            int size = listA.size();
            String strD2 = com.mbridge.msdk.foundation.same.buffer.b.d(this.f36968b);
            if (size == 0) {
                return;
            }
            try {
                if (size != 1) {
                    if (!TextUtils.isEmpty(strD2)) {
                        Iterator<com.mbridge.msdk.foundation.entity.d> it = listA.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                strB = "";
                                strD = "";
                                break;
                            }
                            com.mbridge.msdk.foundation.entity.d next = it.next();
                            if (next != null && strD2.equals(next.a())) {
                                strD = next.d();
                                strB = next.b();
                                break;
                            }
                        }
                    } else {
                        strB = "";
                        strD = "";
                        break;
                    }
                } else if (listA.get(0) == null) {
                    strB = "";
                    strD = "";
                    break;
                } else {
                    strD = listA.get(0).d();
                    strB = listA.get(0).b();
                }
                if (TextUtils.isEmpty(strD) || !strD.equals(this.H)) {
                    return;
                }
                com.mbridge.msdk.foundation.db.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).b(strD2, this.f36968b);
                com.mbridge.msdk.foundation.same.buffer.b.a(this.f36968b, this.H, strB);
                com.mbridge.msdk.foundation.same.buffer.b.e(this.f36968b);
            } catch (Exception e11) {
                o0.a("RewardMVVideoAdapter", e11.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i11, String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (this.L != null) {
            if (TextUtils.isEmpty(str)) {
                str = "load fail exception";
            }
            Message messageObtain = Message.obtain();
            messageObtain.what = 4;
            messageObtain.obj = str;
            messageObtain.arg1 = i11;
            if (cVar != null) {
                cVar.b(true);
                Bundle bundle = new Bundle();
                bundle.putString("metrics_data_lrid", cVar.o());
                messageObtain.setData(bundle);
            }
            if (str.contains("exception")) {
                this.L.sendMessageAtFrontOfQueue(messageObtain);
            } else {
                this.L.sendMessage(messageObtain);
            }
        }
    }

    private void a(j jVar, CampaignEx campaignEx) {
        if (jVar == null || jVar.a(campaignEx.getId())) {
            return;
        }
        com.mbridge.msdk.foundation.entity.g gVar = new com.mbridge.msdk.foundation.entity.g();
        gVar.a(campaignEx.getId());
        gVar.b(campaignEx.getFca());
        gVar.c(campaignEx.getFcb());
        gVar.a(0);
        gVar.d(0);
        gVar.a(System.currentTimeMillis());
        jVar.b(gVar);
    }

    private void a(CampaignEx campaignEx) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = new CopyOnWriteArrayList<>(this.f36992z);
        boolean zIsEmpty = TextUtils.isEmpty(campaignEx.getCMPTEntryUrl());
        boolean z10 = !zIsEmpty;
        int nscpt = campaignEx.getNscpt();
        this.O = false;
        this.P = false;
        synchronized (this.f36981o) {
            try {
                if (this.Q) {
                    this.Q = false;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.S = false;
        this.R = false;
        if (this.f36985s) {
            com.mbridge.msdk.foundation.db.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(campaignEx.getBidToken(), campaignEx.getCampaignUnitId(), campaignEx.getEncryptPrice());
        }
        com.mbridge.msdk.reward.adapter.b.b().a(this.f36967a, z10, nscpt, this.f36985s, this.f36984r ? MBSupportMuteAdType.INTERSTITIAL_VIDEO : 94, this.f36969c, this.f36968b, campaignEx.getRequestId(), copyOnWriteArrayList, new C0523c(campaignEx, z10, copyOnWriteArrayList, nscpt), new d(campaignEx, z10, copyOnWriteArrayList, nscpt));
        if (zIsEmpty) {
            return;
        }
        com.mbridge.msdk.reward.adapter.b.b().a(this.f36967a, campaignEx, this.f36969c, this.f36968b, campaignEx.getRequestId(), new e(campaignEx, copyOnWriteArrayList, z10, nscpt));
    }

    private void a(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        try {
            com.mbridge.msdk.foundation.same.c.a(campaignEx, this.f36967a, cVar, new f());
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }

    private void a(CampaignUnit campaignUnit, List<CampaignEx> list) {
        com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new g(campaignUnit));
    }

    private void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (this.L != null) {
            Message messageObtain = Message.obtain();
            messageObtain.what = 3;
            if (cVar != null) {
                Bundle bundle = new Bundle();
                bundle.putString("metrics_data_lrid", cVar.o());
                messageObtain.setData(bundle);
            }
            this.L.sendMessage(messageObtain);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:17:0x002a A[Catch: Exception -> 0x0027, TryCatch #0 {Exception -> 0x0027, blocks: (B:4:0x0004, B:6:0x000a, B:14:0x0021, B:18:0x002f, B:20:0x004d, B:22:0x0055, B:24:0x0059, B:27:0x0062, B:29:0x007b, B:28:0x0070, B:30:0x0091, B:17:0x002a), top: B:36:0x0004 }] */
    public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar, int i11) {
        Object objA;
        if (cVar != null) {
            try {
                if (cVar.A()) {
                    return;
                }
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                if (i11 != 3 && i11 != 880023 && i11 != 880041) {
                    switch (i11) {
                        case 10:
                        case 11:
                        case 12:
                            eVar.a("result", "2");
                            break;
                        default:
                            eVar.a("result", "1");
                            break;
                    }
                } else {
                    eVar.a("result", "2");
                }
                eVar.a("timeout", this.f36972f + "");
                com.mbridge.msdk.foundation.error.b bVarP = cVar.p();
                if (bVarP != null && (objA = bVarP.a("campaign_request_error")) != null && (objA instanceof com.mbridge.msdk.foundation.same.net.exception.a)) {
                    if (((com.mbridge.msdk.foundation.same.net.exception.a) objA).f35431c != null) {
                        eVar.a("code", Integer.valueOf(((com.mbridge.msdk.foundation.same.net.exception.a) objA).f35431c.f35452d));
                    } else {
                        eVar.a("code", Integer.valueOf(bVarP.b()));
                    }
                    eVar.a("reason", bVarP.g());
                    eVar.a("err_desc", bVarP.d());
                    cVar.a((com.mbridge.msdk.foundation.error.b) null);
                }
                eVar.a("hst", k());
                eVar.a("126_exclude", 1);
                cVar.a("2000126", eVar);
                com.mbridge.msdk.reward.report.metrics.a.a().a("2000126", cVar);
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    e11.printStackTrace();
                }
            }
        }
    }

    private void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar, com.mbridge.msdk.foundation.same.report.metrics.e eVar, List<CampaignEx> list) {
        if (cVar != null) {
            if (list != null) {
                try {
                    if (list.size() > 0) {
                        cVar.b(list);
                        CampaignEx campaignEx = list.get(0);
                        if (campaignEx != null) {
                            cVar.h(campaignEx.getLocalRequestId());
                        }
                        cVar.b(list);
                    }
                } catch (Exception e11) {
                    if (MBridgeConstans.DEBUG) {
                        e11.printStackTrace();
                        return;
                    }
                    return;
                }
            }
            a(false, cVar, eVar);
        }
    }

    private void a(String str) {
        if (y0.b(str)) {
            com.mbridge.msdk.reward.controller.a.f37064c0 = str;
        }
    }

    private void a(String str, String str2, List<CampaignEx> list) {
        if (com.mbridge.msdk.videocommon.cache.a.a() != null) {
            com.mbridge.msdk.videocommon.cache.a.a().a(str, str2, list);
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0031  */
    private void a(String str, List<CampaignEx> list, List<CampaignEx> list2) {
        CampaignEx campaignEx;
        String requestId;
        int vcn;
        String bidToken;
        String localRequestId = "";
        if (list != null) {
            try {
                if (list.size() <= 0 || (campaignEx = list.get(0)) == null) {
                    vcn = 1;
                    requestId = "";
                    bidToken = requestId;
                } else {
                    requestId = campaignEx.getRequestId();
                    vcn = campaignEx.getVcn();
                    bidToken = campaignEx.getBidToken();
                    if (TextUtils.isEmpty(campaignEx.getNLRid())) {
                        localRequestId = campaignEx.getLocalRequestId();
                    }
                }
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    e11.printStackTrace();
                    return;
                }
                return;
            }
        } else {
            vcn = 1;
            requestId = "";
            bidToken = requestId;
        }
        if (com.mbridge.msdk.videocommon.cache.a.a() != null) {
            com.mbridge.msdk.videocommon.cache.a.a().c(str, localRequestId);
            com.mbridge.msdk.videocommon.cache.a.a().b(str);
            com.mbridge.msdk.videocommon.cache.a.a().a(str, localRequestId);
        }
        if (com.mbridge.msdk.videocommon.cache.a.a() != null) {
            com.mbridge.msdk.videocommon.cache.a.a().a(str, vcn);
        }
        if (list != null && list.size() > 0) {
            com.mbridge.msdk.reward.controller.a.a(requestId, bidToken);
            for (CampaignEx campaignEx2 : list) {
                if (campaignEx2 != null) {
                    com.mbridge.msdk.foundation.same.buffer.b.a(campaignEx2.getCampaignUnitId(), campaignEx2.getRequestId(), campaignEx2.getId(), campaignEx2.getPlct(), campaignEx2.getPlctb(), campaignEx2.getTimestamp(), campaignEx2.getLocalRequestId());
                }
            }
        }
        if (list2 != null && list2.size() > 0) {
            for (CampaignEx campaignEx3 : list2) {
                if (campaignEx3 != null) {
                    com.mbridge.msdk.foundation.same.buffer.b.c(campaignEx3.getCampaignUnitId(), campaignEx3.getRequestId());
                }
            }
        }
        com.mbridge.msdk.foundation.same.buffer.b.e(str);
        com.mbridge.msdk.foundation.db.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, List<CampaignEx> list, List<CampaignEx> list2, boolean z10) {
        com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d())).a(str, list, list2, z10);
        if (list2 != null && list2.size() > 0) {
            for (CampaignEx campaignEx : list2) {
                if (campaignEx.getRewardTemplateMode() != null && !TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e())) {
                    com.mbridge.msdk.videocommon.a.e(str + "_" + campaignEx.getId() + "_" + campaignEx.getRequestId() + "_" + campaignEx.getRewardTemplateMode().e());
                    com.mbridge.msdk.videocommon.a.b(campaignEx.getAdType(), campaignEx);
                }
            }
        }
        if (z10) {
            a(str, list, list2);
        }
        if (list == null || list.size() <= 0) {
            return;
        }
        try {
            CampaignEx campaignEx2 = list.get(0);
            com.mbridge.msdk.reward.candidate.a aVar = new com.mbridge.msdk.reward.candidate.a(str, this.f36984r);
            if (campaignEx2 == null || !TextUtils.isEmpty(campaignEx2.getNLRid())) {
                return;
            }
            aVar.a(campaignEx2.getLocalRequestId(), campaignEx2.getRequestId(), 1, campaignEx2.getEcppv());
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, List<CampaignEx> list, boolean z10, String str2) {
        if (TextUtils.isEmpty(str) || list == null || list.size() <= 0) {
            com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d())).a(str, (CampaignEx) null, z10, str2);
            return;
        }
        CampaignEx campaignEx = list.get(0);
        if (campaignEx == null || TextUtils.isEmpty(campaignEx.getEcppv()) || TextUtils.isEmpty(str2)) {
            com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d())).a(str, list, z10);
        } else {
            com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d())).a(str, (CampaignEx) null, z10, str2);
        }
    }

    private void a(boolean z10, com.mbridge.msdk.foundation.same.report.metrics.c cVar, com.mbridge.msdk.foundation.same.report.metrics.e eVar) {
        if (eVar == null) {
            eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        }
        cVar.m(this.f36968b);
        cVar.a(this.f36984r ? MBSupportMuteAdType.INTERSTITIAL_VIDEO : 94);
        eVar.a("result", Integer.valueOf(z10 ? 1 : 2));
        eVar.a("bid_tk", this.C);
        eVar.a(CampaignEx.JSON_KEY_HB, Integer.valueOf(this.f36985s ? 1 : 0));
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
            }
            cVar.b(list);
        }
        a(z10, cVar, (com.mbridge.msdk.foundation.same.report.metrics.e) null);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01c8 A[Catch: all -> 0x0023, Exception -> 0x0026, TryCatch #1 {all -> 0x0023, blocks: (B:8:0x001b, B:10:0x001f, B:16:0x002b, B:18:0x0031, B:20:0x003b, B:22:0x0048, B:24:0x0052, B:25:0x0057, B:27:0x005d, B:28:0x006e, B:30:0x0074, B:31:0x007c, B:33:0x0081, B:37:0x008c, B:39:0x0098, B:41:0x00a6, B:77:0x0167, B:79:0x0176, B:81:0x017c, B:83:0x0182, B:126:0x0228, B:85:0x018b, B:86:0x018e, B:76:0x0164, B:45:0x00b3, B:48:0x00be, B:87:0x018f, B:89:0x0197, B:91:0x019d, B:93:0x01a7, B:98:0x01bc, B:99:0x01c1, B:101:0x01c8, B:103:0x01ce, B:107:0x01dd, B:108:0x01e0, B:110:0x01e8, B:117:0x0215, B:111:0x01ec, B:113:0x01f5, B:115:0x01fb, B:116:0x020a, B:96:0x01b2), top: B:144:0x001b }] */
    /* JADX WARN: Code duplicated, block: B:105:0x01da  */
    /* JADX WARN: Code duplicated, block: B:106:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:110:0x01e8 A[Catch: all -> 0x0023, Exception -> 0x0026, TryCatch #1 {all -> 0x0023, blocks: (B:8:0x001b, B:10:0x001f, B:16:0x002b, B:18:0x0031, B:20:0x003b, B:22:0x0048, B:24:0x0052, B:25:0x0057, B:27:0x005d, B:28:0x006e, B:30:0x0074, B:31:0x007c, B:33:0x0081, B:37:0x008c, B:39:0x0098, B:41:0x00a6, B:77:0x0167, B:79:0x0176, B:81:0x017c, B:83:0x0182, B:126:0x0228, B:85:0x018b, B:86:0x018e, B:76:0x0164, B:45:0x00b3, B:48:0x00be, B:87:0x018f, B:89:0x0197, B:91:0x019d, B:93:0x01a7, B:98:0x01bc, B:99:0x01c1, B:101:0x01c8, B:103:0x01ce, B:107:0x01dd, B:108:0x01e0, B:110:0x01e8, B:117:0x0215, B:111:0x01ec, B:113:0x01f5, B:115:0x01fb, B:116:0x020a, B:96:0x01b2), top: B:144:0x001b }] */
    /* JADX WARN: Code duplicated, block: B:111:0x01ec A[Catch: all -> 0x0023, Exception -> 0x0026, TryCatch #1 {all -> 0x0023, blocks: (B:8:0x001b, B:10:0x001f, B:16:0x002b, B:18:0x0031, B:20:0x003b, B:22:0x0048, B:24:0x0052, B:25:0x0057, B:27:0x005d, B:28:0x006e, B:30:0x0074, B:31:0x007c, B:33:0x0081, B:37:0x008c, B:39:0x0098, B:41:0x00a6, B:77:0x0167, B:79:0x0176, B:81:0x017c, B:83:0x0182, B:126:0x0228, B:85:0x018b, B:86:0x018e, B:76:0x0164, B:45:0x00b3, B:48:0x00be, B:87:0x018f, B:89:0x0197, B:91:0x019d, B:93:0x01a7, B:98:0x01bc, B:99:0x01c1, B:101:0x01c8, B:103:0x01ce, B:107:0x01dd, B:108:0x01e0, B:110:0x01e8, B:117:0x0215, B:111:0x01ec, B:113:0x01f5, B:115:0x01fb, B:116:0x020a, B:96:0x01b2), top: B:144:0x001b }] */
    /* JADX WARN: Code duplicated, block: B:113:0x01f5 A[Catch: all -> 0x0023, Exception -> 0x0026, TryCatch #1 {all -> 0x0023, blocks: (B:8:0x001b, B:10:0x001f, B:16:0x002b, B:18:0x0031, B:20:0x003b, B:22:0x0048, B:24:0x0052, B:25:0x0057, B:27:0x005d, B:28:0x006e, B:30:0x0074, B:31:0x007c, B:33:0x0081, B:37:0x008c, B:39:0x0098, B:41:0x00a6, B:77:0x0167, B:79:0x0176, B:81:0x017c, B:83:0x0182, B:126:0x0228, B:85:0x018b, B:86:0x018e, B:76:0x0164, B:45:0x00b3, B:48:0x00be, B:87:0x018f, B:89:0x0197, B:91:0x019d, B:93:0x01a7, B:98:0x01bc, B:99:0x01c1, B:101:0x01c8, B:103:0x01ce, B:107:0x01dd, B:108:0x01e0, B:110:0x01e8, B:117:0x0215, B:111:0x01ec, B:113:0x01f5, B:115:0x01fb, B:116:0x020a, B:96:0x01b2), top: B:144:0x001b }] */
    /* JADX WARN: Code duplicated, block: B:116:0x020a A[Catch: all -> 0x0023, Exception -> 0x0026, TryCatch #1 {all -> 0x0023, blocks: (B:8:0x001b, B:10:0x001f, B:16:0x002b, B:18:0x0031, B:20:0x003b, B:22:0x0048, B:24:0x0052, B:25:0x0057, B:27:0x005d, B:28:0x006e, B:30:0x0074, B:31:0x007c, B:33:0x0081, B:37:0x008c, B:39:0x0098, B:41:0x00a6, B:77:0x0167, B:79:0x0176, B:81:0x017c, B:83:0x0182, B:126:0x0228, B:85:0x018b, B:86:0x018e, B:76:0x0164, B:45:0x00b3, B:48:0x00be, B:87:0x018f, B:89:0x0197, B:91:0x019d, B:93:0x01a7, B:98:0x01bc, B:99:0x01c1, B:101:0x01c8, B:103:0x01ce, B:107:0x01dd, B:108:0x01e0, B:110:0x01e8, B:117:0x0215, B:111:0x01ec, B:113:0x01f5, B:115:0x01fb, B:116:0x020a, B:96:0x01b2), top: B:144:0x001b }] */
    /* JADX WARN: Code duplicated, block: B:133:0x0236 A[PHI: r15
  0x0236: PHI (r15v4 'e' java.io.IOException) = (r15v7 'e' java.io.IOException), (r15v8 'e' java.io.IOException) binds: [B:132:0x0234, B:124:0x0225] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:164:0x0218 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:0x018f A[Catch: all -> 0x0023, Exception -> 0x0026, PHI: r4
  0x018f: PHI (r4v6 java.io.FileOutputStream) = (r4v5 java.io.FileOutputStream), (r4v10 java.io.FileOutputStream) binds: [B:38:0x0096, B:82:0x0180] A[DONT_GENERATE, DONT_INLINE], TryCatch #1 {all -> 0x0023, blocks: (B:8:0x001b, B:10:0x001f, B:16:0x002b, B:18:0x0031, B:20:0x003b, B:22:0x0048, B:24:0x0052, B:25:0x0057, B:27:0x005d, B:28:0x006e, B:30:0x0074, B:31:0x007c, B:33:0x0081, B:37:0x008c, B:39:0x0098, B:41:0x00a6, B:77:0x0167, B:79:0x0176, B:81:0x017c, B:83:0x0182, B:126:0x0228, B:85:0x018b, B:86:0x018e, B:76:0x0164, B:45:0x00b3, B:48:0x00be, B:87:0x018f, B:89:0x0197, B:91:0x019d, B:93:0x01a7, B:98:0x01bc, B:99:0x01c1, B:101:0x01c8, B:103:0x01ce, B:107:0x01dd, B:108:0x01e0, B:110:0x01e8, B:117:0x0215, B:111:0x01ec, B:113:0x01f5, B:115:0x01fb, B:116:0x020a, B:96:0x01b2), top: B:144:0x001b }] */
    /* JADX WARN: Code duplicated, block: B:89:0x0197 A[Catch: all -> 0x0023, Exception -> 0x0026, TryCatch #1 {all -> 0x0023, blocks: (B:8:0x001b, B:10:0x001f, B:16:0x002b, B:18:0x0031, B:20:0x003b, B:22:0x0048, B:24:0x0052, B:25:0x0057, B:27:0x005d, B:28:0x006e, B:30:0x0074, B:31:0x007c, B:33:0x0081, B:37:0x008c, B:39:0x0098, B:41:0x00a6, B:77:0x0167, B:79:0x0176, B:81:0x017c, B:83:0x0182, B:126:0x0228, B:85:0x018b, B:86:0x018e, B:76:0x0164, B:45:0x00b3, B:48:0x00be, B:87:0x018f, B:89:0x0197, B:91:0x019d, B:93:0x01a7, B:98:0x01bc, B:99:0x01c1, B:101:0x01c8, B:103:0x01ce, B:107:0x01dd, B:108:0x01e0, B:110:0x01e8, B:117:0x0215, B:111:0x01ec, B:113:0x01f5, B:115:0x01fb, B:116:0x020a, B:96:0x01b2), top: B:144:0x001b }] */
    /* JADX WARN: Code duplicated, block: B:91:0x019d A[Catch: all -> 0x0023, Exception -> 0x0026, TryCatch #1 {all -> 0x0023, blocks: (B:8:0x001b, B:10:0x001f, B:16:0x002b, B:18:0x0031, B:20:0x003b, B:22:0x0048, B:24:0x0052, B:25:0x0057, B:27:0x005d, B:28:0x006e, B:30:0x0074, B:31:0x007c, B:33:0x0081, B:37:0x008c, B:39:0x0098, B:41:0x00a6, B:77:0x0167, B:79:0x0176, B:81:0x017c, B:83:0x0182, B:126:0x0228, B:85:0x018b, B:86:0x018e, B:76:0x0164, B:45:0x00b3, B:48:0x00be, B:87:0x018f, B:89:0x0197, B:91:0x019d, B:93:0x01a7, B:98:0x01bc, B:99:0x01c1, B:101:0x01c8, B:103:0x01ce, B:107:0x01dd, B:108:0x01e0, B:110:0x01e8, B:117:0x0215, B:111:0x01ec, B:113:0x01f5, B:115:0x01fb, B:116:0x020a, B:96:0x01b2), top: B:144:0x001b }] */
    /* JADX WARN: Code duplicated, block: B:96:0x01b2 A[Catch: all -> 0x0023, Exception -> 0x0026, TryCatch #1 {all -> 0x0023, blocks: (B:8:0x001b, B:10:0x001f, B:16:0x002b, B:18:0x0031, B:20:0x003b, B:22:0x0048, B:24:0x0052, B:25:0x0057, B:27:0x005d, B:28:0x006e, B:30:0x0074, B:31:0x007c, B:33:0x0081, B:37:0x008c, B:39:0x0098, B:41:0x00a6, B:77:0x0167, B:79:0x0176, B:81:0x017c, B:83:0x0182, B:126:0x0228, B:85:0x018b, B:86:0x018e, B:76:0x0164, B:45:0x00b3, B:48:0x00be, B:87:0x018f, B:89:0x0197, B:91:0x019d, B:93:0x01a7, B:98:0x01bc, B:99:0x01c1, B:101:0x01c8, B:103:0x01ce, B:107:0x01dd, B:108:0x01e0, B:110:0x01e8, B:117:0x0215, B:111:0x01ec, B:113:0x01f5, B:115:0x01fb, B:116:0x020a, B:96:0x01b2), top: B:144:0x001b }] */
    /* JADX WARN: Code duplicated, block: B:98:0x01bc A[Catch: all -> 0x0023, Exception -> 0x0026, TryCatch #1 {all -> 0x0023, blocks: (B:8:0x001b, B:10:0x001f, B:16:0x002b, B:18:0x0031, B:20:0x003b, B:22:0x0048, B:24:0x0052, B:25:0x0057, B:27:0x005d, B:28:0x006e, B:30:0x0074, B:31:0x007c, B:33:0x0081, B:37:0x008c, B:39:0x0098, B:41:0x00a6, B:77:0x0167, B:79:0x0176, B:81:0x017c, B:83:0x0182, B:126:0x0228, B:85:0x018b, B:86:0x018e, B:76:0x0164, B:45:0x00b3, B:48:0x00be, B:87:0x018f, B:89:0x0197, B:91:0x019d, B:93:0x01a7, B:98:0x01bc, B:99:0x01c1, B:101:0x01c8, B:103:0x01ce, B:107:0x01dd, B:108:0x01e0, B:110:0x01e8, B:117:0x0215, B:111:0x01ec, B:113:0x01f5, B:115:0x01fb, B:116:0x020a, B:96:0x01b2), top: B:144:0x001b }] */
    /* JADX WARN: Code duplicated, block: B:99:0x01c1 A[Catch: all -> 0x0023, Exception -> 0x0026, TryCatch #1 {all -> 0x0023, blocks: (B:8:0x001b, B:10:0x001f, B:16:0x002b, B:18:0x0031, B:20:0x003b, B:22:0x0048, B:24:0x0052, B:25:0x0057, B:27:0x005d, B:28:0x006e, B:30:0x0074, B:31:0x007c, B:33:0x0081, B:37:0x008c, B:39:0x0098, B:41:0x00a6, B:77:0x0167, B:79:0x0176, B:81:0x017c, B:83:0x0182, B:126:0x0228, B:85:0x018b, B:86:0x018e, B:76:0x0164, B:45:0x00b3, B:48:0x00be, B:87:0x018f, B:89:0x0197, B:91:0x019d, B:93:0x01a7, B:98:0x01bc, B:99:0x01c1, B:101:0x01c8, B:103:0x01ce, B:107:0x01dd, B:108:0x01e0, B:110:0x01e8, B:117:0x0215, B:111:0x01ec, B:113:0x01f5, B:115:0x01fb, B:116:0x020a, B:96:0x01b2), top: B:144:0x001b }] */
    private com.mbridge.msdk.reward.adapter.d b(CampaignUnit campaignUnit) throws Throwable {
        FileOutputStream fileOutputStream;
        IOException e11;
        com.mbridge.msdk.foundation.same.report.metrics.c metricsData;
        int i11;
        String str;
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        com.mbridge.msdk.reward.adapter.d dVar = new com.mbridge.msdk.reward.adapter.d();
        dVar.a(copyOnWriteArrayList);
        if (MBridgeConstans.DEBUG && com.mbridge.msdk.util.e.f38764a) {
            return dVar;
        }
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                com.mbridge.msdk.videocommon.setting.c cVar = this.f36978l;
                if (cVar != null) {
                    cVar.b();
                }
                if (campaignUnit != null && campaignUnit.getAds() != null && campaignUnit.getAds().size() > 0) {
                    ArrayList<CampaignEx> ads = campaignUnit.getAds();
                    this.V = ads;
                    if (campaignUnit.getAds() == null || campaignUnit.getAds().size() <= 0) {
                        metricsData = null;
                    } else {
                        ArrayList<CampaignEx> ads2 = campaignUnit.getAds();
                        for (int i12 = 0; i12 < ads2.size(); i12++) {
                            CampaignEx campaignEx = ads2.get(i12);
                            campaignEx.setCampaignUnitId(this.f36968b);
                            ads2.set(i12, campaignEx);
                        }
                        metricsData = campaignUnit.getMetricsData();
                        if (metricsData == null) {
                            metricsData = new com.mbridge.msdk.foundation.same.report.metrics.c();
                            campaignUnit.setMetricsData(metricsData);
                        }
                        metricsData.b(ads2);
                    }
                    for (int i13 = 0; i13 < ads.size() && i13 < Integer.MAX_VALUE; i13++) {
                        CampaignEx campaignEx2 = ads.get(i13);
                        if (campaignEx2.isMraid()) {
                            if (TextUtils.isEmpty(campaignEx2.getMraid().trim())) {
                                continue;
                            } else {
                                if (campaignEx2.getAdType() == 287) {
                                    str = "3";
                                } else if (campaignEx2.getAdType() == 94) {
                                    str = "1";
                                } else {
                                    str = campaignEx2.getAdType() == 42 ? "2" : "";
                                }
                                try {
                                    try {
                                        com.mbridge.msdk.foundation.same.report.g.a("m_download_start", campaignEx2, "", this.f36968b, str);
                                        String strB = com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_HTML);
                                        String md5 = SameMD5.getMD5(campaignEx2.getMraid());
                                        if (TextUtils.isEmpty(md5)) {
                                            md5 = String.valueOf(System.currentTimeMillis());
                                        }
                                        File file = new File(strB, md5.concat(".html"));
                                        fileOutputStream = new FileOutputStream(file);
                                        try {
                                            fileOutputStream.write(("<script>" + com.mbridge.msdk.setting.util.a.a().b() + "</script>" + campaignEx2.getMraid()).getBytes());
                                            fileOutputStream.flush();
                                            campaignEx2.setMraid(file.getAbsolutePath());
                                            com.mbridge.msdk.foundation.same.report.g.a("m_download_end", campaignEx2, "", this.f36968b, str);
                                            try {
                                                fileOutputStream.close();
                                                fileOutputStream2 = fileOutputStream;
                                            } catch (Exception e12) {
                                                e = e12;
                                                fileOutputStream2 = fileOutputStream;
                                                e.printStackTrace();
                                                if (fileOutputStream2 != null) {
                                                    try {
                                                        fileOutputStream2.close();
                                                    } catch (IOException e13) {
                                                        e11 = e13;
                                                        if (MBridgeConstans.DEBUG) {
                                                            o0.b("RewardMVVideoAdapter", e11.getMessage());
                                                        }
                                                    }
                                                }
                                                return dVar;
                                            } catch (Throwable th2) {
                                                th = th2;
                                                if (fileOutputStream != null) {
                                                    try {
                                                        fileOutputStream.close();
                                                    } catch (IOException e14) {
                                                        if (MBridgeConstans.DEBUG) {
                                                            o0.b("RewardMVVideoAdapter", e14.getMessage());
                                                        }
                                                    }
                                                }
                                                throw th;
                                            }
                                        } catch (Exception e15) {
                                            e = e15;
                                            fileOutputStream2 = fileOutputStream;
                                            e.printStackTrace();
                                            campaignEx2.setMraid("");
                                            com.mbridge.msdk.foundation.same.report.g.a("m_download_end", campaignEx2, e.getMessage(), this.f36968b, str);
                                            if (fileOutputStream2 != null) {
                                                fileOutputStream2.close();
                                            }
                                        } catch (Throwable th3) {
                                            th = th3;
                                            fileOutputStream2 = fileOutputStream;
                                            if (fileOutputStream2 != null) {
                                                fileOutputStream2.close();
                                            }
                                            throw th;
                                        }
                                    } catch (Throwable th4) {
                                        th = th4;
                                    }
                                } catch (Exception e16) {
                                    e = e16;
                                }
                                File file2 = new File(campaignEx2.getMraid());
                                if (!file2.exists() || !file2.isFile() || !file2.canRead()) {
                                    b("mraid resource write fail", metricsData);
                                } else if (campaignEx2.getOfferType() == 99) {
                                    if (b(campaignEx2)) {
                                        if (y0.a(campaignEx2.getendcard_url())) {
                                        }
                                        if (com.mbridge.msdk.util.b.a()) {
                                            if (t0.c(this.f36967a, campaignEx2.getPackageName())) {
                                                i11 = 1;
                                            } else {
                                                i11 = 2;
                                            }
                                            campaignEx2.setRtinsType(i11);
                                        }
                                        if (com.mbridge.msdk.foundation.same.c.a(this.f36967a, campaignEx2)) {
                                            copyOnWriteArrayList.add(campaignEx2);
                                        } else {
                                            dVar.a(true);
                                            if (ads.size() == 1) {
                                                t0.a(this.f36968b, campaignEx2, com.mbridge.msdk.foundation.same.a.f35352x);
                                                this.U = "APP ALREADY INSTALLED";
                                            } else {
                                                t0.a(this.f36968b, campaignEx2, com.mbridge.msdk.foundation.same.a.f35352x);
                                                this.U = "APP ALREADY INSTALLED";
                                            }
                                        }
                                        a(campaignEx2, metricsData);
                                    } else if (y0.a(campaignEx2.getVideoUrlEncode())) {
                                        this.U = "No video campaign";
                                    } else {
                                        if (com.mbridge.msdk.util.b.a()) {
                                            if (t0.c(this.f36967a, campaignEx2.getPackageName())) {
                                                i11 = 1;
                                            } else {
                                                i11 = 2;
                                            }
                                            campaignEx2.setRtinsType(i11);
                                        }
                                        if (com.mbridge.msdk.foundation.same.c.a(this.f36967a, campaignEx2)) {
                                            copyOnWriteArrayList.add(campaignEx2);
                                        } else {
                                            dVar.a(true);
                                            if (ads.size() == 1) {
                                                t0.a(this.f36968b, campaignEx2, com.mbridge.msdk.foundation.same.a.f35352x);
                                                this.U = "APP ALREADY INSTALLED";
                                            } else {
                                                t0.a(this.f36968b, campaignEx2, com.mbridge.msdk.foundation.same.a.f35352x);
                                                this.U = "APP ALREADY INSTALLED";
                                            }
                                        }
                                        a(campaignEx2, metricsData);
                                    }
                                }
                            }
                        } else if (campaignEx2.getOfferType() == 99) {
                            if (b(campaignEx2)) {
                                if (y0.a(campaignEx2.getendcard_url()) || !TextUtils.isEmpty(campaignEx2.getMraid())) {
                                    if (com.mbridge.msdk.util.b.a() && t0.c(campaignEx2)) {
                                        if (t0.c(this.f36967a, campaignEx2.getPackageName())) {
                                            i11 = 1;
                                        } else {
                                            i11 = 2;
                                        }
                                        campaignEx2.setRtinsType(i11);
                                    }
                                    if (com.mbridge.msdk.foundation.same.c.a(this.f36967a, campaignEx2)) {
                                        copyOnWriteArrayList.add(campaignEx2);
                                    } else {
                                        dVar.a(true);
                                        if (ads.size() == 1 || campaignEx2.getFilterCallBackState() != 1) {
                                            t0.a(this.f36968b, campaignEx2, com.mbridge.msdk.foundation.same.a.f35352x);
                                            this.U = "APP ALREADY INSTALLED";
                                        } else {
                                            dVar.a(campaignEx2);
                                            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2 = new CopyOnWriteArrayList<>();
                                            copyOnWriteArrayList2.add(campaignEx2);
                                            dVar.a(copyOnWriteArrayList2);
                                        }
                                    }
                                    a(campaignEx2, metricsData);
                                } else {
                                    this.U = "No video campaign";
                                }
                            } else if (y0.a(campaignEx2.getVideoUrlEncode())) {
                                this.U = "No video campaign";
                            } else {
                                if (com.mbridge.msdk.util.b.a()) {
                                    if (t0.c(this.f36967a, campaignEx2.getPackageName())) {
                                        i11 = 1;
                                    } else {
                                        i11 = 2;
                                    }
                                    campaignEx2.setRtinsType(i11);
                                }
                                if (com.mbridge.msdk.foundation.same.c.a(this.f36967a, campaignEx2)) {
                                    copyOnWriteArrayList.add(campaignEx2);
                                } else {
                                    dVar.a(true);
                                    if (ads.size() == 1) {
                                        t0.a(this.f36968b, campaignEx2, com.mbridge.msdk.foundation.same.a.f35352x);
                                        this.U = "APP ALREADY INSTALLED";
                                    } else {
                                        t0.a(this.f36968b, campaignEx2, com.mbridge.msdk.foundation.same.a.f35352x);
                                        this.U = "APP ALREADY INSTALLED";
                                    }
                                }
                                a(campaignEx2, metricsData);
                            }
                        }
                    }
                }
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.close();
                    } catch (IOException e17) {
                        e11 = e17;
                        if (MBridgeConstans.DEBUG) {
                            o0.b("RewardMVVideoAdapter", e11.getMessage());
                        }
                    }
                }
            } catch (Throwable th5) {
                th = th5;
                fileOutputStream = null;
            }
        } catch (Exception e18) {
            e = e18;
        }
        return dVar;
    }

    private void b() {
        if (com.mbridge.msdk.videocommon.cache.a.a() != null) {
            try {
                com.mbridge.msdk.setting.g gVarD = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
                if (gVarD == null) {
                    gVarD = com.mbridge.msdk.setting.h.b().a();
                }
                com.mbridge.msdk.videocommon.cache.a.a().a(gVarD.a0() * 1000, this.f36968b);
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    e11.printStackTrace();
                }
            }
        }
    }

    private void b(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (this.L != null) {
            Message messageObtain = Message.obtain();
            messageObtain.what = 18;
            if (cVar != null) {
                Bundle bundle = new Bundle();
                bundle.putString("metrics_data_lrid", cVar.o());
                messageObtain.setData(bundle);
            }
            this.L.sendMessage(messageObtain);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (this.L != null) {
            if (TextUtils.isEmpty(str)) {
                str = "load fail exception";
            }
            Message messageObtain = Message.obtain();
            messageObtain.what = 4;
            messageObtain.obj = str;
            if (cVar != null) {
                cVar.b(true);
                Bundle bundle = new Bundle();
                bundle.putString("metrics_data_lrid", cVar.o());
                messageObtain.setData(bundle);
            }
            if (str.contains("exception")) {
                this.L.sendMessageAtFrontOfQueue(messageObtain);
            } else {
                this.L.sendMessage(messageObtain);
            }
        }
    }

    private void b(List<CampaignEx> list) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    this.f36970d += list.size();
                }
            } catch (Exception e11) {
                e11.printStackTrace();
                return;
            }
        }
        com.mbridge.msdk.videocommon.setting.c cVar = this.f36978l;
        if (cVar == null || this.f36970d > cVar.r()) {
            this.f36970d = 0;
        }
        if (y0.b(this.f36968b)) {
            com.mbridge.msdk.reward.controller.a.a(this.f36968b, this.f36970d);
        }
    }

    private boolean b(CampaignEx campaignEx) {
        if (campaignEx == null) {
            return false;
        }
        try {
            return campaignEx.getPlayable_ads_without_video() == 2;
        } catch (Throwable th2) {
            if (!MBridgeConstans.DEBUG) {
                return false;
            }
            th2.printStackTrace();
            return false;
        }
    }

    private void c() {
        try {
            com.mbridge.msdk.foundation.db.i.a(com.mbridge.msdk.foundation.db.g.a(this.f36967a)).a(this.f36968b);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(CampaignUnit campaignUnit) {
        if (campaignUnit == null || campaignUnit.getAds() == null || campaignUnit.getAds().size() <= 0) {
            return;
        }
        try {
            com.mbridge.msdk.foundation.same.report.metrics.c metricsData = campaignUnit.getMetricsData();
            if (metricsData != null) {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("result", 1);
                eVar.a("timeout", Integer.valueOf(this.f36972f));
                eVar.a("hst", k());
                metricsData.b(campaignUnit.getAds());
                metricsData.a("2000126", eVar);
                campaignUnit.setLocalRequestId(metricsData.o());
                com.mbridge.msdk.reward.report.metrics.a.a().a("2000126", metricsData);
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardMVVideoAdapter", e11.getMessage());
            }
        }
    }

    private void d() {
        try {
            Map<String, Long> map = com.mbridge.msdk.foundation.same.buffer.b.f35371l;
            if (map == null || map.size() <= 0) {
                return;
            }
            com.mbridge.msdk.foundation.same.buffer.b.f35371l.clear();
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(List<CampaignEx> list) {
        if (this.f36967a == null || list == null || list.size() == 0) {
            return;
        }
        j jVarA = j.a(com.mbridge.msdk.foundation.db.g.a(this.f36967a));
        for (int i11 = 0; i11 < list.size(); i11++) {
            CampaignEx campaignEx = list.get(i11);
            if (campaignEx != null) {
                if (!com.mbridge.msdk.util.b.a()) {
                    a(jVarA, campaignEx);
                } else if (t0.c(this.f36967a, campaignEx.getPackageName())) {
                    com.mbridge.msdk.b.a(campaignEx);
                } else {
                    a(jVarA, campaignEx);
                }
            }
        }
    }

    private String e() {
        return com.mbridge.msdk.b.a();
    }

    private String i() {
        try {
            if (y0.b(com.mbridge.msdk.reward.controller.a.f37064c0)) {
                return com.mbridge.msdk.reward.controller.a.f37064c0;
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return "";
    }

    private String k() {
        com.mbridge.msdk.setting.g gVarB = com.mbridge.msdk.setting.h.b().b(com.mbridge.msdk.foundation.controller.c.m().b());
        return com.mbridge.msdk.foundation.same.net.utils.d.h().a(this.C, TextUtils.isEmpty(this.C) ? gVarB.p0() : gVarB.B());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        try {
            if (y0.b(this.f36968b)) {
                com.mbridge.msdk.reward.controller.a.a(this.f36968b, 0);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public String a(boolean z10) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListB;
        CampaignEx campaignEx;
        if (!z10) {
            return this.G;
        }
        if (TextUtils.isEmpty(this.H) && (copyOnWriteArrayListB = com.mbridge.msdk.videocommon.download.b.getInstance().b(this.f36968b)) != null && copyOnWriteArrayListB.size() > 0 && (campaignEx = copyOnWriteArrayListB.get(0)) != null) {
            this.H = campaignEx.getRequestId();
        }
        return this.H;
    }

    public void a(int i11) {
        this.f36983q = i11;
    }

    public void a(int i11, int i12, int i13) {
        this.f36988v = i11;
        this.f36989w = i12;
        this.f36990x = i13;
    }

    public void a(int i11, int i12, boolean z10, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        a(i11, i12, z10, "", this.A, cVar);
    }

    public void a(int i11, int i12, boolean z10, String str, boolean z11, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        CampaignEx campaignEx;
        this.f36971e = i11;
        this.f36972f = i12;
        this.f36973g = z10;
        this.C = str;
        this.A = z11;
        boolean zB = false;
        this.T = false;
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.f36992z;
        if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0 && (campaignEx = this.f36992z.get(0)) != null && TextUtils.isEmpty(campaignEx.getNLRid())) {
            this.f36992z.clear();
        }
        List<CampaignEx> list = this.V;
        if (list != null) {
            list.clear();
        }
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2 = this.W;
        if (copyOnWriteArrayList2 != null) {
            copyOnWriteArrayList2.clear();
        }
        this.O = false;
        this.P = false;
        synchronized (this.f36981o) {
            try {
                if (this.Q) {
                    this.Q = false;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.S = false;
        this.R = false;
        try {
            zB = com.mbridge.msdk.mbsignalcommon.webEnvCheck.a.b(this.f36967a);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardMVVideoAdapter", e11.getMessage());
            }
        }
        if (!zB) {
            com.mbridge.msdk.foundation.error.b bVarA = com.mbridge.msdk.foundation.error.a.a(880001, "errorCode: 3507 errorMessage: data load failed, errorMsg is WebView is not available");
            if (cVar != null) {
                cVar.a(bVarA);
            }
            b("errorCode: 3507 errorMessage: data load failed, errorMsg is WebView is not available", cVar);
            return;
        }
        if (this.f36967a == null) {
            com.mbridge.msdk.foundation.error.b bVarA2 = com.mbridge.msdk.foundation.error.a.a(880001, "errorCode: 3507 errorMessage: data load failed, errorMsg is Context is null");
            if (cVar != null) {
                cVar.a(bVarA2);
            }
            b("errorCode: 3507 errorMessage: data load failed, errorMsg is Context is null", cVar);
            return;
        }
        if (y0.a(this.f36968b)) {
            com.mbridge.msdk.foundation.error.b bVarA3 = com.mbridge.msdk.foundation.error.a.a(880001, "errorCode: 3507 errorMessage: data load failed, errorMsg is UnitId is null");
            if (cVar != null) {
                cVar.a(bVarA3);
            }
            b("errorCode: 3507 errorMessage: data load failed, errorMsg is UnitId is null", cVar);
            return;
        }
        if (this.f36978l != null) {
            d();
            c();
            o0.c("RewardMVVideoAdapter", "load 开始清除过期数据");
            b();
            a(str, z11, cVar);
            return;
        }
        com.mbridge.msdk.foundation.error.b bVarA4 = com.mbridge.msdk.foundation.error.a.a(880001, "errorCode: 3507 errorMessage: data load failed, errorMsg is RewardUnitSetting is null");
        if (cVar != null) {
            cVar.a(bVarA4);
        }
        b("RewardUnitSetting is null", cVar);
    }

    public void a(int i11, String str) {
        this.J = i11;
        this.K = str;
    }

    public void a(com.mbridge.msdk.reward.adapter.a aVar) {
        this.f36976j = aVar;
    }

    public void a(com.mbridge.msdk.reward.controller.a.j jVar) {
        this.f36977k = jVar;
    }

    public void a(com.mbridge.msdk.video.bt.module.orglistener.h hVar, String str, String str2, int i11, String str3, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        try {
            this.f36975i = hVar;
            if (this.f36967a != null && !y0.a(this.f36968b)) {
                Intent intent = new Intent(this.f36967a, (Class<?>) MBRewardVideoActivity.class);
                intent.putExtra(MBRewardVideoActivity.INTENT_UNITID, this.f36968b);
                intent.putExtra(MBridgeConstans.PLACEMENT_ID, this.f36969c);
                intent.putExtra(MBRewardVideoActivity.INTENT_REWARD, str);
                intent.putExtra(MBRewardVideoActivity.INTENT_MUTE, i11);
                intent.putExtra(MBRewardVideoActivity.INTENT_ISIV, this.f36984r);
                intent.putExtra(MBRewardVideoActivity.INTENT_ISBID, this.f36985s);
                intent.putExtra(MBRewardVideoActivity.INTENT_EXTRADATA, str3);
                CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListB = com.mbridge.msdk.videocommon.download.b.getInstance().b(this.f36968b);
                boolean z10 = false;
                if (copyOnWriteArrayListB == null || copyOnWriteArrayListB.size() <= 0) {
                    com.mbridge.msdk.video.bt.module.orglistener.h hVar2 = this.f36975i;
                    if (hVar2 != null) {
                        hVar2.a(cVar, "load failed");
                        return;
                    }
                } else {
                    CampaignEx campaignEx = copyOnWriteArrayListB.get(0);
                    if (copyOnWriteArrayListB.size() == 1 && !com.mbridge.msdk.foundation.same.c.a(this.f36967a, campaignEx) && campaignEx.getFilterAdsShowCallState() == 1) {
                        com.mbridge.msdk.videocommon.cache.a.a().b(this.f36968b, campaignEx);
                        com.mbridge.msdk.video.bt.module.orglistener.h hVar3 = this.f36975i;
                        if (hVar3 != null) {
                            hVar3.a(cVar, "show_campaign_filtered");
                            return;
                        }
                    }
                    if (campaignEx != null) {
                        this.H = campaignEx.getRequestId();
                    }
                    if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getCMPTEntryUrl())) {
                        z10 = true;
                    }
                    a();
                }
                intent.putExtra(MBRewardVideoActivity.INTENT_ISBIG_OFFER, z10);
                if (this.f36984r) {
                    intent.putExtra(MBRewardVideoActivity.INTENT_IVREWARD_MODETYPE, this.f36988v);
                    intent.putExtra(MBRewardVideoActivity.INTENT_IVREWARD_VALUETYPE, this.f36989w);
                    intent.putExtra(MBRewardVideoActivity.INTENT_IVREWARD_VALUE, this.f36990x);
                }
                if (!TextUtils.isEmpty(str2)) {
                    intent.putExtra(MBRewardVideoActivity.INTENT_USERID, str2);
                }
                RewardUnitCacheManager.getInstance().add(this.f36969c, this.f36968b, this.f36978l);
                try {
                    if (com.mbridge.msdk.foundation.controller.c.m() != null && com.mbridge.msdk.foundation.controller.c.m().f() != null) {
                        ((Activity) com.mbridge.msdk.foundation.controller.c.m().f()).startActivity(intent);
                        return;
                    }
                } catch (Throwable th2) {
                    o0.b("RewardMVVideoAdapter", th2.getMessage());
                }
                intent.addFlags(ASTNode.DEOP);
                this.f36967a.startActivity(intent);
                return;
            }
            com.mbridge.msdk.video.bt.module.orglistener.h hVar4 = this.f36975i;
            if (hVar4 != null) {
                hVar4.a(cVar, "context or unitid is null");
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            com.mbridge.msdk.video.bt.module.orglistener.h hVar5 = this.f36975i;
            if (hVar5 != null) {
                hVar5.a(cVar, "show failed, exception is " + e11.getMessage());
            }
        }
    }

    public void a(com.mbridge.msdk.videocommon.setting.c cVar) {
        try {
            this.f36978l = cVar;
            if (cVar == null || cVar.o() * 1000 == com.mbridge.msdk.foundation.same.a.L) {
                return;
            }
            com.mbridge.msdk.foundation.same.a.L = this.f36978l.o() * 1000;
        } catch (Throwable th2) {
            o0.b("RewardMVVideoAdapter", th2.getMessage(), th2);
        }
    }

    public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (this.f36978l != null && TextUtils.isEmpty(str)) {
            int iQ = this.f36978l.q() * 1000;
            List<CampaignEx> list = this.X;
            if (list != null && list.size() > 0) {
                if (System.currentTimeMillis() - this.X.get(0).getTimestamp() < iQ) {
                    b("hit ltorwc", cVar);
                    return;
                }
            }
        }
        b(str, this.A, cVar);
    }

    public void a(String str, boolean z10, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        com.mbridge.msdk.foundation.same.threadpool.a.f().execute(new i(str, cVar));
        if (this.L == null) {
            b(str, z10, cVar);
            return;
        }
        h hVar = new h(str, cVar);
        this.D = hVar;
        this.L.postDelayed(hVar, 90000L);
    }

    public void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
        CampaignUnit campaignUnit = this.f36991y;
        if (campaignUnit != null) {
            a(campaignUnit.getSessionId());
        }
        b(copyOnWriteArrayList);
        if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
            o0.c("RewardMVVideoAdapter", "#######onload 把广告存在本地 size:" + copyOnWriteArrayList.size());
            a(this.f36969c, this.f36968b, copyOnWriteArrayList);
        }
        CampaignEx campaignEx = copyOnWriteArrayList.get(0);
        this.f36992z = copyOnWriteArrayList;
        a(campaignEx);
    }

    public void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, boolean z10, boolean z11, boolean z12) {
        com.mbridge.msdk.foundation.same.report.metrics.c metricsData;
        try {
            if (z11) {
                this.V = copyOnWriteArrayList;
                CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2 = new CopyOnWriteArrayList<>(copyOnWriteArrayList);
                this.W = copyOnWriteArrayList2;
                metricsData = a((List<CampaignEx>) copyOnWriteArrayList2);
            } else {
                metricsData = this.f36991y.getMetricsData();
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardMVVideoAdapter", e11.getMessage());
            }
            metricsData = null;
        }
        a(this.f36991y, copyOnWriteArrayList);
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
            o0.c("RewardMVVideoAdapter", "onload load fail, callback campaign have not video");
            if (TextUtils.isEmpty(this.U)) {
                this.U = "APP ALREADY INSTALLED";
            }
            a(this.U.contains("INSTALL") ? 880021 : 880003, this.U, metricsData);
            return;
        }
        o0.c("RewardMVVideoAdapter", "onload load success size:" + copyOnWriteArrayList.size());
        if (z10) {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            if (z11) {
                eVar.a("cache", 1);
            } else {
                eVar.a("cache", 2);
            }
            if (metricsData != null) {
                metricsData.a("2000127", eVar);
                metricsData.a("2000048", eVar);
            }
            a(metricsData);
        }
        List<CampaignEx> listB = com.mbridge.msdk.videocommon.cache.a.a().b(this.f36968b, 1, this.f36985s);
        if (listB != null && listB.size() > 0 && metricsData != null) {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar2 = new com.mbridge.msdk.foundation.same.report.metrics.e();
            CampaignEx campaignEx = copyOnWriteArrayList.get(0);
            eVar2.a(BidResponsedEx.KEY_CID, campaignEx.getId());
            eVar2.a(BidResponsed.KEY_PRICE, "");
            eVar2.a("bid_tk", this.C);
            eVar2.a("lrid", campaignEx.getLocalRequestId());
            CampaignEx campaignEx2 = listB.get(0);
            eVar2.a("cid_old", com.mbridge.msdk.foundation.same.c.a(listB));
            eVar2.a("price_old", "");
            eVar2.a("bid_tk_old", campaignEx2.getBidToken());
            eVar2.a("lrid_old", campaignEx2.getLocalRequestId());
            metricsData.a("m_load_overwrite", eVar2);
            com.mbridge.msdk.reward.report.metrics.a.a().a("m_load_overwrite", metricsData);
        }
        if (z12) {
            a(copyOnWriteArrayList);
        } else {
            this.U = "campaign filtered";
            a(880021, "campaign filtered", metricsData);
        }
    }

    public boolean a(CampaignEx campaignEx, boolean z10, com.mbridge.msdk.foundation.error.b bVar, int i11, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        com.mbridge.msdk.foundation.cache.c cVar2;
        com.mbridge.msdk.foundation.cache.c cVar3 = new com.mbridge.msdk.foundation.cache.c();
        com.mbridge.msdk.reward.candidate.a aVar = new com.mbridge.msdk.reward.candidate.a(this.f36968b, this.f36984r);
        boolean z11 = false;
        if (aVar.a(this.C)) {
            return false;
        }
        if (!this.T) {
            this.T = true;
            cVar3 = aVar.a(this.C, cVar, campaignEx, bVar, i11, this);
            if (cVar3 != null && cVar3.g() > com.mbridge.msdk.foundation.cache.c.f34981i) {
                if (cVar3.c() != null && cVar3.c().size() > 0) {
                    a(cVar3.c(), true, true, true);
                } else if (cVar3.g() == com.mbridge.msdk.foundation.cache.c.f34983k && bVar != null) {
                    bVar.a(com.mbridge.msdk.foundation.error.a.b(880038));
                    bVar.d(cVar3.e());
                }
            }
            cVar2 = cVar3;
            aVar.a(cVar, this.C, cVar2, (List<com.mbridge.msdk.foundation.cache.a.b>) null, (JSONObject) null, 3);
            return z11;
        }
        cVar3.d("isCandidate:false");
        cVar3.a(com.mbridge.msdk.foundation.cache.c.f34983k);
        cVar2 = cVar3;
        z11 = true;
        aVar.a(cVar, this.C, cVar2, (List<com.mbridge.msdk.foundation.cache.a.b>) null, (JSONObject) null, 3);
        return z11;
    }

    public boolean a(List<CampaignEx> list, boolean z10) {
        if (list == null || list.size() <= 0) {
            o0.a("RewardVideoController", "数据为空");
        } else {
            CampaignEx campaignEx = list.get(0);
            if (campaignEx != null && com.mbridge.msdk.videocommon.download.b.getInstance().a(94, this.f36968b, list)) {
                if (z10) {
                    if (campaignEx.isDynamicView()) {
                        return true;
                    }
                    if (campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0) {
                        if (campaignEx.getRsIgnoreCheckRule().contains(3)) {
                            o0.c("RewardMVVideoAdapter", "Is not check big template download status");
                            return true;
                        }
                        if (campaignEx.getCMPTEntryUrl().equals(campaignEx.getendcard_url()) && campaignEx.getRsIgnoreCheckRule().contains(2)) {
                            o0.c("RewardMVVideoAdapter", "Is not check big template ENDCARD download status");
                            return true;
                        }
                    }
                    if (ResDownloadCheckManager.getInstance().checkPreLoadState(this.f36968b + "_" + campaignEx.getRequestId() + "_" + campaignEx.getCMPTEntryUrl())) {
                        o0.a("RewardVideoController", "大模板业务，开始检查大模板预加载情况，大模板预加载成功");
                        return true;
                    }
                } else {
                    if (campaignEx.isDynamicView()) {
                        return true;
                    }
                    if (campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0 && campaignEx.getRsIgnoreCheckRule().contains(1)) {
                        o0.c("RewardMVVideoAdapter", "Is not check template download status");
                        return true;
                    }
                    if (campaignEx.getRewardTemplateMode() == null || TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e())) {
                        o0.a("RewardVideoController", "非大模板 没有 template");
                        return true;
                    }
                    if (ResDownloadCheckManager.getInstance().checkPreLoadState(this.f36968b + "_" + campaignEx.getRequestId() + "_" + campaignEx.getRewardTemplateMode().e())) {
                        o0.a("RewardVideoController", "非大模板业务，存在播放模板，播放模板预加载成功");
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public boolean a(List<CampaignEx> list, boolean z10, int i11) {
        return a(list, z10, i11, false, false);
    }

    public boolean a(List<CampaignEx> list, boolean z10, int i11, boolean z11) {
        return a(list, z10, i11, false, z11);
    }

    /* JADX WARN: Code duplicated, block: B:32:0x010a  */
    public boolean a(List<CampaignEx> list, boolean z10, int i11, boolean z11, boolean z12) {
        List<CampaignEx> list2;
        com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        if (list == null || list.size() <= 0) {
            list2 = list;
            eVar.a("event_name", "is_ready_crwtpl_empty");
            eVar.a("reason", "campaign list is empty error");
            eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 8);
        } else {
            CampaignEx campaignEx = list.get(0);
            cVar.h(campaignEx.getCurrentLocalRid());
            boolean zA = com.mbridge.msdk.videocommon.download.b.getInstance().a(94, this.f36968b, this.f36985s, list.size(), z10, i11, list, z11, eVar);
            eVar.a("event_name", "is_ready_crwtpl_" + zA);
            if (!zA) {
                list2 = list;
            } else if (!z10) {
                list2 = list;
                if (campaignEx.isDynamicView()) {
                    return true;
                }
                if (campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0 && campaignEx.getRsIgnoreCheckRule().contains(1)) {
                    o0.c("RewardMVVideoAdapter", "Is not check template download status");
                    return true;
                }
                if (campaignEx.getRewardTemplateMode() == null || TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e())) {
                    return true;
                }
                String str = this.f36968b + "_" + campaignEx.getRequestId() + "_" + campaignEx.getRewardTemplateMode().e();
                if (z12) {
                    ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(str, true);
                }
                if (ResDownloadCheckManager.getInstance().checkPreLoadState(str)) {
                    return true;
                }
                if (z12) {
                    eVar.a("event_name", "is_ready_crwtpl_" + zA);
                    eVar.a("reason", "h5 template checkPreLoadState error");
                    eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 5);
                    a(cVar, eVar, list2);
                }
            } else {
                if (campaignEx.isDynamicView()) {
                    return true;
                }
                if (campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0) {
                    if (campaignEx.getRsIgnoreCheckRule().contains(3)) {
                        o0.c("RewardMVVideoAdapter", "Is not check big template download status");
                        return true;
                    }
                    if (campaignEx.getCMPTEntryUrl().equals(campaignEx.getendcard_url()) && campaignEx.getRsIgnoreCheckRule().contains(2)) {
                        o0.c("RewardMVVideoAdapter", "Is not check big template of ENDCARD download status");
                        return true;
                    }
                }
                if (ResDownloadCheckManager.getInstance().checkPreLoadState(this.f36968b + "_" + campaignEx.getRequestId() + "_" + campaignEx.getCMPTEntryUrl())) {
                    return true;
                }
                if (z12) {
                    eVar.a("event_name", "is_ready_crwtpl_" + zA);
                    eVar.a("reason", "h5 big template checkPreLoadState error");
                    eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 5);
                    list2 = list;
                    a(cVar, eVar, list2);
                } else {
                    list2 = list;
                }
            }
        }
        a(cVar, eVar, list2);
        return false;
    }

    public void b(String str) {
        this.I = str;
    }

    public void b(String str, boolean z10, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        boolean zA;
        try {
            if (this.f36967a == null) {
                com.mbridge.msdk.foundation.error.b bVarA = com.mbridge.msdk.foundation.error.a.a(880001, "errorCode: 3507 errorMessage: data load failed, errorMsg is Context is null");
                if (cVar != null) {
                    cVar.a(bVarA);
                }
                b("errorCode: 3507 errorMessage: data load failed, errorMsg is Context is null", cVar);
                return;
            }
            if (y0.a(this.f36968b)) {
                com.mbridge.msdk.foundation.error.b bVarA2 = com.mbridge.msdk.foundation.error.a.a(880001, "errorCode: 3507 errorMessage: data load failed, errorMsg is UnitId is null");
                if (cVar != null) {
                    cVar.a(bVarA2);
                }
                b("errorCode: 3507 errorMessage: data load failed, errorMsg is UnitId is null", cVar);
                return;
            }
            if (this.f36978l == null) {
                com.mbridge.msdk.foundation.error.b bVarA3 = com.mbridge.msdk.foundation.error.a.a(880001, "errorCode: 3507 errorMessage: data load failed, errorMsg is RewardUnitSetting is null");
                if (cVar != null) {
                    cVar.a(bVarA3);
                }
                b("errorCode: 3507 errorMessage: data load failed, errorMsg is RewardUnitSetting is null", cVar);
                return;
            }
            if (TextUtils.isEmpty(str)) {
                if (System.currentTimeMillis() - this.B < this.f36978l.p() * 1000) {
                    com.mbridge.msdk.foundation.error.b bVarA4 = com.mbridge.msdk.foundation.error.a.a(880018, "errorCode: 3507 errorMessage: data load failed, errorMsg is EXCEPTION_RETURN_EMPTY");
                    if (cVar != null) {
                        cVar.a(bVarA4);
                        cVar.b(true);
                    }
                    b("errorCode: 3507 errorMessage: data load failed, errorMsg is EXCEPTION_RETURN_EMPTY", cVar);
                    return;
                }
            }
            com.mbridge.msdk.foundation.same.net.wrapper.e eVarA = new com.mbridge.msdk.reward.adapter.e(this.f36969c, this.f36968b, this.f36984r, this.f36978l, cVar != null ? cVar.o() : "").a(this.f36973g, this.f36974h, this.f36970d, i(), e(), this.f36987u, str, z10, this.f36988v);
            if (eVarA == null) {
                com.mbridge.msdk.foundation.error.b bVarA5 = com.mbridge.msdk.foundation.error.a.a(880001, "errorCode: 3507 errorMessage: data load failed, errorMsg is Load param is null");
                if (cVar != null) {
                    cVar.a(bVarA5);
                }
                b("errorCode: 3507 errorMessage: data load failed, errorMsg is Load param is null", cVar);
                return;
            }
            if (this.J != 0) {
                eVarA.a("r_index", this.J + "");
            }
            if (!TextUtils.isEmpty(this.K)) {
                eVarA.a("invalid_ad_ids", this.K);
            }
            this.N = System.currentTimeMillis();
            com.mbridge.msdk.reward.request.b bVar = new com.mbridge.msdk.reward.request.b(this.f36967a);
            b bVar2 = new b(cVar);
            bVar2.a(str);
            bVar2.setUnitId(this.f36968b);
            bVar2.setPlacementId(this.f36969c);
            bVar2.setAdType(this.f36984r ? 287 : 94);
            bVar2.a(cVar);
            try {
                zA = com.mbridge.msdk.videocommon.download.j.a().a(this.f36984r ? 287 : 94);
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardMVVideoAdapter", "isRewardVideoRefactorForCampaignRequest exception " + e11.getMessage());
                }
                zA = false;
            }
            boolean z11 = zA;
            try {
                if (com.mbridge.msdk.foundation.same.net.utils.c.b().a(eVarA) == null) {
                    com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                    eVar.a("hst", k());
                    if (this.J != 0) {
                        eVar.a("r_index", this.J + "");
                    }
                    cVar.a("2000125", eVar);
                    com.mbridge.msdk.reward.report.metrics.a.a().a("2000125", cVar);
                }
            } catch (Exception e12) {
                if (MBridgeConstans.DEBUG) {
                    e12.printStackTrace();
                }
            }
            if (z11) {
                bVar.getCampaign(1, str, eVarA, bVar2, com.mbridge.msdk.foundation.same.c.a(this.f36972f * 1000, 30000L));
            } else {
                bVar.choiceV3OrV5BySetting(1, eVarA, bVar2, str, com.mbridge.msdk.foundation.same.c.a(this.f36972f * 1000, 30000L));
            }
        } catch (Exception e13) {
            e13.printStackTrace();
            b("Load exception", cVar);
            n();
        }
    }

    public boolean b(boolean z10) {
        com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListB = com.mbridge.msdk.videocommon.cache.a.a().b(this.f36968b, 1, this.f36985s, this.f36986t);
        if (copyOnWriteArrayListB == null || copyOnWriteArrayListB.size() <= 0) {
            o0.a("RewardVideoController", "database has not can use data");
            if (z10) {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("event_name", "is_ready_cse");
                eVar.a("reason", "no effective campaign list");
                eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 8);
                a(cVar, eVar, copyOnWriteArrayListB);
            }
            return false;
        }
        CampaignEx campaignEx = copyOnWriteArrayListB.get(0);
        cVar.h(campaignEx.getCurrentLocalRid());
        int iA = com.mbridge.msdk.videocommon.cache.a.a().a(this.f36968b, 1, this.f36985s, this.f36986t);
        if (TextUtils.isEmpty(campaignEx.getCMPTEntryUrl()) || campaignEx.getNscpt() != 1 || copyOnWriteArrayListB.size() >= iA) {
            boolean zA = a(copyOnWriteArrayListB, !TextUtils.isEmpty(campaignEx.getCMPTEntryUrl()), campaignEx.getNscpt(), z10);
            if (z10) {
                a(zA, cVar, copyOnWriteArrayListB);
            }
            return zA;
        }
        if (z10) {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar2 = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar2.a("event_name", "is_ready_cltr");
            eVar2.a("reason", "nscpt error");
            eVar2.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 8);
            a(cVar, eVar2, copyOnWriteArrayListB);
        }
        return false;
    }

    public void c(String str) {
        this.f36986t = str;
    }

    public void c(List<CampaignEx> list) {
        this.X = list;
    }

    public void c(boolean z10) {
        this.M = z10;
    }

    public void d(boolean z10) {
        this.f36984r = z10;
    }

    public void e(boolean z10) {
        this.f36985s = z10;
    }

    public CopyOnWriteArrayList<CampaignEx> f() {
        return this.W;
    }

    public void f(boolean z10) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList;
        if (z10 || (copyOnWriteArrayList = this.f36992z) == null || copyOnWriteArrayList.size() <= 0) {
            return;
        }
        com.mbridge.msdk.videocommon.cache.a.a().a(this.f36968b, this.f36992z);
    }

    public String g() {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.f36992z;
        return (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) ? com.mbridge.msdk.foundation.same.c.b(this.X) : com.mbridge.msdk.foundation.same.c.b(this.f36992z);
    }

    public boolean g(boolean z10) {
        if (z10) {
            List<CampaignEx> list = this.X;
            if (list == null || list.size() <= 0) {
                return false;
            }
            for (CampaignEx campaignEx : this.X) {
                if (campaignEx != null) {
                    campaignEx.setLoadTimeoutState(1);
                    if (campaignEx.getRewardTemplateMode() != null && !TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e())) {
                        ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f36968b + "_" + campaignEx.getRequestId() + "_" + campaignEx.getRewardTemplateMode().e(), true);
                    }
                }
            }
            com.mbridge.msdk.videocommon.cache.a.a().a(this.f36968b, this.X, "load_timeout", 1);
            return true;
        }
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.f36992z;
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
            return false;
        }
        for (CampaignEx campaignEx2 : this.f36992z) {
            if (campaignEx2 != null) {
                campaignEx2.setLoadTimeoutState(1);
                if (campaignEx2.getRewardTemplateMode() != null && !TextUtils.isEmpty(campaignEx2.getRewardTemplateMode().e())) {
                    ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f36968b + "_" + campaignEx2.getRequestId() + "_" + campaignEx2.getRewardTemplateMode().e(), true);
                }
            }
        }
        com.mbridge.msdk.videocommon.cache.a.a().a(this.f36968b, this.f36992z, "load_timeout", 1);
        return true;
    }

    public CopyOnWriteArrayList<CampaignEx> h() {
        return this.f36992z;
    }

    public void h(boolean z10) {
        if (z10) {
            List<CampaignEx> list = this.X;
            if (list == null || list.size() <= 0) {
                return;
            }
            for (CampaignEx campaignEx : this.X) {
                if (campaignEx != null) {
                    campaignEx.setLoadTimeoutState(0);
                    if (campaignEx.getRewardTemplateMode() != null && !TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e())) {
                        ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f36968b + "_" + campaignEx.getRequestId() + "_" + campaignEx.getRewardTemplateMode().e(), false);
                    }
                }
            }
            com.mbridge.msdk.videocommon.cache.a.a().a(this.f36968b, this.X, "load_timeout", 0);
            return;
        }
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.f36992z;
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
            return;
        }
        for (CampaignEx campaignEx2 : this.f36992z) {
            if (campaignEx2 != null) {
                campaignEx2.setLoadTimeoutState(0);
                if (campaignEx2.getRewardTemplateMode() != null && !TextUtils.isEmpty(campaignEx2.getRewardTemplateMode().e())) {
                    ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f36968b + "_" + campaignEx2.getRequestId() + "_" + campaignEx2.getRewardTemplateMode().e(), false);
                }
            }
        }
        com.mbridge.msdk.videocommon.cache.a.a().a(this.f36968b, this.f36992z, "load_timeout", 0);
    }

    public String j() {
        return this.f36968b;
    }

    public boolean l() {
        return b(false);
    }

    public boolean m() {
        List<CampaignEx> listC = com.mbridge.msdk.videocommon.cache.a.a().c(this.f36968b, 1, this.f36985s, this.f36986t);
        if (listC == null || listC.size() <= 0) {
            o0.a("test_isReay_db", "database has not can use data");
            return false;
        }
        CampaignEx campaignEx = listC.get(0);
        int iA = com.mbridge.msdk.videocommon.cache.a.a().a(this.f36968b, 1, this.f36985s, this.f36986t);
        if (TextUtils.isEmpty(campaignEx.getCMPTEntryUrl()) || campaignEx.getNscpt() != 1 || listC.size() >= iA) {
            return a(listC, !TextUtils.isEmpty(campaignEx.getCMPTEntryUrl()), campaignEx.getNscpt());
        }
        return false;
    }
}
