package com.mbridge.msdk.mbbanner.common.listener;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.setting.l;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class e implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f36052a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private l f36053b;

    public e(c cVar, l lVar) {
        this.f36053b = lVar;
        this.f36052a = cVar;
    }

    @Override // com.mbridge.msdk.mbbanner.common.listener.c
    public void a() {
        c cVar = this.f36052a;
        if (cVar != null) {
            cVar.a();
        }
    }

    @Override // com.mbridge.msdk.mbbanner.common.listener.c
    public void a(CampaignEx campaignEx) {
        c cVar = this.f36052a;
        if (cVar != null) {
            cVar.a(campaignEx);
        }
    }

    @Override // com.mbridge.msdk.mbbanner.common.listener.c
    public void a(com.mbridge.msdk.foundation.error.b bVar) {
        c cVar = this.f36052a;
        if (cVar != null) {
            cVar.a(bVar);
        }
    }

    @Override // com.mbridge.msdk.mbbanner.common.listener.c
    public void a(List<CampaignEx> list) {
        c cVar = this.f36052a;
        if (cVar != null) {
            cVar.a(list);
        }
    }

    @Override // com.mbridge.msdk.mbbanner.common.listener.c
    public void b() {
        c cVar = this.f36052a;
        if (cVar != null) {
            cVar.b();
        }
    }

    @Override // com.mbridge.msdk.mbbanner.common.listener.c
    public void c() {
        c cVar = this.f36052a;
        if (cVar != null) {
            cVar.c();
        }
    }

    @Override // com.mbridge.msdk.mbbanner.common.listener.c
    public void d() {
        c cVar = this.f36052a;
        if (cVar != null) {
            cVar.d();
        }
    }

    @Override // com.mbridge.msdk.mbbanner.common.listener.c
    public void onLeaveApp() {
        c cVar = this.f36052a;
        if (cVar != null) {
            cVar.onLeaveApp();
        }
    }
}
