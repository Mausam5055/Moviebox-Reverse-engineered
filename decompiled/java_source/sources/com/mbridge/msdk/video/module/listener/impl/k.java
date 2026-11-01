package com.mbridge.msdk.video.module.listener.impl;

import android.content.Context;
import android.text.TextUtils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import com.mbridge.msdk.foundation.tools.y0;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class k extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected boolean f39460a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected CampaignEx f39461b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected List<CampaignEx> f39462c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected boolean f39463d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected com.mbridge.msdk.videocommon.download.a f39464e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected com.mbridge.msdk.videocommon.entity.c f39465f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected String f39466g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected String f39467h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected com.mbridge.msdk.video.module.listener.a f39468i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected int f39469j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f39470k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f39471l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f39472m = false;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                k kVar = k.this;
                if (!kVar.f39460a || kVar.f39461b == null || !y0.b(kVar.f39466g) || com.mbridge.msdk.foundation.controller.c.m().d() == null) {
                    return;
                }
                com.mbridge.msdk.foundation.db.i iVarA = com.mbridge.msdk.foundation.db.i.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                com.mbridge.msdk.foundation.entity.f fVar = new com.mbridge.msdk.foundation.entity.f();
                fVar.a(System.currentTimeMillis());
                fVar.b(k.this.f39466g);
                fVar.a(k.this.f39461b.getId());
                iVarA.a(fVar);
            } catch (Throwable th2) {
                o0.b("NotifyListener", th2.getMessage(), th2);
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                k kVar = k.this;
                if (kVar.f39460a && kVar.f39461b != null && y0.b(kVar.f39466g)) {
                    com.mbridge.msdk.videocommon.cache.a aVarA = com.mbridge.msdk.videocommon.cache.a.a();
                    k kVar2 = k.this;
                    aVarA.a(kVar2.f39461b, kVar2.f39466g);
                }
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    e11.printStackTrace();
                }
            }
            try {
                com.mbridge.msdk.videocommon.cache.a aVarA2 = com.mbridge.msdk.videocommon.cache.a.a();
                k kVar3 = k.this;
                aVarA2.b(kVar3.f39467h, kVar3.f39461b.getAdType());
            } catch (Exception e12) {
                if (MBridgeConstans.DEBUG) {
                    e12.printStackTrace();
                }
            } catch (Throwable th2) {
                o0.a("NotifyListener", th2.getMessage());
            }
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                com.mbridge.msdk.foundation.db.j.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d())).b(k.this.f39461b.getId());
            } catch (Throwable th2) {
                o0.b("NotifyListener", th2.getMessage(), th2);
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.videocommon.download.a aVar;
            try {
                if (q0.a().a("c_r_v_f_w_s_e", false)) {
                    return;
                }
                k kVar = k.this;
                if (!kVar.f39460a || (aVar = kVar.f39464e) == null) {
                    return;
                }
                if (aVar.c() != null && !TextUtils.isEmpty(k.this.f39464e.c().getVideoUrlEncode())) {
                    com.mbridge.msdk.foundation.db.m.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d())).a(k.this.f39464e.c().getVideoUrlEncode());
                }
                if (TextUtils.isEmpty(k.this.f39464e.k())) {
                    return;
                }
                File file = new File(k.this.f39464e.k());
                if (file.exists() && file.isFile() && file.delete()) {
                    o0.a("NotifyListener", "DEL File :" + file.getAbsolutePath());
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public k(CampaignEx campaignEx, com.mbridge.msdk.videocommon.download.a aVar, com.mbridge.msdk.videocommon.entity.c cVar, String str, String str2, com.mbridge.msdk.video.module.listener.a aVar2, int i11, boolean z10) {
        this.f39463d = false;
        this.f39468i = new f();
        this.f39469j = 1;
        if (!z10 && campaignEx != null && y0.b(str2) && aVar != null && aVar2 != null) {
            this.f39461b = campaignEx;
            this.f39467h = str;
            this.f39466g = str2;
            this.f39464e = aVar;
            this.f39465f = cVar;
            this.f39468i = aVar2;
            this.f39460a = true;
            this.f39469j = i11;
            this.f39463d = false;
            return;
        }
        if (!z10 || campaignEx == null || !y0.b(str2) || aVar2 == null) {
            return;
        }
        this.f39461b = campaignEx;
        this.f39467h = str;
        this.f39466g = str2;
        this.f39464e = aVar;
        this.f39465f = cVar;
        this.f39468i = aVar2;
        this.f39460a = true;
        this.f39469j = i11;
        this.f39463d = true;
    }

    private void d() {
        if (!this.f39460a || com.mbridge.msdk.foundation.same.buffer.b.f35370k == null || TextUtils.isEmpty(this.f39461b.getId())) {
            return;
        }
        com.mbridge.msdk.foundation.same.buffer.b.a(this.f39466g, this.f39461b, "reward");
    }

    private void f() {
        if (this.f39461b != null) {
            try {
                HashMap map = new HashMap();
                List<com.mbridge.msdk.foundation.entity.d> listA = com.mbridge.msdk.foundation.db.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(this.f39461b.getCampaignUnitId(), this.f39461b.getRequestId());
                if (listA == null || listA.size() <= 0 || listA.get(0) == null) {
                    return;
                }
                if (listA.get(0).c() == 1) {
                    map.put("encrypt_p=", "encrypt_p=" + listA.get(0).b());
                    map.put("irlfa=", "irlfa=1");
                    for (Map.Entry entry : map.entrySet()) {
                        String str = (String) entry.getKey();
                        String str2 = (String) entry.getValue();
                        CampaignEx campaignEx = this.f39461b;
                        campaignEx.setImpressionURL(campaignEx.getImpressionURL().replaceAll(str, str2));
                        CampaignEx campaignEx2 = this.f39461b;
                        campaignEx2.setOnlyImpressionURL(campaignEx2.getOnlyImpressionURL().replaceAll(str, str2));
                    }
                }
                o0.a("BidReplaceCampignDao", "removeReplace count " + com.mbridge.msdk.foundation.db.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(this.f39461b.getRequestId()));
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    private void m() {
        new Thread(new c()).start();
    }

    protected void a() {
        com.mbridge.msdk.videocommon.download.b.getInstance().a(false);
    }

    public void a(int i11) {
        CampaignEx campaignEx = this.f39461b;
        if (campaignEx != null) {
            String noticeUrl = campaignEx.getNoticeUrl();
            if (TextUtils.isEmpty(noticeUrl)) {
                return;
            }
            if (i11 == 1 || i11 == 2) {
                if (!noticeUrl.contains("endscreen_type")) {
                    StringBuilder sb2 = new StringBuilder(noticeUrl);
                    if (noticeUrl.contains(UrlUtils.QUESTION_MARK)) {
                        sb2.append("&endscreen_type=");
                        sb2.append(i11);
                    } else {
                        sb2.append("?endscreen_type=");
                        sb2.append(i11);
                    }
                    noticeUrl = sb2.toString();
                } else if (i11 == 2) {
                    if (noticeUrl.contains("endscreen_type=1")) {
                        noticeUrl = noticeUrl.replace("endscreen_type=1", "endscreen_type=2");
                    }
                } else if (noticeUrl.contains("endscreen_type=2")) {
                    noticeUrl = noticeUrl.replace("endscreen_type=2", "endscreen_type=1");
                }
                this.f39461b.setNoticeUrl(noticeUrl);
            }
        }
    }

    @Override // com.mbridge.msdk.video.module.listener.impl.f, com.mbridge.msdk.video.module.listener.a
    public void a(int i11, Object obj) {
        super.a(i11, obj);
        this.f39468i.a(i11, obj);
    }

    public void a(int i11, String str) {
        if (this.f39461b != null) {
            com.mbridge.msdk.foundation.same.report.g.c(new com.mbridge.msdk.foundation.entity.m("2000062", this.f39461b.getId(), this.f39461b.getRequestId(), this.f39461b.getRequestIdNotice(), this.f39466g, k0.s(com.mbridge.msdk.foundation.controller.c.m().d()), i11, str), com.mbridge.msdk.foundation.controller.c.m().d(), this.f39466g);
        }
    }

    public void a(CampaignEx campaignEx) {
        this.f39461b = campaignEx;
    }

    protected void a(String str) {
        List<CampaignEx> list;
        if (this.f39461b == null || (list = this.f39462c) == null || list.size() == 0 || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("camp_position")) {
                this.f39461b = this.f39462c.get(jSONObject.getInt("camp_position"));
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b("NotifyListener", e11.getMessage());
            }
        }
    }

    public void a(List<CampaignEx> list) {
        this.f39462c = list;
    }

    public void b() {
        try {
            b bVar = new b();
            if (com.mbridge.msdk.foundation.controller.d.a().e()) {
                com.mbridge.msdk.foundation.same.threadpool.a.b().execute(bVar);
            } else {
                bVar.run();
            }
        } catch (Throwable th2) {
            o0.b("NotifyListener", th2.getMessage(), th2);
        }
    }

    public void b(int i11) {
        if (this.f39461b != null) {
            if (i11 == 1 || i11 == 2) {
                com.mbridge.msdk.video.module.report.b.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f39461b, i11, this.f39469j);
            }
        }
    }

    protected void b(String str) {
        try {
            if (this.f39461b != null) {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("url", this.f39461b.getVideoUrlEncode());
                eVar.a("reason", str);
                String noticeUrl = this.f39461b.getNoticeUrl();
                String clickURL = this.f39461b.getClickURL();
                if (!TextUtils.isEmpty(noticeUrl)) {
                    eVar.a("offer_url", noticeUrl);
                } else if (!TextUtils.isEmpty(clickURL)) {
                    eVar.a("offer_url", clickURL);
                }
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000021", this.f39461b, eVar);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public void c() {
        a aVar = new a();
        if (com.mbridge.msdk.foundation.controller.d.a().e()) {
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(aVar);
        } else {
            aVar.run();
        }
    }

    protected void e() {
        d dVar = new d();
        if (com.mbridge.msdk.foundation.controller.d.a().e()) {
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(dVar);
        } else {
            dVar.run();
        }
    }

    public void g() {
        if (!this.f39460a || this.f39461b == null) {
            return;
        }
        com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m("2000061", this.f39461b.getId(), this.f39461b.getRequestId(), this.f39461b.getRequestIdNotice(), this.f39466g, k0.s(com.mbridge.msdk.foundation.controller.c.m().d()));
        mVar.b(this.f39461b.isMraid() ? com.mbridge.msdk.foundation.entity.m.N : com.mbridge.msdk.foundation.entity.m.O);
        com.mbridge.msdk.foundation.same.report.g.b(mVar, com.mbridge.msdk.foundation.controller.c.m().d(), this.f39466g);
    }

    protected void h() {
        String str;
        try {
            if (!this.f39460a || this.f39470k || TextUtils.isEmpty(this.f39461b.getImpressionURL())) {
                return;
            }
            this.f39470k = true;
            if (this.f39461b.isBidCampaign()) {
                f();
            }
            String impressionURL = this.f39461b.getImpressionURL();
            if (this.f39461b.getSpareOfferFlag() == 1) {
                str = impressionURL + "&to=1&cbt=" + this.f39461b.getCbt() + "&tmorl=" + this.f39469j;
            } else {
                str = impressionURL + "&to=0&cbt=" + this.f39461b.getCbt() + "&tmorl=" + this.f39469j;
            }
            com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f39461b, this.f39466g, str, false, true, com.mbridge.msdk.click.retry.a.f34418m);
            com.mbridge.msdk.video.module.report.b.d(com.mbridge.msdk.foundation.controller.c.m().d(), this.f39461b);
            m();
            d();
        } catch (Throwable th2) {
            o0.b("NotifyListener", th2.getMessage(), th2);
        }
    }

    protected void i() {
        CampaignEx campaignEx;
        Map<String, Long> map;
        String str;
        try {
            CampaignEx campaignEx2 = this.f39461b;
            if (campaignEx2 != null && campaignEx2.isDynamicView() && this.f39463d && !this.f39461b.isCampaignIsFiltered()) {
                this.f39471l = true;
                return;
            }
            if (!this.f39460a || (campaignEx = this.f39461b) == null || TextUtils.isEmpty(campaignEx.getOnlyImpressionURL()) || (map = com.mbridge.msdk.foundation.same.buffer.b.f35371l) == null || map.containsKey(this.f39461b.getOnlyImpressionURL()) || this.f39471l) {
                return;
            }
            com.mbridge.msdk.foundation.same.buffer.b.f35371l.put(this.f39461b.getOnlyImpressionURL(), Long.valueOf(System.currentTimeMillis()));
            String onlyImpressionURL = this.f39461b.getOnlyImpressionURL();
            if (this.f39461b.getSpareOfferFlag() == 1) {
                str = onlyImpressionURL + "&to=1&cbt=" + this.f39461b.getCbt() + "&tmorl=" + this.f39469j;
            } else {
                str = onlyImpressionURL + "&to=0&cbt=" + this.f39461b.getCbt() + "&tmorl=" + this.f39469j;
            }
            String str2 = str;
            if (!this.f39463d || this.f39461b.isCampaignIsFiltered()) {
                com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f39461b, this.f39466g, str2, false, true, com.mbridge.msdk.click.retry.a.f34419n);
                b();
            }
            this.f39471l = true;
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    protected void j() {
        CampaignEx campaignEx;
        List<String> pv_urls;
        try {
            if (!this.f39460a || this.f39472m || (campaignEx = this.f39461b) == null) {
                return;
            }
            this.f39472m = true;
            if ((campaignEx.isDynamicView() && this.f39463d && !this.f39461b.isCampaignIsFiltered()) || (pv_urls = this.f39461b.getPv_urls()) == null || pv_urls.size() <= 0) {
                return;
            }
            Iterator<String> it = pv_urls.iterator();
            while (it.hasNext()) {
                com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f39461b, this.f39466g, it.next(), false, true);
            }
        } catch (Throwable th2) {
            o0.b("NotifyListener", th2.getMessage());
        }
    }

    protected void k() {
        CampaignEx campaignEx = this.f39461b;
        if (campaignEx == null || TextUtils.isEmpty(campaignEx.getCampaignUnitId()) || this.f39461b.getNativeVideoTracking() == null || this.f39461b.getNativeVideoTracking().i() == null) {
            return;
        }
        Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
        CampaignEx campaignEx2 = this.f39461b;
        com.mbridge.msdk.click.a.a(contextD, campaignEx2, campaignEx2.getCampaignUnitId(), this.f39461b.getNativeVideoTracking().i(), false, false);
    }

    protected void l() {
        com.mbridge.msdk.videocommon.download.a aVar = this.f39464e;
        if (aVar != null) {
            aVar.d(true);
        }
    }
}
