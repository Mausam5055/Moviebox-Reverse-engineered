package com.mbridge.msdk.video.bt.module.orglistener;

import com.mbridge.msdk.foundation.tools.o0;

/* JADX INFO: loaded from: classes5.dex */
public class c extends b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.mbridge.msdk.video.bt.module.listener.b f38951c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f38952d;

    public c(com.mbridge.msdk.video.bt.module.listener.b bVar, String str) {
        this.f38951c = bVar;
        this.f38952d = str;
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(int i11, String str, String str2) {
        if (this.f38951c != null) {
            o0.a("H5ShowRewardListener", "onAutoLoad");
            this.f38951c.a(this.f38952d, i11, str, str2);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (this.f38951c != null) {
            o0.a("H5ShowRewardListener", "onAdShow");
            this.f38951c.a(this.f38952d);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar, String str) {
        if (this.f38951c != null) {
            o0.a("H5ShowRewardListener", "onShowFail");
            this.f38951c.a(this.f38952d, str);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar, boolean z10, com.mbridge.msdk.videocommon.entity.c cVar2) {
        if (this.f38951c != null) {
            o0.a("H5ShowRewardListener", "onAdClose");
            this.f38951c.a(this.f38952d, z10, cVar2);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(String str, String str2) {
        if (this.f38951c != null) {
            o0.a("H5ShowRewardListener", "onEndcardShow");
            this.f38951c.c(this.f38952d, str, str2);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(boolean z10, String str, String str2) {
        if (this.f38951c != null) {
            o0.a("H5ShowRewardListener", "onVideoAdClicked");
            this.f38951c.b(this.f38952d, str, str2);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
    public void b(String str, String str2) {
        if (this.f38951c != null) {
            o0.a("H5ShowRewardListener", "onVideoComplete");
            this.f38951c.a(this.f38952d, str, str2);
        }
    }
}
