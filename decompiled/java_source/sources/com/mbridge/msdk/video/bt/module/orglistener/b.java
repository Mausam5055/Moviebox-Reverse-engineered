package com.mbridge.msdk.video.bt.module.orglistener;

import com.mbridge.msdk.foundation.tools.o0;

/* JADX INFO: loaded from: classes5.dex */
public class b implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Boolean f38949a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Boolean f38950b = null;

    public void a() {
        this.f38950b = Boolean.TRUE;
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(int i11, String str, String str2) {
        o0.a("ShowRewardListener", "onAutoLoad: " + str2);
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        o0.a("ShowRewardListener", "onAdShow");
        this.f38949a = Boolean.TRUE;
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar, String str) {
        o0.a("ShowRewardListener", "onShowFail:" + str);
        this.f38950b = Boolean.TRUE;
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar, boolean z10, com.mbridge.msdk.videocommon.entity.c cVar2) {
        o0.a("ShowRewardListener", "onAdClose:isCompleteView:" + z10 + ",reward:" + cVar2);
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(String str, String str2) {
        o0.a("ShowRewardListener", "onEndcardShow: " + str2);
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(boolean z10, int i11) {
        o0.a("ShowRewardListener", "onAdCloseWithIVReward: " + z10 + "  " + i11);
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(boolean z10, String str, String str2) {
        o0.a("ShowRewardListener", "onVideoAdClicked:" + str2);
    }

    public void b() {
        this.f38949a = Boolean.TRUE;
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.h
    public void b(String str, String str2) {
        o0.a("ShowRewardListener", "onVideoComplete: " + str2);
    }

    public Boolean c() {
        return this.f38950b;
    }

    public Boolean d() {
        return this.f38949a;
    }
}
