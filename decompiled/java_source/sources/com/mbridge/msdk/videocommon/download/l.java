package com.mbridge.msdk.videocommon.download;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.download.download.HTMLResourceManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.y0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class l {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.mbridge.msdk.videocommon.listener.a f39936c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ConcurrentHashMap<String, com.mbridge.msdk.videocommon.listener.a> f39938e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Context f39941h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f39943j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private com.mbridge.msdk.videocommon.setting.c f39944k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f39946m;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private k f39949p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f39950q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<CampaignEx> f39934a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f39935b = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f39937d = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private c f39939f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> f39940g = new CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f39942i = 3600;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f39945l = 1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    com.mbridge.msdk.setting.l f39947n = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    com.mbridge.msdk.setting.l f39948o = null;

    class a implements c {
        a() {
        }

        @Override // com.mbridge.msdk.videocommon.download.c
        public void onProgress(long j11, int i11) {
            if (i11 == 5 || i11 == 4) {
                l.this.f39935b = true;
                l.this.d();
            }
            if (i11 == 2) {
                l.this.f39935b = true;
            }
        }
    }

    class b implements com.mbridge.msdk.videocommon.listener.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CampaignEx f39952a;

        b(CampaignEx campaignEx) {
            this.f39952a = campaignEx;
        }

        @Override // com.mbridge.msdk.videocommon.listener.a
        public void a(String str) {
            if (l.this.f39936c != null) {
                l.this.f39936c.a(str);
            }
            if (l.this.f39938e == null || l.this.f39938e.size() <= 0 || this.f39952a == null) {
                return;
            }
            com.mbridge.msdk.videocommon.listener.a aVar = (com.mbridge.msdk.videocommon.listener.a) l.this.f39938e.get(this.f39952a.getRequestId() + "_" + this.f39952a.getSecondRequestIndex());
            if (aVar != null) {
                aVar.a(str);
                l.this.f39938e.remove(this.f39952a.getRequestId() + "_" + this.f39952a.getSecondRequestIndex());
            }
        }

        @Override // com.mbridge.msdk.videocommon.listener.a
        public void a(String str, String str2) {
            if (l.this.f39936c != null) {
                l.this.f39936c.a(str, str2);
            }
            CampaignEx campaignEx = this.f39952a;
            if (campaignEx != null && campaignEx.getRsIgnoreCheckRule() != null && this.f39952a.getRsIgnoreCheckRule().size() > 0 && this.f39952a.getRsIgnoreCheckRule().contains(0)) {
                o0.c("UnitCacheCtroller", "Is not check video download status");
                return;
            }
            if (l.this.f39938e == null || l.this.f39938e.size() <= 0 || this.f39952a == null) {
                return;
            }
            com.mbridge.msdk.videocommon.listener.a aVar = (com.mbridge.msdk.videocommon.listener.a) l.this.f39938e.get(this.f39952a.getRequestId() + "_" + this.f39952a.getSecondRequestIndex());
            if (aVar != null) {
                aVar.a(str, str2);
                l.this.f39938e.remove(this.f39952a.getRequestId() + "_" + this.f39952a.getSecondRequestIndex());
            }
        }
    }

    public l(Context context, CampaignEx campaignEx, String str, int i11) {
        this.f39946m = 1;
        try {
            boolean zB = j.a().b(i11);
            this.f39950q = zB;
            if (zB) {
                this.f39943j = str;
                this.f39946m = i11;
                this.f39949p = new k(campaignEx, str, i11);
                return;
            }
        } catch (Exception unused) {
            this.f39949p = null;
            this.f39950q = false;
        }
        this.f39941h = com.mbridge.msdk.foundation.controller.c.m().d();
        List<CampaignEx> list = this.f39934a;
        if (list != null && campaignEx != null) {
            list.add(campaignEx);
        }
        this.f39943j = str;
        this.f39946m = i11;
        a(this.f39934a);
    }

    public l(Context context, List<CampaignEx> list, String str, int i11) {
        this.f39946m = 1;
        try {
            boolean zB = j.a().b(i11);
            this.f39950q = zB;
            if (zB) {
                this.f39943j = str;
                this.f39946m = i11;
                this.f39949p = new k(list, str, i11);
                return;
            }
        } catch (Exception unused) {
            this.f39949p = null;
            this.f39950q = false;
        }
        this.f39941h = com.mbridge.msdk.foundation.controller.c.m().d();
        List<CampaignEx> list2 = this.f39934a;
        if (list2 != null && list != null) {
            list2.addAll(list);
        }
        this.f39943j = str;
        this.f39946m = i11;
        a(this.f39934a);
    }

    private int a(CampaignEx campaignEx) {
        try {
            com.mbridge.msdk.setting.l lVar = this.f39947n;
            if (lVar != null) {
                return lVar.C();
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b("UnitCacheCtroller", e11.getMessage());
            }
        }
        return 100;
    }

    private void a() {
        CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> copyOnWriteArrayList = this.f39940g;
        if (copyOnWriteArrayList != null) {
            try {
                synchronized (copyOnWriteArrayList) {
                    int i11 = 0;
                    while (i11 < this.f39940g.size()) {
                        try {
                            Map<String, com.mbridge.msdk.videocommon.download.a> map = this.f39940g.get(i11);
                            Iterator<Map.Entry<String, com.mbridge.msdk.videocommon.download.a>> it = map.entrySet().iterator();
                            while (it.hasNext()) {
                                com.mbridge.msdk.videocommon.download.a value = it.next().getValue();
                                if (value != null && value.c() != null && value.o()) {
                                    value.t();
                                    this.f39940g.remove(map);
                                    i11--;
                                }
                            }
                            i11++;
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                }
            } catch (Throwable unused) {
                o0.b("UnitCacheCtroller", "cleanDisplayTask ERROR");
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:115:0x00b2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x00bc A[Catch: Exception -> 0x00f2, TryCatch #3 {Exception -> 0x00f2, blocks: (B:34:0x00b2, B:36:0x00bc, B:38:0x00c5, B:39:0x00cb, B:41:0x00d3, B:42:0x00e7, B:44:0x00eb), top: B:115:0x00b2 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00c5 A[Catch: Exception -> 0x00f2, TryCatch #3 {Exception -> 0x00f2, blocks: (B:34:0x00b2, B:36:0x00bc, B:38:0x00c5, B:39:0x00cb, B:41:0x00d3, B:42:0x00e7, B:44:0x00eb), top: B:115:0x00b2 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00d3 A[Catch: Exception -> 0x00f2, TryCatch #3 {Exception -> 0x00f2, blocks: (B:34:0x00b2, B:36:0x00bc, B:38:0x00c5, B:39:0x00cb, B:41:0x00d3, B:42:0x00e7, B:44:0x00eb), top: B:115:0x00b2 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00eb A[Catch: Exception -> 0x00f2, TRY_LEAVE, TryCatch #3 {Exception -> 0x00f2, blocks: (B:34:0x00b2, B:36:0x00bc, B:38:0x00c5, B:39:0x00cb, B:41:0x00d3, B:42:0x00e7, B:44:0x00eb), top: B:115:0x00b2 }] */
    private void a(List<CampaignEx> list) {
        CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> copyOnWriteArrayList;
        com.mbridge.msdk.videocommon.setting.a aVarC;
        com.mbridge.msdk.videocommon.setting.c cVar;
        if (list == null || list.size() == 0) {
            return;
        }
        if (list.get(0) != null) {
            this.f39937d = list.get(0).getCurrentLocalRid();
        }
        a();
        b();
        int i11 = this.f39946m;
        if (i11 == 1) {
            try {
                if (!TextUtils.isEmpty(this.f39943j)) {
                    com.mbridge.msdk.setting.l lVarE = com.mbridge.msdk.setting.h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), this.f39943j);
                    this.f39947n = lVarE;
                    if (lVarE == null) {
                        this.f39947n = com.mbridge.msdk.setting.l.i(this.f39943j);
                    }
                    com.mbridge.msdk.setting.l lVar = this.f39947n;
                    if (lVar != null) {
                        this.f39942i = lVar.p();
                        this.f39945l = this.f39947n.q();
                    }
                }
            } catch (Exception unused) {
                o0.b("UnitCacheCtroller", "make sure your had put native video jar into your project");
                return;
            }
        } else if (i11 == 287) {
            try {
                aVarC = com.mbridge.msdk.videocommon.setting.b.b().c();
                if (aVarC == null) {
                    com.mbridge.msdk.videocommon.setting.b.b().a();
                }
                if (aVarC != null) {
                    this.f39942i = aVarC.c();
                }
                if (!TextUtils.isEmpty(this.f39943j)) {
                    this.f39944k = com.mbridge.msdk.videocommon.setting.b.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), this.f39943j);
                }
                cVar = this.f39944k;
                if (cVar != null) {
                    this.f39945l = cVar.l();
                }
            } catch (Exception unused2) {
                o0.b("UnitCacheCtroller", "make sure your had put reward jar into your project");
                return;
            }
        } else if (i11 == 298) {
            com.mbridge.msdk.setting.l lVarA = com.mbridge.msdk.setting.h.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.f39943j);
            this.f39948o = lVarA;
            if (lVarA == null) {
                this.f39948o = com.mbridge.msdk.setting.h.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), this.f39943j);
            }
            com.mbridge.msdk.setting.l lVar2 = this.f39948o;
            if (lVar2 != null) {
                this.f39942i = lVar2.p();
                this.f39945l = this.f39948o.q();
            }
        } else if (i11 == 94) {
            aVarC = com.mbridge.msdk.videocommon.setting.b.b().c();
            if (aVarC == null) {
                com.mbridge.msdk.videocommon.setting.b.b().a();
            }
            if (aVarC != null) {
                this.f39942i = aVarC.c();
            }
            if (!TextUtils.isEmpty(this.f39943j)) {
                this.f39944k = com.mbridge.msdk.videocommon.setting.b.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), this.f39943j);
            }
            cVar = this.f39944k;
            if (cVar != null) {
                this.f39945l = cVar.l();
            }
        } else if (i11 == 95) {
            try {
                if (!TextUtils.isEmpty(this.f39943j)) {
                    com.mbridge.msdk.setting.l lVarE2 = com.mbridge.msdk.setting.h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), this.f39943j);
                    if (lVarE2 == null) {
                        lVarE2 = com.mbridge.msdk.setting.l.j(this.f39943j);
                    }
                    if (lVarE2 != null) {
                        this.f39942i = lVarE2.p();
                        this.f39945l = lVarE2.q();
                    }
                }
            } catch (Exception unused3) {
                o0.b("UnitCacheCtroller", "make sure your had put feeds jar into your project");
                return;
            }
        }
        for (int i12 = 0; i12 < list.size(); i12++) {
            CampaignEx campaignEx = list.get(i12);
            if (campaignEx != null) {
                int i13 = this.f39946m;
                String str = (i13 == 94 || i13 == 287) ? campaignEx.getRequestId() + campaignEx.getId() + campaignEx.getVideoUrlEncode() : campaignEx.getId() + campaignEx.getVideoUrlEncode() + campaignEx.getBidToken();
                if ((d(campaignEx) || !TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) && (copyOnWriteArrayList = this.f39940g) != null) {
                    synchronized (copyOnWriteArrayList) {
                        int i14 = 0;
                        while (true) {
                            try {
                                if (i14 >= this.f39940g.size()) {
                                    com.mbridge.msdk.videocommon.download.a aVar = new com.mbridge.msdk.videocommon.download.a(this.f39941h, campaignEx, this.f39943j, this.f39945l);
                                    aVar.c(this.f39945l);
                                    aVar.a(this.f39946m);
                                    HashMap map = new HashMap();
                                    map.put(str, aVar);
                                    this.f39940g.add(map);
                                    break;
                                }
                                Map<String, com.mbridge.msdk.videocommon.download.a> map2 = this.f39940g.get(i14);
                                if (map2 != null && map2.containsKey(str)) {
                                    com.mbridge.msdk.videocommon.download.a aVar2 = map2.get(str);
                                    if (aVar2 != null) {
                                        aVar2.e(campaignEx);
                                        aVar2.c(this.f39945l);
                                        aVar2.b(false);
                                        map2.remove(str);
                                        map2.put(str, aVar2);
                                        this.f39940g.set(i14, map2);
                                    }
                                    e(campaignEx);
                                    break;
                                }
                                i14++;
                            } catch (Throwable th2) {
                                if (MBridgeConstans.DEBUG) {
                                    o0.b("UnitCacheCtroller", th2.getMessage());
                                }
                            }
                        }
                        try {
                        } catch (Throwable th3) {
                            throw th3;
                        }
                    }
                }
            }
        }
        List<CampaignEx> list2 = this.f39934a;
        if (list2 == null || list2.size() <= 0) {
            return;
        }
        this.f39934a.clear();
    }

    private boolean a(int i11, CampaignEx campaignEx, String str) {
        if (campaignEx.isDynamicView()) {
            return true;
        }
        if (campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0 && campaignEx.getRsIgnoreCheckRule().contains(1)) {
            o0.c("UnitCacheCtroller", "Is not check template download status");
            return true;
        }
        if (!TextUtils.isEmpty(str) && campaignEx.getLoadTimeoutState() == 0) {
            o0.a("UnitCacheCtroller", "check template 下载情况：" + H5DownLoadManager.getInstance().getH5ResAddress(str));
            if (H5DownLoadManager.getInstance().getH5ResAddress(str) == null) {
                return false;
            }
        }
        return true;
    }

    private boolean a(CampaignEx.c cVar) {
        return true;
    }

    public static boolean a(com.mbridge.msdk.videocommon.download.a aVar, int i11) {
        long jH = aVar.h();
        long jE = aVar.e();
        if (TextUtils.isEmpty(aVar.d())) {
            o0.a("UnitCacheCtroller", "checkVideoDownload video done return true");
            return true;
        }
        if (i11 == 0) {
            if (aVar.c() != null && !TextUtils.isEmpty(aVar.c().getVideoUrlEncode())) {
                return true;
            }
        } else if (jE > 0 && jH * 100 >= jE * ((long) i11)) {
            if (i11 != 100 || aVar.j() == 5) {
                return true;
            }
            aVar.b();
            return false;
        }
        return false;
    }

    public static boolean a(com.mbridge.msdk.videocommon.download.a aVar, int i11, boolean z10) {
        long jH = aVar.h();
        long jE = aVar.e();
        if (TextUtils.isEmpty(aVar.d())) {
            o0.a("UnitCacheCtroller", "checkVideoDownload video done return true");
            return true;
        }
        CampaignEx campaignExC = aVar.c();
        if (campaignExC != null) {
            if (campaignExC.getRsIgnoreCheckRule() != null && campaignExC.getRsIgnoreCheckRule().size() > 0 && campaignExC.getRsIgnoreCheckRule().contains(0)) {
                o0.c("UnitCacheCtroller", "Is not check video download status");
                return true;
            }
            if (campaignExC.getIsTimeoutCheckVideoStatus() == 1 && campaignExC.getVideoCheckType() == 1) {
                return true;
            }
            if (z10 && campaignExC.getVideoCheckType() == 1) {
                if (i11 == 0) {
                    return true;
                }
                if ((jE != 0 || jH != 0) && jH >= ((long) (i11 / 100)) * jE) {
                    campaignExC.setIsTimeoutCheckVideoStatus(1);
                    return true;
                }
            }
        }
        return a(aVar, i11);
    }

    private boolean a(String str, CampaignEx campaignEx) {
        try {
            if (campaignEx.getRsIgnoreCheckRule() == null || campaignEx.getRsIgnoreCheckRule().size() <= 0 || !campaignEx.getRsIgnoreCheckRule().contains(2)) {
                return (campaignEx.isDynamicView() && !t0.l(str)) || y0.a(str) || b(str, campaignEx);
            }
            o0.c("UnitCacheCtroller", "Is not check endCard download status : " + str);
            return true;
        } catch (Throwable th2) {
            o0.b("UnitCacheCtroller", th2.getMessage(), th2);
            return false;
        }
    }

    private boolean a(CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> copyOnWriteArrayList) {
        try {
            for (Map<String, com.mbridge.msdk.videocommon.download.a> map : copyOnWriteArrayList) {
                if (map != null) {
                    Iterator<Map.Entry<String, com.mbridge.msdk.videocommon.download.a>> it = map.entrySet().iterator();
                    while (it.hasNext()) {
                        if (it.next().getValue().j() == 1) {
                            return true;
                        }
                    }
                }
            }
            return false;
        } catch (Throwable th2) {
            if (!MBridgeConstans.DEBUG) {
                return false;
            }
            th2.printStackTrace();
            return false;
        }
    }

    private int b(CampaignEx campaignEx) {
        if (campaignEx != null) {
            return campaignEx.getReady_rate() != -1 ? campaignEx.getReady_rate() : c(campaignEx);
        }
        return -1;
    }

    private boolean b(String str, CampaignEx campaignEx) {
        if (campaignEx.isMraid() || TextUtils.isEmpty(str)) {
            return true;
        }
        if (campaignEx.getLoadTimeoutState() == 1 && !d(campaignEx)) {
            return true;
        }
        if (campaignEx.getRsIgnoreCheckRule() == null || campaignEx.getRsIgnoreCheckRule().size() <= 0 || !campaignEx.getRsIgnoreCheckRule().contains(2)) {
            return y0.b(H5DownLoadManager.getInstance().getH5ResAddress(str)) || y0.b(HTMLResourceManager.getInstance().getHtmlContentFromUrl(str));
        }
        o0.c("UnitCacheCtroller", "Is not check endCard download status : " + str);
        return true;
    }

    private int c(CampaignEx campaignEx) {
        try {
            if (campaignEx.getAdType() == 298) {
                if (this.f39948o == null) {
                    this.f39948o = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b(), this.f39943j);
                }
                return this.f39948o.C();
            }
            if (campaignEx.getAdType() == 42) {
                return a((CampaignEx) null);
            }
            if (this.f39944k == null) {
                this.f39944k = com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.f39943j, false);
            }
            return this.f39944k.w();
        } catch (Throwable th2) {
            o0.b("UnitCacheCtroller", th2.getMessage(), th2);
            return 100;
        }
    }

    private boolean d(CampaignEx campaignEx) {
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

    private void e(CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("cache", 1);
                eVar.a(CampaignEx.JSON_KEY_READY_RATE, Integer.valueOf(b(campaignEx)));
                if (b(campaignEx) == 100) {
                    eVar.a("resumed_breakpoint", "2");
                } else {
                    eVar.a("resumed_breakpoint", "1");
                }
                eVar.a("resource_type", 4);
                eVar.a("scenes", "1");
                eVar.a("url", campaignEx.getVideoUrlEncode());
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_download_start", campaignEx, eVar);
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    e11.printStackTrace();
                }
            }
        }
    }

    public com.mbridge.msdk.videocommon.download.a a(int i11, boolean z10) {
        k kVar;
        if (this.f39950q && (kVar = this.f39949p) != null) {
            return kVar.d();
        }
        try {
            return b(i11, z10);
        } catch (Throwable th2) {
            o0.b("UnitCacheCtroller", th2.getMessage(), th2);
            return null;
        }
    }

    public com.mbridge.msdk.videocommon.download.a a(String str) {
        k kVar;
        if (this.f39950q && (kVar = this.f39949p) != null) {
            return kVar.a(str);
        }
        CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> copyOnWriteArrayList = this.f39940g;
        if (copyOnWriteArrayList == null) {
            return null;
        }
        synchronized (copyOnWriteArrayList) {
            try {
                try {
                    for (Map<String, com.mbridge.msdk.videocommon.download.a> map : this.f39940g) {
                        if (map != null && map.containsKey(str)) {
                            return map.get(str);
                        }
                    }
                } catch (Throwable unused) {
                    o0.b("UnitCacheCtroller", "failed to get campaignTast by cid");
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01a8 A[Catch: all -> 0x00c1, Exception -> 0x0138, TryCatch #1 {all -> 0x00c1, blocks: (B:11:0x0025, B:12:0x002a, B:14:0x0032, B:15:0x0042, B:17:0x0048, B:19:0x0056, B:22:0x0065, B:23:0x006f, B:25:0x0075, B:28:0x007f, B:30:0x0089, B:32:0x0093, B:34:0x00a1, B:36:0x00af, B:38:0x00b9, B:48:0x00de, B:51:0x00e6, B:54:0x00f0, B:56:0x0100, B:58:0x010c, B:94:0x0184, B:96:0x0193, B:98:0x0199, B:100:0x01a8, B:102:0x01b0, B:104:0x01ba, B:106:0x01c1, B:108:0x01c7, B:110:0x01cb, B:114:0x01cf, B:116:0x01d8, B:118:0x01de, B:120:0x01e8, B:122:0x01f6, B:143:0x0247, B:147:0x0250, B:149:0x0254, B:151:0x025e, B:153:0x0264, B:156:0x026c, B:186:0x02ce, B:187:0x02d1, B:170:0x0293, B:172:0x029d, B:174:0x02a3, B:176:0x02a9, B:139:0x0231, B:61:0x011a, B:63:0x0120, B:65:0x012a, B:73:0x013e, B:75:0x0144, B:77:0x014a, B:78:0x0150, B:80:0x0156, B:82:0x015c, B:84:0x0163, B:86:0x016d, B:88:0x0173), top: B:203:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:102:0x01b0 A[Catch: all -> 0x00c1, Exception -> 0x0138, TryCatch #1 {all -> 0x00c1, blocks: (B:11:0x0025, B:12:0x002a, B:14:0x0032, B:15:0x0042, B:17:0x0048, B:19:0x0056, B:22:0x0065, B:23:0x006f, B:25:0x0075, B:28:0x007f, B:30:0x0089, B:32:0x0093, B:34:0x00a1, B:36:0x00af, B:38:0x00b9, B:48:0x00de, B:51:0x00e6, B:54:0x00f0, B:56:0x0100, B:58:0x010c, B:94:0x0184, B:96:0x0193, B:98:0x0199, B:100:0x01a8, B:102:0x01b0, B:104:0x01ba, B:106:0x01c1, B:108:0x01c7, B:110:0x01cb, B:114:0x01cf, B:116:0x01d8, B:118:0x01de, B:120:0x01e8, B:122:0x01f6, B:143:0x0247, B:147:0x0250, B:149:0x0254, B:151:0x025e, B:153:0x0264, B:156:0x026c, B:186:0x02ce, B:187:0x02d1, B:170:0x0293, B:172:0x029d, B:174:0x02a3, B:176:0x02a9, B:139:0x0231, B:61:0x011a, B:63:0x0120, B:65:0x012a, B:73:0x013e, B:75:0x0144, B:77:0x014a, B:78:0x0150, B:80:0x0156, B:82:0x015c, B:84:0x0163, B:86:0x016d, B:88:0x0173), top: B:203:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:103:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:104:0x01ba A[Catch: all -> 0x00c1, Exception -> 0x0138, TryCatch #1 {all -> 0x00c1, blocks: (B:11:0x0025, B:12:0x002a, B:14:0x0032, B:15:0x0042, B:17:0x0048, B:19:0x0056, B:22:0x0065, B:23:0x006f, B:25:0x0075, B:28:0x007f, B:30:0x0089, B:32:0x0093, B:34:0x00a1, B:36:0x00af, B:38:0x00b9, B:48:0x00de, B:51:0x00e6, B:54:0x00f0, B:56:0x0100, B:58:0x010c, B:94:0x0184, B:96:0x0193, B:98:0x0199, B:100:0x01a8, B:102:0x01b0, B:104:0x01ba, B:106:0x01c1, B:108:0x01c7, B:110:0x01cb, B:114:0x01cf, B:116:0x01d8, B:118:0x01de, B:120:0x01e8, B:122:0x01f6, B:143:0x0247, B:147:0x0250, B:149:0x0254, B:151:0x025e, B:153:0x0264, B:156:0x026c, B:186:0x02ce, B:187:0x02d1, B:170:0x0293, B:172:0x029d, B:174:0x02a3, B:176:0x02a9, B:139:0x0231, B:61:0x011a, B:63:0x0120, B:65:0x012a, B:73:0x013e, B:75:0x0144, B:77:0x014a, B:78:0x0150, B:80:0x0156, B:82:0x015c, B:84:0x0163, B:86:0x016d, B:88:0x0173), top: B:203:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:113:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:120:0x01e8 A[Catch: all -> 0x00c1, Exception -> 0x021f, TryCatch #0 {Exception -> 0x021f, blocks: (B:118:0x01de, B:120:0x01e8, B:122:0x01f6, B:139:0x0231), top: B:201:0x01de }] */
    /* JADX WARN: Code duplicated, block: B:122:0x01f6 A[Catch: all -> 0x00c1, Exception -> 0x021f, TryCatch #0 {Exception -> 0x021f, blocks: (B:118:0x01de, B:120:0x01e8, B:122:0x01f6, B:139:0x0231), top: B:201:0x01de }] */
    /* JADX WARN: Code duplicated, block: B:132:0x0226  */
    /* JADX WARN: Code duplicated, block: B:141:0x0242  */
    /* JADX WARN: Code duplicated, block: B:143:0x0247 A[Catch: all -> 0x00c1, Exception -> 0x0277, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x00c1, blocks: (B:11:0x0025, B:12:0x002a, B:14:0x0032, B:15:0x0042, B:17:0x0048, B:19:0x0056, B:22:0x0065, B:23:0x006f, B:25:0x0075, B:28:0x007f, B:30:0x0089, B:32:0x0093, B:34:0x00a1, B:36:0x00af, B:38:0x00b9, B:48:0x00de, B:51:0x00e6, B:54:0x00f0, B:56:0x0100, B:58:0x010c, B:94:0x0184, B:96:0x0193, B:98:0x0199, B:100:0x01a8, B:102:0x01b0, B:104:0x01ba, B:106:0x01c1, B:108:0x01c7, B:110:0x01cb, B:114:0x01cf, B:116:0x01d8, B:118:0x01de, B:120:0x01e8, B:122:0x01f6, B:143:0x0247, B:147:0x0250, B:149:0x0254, B:151:0x025e, B:153:0x0264, B:156:0x026c, B:186:0x02ce, B:187:0x02d1, B:170:0x0293, B:172:0x029d, B:174:0x02a3, B:176:0x02a9, B:139:0x0231, B:61:0x011a, B:63:0x0120, B:65:0x012a, B:73:0x013e, B:75:0x0144, B:77:0x014a, B:78:0x0150, B:80:0x0156, B:82:0x015c, B:84:0x0163, B:86:0x016d, B:88:0x0173), top: B:203:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:145:0x024d  */
    /* JADX WARN: Code duplicated, block: B:147:0x0250 A[Catch: all -> 0x00c1, Exception -> 0x0277, TRY_ENTER, TryCatch #1 {all -> 0x00c1, blocks: (B:11:0x0025, B:12:0x002a, B:14:0x0032, B:15:0x0042, B:17:0x0048, B:19:0x0056, B:22:0x0065, B:23:0x006f, B:25:0x0075, B:28:0x007f, B:30:0x0089, B:32:0x0093, B:34:0x00a1, B:36:0x00af, B:38:0x00b9, B:48:0x00de, B:51:0x00e6, B:54:0x00f0, B:56:0x0100, B:58:0x010c, B:94:0x0184, B:96:0x0193, B:98:0x0199, B:100:0x01a8, B:102:0x01b0, B:104:0x01ba, B:106:0x01c1, B:108:0x01c7, B:110:0x01cb, B:114:0x01cf, B:116:0x01d8, B:118:0x01de, B:120:0x01e8, B:122:0x01f6, B:143:0x0247, B:147:0x0250, B:149:0x0254, B:151:0x025e, B:153:0x0264, B:156:0x026c, B:186:0x02ce, B:187:0x02d1, B:170:0x0293, B:172:0x029d, B:174:0x02a3, B:176:0x02a9, B:139:0x0231, B:61:0x011a, B:63:0x0120, B:65:0x012a, B:73:0x013e, B:75:0x0144, B:77:0x014a, B:78:0x0150, B:80:0x0156, B:82:0x015c, B:84:0x0163, B:86:0x016d, B:88:0x0173), top: B:203:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:149:0x0254 A[Catch: all -> 0x00c1, Exception -> 0x0277, TryCatch #1 {all -> 0x00c1, blocks: (B:11:0x0025, B:12:0x002a, B:14:0x0032, B:15:0x0042, B:17:0x0048, B:19:0x0056, B:22:0x0065, B:23:0x006f, B:25:0x0075, B:28:0x007f, B:30:0x0089, B:32:0x0093, B:34:0x00a1, B:36:0x00af, B:38:0x00b9, B:48:0x00de, B:51:0x00e6, B:54:0x00f0, B:56:0x0100, B:58:0x010c, B:94:0x0184, B:96:0x0193, B:98:0x0199, B:100:0x01a8, B:102:0x01b0, B:104:0x01ba, B:106:0x01c1, B:108:0x01c7, B:110:0x01cb, B:114:0x01cf, B:116:0x01d8, B:118:0x01de, B:120:0x01e8, B:122:0x01f6, B:143:0x0247, B:147:0x0250, B:149:0x0254, B:151:0x025e, B:153:0x0264, B:156:0x026c, B:186:0x02ce, B:187:0x02d1, B:170:0x0293, B:172:0x029d, B:174:0x02a3, B:176:0x02a9, B:139:0x0231, B:61:0x011a, B:63:0x0120, B:65:0x012a, B:73:0x013e, B:75:0x0144, B:77:0x014a, B:78:0x0150, B:80:0x0156, B:82:0x015c, B:84:0x0163, B:86:0x016d, B:88:0x0173), top: B:203:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:164:0x0283  */
    /* JADX WARN: Code duplicated, block: B:166:0x0288  */
    /* JADX WARN: Code duplicated, block: B:172:0x029d A[Catch: all -> 0x00c1, Exception -> 0x0271, TryCatch #1 {all -> 0x00c1, blocks: (B:11:0x0025, B:12:0x002a, B:14:0x0032, B:15:0x0042, B:17:0x0048, B:19:0x0056, B:22:0x0065, B:23:0x006f, B:25:0x0075, B:28:0x007f, B:30:0x0089, B:32:0x0093, B:34:0x00a1, B:36:0x00af, B:38:0x00b9, B:48:0x00de, B:51:0x00e6, B:54:0x00f0, B:56:0x0100, B:58:0x010c, B:94:0x0184, B:96:0x0193, B:98:0x0199, B:100:0x01a8, B:102:0x01b0, B:104:0x01ba, B:106:0x01c1, B:108:0x01c7, B:110:0x01cb, B:114:0x01cf, B:116:0x01d8, B:118:0x01de, B:120:0x01e8, B:122:0x01f6, B:143:0x0247, B:147:0x0250, B:149:0x0254, B:151:0x025e, B:153:0x0264, B:156:0x026c, B:186:0x02ce, B:187:0x02d1, B:170:0x0293, B:172:0x029d, B:174:0x02a3, B:176:0x02a9, B:139:0x0231, B:61:0x011a, B:63:0x0120, B:65:0x012a, B:73:0x013e, B:75:0x0144, B:77:0x014a, B:78:0x0150, B:80:0x0156, B:82:0x015c, B:84:0x0163, B:86:0x016d, B:88:0x0173), top: B:203:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:201:0x01de A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:96:0x0193 A[Catch: all -> 0x00c1, Exception -> 0x0138, TryCatch #1 {all -> 0x00c1, blocks: (B:11:0x0025, B:12:0x002a, B:14:0x0032, B:15:0x0042, B:17:0x0048, B:19:0x0056, B:22:0x0065, B:23:0x006f, B:25:0x0075, B:28:0x007f, B:30:0x0089, B:32:0x0093, B:34:0x00a1, B:36:0x00af, B:38:0x00b9, B:48:0x00de, B:51:0x00e6, B:54:0x00f0, B:56:0x0100, B:58:0x010c, B:94:0x0184, B:96:0x0193, B:98:0x0199, B:100:0x01a8, B:102:0x01b0, B:104:0x01ba, B:106:0x01c1, B:108:0x01c7, B:110:0x01cb, B:114:0x01cf, B:116:0x01d8, B:118:0x01de, B:120:0x01e8, B:122:0x01f6, B:143:0x0247, B:147:0x0250, B:149:0x0254, B:151:0x025e, B:153:0x0264, B:156:0x026c, B:186:0x02ce, B:187:0x02d1, B:170:0x0293, B:172:0x029d, B:174:0x02a3, B:176:0x02a9, B:139:0x0231, B:61:0x011a, B:63:0x0120, B:65:0x012a, B:73:0x013e, B:75:0x0144, B:77:0x014a, B:78:0x0150, B:80:0x0156, B:82:0x015c, B:84:0x0163, B:86:0x016d, B:88:0x0173), top: B:203:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x0199 A[Catch: all -> 0x00c1, Exception -> 0x0138, TryCatch #1 {all -> 0x00c1, blocks: (B:11:0x0025, B:12:0x002a, B:14:0x0032, B:15:0x0042, B:17:0x0048, B:19:0x0056, B:22:0x0065, B:23:0x006f, B:25:0x0075, B:28:0x007f, B:30:0x0089, B:32:0x0093, B:34:0x00a1, B:36:0x00af, B:38:0x00b9, B:48:0x00de, B:51:0x00e6, B:54:0x00f0, B:56:0x0100, B:58:0x010c, B:94:0x0184, B:96:0x0193, B:98:0x0199, B:100:0x01a8, B:102:0x01b0, B:104:0x01ba, B:106:0x01c1, B:108:0x01c7, B:110:0x01cb, B:114:0x01cf, B:116:0x01d8, B:118:0x01de, B:120:0x01e8, B:122:0x01f6, B:143:0x0247, B:147:0x0250, B:149:0x0254, B:151:0x025e, B:153:0x0264, B:156:0x026c, B:186:0x02ce, B:187:0x02d1, B:170:0x0293, B:172:0x029d, B:174:0x02a3, B:176:0x02a9, B:139:0x0231, B:61:0x011a, B:63:0x0120, B:65:0x012a, B:73:0x013e, B:75:0x0144, B:77:0x014a, B:78:0x0150, B:80:0x0156, B:82:0x015c, B:84:0x0163, B:86:0x016d, B:88:0x0173), top: B:203:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:99:0x01a6 A[DONT_INVERT] */
    public List<com.mbridge.msdk.videocommon.download.a> a(String str, int i11, boolean z10, List<CampaignEx> list, boolean z11, com.mbridge.msdk.foundation.same.report.metrics.e eVar) {
        long j11;
        Iterator<Map.Entry<String, com.mbridge.msdk.videocommon.download.a>> it;
        String str2;
        String str3;
        String str4;
        boolean zIsEmpty;
        int iJ;
        long jI;
        String str5;
        int i12;
        long j12;
        k kVar;
        if (this.f39950q && (kVar = this.f39949p) != null) {
            return kVar.a(list, z11);
        }
        ArrayList arrayList = new ArrayList();
        String str6 = "";
        CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> copyOnWriteArrayList = this.f39940g;
        if (copyOnWriteArrayList != null) {
            synchronized (copyOnWriteArrayList) {
                try {
                    try {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        int i13 = 0;
                        while (i13 < this.f39940g.size()) {
                            Map<String, com.mbridge.msdk.videocommon.download.a> map = this.f39940g.get(i13);
                            Iterator<Map.Entry<String, com.mbridge.msdk.videocommon.download.a>> it2 = map.entrySet().iterator();
                            while (it2.hasNext()) {
                                try {
                                    com.mbridge.msdk.videocommon.download.a value = it2.next().getValue();
                                    if (value == null || value.c() == null) {
                                        arrayList = arrayList;
                                        j11 = jCurrentTimeMillis;
                                        it = it2;
                                        str2 = "task or task's campaign is NULL";
                                        str6 = str2;
                                        arrayList = arrayList;
                                        it2 = it;
                                        jCurrentTimeMillis = j11;
                                    } else {
                                        CampaignEx campaignExC = value.c();
                                        boolean z12 = false;
                                        for (CampaignEx campaignEx : list) {
                                            if (campaignExC != null && campaignEx != null && !TextUtils.isEmpty(campaignExC.getRequestId()) && !TextUtils.isEmpty(campaignEx.getRequestId()) && campaignExC.getId().equals(campaignEx.getId()) && campaignExC.getRequestId().equals(campaignEx.getRequestId())) {
                                                if (!TextUtils.isEmpty(campaignEx.getNLRid())) {
                                                    campaignExC.setNLRid(campaignEx.getNLRid());
                                                }
                                                z12 = true;
                                            }
                                        }
                                        if (!z12) {
                                            arrayList = arrayList;
                                            str6 = "campaign is not available";
                                            j11 = jCurrentTimeMillis;
                                            it = it2;
                                        } else if ((!z10 || campaignExC.isBidCampaign()) && (z10 || !campaignExC.isBidCampaign())) {
                                            String str7 = campaignExC.getendcard_url();
                                            String videoUrlEncode = campaignExC.getVideoUrlEncode();
                                            String strE = campaignExC.getRewardTemplateMode() != null ? campaignExC.getRewardTemplateMode().e() : "";
                                            String str8 = str6;
                                            try {
                                                CampaignEx.c rewardTemplateMode = campaignExC.getRewardTemplateMode();
                                                it = it2;
                                                if (i11 == 94 || i11 == 287) {
                                                    if (TextUtils.isEmpty(strE) || strE.contains(CampaignEx.KEY_IS_CMPT_ENTRY) || a(i11, campaignExC, strE)) {
                                                        if (!b(str7, campaignExC)) {
                                                            str3 = "endcard is downloading or fail";
                                                        } else if (value.o()) {
                                                            value.t();
                                                            str4 = "task is displayed";
                                                        } else {
                                                            if (y0.a(videoUrlEncode)) {
                                                                if (a(rewardTemplateMode)) {
                                                                    arrayList.add(value);
                                                                } else {
                                                                    str3 = "image list is downloading or fail";
                                                                }
                                                            } else if (a(value, b(campaignExC), z11) && a(rewardTemplateMode)) {
                                                                arrayList.add(value);
                                                            } else {
                                                                str3 = "video and image list is downloading or fail";
                                                            }
                                                            arrayList = arrayList;
                                                            j11 = jCurrentTimeMillis;
                                                            str6 = str8;
                                                        }
                                                        str8 = str3;
                                                        zIsEmpty = TextUtils.isEmpty(value.f());
                                                        iJ = value.j();
                                                        if (iJ == 5) {
                                                            if (value.o()) {
                                                                value.t();
                                                                this.f39940g.remove(map);
                                                                i13--;
                                                                str4 = "task is displayed";
                                                            } else {
                                                                if (zIsEmpty) {
                                                                    value.a(0, 0);
                                                                    if (i11 == 95) {
                                                                        arrayList.add(value);
                                                                    } else {
                                                                        str6 = "resource path is not effective";
                                                                    }
                                                                } else {
                                                                    if (a(str7, campaignExC) || !a(rewardTemplateMode)) {
                                                                        return null;
                                                                    }
                                                                    arrayList.add(value);
                                                                }
                                                                arrayList = arrayList;
                                                                j11 = jCurrentTimeMillis;
                                                                str6 = str8;
                                                            }
                                                            j11 = jCurrentTimeMillis;
                                                        } else {
                                                            arrayList = arrayList;
                                                            try {
                                                                if (q0.a().a("u_n_c_e_d", true)) {
                                                                    j11 = jCurrentTimeMillis;
                                                                    i12 = 1;
                                                                } else {
                                                                    try {
                                                                        jI = value.i();
                                                                        if (value.j() == 1) {
                                                                            j12 = jCurrentTimeMillis - jI;
                                                                            j11 = jCurrentTimeMillis;
                                                                            if (j12 > this.f39942i * 1000) {
                                                                                value.c("download timeout");
                                                                                value.b();
                                                                                this.f39940g.remove(map);
                                                                                i13--;
                                                                                if (i11 != 1 || i11 == 94) {
                                                                                    str6 = "video download time over dlct";
                                                                                    arrayList = arrayList;
                                                                                } else {
                                                                                    str8 = "video download time over dlct";
                                                                                }
                                                                            }
                                                                        } else {
                                                                            j11 = jCurrentTimeMillis;
                                                                        }
                                                                        if (iJ != 4 || iJ == 2) {
                                                                            this.f39940g.remove(map);
                                                                            value.b();
                                                                            i13--;
                                                                            str5 = "video download stop or pause";
                                                                        } else {
                                                                            i12 = 1;
                                                                        }
                                                                        str6 = str5;
                                                                        arrayList = arrayList;
                                                                    } catch (Exception e11) {
                                                                        e = e11;
                                                                        str6 = str8;
                                                                        arrayList = arrayList;
                                                                    }
                                                                }
                                                                if (iJ == i12) {
                                                                    if (value.o()) {
                                                                        str5 = "video was displayed";
                                                                        str6 = str5;
                                                                        arrayList = arrayList;
                                                                    } else {
                                                                        if (!MBridgeConstans.IS_DOWANLOAD_FINSH_PLAY) {
                                                                            if (!a(value, b(campaignExC), z11) && a(str7, campaignExC) && a(rewardTemplateMode)) {
                                                                                arrayList = arrayList;
                                                                                try {
                                                                                    arrayList.add(value);
                                                                                } catch (Exception e12) {
                                                                                    e = e12;
                                                                                }
                                                                            } else {
                                                                                str8 = "video or endcard or image list is downloading or fail";
                                                                            }
                                                                        }
                                                                        if (i11 == 94) {
                                                                        }
                                                                        if (!a(value, b(campaignExC), z11)) {
                                                                        }
                                                                        str2 = "video or endcard or image list is downloading or fail";
                                                                        str6 = str2;
                                                                    }
                                                                    str6 = str8;
                                                                    e.printStackTrace();
                                                                } else if (i11 == 94 && i11 != 287) {
                                                                    arrayList = arrayList;
                                                                    str6 = str8;
                                                                } else if (!a(value, b(campaignExC), z11) && a(str7, campaignExC) && a(rewardTemplateMode)) {
                                                                    arrayList.add(value);
                                                                } else {
                                                                    str2 = "video or endcard or image list is downloading or fail";
                                                                    str6 = str2;
                                                                }
                                                                str6 = str8;
                                                            } catch (Exception e13) {
                                                                e = e13;
                                                                arrayList = arrayList;
                                                            }
                                                        }
                                                        it2 = it;
                                                        jCurrentTimeMillis = j11;
                                                    } else {
                                                        str4 = "template is null or download is not ready";
                                                    }
                                                    str6 = str4;
                                                    j11 = jCurrentTimeMillis;
                                                } else {
                                                    zIsEmpty = TextUtils.isEmpty(value.f());
                                                    iJ = value.j();
                                                    if (iJ == 5) {
                                                        if (value.o()) {
                                                            value.t();
                                                            this.f39940g.remove(map);
                                                            i13--;
                                                            str4 = "task is displayed";
                                                            str6 = str4;
                                                        } else {
                                                            if (zIsEmpty) {
                                                                if (a(str7, campaignExC)) {
                                                                }
                                                                return null;
                                                            }
                                                            value.a(0, 0);
                                                            if (i11 == 95) {
                                                                arrayList.add(value);
                                                            } else {
                                                                str6 = "resource path is not effective";
                                                            }
                                                            arrayList = arrayList;
                                                            j11 = jCurrentTimeMillis;
                                                            str6 = str8;
                                                        }
                                                        j11 = jCurrentTimeMillis;
                                                    } else {
                                                        arrayList = arrayList;
                                                        if (q0.a().a("u_n_c_e_d", true)) {
                                                            jI = value.i();
                                                            if (value.j() == 1) {
                                                                j12 = jCurrentTimeMillis - jI;
                                                                j11 = jCurrentTimeMillis;
                                                                if (j12 > this.f39942i * 1000) {
                                                                    value.c("download timeout");
                                                                    value.b();
                                                                    this.f39940g.remove(map);
                                                                    i13--;
                                                                    if (i11 != 1) {
                                                                    }
                                                                    str6 = "video download time over dlct";
                                                                    arrayList = arrayList;
                                                                }
                                                            } else {
                                                                j11 = jCurrentTimeMillis;
                                                            }
                                                            if (iJ != 4) {
                                                            }
                                                            this.f39940g.remove(map);
                                                            value.b();
                                                            i13--;
                                                            str5 = "video download stop or pause";
                                                            str6 = str5;
                                                            arrayList = arrayList;
                                                        } else {
                                                            j11 = jCurrentTimeMillis;
                                                            i12 = 1;
                                                        }
                                                        if (iJ == i12) {
                                                            if (i11 == 94) {
                                                            }
                                                            if (!a(value, b(campaignExC), z11)) {
                                                            }
                                                            str2 = "video or endcard or image list is downloading or fail";
                                                            str6 = str2;
                                                        } else {
                                                            if (value.o()) {
                                                                str5 = "video was displayed";
                                                                str6 = str5;
                                                                arrayList = arrayList;
                                                            } else {
                                                                if (!MBridgeConstans.IS_DOWANLOAD_FINSH_PLAY) {
                                                                    if (!a(value, b(campaignExC), z11)) {
                                                                    }
                                                                    str8 = "video or endcard or image list is downloading or fail";
                                                                }
                                                                if (i11 == 94) {
                                                                }
                                                                if (!a(value, b(campaignExC), z11)) {
                                                                }
                                                                str2 = "video or endcard or image list is downloading or fail";
                                                                str6 = str2;
                                                            }
                                                            str6 = str8;
                                                            e.printStackTrace();
                                                        }
                                                        str6 = str8;
                                                    }
                                                    it2 = it;
                                                    jCurrentTimeMillis = j11;
                                                }
                                            } catch (Exception e14) {
                                                e = e14;
                                                arrayList = arrayList;
                                            }
                                        }
                                        arrayList = arrayList;
                                        it2 = it;
                                        jCurrentTimeMillis = j11;
                                    }
                                } catch (Exception e15) {
                                    e = e15;
                                    arrayList = arrayList;
                                }
                            }
                            i13++;
                        }
                        arrayList = arrayList;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                } catch (Exception e16) {
                    e = e16;
                    arrayList = arrayList;
                }
            }
        } else {
            arrayList = arrayList;
        }
        try {
            if (arrayList.size() == 0 && eVar != null) {
                eVar.a("is_ready_fail_reason", str6);
            }
        } catch (Throwable th3) {
            o0.b("UnitCacheCtroller", th3.getMessage());
        }
        return arrayList;
    }

    public void a(com.mbridge.msdk.videocommon.listener.a aVar) {
        k kVar;
        if (!this.f39950q || (kVar = this.f39949p) == null) {
            this.f39936c = aVar;
        } else {
            kVar.a(aVar);
        }
    }

    public void a(String str, com.mbridge.msdk.videocommon.listener.a aVar) {
        k kVar;
        if (this.f39950q && (kVar = this.f39949p) != null) {
            kVar.a(str, aVar);
            return;
        }
        if (this.f39938e == null) {
            this.f39938e = new ConcurrentHashMap<>();
        }
        if (aVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.f39938e.put(str, aVar);
    }

    public boolean a(List<CampaignEx> list, String str) {
        if (list == null || list.size() == 0) {
            return false;
        }
        for (int i11 = 0; i11 < list.size(); i11++) {
            CampaignEx campaignEx = list.get(i11);
            if (campaignEx == null || !a(new com.mbridge.msdk.videocommon.download.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx, str, this.f39945l), b(campaignEx), false) || !a(campaignEx.getendcard_url(), campaignEx)) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x019d A[Catch: all -> 0x0033, Exception -> 0x0036, TRY_LEAVE, TryCatch #1 {Exception -> 0x0036, blocks: (B:11:0x0019, B:15:0x0025, B:32:0x0075, B:33:0x007a, B:35:0x0082, B:36:0x0092, B:38:0x0098, B:40:0x00a6, B:44:0x00b2, B:45:0x00bc, B:47:0x00c2, B:54:0x00e4, B:57:0x00ec, B:60:0x00f3, B:62:0x0103, B:63:0x010b, B:91:0x0166, B:93:0x0178, B:99:0x0189, B:101:0x018f, B:146:0x023b, B:103:0x019d, B:107:0x01a7, B:109:0x01ad, B:117:0x01b9, B:119:0x01c6, B:121:0x01d0, B:123:0x01de, B:129:0x0206, B:131:0x020c, B:133:0x0212, B:137:0x021d, B:145:0x0233, B:148:0x0240, B:151:0x024b, B:153:0x024f, B:155:0x0259, B:157:0x025f, B:161:0x0267, B:164:0x0271, B:166:0x027b, B:168:0x0281, B:67:0x0119, B:69:0x011f, B:71:0x0129, B:74:0x0136, B:76:0x013c, B:78:0x0142, B:79:0x0146, B:81:0x014c, B:85:0x0154, B:87:0x015e, B:23:0x0039, B:25:0x0045, B:31:0x005b, B:174:0x02a3, B:29:0x004f), top: B:185:0x0019, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:109:0x01ad A[Catch: all -> 0x0033, Exception -> 0x0036, TRY_LEAVE, TryCatch #1 {Exception -> 0x0036, blocks: (B:11:0x0019, B:15:0x0025, B:32:0x0075, B:33:0x007a, B:35:0x0082, B:36:0x0092, B:38:0x0098, B:40:0x00a6, B:44:0x00b2, B:45:0x00bc, B:47:0x00c2, B:54:0x00e4, B:57:0x00ec, B:60:0x00f3, B:62:0x0103, B:63:0x010b, B:91:0x0166, B:93:0x0178, B:99:0x0189, B:101:0x018f, B:146:0x023b, B:103:0x019d, B:107:0x01a7, B:109:0x01ad, B:117:0x01b9, B:119:0x01c6, B:121:0x01d0, B:123:0x01de, B:129:0x0206, B:131:0x020c, B:133:0x0212, B:137:0x021d, B:145:0x0233, B:148:0x0240, B:151:0x024b, B:153:0x024f, B:155:0x0259, B:157:0x025f, B:161:0x0267, B:164:0x0271, B:166:0x027b, B:168:0x0281, B:67:0x0119, B:69:0x011f, B:71:0x0129, B:74:0x0136, B:76:0x013c, B:78:0x0142, B:79:0x0146, B:81:0x014c, B:85:0x0154, B:87:0x015e, B:23:0x0039, B:25:0x0045, B:31:0x005b, B:174:0x02a3, B:29:0x004f), top: B:185:0x0019, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:116:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:119:0x01c6 A[Catch: all -> 0x0033, Exception -> 0x0036, TryCatch #1 {Exception -> 0x0036, blocks: (B:11:0x0019, B:15:0x0025, B:32:0x0075, B:33:0x007a, B:35:0x0082, B:36:0x0092, B:38:0x0098, B:40:0x00a6, B:44:0x00b2, B:45:0x00bc, B:47:0x00c2, B:54:0x00e4, B:57:0x00ec, B:60:0x00f3, B:62:0x0103, B:63:0x010b, B:91:0x0166, B:93:0x0178, B:99:0x0189, B:101:0x018f, B:146:0x023b, B:103:0x019d, B:107:0x01a7, B:109:0x01ad, B:117:0x01b9, B:119:0x01c6, B:121:0x01d0, B:123:0x01de, B:129:0x0206, B:131:0x020c, B:133:0x0212, B:137:0x021d, B:145:0x0233, B:148:0x0240, B:151:0x024b, B:153:0x024f, B:155:0x0259, B:157:0x025f, B:161:0x0267, B:164:0x0271, B:166:0x027b, B:168:0x0281, B:67:0x0119, B:69:0x011f, B:71:0x0129, B:74:0x0136, B:76:0x013c, B:78:0x0142, B:79:0x0146, B:81:0x014c, B:85:0x0154, B:87:0x015e, B:23:0x0039, B:25:0x0045, B:31:0x005b, B:174:0x02a3, B:29:0x004f), top: B:185:0x0019, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:121:0x01d0 A[Catch: all -> 0x0033, Exception -> 0x0036, TryCatch #1 {Exception -> 0x0036, blocks: (B:11:0x0019, B:15:0x0025, B:32:0x0075, B:33:0x007a, B:35:0x0082, B:36:0x0092, B:38:0x0098, B:40:0x00a6, B:44:0x00b2, B:45:0x00bc, B:47:0x00c2, B:54:0x00e4, B:57:0x00ec, B:60:0x00f3, B:62:0x0103, B:63:0x010b, B:91:0x0166, B:93:0x0178, B:99:0x0189, B:101:0x018f, B:146:0x023b, B:103:0x019d, B:107:0x01a7, B:109:0x01ad, B:117:0x01b9, B:119:0x01c6, B:121:0x01d0, B:123:0x01de, B:129:0x0206, B:131:0x020c, B:133:0x0212, B:137:0x021d, B:145:0x0233, B:148:0x0240, B:151:0x024b, B:153:0x024f, B:155:0x0259, B:157:0x025f, B:161:0x0267, B:164:0x0271, B:166:0x027b, B:168:0x0281, B:67:0x0119, B:69:0x011f, B:71:0x0129, B:74:0x0136, B:76:0x013c, B:78:0x0142, B:79:0x0146, B:81:0x014c, B:85:0x0154, B:87:0x015e, B:23:0x0039, B:25:0x0045, B:31:0x005b, B:174:0x02a3, B:29:0x004f), top: B:185:0x0019, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:123:0x01de A[Catch: all -> 0x0033, Exception -> 0x0036, TryCatch #1 {Exception -> 0x0036, blocks: (B:11:0x0019, B:15:0x0025, B:32:0x0075, B:33:0x007a, B:35:0x0082, B:36:0x0092, B:38:0x0098, B:40:0x00a6, B:44:0x00b2, B:45:0x00bc, B:47:0x00c2, B:54:0x00e4, B:57:0x00ec, B:60:0x00f3, B:62:0x0103, B:63:0x010b, B:91:0x0166, B:93:0x0178, B:99:0x0189, B:101:0x018f, B:146:0x023b, B:103:0x019d, B:107:0x01a7, B:109:0x01ad, B:117:0x01b9, B:119:0x01c6, B:121:0x01d0, B:123:0x01de, B:129:0x0206, B:131:0x020c, B:133:0x0212, B:137:0x021d, B:145:0x0233, B:148:0x0240, B:151:0x024b, B:153:0x024f, B:155:0x0259, B:157:0x025f, B:161:0x0267, B:164:0x0271, B:166:0x027b, B:168:0x0281, B:67:0x0119, B:69:0x011f, B:71:0x0129, B:74:0x0136, B:76:0x013c, B:78:0x0142, B:79:0x0146, B:81:0x014c, B:85:0x0154, B:87:0x015e, B:23:0x0039, B:25:0x0045, B:31:0x005b, B:174:0x02a3, B:29:0x004f), top: B:185:0x0019, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:125:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:128:0x0204  */
    /* JADX WARN: Code duplicated, block: B:133:0x0212 A[Catch: all -> 0x0033, Exception -> 0x0036, TRY_LEAVE, TryCatch #1 {Exception -> 0x0036, blocks: (B:11:0x0019, B:15:0x0025, B:32:0x0075, B:33:0x007a, B:35:0x0082, B:36:0x0092, B:38:0x0098, B:40:0x00a6, B:44:0x00b2, B:45:0x00bc, B:47:0x00c2, B:54:0x00e4, B:57:0x00ec, B:60:0x00f3, B:62:0x0103, B:63:0x010b, B:91:0x0166, B:93:0x0178, B:99:0x0189, B:101:0x018f, B:146:0x023b, B:103:0x019d, B:107:0x01a7, B:109:0x01ad, B:117:0x01b9, B:119:0x01c6, B:121:0x01d0, B:123:0x01de, B:129:0x0206, B:131:0x020c, B:133:0x0212, B:137:0x021d, B:145:0x0233, B:148:0x0240, B:151:0x024b, B:153:0x024f, B:155:0x0259, B:157:0x025f, B:161:0x0267, B:164:0x0271, B:166:0x027b, B:168:0x0281, B:67:0x0119, B:69:0x011f, B:71:0x0129, B:74:0x0136, B:76:0x013c, B:78:0x0142, B:79:0x0146, B:81:0x014c, B:85:0x0154, B:87:0x015e, B:23:0x0039, B:25:0x0045, B:31:0x005b, B:174:0x02a3, B:29:0x004f), top: B:185:0x0019, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:137:0x021d A[Catch: all -> 0x0033, Exception -> 0x0036, TRY_ENTER, TryCatch #1 {Exception -> 0x0036, blocks: (B:11:0x0019, B:15:0x0025, B:32:0x0075, B:33:0x007a, B:35:0x0082, B:36:0x0092, B:38:0x0098, B:40:0x00a6, B:44:0x00b2, B:45:0x00bc, B:47:0x00c2, B:54:0x00e4, B:57:0x00ec, B:60:0x00f3, B:62:0x0103, B:63:0x010b, B:91:0x0166, B:93:0x0178, B:99:0x0189, B:101:0x018f, B:146:0x023b, B:103:0x019d, B:107:0x01a7, B:109:0x01ad, B:117:0x01b9, B:119:0x01c6, B:121:0x01d0, B:123:0x01de, B:129:0x0206, B:131:0x020c, B:133:0x0212, B:137:0x021d, B:145:0x0233, B:148:0x0240, B:151:0x024b, B:153:0x024f, B:155:0x0259, B:157:0x025f, B:161:0x0267, B:164:0x0271, B:166:0x027b, B:168:0x0281, B:67:0x0119, B:69:0x011f, B:71:0x0129, B:74:0x0136, B:76:0x013c, B:78:0x0142, B:79:0x0146, B:81:0x014c, B:85:0x0154, B:87:0x015e, B:23:0x0039, B:25:0x0045, B:31:0x005b, B:174:0x02a3, B:29:0x004f), top: B:185:0x0019, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:139:0x022a  */
    /* JADX WARN: Code duplicated, block: B:148:0x0240 A[Catch: all -> 0x0033, Exception -> 0x0036, TryCatch #1 {Exception -> 0x0036, blocks: (B:11:0x0019, B:15:0x0025, B:32:0x0075, B:33:0x007a, B:35:0x0082, B:36:0x0092, B:38:0x0098, B:40:0x00a6, B:44:0x00b2, B:45:0x00bc, B:47:0x00c2, B:54:0x00e4, B:57:0x00ec, B:60:0x00f3, B:62:0x0103, B:63:0x010b, B:91:0x0166, B:93:0x0178, B:99:0x0189, B:101:0x018f, B:146:0x023b, B:103:0x019d, B:107:0x01a7, B:109:0x01ad, B:117:0x01b9, B:119:0x01c6, B:121:0x01d0, B:123:0x01de, B:129:0x0206, B:131:0x020c, B:133:0x0212, B:137:0x021d, B:145:0x0233, B:148:0x0240, B:151:0x024b, B:153:0x024f, B:155:0x0259, B:157:0x025f, B:161:0x0267, B:164:0x0271, B:166:0x027b, B:168:0x0281, B:67:0x0119, B:69:0x011f, B:71:0x0129, B:74:0x0136, B:76:0x013c, B:78:0x0142, B:79:0x0146, B:81:0x014c, B:85:0x0154, B:87:0x015e, B:23:0x0039, B:25:0x0045, B:31:0x005b, B:174:0x02a3, B:29:0x004f), top: B:185:0x0019, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:150:0x0246 A[PHI: r0 r12 r22
  0x0246: PHI (r0v14 boolean) = (r0v15 boolean), (r0v26 boolean) binds: [B:73:0x0131, B:149:0x0244] A[DONT_GENERATE, DONT_INLINE]
  0x0246: PHI (r12v6 int) = (r12v2 int), (r12v7 int) binds: [B:73:0x0131, B:149:0x0244] A[DONT_GENERATE, DONT_INLINE]
  0x0246: PHI (r22v5 long) = (r22v6 long), (r22v8 long) binds: [B:73:0x0131, B:149:0x0244] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:151:0x024b A[Catch: all -> 0x0033, Exception -> 0x0036, TryCatch #1 {Exception -> 0x0036, blocks: (B:11:0x0019, B:15:0x0025, B:32:0x0075, B:33:0x007a, B:35:0x0082, B:36:0x0092, B:38:0x0098, B:40:0x00a6, B:44:0x00b2, B:45:0x00bc, B:47:0x00c2, B:54:0x00e4, B:57:0x00ec, B:60:0x00f3, B:62:0x0103, B:63:0x010b, B:91:0x0166, B:93:0x0178, B:99:0x0189, B:101:0x018f, B:146:0x023b, B:103:0x019d, B:107:0x01a7, B:109:0x01ad, B:117:0x01b9, B:119:0x01c6, B:121:0x01d0, B:123:0x01de, B:129:0x0206, B:131:0x020c, B:133:0x0212, B:137:0x021d, B:145:0x0233, B:148:0x0240, B:151:0x024b, B:153:0x024f, B:155:0x0259, B:157:0x025f, B:161:0x0267, B:164:0x0271, B:166:0x027b, B:168:0x0281, B:67:0x0119, B:69:0x011f, B:71:0x0129, B:74:0x0136, B:76:0x013c, B:78:0x0142, B:79:0x0146, B:81:0x014c, B:85:0x0154, B:87:0x015e, B:23:0x0039, B:25:0x0045, B:31:0x005b, B:174:0x02a3, B:29:0x004f), top: B:185:0x0019, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:153:0x024f A[Catch: all -> 0x0033, Exception -> 0x0036, TryCatch #1 {Exception -> 0x0036, blocks: (B:11:0x0019, B:15:0x0025, B:32:0x0075, B:33:0x007a, B:35:0x0082, B:36:0x0092, B:38:0x0098, B:40:0x00a6, B:44:0x00b2, B:45:0x00bc, B:47:0x00c2, B:54:0x00e4, B:57:0x00ec, B:60:0x00f3, B:62:0x0103, B:63:0x010b, B:91:0x0166, B:93:0x0178, B:99:0x0189, B:101:0x018f, B:146:0x023b, B:103:0x019d, B:107:0x01a7, B:109:0x01ad, B:117:0x01b9, B:119:0x01c6, B:121:0x01d0, B:123:0x01de, B:129:0x0206, B:131:0x020c, B:133:0x0212, B:137:0x021d, B:145:0x0233, B:148:0x0240, B:151:0x024b, B:153:0x024f, B:155:0x0259, B:157:0x025f, B:161:0x0267, B:164:0x0271, B:166:0x027b, B:168:0x0281, B:67:0x0119, B:69:0x011f, B:71:0x0129, B:74:0x0136, B:76:0x013c, B:78:0x0142, B:79:0x0146, B:81:0x014c, B:85:0x0154, B:87:0x015e, B:23:0x0039, B:25:0x0045, B:31:0x005b, B:174:0x02a3, B:29:0x004f), top: B:185:0x0019, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:163:0x026f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:164:0x0271 A[Catch: all -> 0x0033, Exception -> 0x0036, TryCatch #1 {Exception -> 0x0036, blocks: (B:11:0x0019, B:15:0x0025, B:32:0x0075, B:33:0x007a, B:35:0x0082, B:36:0x0092, B:38:0x0098, B:40:0x00a6, B:44:0x00b2, B:45:0x00bc, B:47:0x00c2, B:54:0x00e4, B:57:0x00ec, B:60:0x00f3, B:62:0x0103, B:63:0x010b, B:91:0x0166, B:93:0x0178, B:99:0x0189, B:101:0x018f, B:146:0x023b, B:103:0x019d, B:107:0x01a7, B:109:0x01ad, B:117:0x01b9, B:119:0x01c6, B:121:0x01d0, B:123:0x01de, B:129:0x0206, B:131:0x020c, B:133:0x0212, B:137:0x021d, B:145:0x0233, B:148:0x0240, B:151:0x024b, B:153:0x024f, B:155:0x0259, B:157:0x025f, B:161:0x0267, B:164:0x0271, B:166:0x027b, B:168:0x0281, B:67:0x0119, B:69:0x011f, B:71:0x0129, B:74:0x0136, B:76:0x013c, B:78:0x0142, B:79:0x0146, B:81:0x014c, B:85:0x0154, B:87:0x015e, B:23:0x0039, B:25:0x0045, B:31:0x005b, B:174:0x02a3, B:29:0x004f), top: B:185:0x0019, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:190:0x01a7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:191:0x01a5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:192:0x021b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:196:0x018f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:197:0x01f6 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:199:0x020c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:202:0x0231 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:211:0x019b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:91:0x0166 A[Catch: all -> 0x0033, Exception -> 0x0036, TRY_ENTER, TryCatch #1 {Exception -> 0x0036, blocks: (B:11:0x0019, B:15:0x0025, B:32:0x0075, B:33:0x007a, B:35:0x0082, B:36:0x0092, B:38:0x0098, B:40:0x00a6, B:44:0x00b2, B:45:0x00bc, B:47:0x00c2, B:54:0x00e4, B:57:0x00ec, B:60:0x00f3, B:62:0x0103, B:63:0x010b, B:91:0x0166, B:93:0x0178, B:99:0x0189, B:101:0x018f, B:146:0x023b, B:103:0x019d, B:107:0x01a7, B:109:0x01ad, B:117:0x01b9, B:119:0x01c6, B:121:0x01d0, B:123:0x01de, B:129:0x0206, B:131:0x020c, B:133:0x0212, B:137:0x021d, B:145:0x0233, B:148:0x0240, B:151:0x024b, B:153:0x024f, B:155:0x0259, B:157:0x025f, B:161:0x0267, B:164:0x0271, B:166:0x027b, B:168:0x0281, B:67:0x0119, B:69:0x011f, B:71:0x0129, B:74:0x0136, B:76:0x013c, B:78:0x0142, B:79:0x0146, B:81:0x014c, B:85:0x0154, B:87:0x015e, B:23:0x0039, B:25:0x0045, B:31:0x005b, B:174:0x02a3, B:29:0x004f), top: B:185:0x0019, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:93:0x0178 A[Catch: all -> 0x0033, Exception -> 0x0036, TRY_LEAVE, TryCatch #1 {Exception -> 0x0036, blocks: (B:11:0x0019, B:15:0x0025, B:32:0x0075, B:33:0x007a, B:35:0x0082, B:36:0x0092, B:38:0x0098, B:40:0x00a6, B:44:0x00b2, B:45:0x00bc, B:47:0x00c2, B:54:0x00e4, B:57:0x00ec, B:60:0x00f3, B:62:0x0103, B:63:0x010b, B:91:0x0166, B:93:0x0178, B:99:0x0189, B:101:0x018f, B:146:0x023b, B:103:0x019d, B:107:0x01a7, B:109:0x01ad, B:117:0x01b9, B:119:0x01c6, B:121:0x01d0, B:123:0x01de, B:129:0x0206, B:131:0x020c, B:133:0x0212, B:137:0x021d, B:145:0x0233, B:148:0x0240, B:151:0x024b, B:153:0x024f, B:155:0x0259, B:157:0x025f, B:161:0x0267, B:164:0x0271, B:166:0x027b, B:168:0x0281, B:67:0x0119, B:69:0x011f, B:71:0x0129, B:74:0x0136, B:76:0x013c, B:78:0x0142, B:79:0x0146, B:81:0x014c, B:85:0x0154, B:87:0x015e, B:23:0x0039, B:25:0x0045, B:31:0x005b, B:174:0x02a3, B:29:0x004f), top: B:185:0x0019, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:99:0x0189 A[Catch: all -> 0x0033, Exception -> 0x0036, TRY_ENTER, TryCatch #1 {Exception -> 0x0036, blocks: (B:11:0x0019, B:15:0x0025, B:32:0x0075, B:33:0x007a, B:35:0x0082, B:36:0x0092, B:38:0x0098, B:40:0x00a6, B:44:0x00b2, B:45:0x00bc, B:47:0x00c2, B:54:0x00e4, B:57:0x00ec, B:60:0x00f3, B:62:0x0103, B:63:0x010b, B:91:0x0166, B:93:0x0178, B:99:0x0189, B:101:0x018f, B:146:0x023b, B:103:0x019d, B:107:0x01a7, B:109:0x01ad, B:117:0x01b9, B:119:0x01c6, B:121:0x01d0, B:123:0x01de, B:129:0x0206, B:131:0x020c, B:133:0x0212, B:137:0x021d, B:145:0x0233, B:148:0x0240, B:151:0x024b, B:153:0x024f, B:155:0x0259, B:157:0x025f, B:161:0x0267, B:164:0x0271, B:166:0x027b, B:168:0x0281, B:67:0x0119, B:69:0x011f, B:71:0x0129, B:74:0x0136, B:76:0x013c, B:78:0x0142, B:79:0x0146, B:81:0x014c, B:85:0x0154, B:87:0x015e, B:23:0x0039, B:25:0x0045, B:31:0x005b, B:174:0x02a3, B:29:0x004f), top: B:185:0x0019, outer: #0 }] */
    public com.mbridge.msdk.videocommon.download.a b(int i11, boolean z10) {
        List<CampaignEx> listB;
        boolean z11;
        char c11;
        boolean zIsEmpty;
        int iJ;
        int i12;
        long jI;
        int i13;
        k kVar;
        i11 = i11;
        z10 = z10;
        if (this.f39950q && (kVar = this.f39949p) != null) {
            return kVar.i();
        }
        CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> copyOnWriteArrayList = this.f39940g;
        if (copyOnWriteArrayList == null) {
            return null;
        }
        synchronized (copyOnWriteArrayList) {
            try {
                int i14 = this.f39946m;
                char c12 = 287;
                int i15 = 94;
                boolean z12 = true;
                if (i14 == 94 || i14 == 287) {
                    listB = com.mbridge.msdk.videocommon.cache.a.a().b(this.f39943j, 1, z10);
                    if ((listB == null || listB.size() == 0) && (i11 == 94 || i11 == 287)) {
                        listB = com.mbridge.msdk.videocommon.cache.a.a().c(this.f39943j, 1, z10);
                    }
                    if (listB == null) {
                        o0.a("UnitCacheCtroller", "UnitCache isReady campaignList = 0");
                        return null;
                    }
                    o0.a("UnitCacheCtroller", "UnitCache isReady campaignList = " + listB.size());
                } else {
                    listB = com.mbridge.msdk.videocommon.cache.a.a().c(this.f39943j, 1);
                    if (listB == null) {
                        return null;
                    }
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                int i16 = 0;
                while (i16 < this.f39940g.size()) {
                    Map<String, com.mbridge.msdk.videocommon.download.a> map = this.f39940g.get(i16);
                    Iterator<Map.Entry<String, com.mbridge.msdk.videocommon.download.a>> it = map.entrySet().iterator();
                    while (it.hasNext()) {
                        com.mbridge.msdk.videocommon.download.a value = it.next().getValue();
                        if (value == null || value.c() == null) {
                            z11 = z12;
                            c11 = c12;
                            z12 = z11;
                            c12 = c11;
                            jCurrentTimeMillis = jCurrentTimeMillis;
                        } else {
                            CampaignEx campaignExC = value.c();
                            Iterator<CampaignEx> it2 = listB.iterator();
                            boolean z13 = false;
                            while (it2.hasNext()) {
                                if (campaignExC.getId().equals(it2.next().getId())) {
                                    z13 = true;
                                }
                            }
                            if (z13 && ((!z10 || campaignExC.isBidCampaign()) && (z10 || !campaignExC.isBidCampaign()))) {
                                String str = campaignExC.getendcard_url();
                                String videoUrlEncode = campaignExC.getVideoUrlEncode();
                                String strE = campaignExC.getRewardTemplateMode() != null ? campaignExC.getRewardTemplateMode().e() : "";
                                CampaignEx.c rewardTemplateMode = campaignExC.getRewardTemplateMode();
                                if (this.f39946m == i15 || i11 == 287) {
                                    if (TextUtils.isEmpty(strE) || strE.contains(CampaignEx.KEY_IS_CMPT_ENTRY) || a(this.f39946m, campaignExC, strE)) {
                                        if (!b(str, campaignExC)) {
                                            zIsEmpty = TextUtils.isEmpty(value.f());
                                            iJ = value.j();
                                            if (this.f39946m != 298 && a(value, b(campaignExC))) {
                                                return value;
                                            }
                                            if (iJ != 5) {
                                                if (q0.a().a("u_n_c_e_d", true)) {
                                                    jCurrentTimeMillis = jCurrentTimeMillis;
                                                    if (this.f39946m == 95) {
                                                        if (!q0.a().a("u_n_c_e_d", true)) {
                                                        }
                                                        z11 = true;
                                                        if (iJ == 1) {
                                                            if (value.o()) {
                                                                i15 = 94;
                                                                c11 = 287;
                                                            } else if (!MBridgeConstans.IS_DOWANLOAD_FINSH_PLAY) {
                                                                return value;
                                                            }
                                                            z12 = z11;
                                                            c12 = c11;
                                                            jCurrentTimeMillis = jCurrentTimeMillis;
                                                        }
                                                        i12 = this.f39946m;
                                                        i15 = 94;
                                                        c11 = 287;
                                                        return i12 != 94 ? value : value;
                                                        z12 = z11;
                                                        c12 = c11;
                                                        jCurrentTimeMillis = jCurrentTimeMillis;
                                                    } else {
                                                        if (value.o()) {
                                                            return value;
                                                        }
                                                        value.t();
                                                        this.f39940g.remove(map);
                                                    }
                                                } else {
                                                    jI = value.i();
                                                    if (value.j() == 1) {
                                                        jCurrentTimeMillis = jCurrentTimeMillis;
                                                        if (jCurrentTimeMillis - jI > this.f39942i * 1000) {
                                                            value.c("download timeout");
                                                            value.b();
                                                            this.f39940g.remove(map);
                                                            i16--;
                                                            i13 = this.f39946m;
                                                            if (i13 != 1 || i13 == 94) {
                                                            }
                                                        }
                                                    } else {
                                                        jCurrentTimeMillis = jCurrentTimeMillis;
                                                    }
                                                    if (this.f39946m == 95) {
                                                        if (!q0.a().a("u_n_c_e_d", true) || (iJ != 4 && iJ != 2)) {
                                                            z11 = true;
                                                            if (iJ == 1) {
                                                                if (value.o()) {
                                                                    i15 = 94;
                                                                    c11 = 287;
                                                                } else if (!MBridgeConstans.IS_DOWANLOAD_FINSH_PLAY && a(value, b(campaignExC)) && a(str, campaignExC) && a(rewardTemplateMode)) {
                                                                    return value;
                                                                }
                                                                z12 = z11;
                                                                c12 = c11;
                                                                jCurrentTimeMillis = jCurrentTimeMillis;
                                                            }
                                                            i12 = this.f39946m;
                                                            i15 = 94;
                                                            c11 = 287;
                                                            if ((i12 != 94 || i12 == 287) && a(value, b(campaignExC)) && a(str, campaignExC) && a(rewardTemplateMode)) {
                                                            }
                                                            z12 = z11;
                                                            c12 = c11;
                                                            jCurrentTimeMillis = jCurrentTimeMillis;
                                                        }
                                                        this.f39940g.remove(map);
                                                        value.b();
                                                    } else {
                                                        if (value.o()) {
                                                            return value;
                                                        }
                                                        value.t();
                                                        this.f39940g.remove(map);
                                                    }
                                                }
                                                jCurrentTimeMillis = jCurrentTimeMillis;
                                                c12 = 287;
                                                i15 = 94;
                                                z12 = true;
                                            } else if (value.o()) {
                                                value.t();
                                                this.f39940g.remove(map);
                                                jCurrentTimeMillis = jCurrentTimeMillis;
                                            } else {
                                                if (zIsEmpty) {
                                                    if (a(str, campaignExC) || !a(rewardTemplateMode)) {
                                                        return null;
                                                    }
                                                    return value;
                                                }
                                                value.a(0, 0);
                                                if (this.f39946m == 95) {
                                                    return value;
                                                }
                                            }
                                            i16--;
                                            jCurrentTimeMillis = jCurrentTimeMillis;
                                            c12 = 287;
                                            i15 = 94;
                                            z12 = true;
                                        } else if (value.o()) {
                                            value.t();
                                        } else {
                                            if (y0.a(videoUrlEncode)) {
                                                if (a(rewardTemplateMode)) {
                                                    return value;
                                                }
                                            } else if (a(value, b(campaignExC)) && a(rewardTemplateMode)) {
                                                return value;
                                            }
                                            zIsEmpty = TextUtils.isEmpty(value.f());
                                            iJ = value.j();
                                            if (this.f39946m != 298) {
                                            }
                                            if (iJ != 5) {
                                                if (q0.a().a("u_n_c_e_d", true)) {
                                                    jI = value.i();
                                                    if (value.j() == 1) {
                                                        jCurrentTimeMillis = jCurrentTimeMillis;
                                                        if (jCurrentTimeMillis - jI > this.f39942i * 1000) {
                                                            value.c("download timeout");
                                                            value.b();
                                                            this.f39940g.remove(map);
                                                            i16--;
                                                            i13 = this.f39946m;
                                                            if (i13 != 1) {
                                                            }
                                                        }
                                                    } else {
                                                        jCurrentTimeMillis = jCurrentTimeMillis;
                                                    }
                                                    if (this.f39946m == 95) {
                                                        if (!q0.a().a("u_n_c_e_d", true)) {
                                                        }
                                                        z11 = true;
                                                        if (iJ == 1) {
                                                            if (value.o()) {
                                                                i15 = 94;
                                                                c11 = 287;
                                                            } else if (!MBridgeConstans.IS_DOWANLOAD_FINSH_PLAY) {
                                                                return value;
                                                            }
                                                            z12 = z11;
                                                            c12 = c11;
                                                            jCurrentTimeMillis = jCurrentTimeMillis;
                                                        }
                                                        i12 = this.f39946m;
                                                        i15 = 94;
                                                        c11 = 287;
                                                        if (i12 != 94) {
                                                        }
                                                        z12 = z11;
                                                        c12 = c11;
                                                        jCurrentTimeMillis = jCurrentTimeMillis;
                                                    } else {
                                                        if (value.o()) {
                                                            return value;
                                                        }
                                                        value.t();
                                                        this.f39940g.remove(map);
                                                    }
                                                } else {
                                                    jCurrentTimeMillis = jCurrentTimeMillis;
                                                    if (this.f39946m == 95) {
                                                        if (!q0.a().a("u_n_c_e_d", true)) {
                                                        }
                                                        z11 = true;
                                                        if (iJ == 1) {
                                                            if (value.o()) {
                                                                i15 = 94;
                                                                c11 = 287;
                                                            } else if (!MBridgeConstans.IS_DOWANLOAD_FINSH_PLAY) {
                                                                return value;
                                                            }
                                                            z12 = z11;
                                                            c12 = c11;
                                                            jCurrentTimeMillis = jCurrentTimeMillis;
                                                        }
                                                        i12 = this.f39946m;
                                                        i15 = 94;
                                                        c11 = 287;
                                                        if (i12 != 94) {
                                                        }
                                                        z12 = z11;
                                                        c12 = c11;
                                                        jCurrentTimeMillis = jCurrentTimeMillis;
                                                    } else {
                                                        if (value.o()) {
                                                            return value;
                                                        }
                                                        value.t();
                                                        this.f39940g.remove(map);
                                                    }
                                                }
                                                jCurrentTimeMillis = jCurrentTimeMillis;
                                                c12 = 287;
                                                i15 = 94;
                                                z12 = true;
                                            } else if (value.o()) {
                                                value.t();
                                                this.f39940g.remove(map);
                                                jCurrentTimeMillis = jCurrentTimeMillis;
                                            } else {
                                                if (zIsEmpty) {
                                                    if (a(str, campaignExC)) {
                                                    }
                                                    return null;
                                                }
                                                value.a(0, 0);
                                                if (this.f39946m == 95) {
                                                    return value;
                                                }
                                            }
                                            i16--;
                                            jCurrentTimeMillis = jCurrentTimeMillis;
                                            c12 = 287;
                                            i15 = 94;
                                            z12 = true;
                                        }
                                    }
                                    jCurrentTimeMillis = jCurrentTimeMillis;
                                    z11 = true;
                                    i15 = 94;
                                    c11 = 287;
                                    z12 = z11;
                                    c12 = c11;
                                    jCurrentTimeMillis = jCurrentTimeMillis;
                                } else {
                                    zIsEmpty = TextUtils.isEmpty(value.f());
                                    iJ = value.j();
                                    if (this.f39946m != 298) {
                                    }
                                    if (iJ != 5) {
                                        if (q0.a().a("u_n_c_e_d", true)) {
                                            jI = value.i();
                                            if (value.j() == 1) {
                                                jCurrentTimeMillis = jCurrentTimeMillis;
                                                if (jCurrentTimeMillis - jI > this.f39942i * 1000) {
                                                    value.c("download timeout");
                                                    value.b();
                                                    this.f39940g.remove(map);
                                                    i16--;
                                                    i13 = this.f39946m;
                                                    if (i13 != 1) {
                                                    }
                                                }
                                            } else {
                                                jCurrentTimeMillis = jCurrentTimeMillis;
                                            }
                                            if (this.f39946m == 95) {
                                                if (!q0.a().a("u_n_c_e_d", true)) {
                                                }
                                                z11 = true;
                                                if (iJ == 1) {
                                                    if (value.o()) {
                                                        i15 = 94;
                                                        c11 = 287;
                                                    } else if (!MBridgeConstans.IS_DOWANLOAD_FINSH_PLAY) {
                                                        return value;
                                                    }
                                                    z12 = z11;
                                                    c12 = c11;
                                                    jCurrentTimeMillis = jCurrentTimeMillis;
                                                }
                                                i12 = this.f39946m;
                                                i15 = 94;
                                                c11 = 287;
                                                if (i12 != 94) {
                                                }
                                                z12 = z11;
                                                c12 = c11;
                                                jCurrentTimeMillis = jCurrentTimeMillis;
                                            } else {
                                                if (value.o()) {
                                                    return value;
                                                }
                                                value.t();
                                                this.f39940g.remove(map);
                                            }
                                        } else {
                                            jCurrentTimeMillis = jCurrentTimeMillis;
                                            if (this.f39946m == 95) {
                                                if (!q0.a().a("u_n_c_e_d", true)) {
                                                }
                                                z11 = true;
                                                if (iJ == 1) {
                                                    if (value.o()) {
                                                        i15 = 94;
                                                        c11 = 287;
                                                    } else if (!MBridgeConstans.IS_DOWANLOAD_FINSH_PLAY) {
                                                        return value;
                                                    }
                                                    z12 = z11;
                                                    c12 = c11;
                                                    jCurrentTimeMillis = jCurrentTimeMillis;
                                                }
                                                i12 = this.f39946m;
                                                i15 = 94;
                                                c11 = 287;
                                                if (i12 != 94) {
                                                }
                                                z12 = z11;
                                                c12 = c11;
                                                jCurrentTimeMillis = jCurrentTimeMillis;
                                            } else {
                                                if (value.o()) {
                                                    return value;
                                                }
                                                value.t();
                                                this.f39940g.remove(map);
                                            }
                                        }
                                        jCurrentTimeMillis = jCurrentTimeMillis;
                                        c12 = 287;
                                        i15 = 94;
                                        z12 = true;
                                    } else if (value.o()) {
                                        value.t();
                                        this.f39940g.remove(map);
                                        jCurrentTimeMillis = jCurrentTimeMillis;
                                    } else {
                                        if (zIsEmpty) {
                                            if (a(str, campaignExC)) {
                                            }
                                            return null;
                                        }
                                        value.a(0, 0);
                                        if (this.f39946m == 95) {
                                            return value;
                                        }
                                        jCurrentTimeMillis = jCurrentTimeMillis;
                                        z11 = true;
                                        i15 = 94;
                                        c11 = 287;
                                        z12 = z11;
                                        c12 = c11;
                                        jCurrentTimeMillis = jCurrentTimeMillis;
                                    }
                                    i16--;
                                    jCurrentTimeMillis = jCurrentTimeMillis;
                                    c12 = 287;
                                    i15 = 94;
                                    z12 = true;
                                }
                            } else {
                                z11 = true;
                                c11 = c12;
                                z12 = z11;
                                c12 = c11;
                                jCurrentTimeMillis = jCurrentTimeMillis;
                            }
                        }
                    }
                    i16++;
                    z10 = z10;
                    jCurrentTimeMillis = jCurrentTimeMillis;
                    i11 = i11;
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            return null;
        }
    }

    public void b() {
        CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> copyOnWriteArrayList;
        k kVar;
        if (this.f39950q && (kVar = this.f39949p) != null) {
            kVar.a();
            return;
        }
        if (q0.a().a("u_n_c_e_d", true) || (copyOnWriteArrayList = this.f39940g) == null) {
            return;
        }
        try {
            synchronized (copyOnWriteArrayList) {
                try {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    int i11 = 0;
                    while (i11 < this.f39940g.size()) {
                        Map<String, com.mbridge.msdk.videocommon.download.a> map = this.f39940g.get(i11);
                        Iterator<Map.Entry<String, com.mbridge.msdk.videocommon.download.a>> it = map.entrySet().iterator();
                        while (it.hasNext()) {
                            com.mbridge.msdk.videocommon.download.a value = it.next().getValue();
                            if (value != null) {
                                if (jCurrentTimeMillis - value.i() > this.f39942i * 1000 && value.j() == 1) {
                                    value.c("download timeout");
                                    value.c(this.f39945l);
                                    value.b();
                                    this.f39940g.remove(map);
                                    i11--;
                                }
                                if (value.j() != 1 && value.j() != 5 && value.j() != 0) {
                                    value.b();
                                    this.f39940g.remove(map);
                                    i11--;
                                }
                            }
                        }
                        i11++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th3.printStackTrace();
        }
    }

    public void b(String str) {
        CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> copyOnWriteArrayList;
        k kVar;
        if (this.f39950q && (kVar = this.f39949p) != null) {
            kVar.c(str);
            return;
        }
        try {
            synchronized (this.f39940g) {
                try {
                    if (!TextUtils.isEmpty(str) && (copyOnWriteArrayList = this.f39940g) != null && copyOnWriteArrayList.size() > 0) {
                        for (Map<String, com.mbridge.msdk.videocommon.download.a> map : this.f39940g) {
                            if (map != null) {
                                for (Map.Entry<String, com.mbridge.msdk.videocommon.download.a> entry : map.entrySet()) {
                                    if (entry != null && TextUtils.equals(entry.getKey(), str)) {
                                        this.f39940g.remove(map);
                                    }
                                }
                            }
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b("UnitCacheCtroller", e11.getMessage());
            }
        }
    }

    public void b(List<CampaignEx> list) {
        k kVar;
        if (this.f39950q && (kVar = this.f39949p) != null) {
            kVar.a(list);
            return;
        }
        List<CampaignEx> list2 = this.f39934a;
        if (list2 != null && list != null) {
            list2.addAll(list);
        }
        a(this.f39934a);
    }

    public CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> c() {
        k kVar;
        return (!this.f39950q || (kVar = this.f39949p) == null) ? this.f39940g : kVar.e();
    }

    /* JADX WARN: Code duplicated, block: B:56:0x00da  */
    public void d() {
        int iG;
        k kVar;
        if (this.f39950q && (kVar = this.f39949p) != null) {
            kVar.j();
            return;
        }
        b();
        CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> copyOnWriteArrayList = this.f39940g;
        if (copyOnWriteArrayList != null) {
            synchronized (copyOnWriteArrayList) {
                try {
                    if (!a(this.f39940g)) {
                        this.f39935b = true;
                    }
                    for (Map<String, com.mbridge.msdk.videocommon.download.a> map : this.f39940g) {
                        if (map != null) {
                            Iterator<Map.Entry<String, com.mbridge.msdk.videocommon.download.a>> it = map.entrySet().iterator();
                            while (it.hasNext()) {
                                com.mbridge.msdk.videocommon.download.a value = it.next().getValue();
                                if (value != null && !value.o()) {
                                    if (this.f39946m == 95) {
                                        this.f39935b = true;
                                    }
                                    int iJ = value.j();
                                    CampaignEx campaignExC = value.c();
                                    if (campaignExC != null && iJ == 0) {
                                        iJ = com.mbridge.msdk.videocommon.download.b.getInstance().b(campaignExC.getId(), campaignExC.getVideoUrlEncode());
                                    }
                                    int i11 = iJ;
                                    value.a(new b(campaignExC));
                                    int iB = b(campaignExC);
                                    if (this.f39946m == 1) {
                                        if (this.f39947n == null) {
                                            this.f39947n = com.mbridge.msdk.setting.l.i(this.f39943j);
                                        }
                                        iB = a(campaignExC);
                                    }
                                    int i12 = iB;
                                    value.d(i12);
                                    int i13 = this.f39946m;
                                    if (i13 == 94 || i13 == 287 || i13 == 95) {
                                        if (this.f39944k == null) {
                                            this.f39944k = com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.f39943j, this.f39946m == 287);
                                        }
                                        com.mbridge.msdk.videocommon.setting.c cVar = this.f39944k;
                                        iG = cVar != null ? cVar.g() : 0;
                                    } else {
                                        if (i13 != 298) {
                                            iG = 0;
                                        } else {
                                            if (this.f39948o == null) {
                                                this.f39948o = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b(), this.f39943j);
                                            }
                                            com.mbridge.msdk.setting.l lVar = this.f39948o;
                                            if (lVar != null) {
                                                iG = lVar.i();
                                            } else {
                                                iG = 0;
                                            }
                                        }
                                        if (this.f39946m == 1) {
                                            if (this.f39947n == null) {
                                                this.f39947n = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b(), this.f39943j);
                                            }
                                            com.mbridge.msdk.setting.l lVar2 = this.f39947n;
                                            if (lVar2 != null) {
                                                iG = lVar2.i();
                                            }
                                        }
                                    }
                                    value.b(iG);
                                    int videoCtnType = campaignExC != null ? campaignExC.getVideoCtnType() : 1;
                                    value.e(videoCtnType);
                                    o0.b("UnitCacheCtroller", "ready_rate : " + i12 + " cd_rate : " + iG + " videoCtnType : " + videoCtnType);
                                    if (a(value, b(campaignExC))) {
                                        String videoUrlEncode = campaignExC != null ? campaignExC.getVideoUrlEncode() : "";
                                        com.mbridge.msdk.videocommon.listener.a aVar = this.f39936c;
                                        if (aVar != null) {
                                            int i14 = this.f39946m;
                                            if (i14 == 297 || i14 == 298) {
                                                try {
                                                    aVar.a(videoUrlEncode);
                                                } catch (Exception e11) {
                                                    if (MBridgeConstans.DEBUG) {
                                                        o0.b("UnitCacheCtroller", e11.getMessage());
                                                    }
                                                }
                                            }
                                        }
                                        ConcurrentHashMap<String, com.mbridge.msdk.videocommon.listener.a> concurrentHashMap = this.f39938e;
                                        if (concurrentHashMap != null && concurrentHashMap.size() > 0) {
                                            String requestId = campaignExC != null ? campaignExC.getRequestId() : "";
                                            com.mbridge.msdk.videocommon.listener.a aVar2 = this.f39938e.get(requestId + "_" + campaignExC.getSecondRequestIndex());
                                            if (aVar2 != null) {
                                                try {
                                                    aVar2.a(videoUrlEncode);
                                                } catch (Exception e12) {
                                                    if (MBridgeConstans.DEBUG) {
                                                        o0.b("UnitCacheCtroller", e12.getMessage());
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    if (i11 != 1 && (i11 != 5 || !a(value, i12))) {
                                        if (i11 == 4) {
                                            continue;
                                        } else {
                                            if (k0.s(this.f39941h) != 9 && this.f39945l == 2) {
                                                return;
                                            }
                                            if (i11 == 2 || this.f39935b) {
                                                value.a(this.f39939f);
                                                if (a(value, i12)) {
                                                    int i15 = this.f39946m;
                                                    if (i15 == 94 || i15 == 287) {
                                                        value.w();
                                                    }
                                                } else {
                                                    int i16 = this.f39946m;
                                                    if (i16 == 1 || i16 == 95 || i16 == 298) {
                                                        this.f39935b = false;
                                                    }
                                                    value.w();
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public void e() {
        k kVar;
        if (this.f39950q && (kVar = this.f39949p) != null) {
            kVar.k();
            return;
        }
        CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> copyOnWriteArrayList = this.f39940g;
        if (copyOnWriteArrayList != null) {
            try {
                synchronized (copyOnWriteArrayList) {
                    try {
                        for (Map<String, com.mbridge.msdk.videocommon.download.a> map : this.f39940g) {
                            if (map != null) {
                                Iterator<Map.Entry<String, com.mbridge.msdk.videocommon.download.a>> it = map.entrySet().iterator();
                                while (it.hasNext()) {
                                    com.mbridge.msdk.videocommon.download.a value = it.next().getValue();
                                    if (value != null && value.j() == 1) {
                                        value.c("playing and stop download");
                                        value.b();
                                        this.f39940g.remove(map);
                                        return;
                                    }
                                }
                            }
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("UnitCacheCtroller", th3.getMessage());
                }
            }
        }
    }

    public void f(CampaignEx campaignEx) {
        k kVar;
        if (this.f39950q && (kVar = this.f39949p) != null) {
            kVar.h(campaignEx);
            return;
        }
        List<CampaignEx> list = this.f39934a;
        if (list != null && campaignEx != null) {
            list.add(campaignEx);
        }
        a(this.f39934a);
    }
}
