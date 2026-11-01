package com.mbridge.msdk.video.bt.module.orglistener;

import com.mbridge.msdk.video.bt.module.MBTempContainer;

/* JADX INFO: loaded from: classes5.dex */
public class e extends MBTempContainer.k.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private h f38962b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.mbridge.msdk.foundation.same.report.metrics.c f38963c;

    public e(com.mbridge.msdk.foundation.same.report.metrics.c cVar, h hVar) {
        this.f38962b = hVar;
        this.f38963c = cVar;
    }

    @Override // com.mbridge.msdk.video.bt.module.MBTempContainer.k.a, com.mbridge.msdk.video.bt.module.MBTempContainer.k
    public void onError(String str) {
        super.onError(str);
        h hVar = this.f38962b;
        if (hVar != null) {
            hVar.a(this.f38963c, str);
        }
    }
}
