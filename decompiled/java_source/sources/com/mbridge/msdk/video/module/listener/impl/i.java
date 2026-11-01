package com.mbridge.msdk.video.module.listener.impl;

/* JADX INFO: loaded from: classes5.dex */
public class i extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected com.mbridge.msdk.video.module.listener.a f39458a;

    public i(com.mbridge.msdk.video.module.listener.a aVar) {
        this.f39458a = aVar;
    }

    @Override // com.mbridge.msdk.video.module.listener.impl.f, com.mbridge.msdk.video.module.listener.a
    public void a(int i11, Object obj) {
        super.a(i11, obj);
        com.mbridge.msdk.video.module.listener.a aVar = this.f39458a;
        if (aVar != null) {
            aVar.a(i11, obj);
        }
    }
}
