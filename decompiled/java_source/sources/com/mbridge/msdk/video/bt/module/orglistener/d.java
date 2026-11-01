package com.mbridge.msdk.video.bt.module.orglistener;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;

/* JADX INFO: loaded from: classes5.dex */
public class d extends b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private h f38953c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.mbridge.msdk.videocommon.setting.c f38954d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f38955e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f38956f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f38957g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Context f38958h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f38959i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f38960j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f38961k = false;

    public d(Context context, boolean z10, com.mbridge.msdk.videocommon.setting.c cVar, CampaignEx campaignEx, h hVar, String str, String str2) {
        this.f38953c = hVar;
        this.f38954d = cVar;
        this.f38955e = str2;
        this.f38956f = str;
        this.f38957g = z10;
        this.f38958h = context;
        a(cVar, campaignEx);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x002c  */
    private void a(com.mbridge.msdk.videocommon.setting.c cVar, CampaignEx campaignEx) {
        long jA0;
        try {
            String strB = com.mbridge.msdk.foundation.controller.c.m().b();
            if (TextUtils.isEmpty(strB)) {
                jA0 = 0;
            } else {
                com.mbridge.msdk.setting.g gVarD = com.mbridge.msdk.setting.h.b().d(strB);
                if (gVarD == null) {
                    gVarD = com.mbridge.msdk.setting.h.b().a();
                }
                if (gVarD != null) {
                    jA0 = gVarD.a0() * 1000;
                } else {
                    jA0 = 0;
                }
            }
            com.mbridge.msdk.videocommon.setting.a aVarC = com.mbridge.msdk.videocommon.setting.b.b().c();
            long jE = aVarC != null ? aVarC.e() : 0L;
            if (campaignEx != null) {
                if (!campaignEx.isSpareOffer(jE, jA0)) {
                    campaignEx.setSpareOfferFlag(0);
                    campaignEx.setCbt(0);
                    return;
                }
                campaignEx.setSpareOfferFlag(1);
                if (cVar.A() == 1) {
                    campaignEx.setCbt(1);
                } else {
                    campaignEx.setCbt(0);
                }
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        super.a(cVar);
        if (this.f38953c == null || this.f38959i) {
            return;
        }
        this.f38959i = true;
        b();
        this.f38953c.a(cVar);
        this.f38953c.a(2, this.f38956f, this.f38955e);
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar, String str) {
        super.a(cVar, str);
        if (this.f38953c == null || this.f38960j) {
            return;
        }
        this.f38960j = true;
        a();
        this.f38953c.a(cVar, str);
        this.f38953c.a(4, this.f38956f, this.f38955e);
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar, boolean z10, com.mbridge.msdk.videocommon.entity.c cVar2) {
        super.a(cVar, z10, cVar2);
        h hVar = this.f38953c;
        if (hVar == null || this.f38961k) {
            return;
        }
        this.f38961k = true;
        hVar.a(7, this.f38956f, this.f38955e);
        this.f38953c.a(cVar, z10, cVar2);
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(String str, String str2) {
        super.a(str, str2);
        h hVar = this.f38953c;
        if (hVar != null) {
            hVar.a(str, str2);
            this.f38953c.a(6, str, str2);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(boolean z10, int i11) {
        super.a(z10, i11);
        h hVar = this.f38953c;
        if (hVar == null || this.f38961k) {
            return;
        }
        hVar.a(z10, i11);
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(boolean z10, String str, String str2) {
        super.a(z10, str, str2);
        h hVar = this.f38953c;
        if (hVar != null) {
            hVar.a(z10, str, str2);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
    public void b(String str, String str2) {
        super.b(str, str2);
        h hVar = this.f38953c;
        if (hVar != null) {
            hVar.b(str, str2);
            this.f38953c.a(5, str, str2);
        }
    }
}
