package com.mbridge.msdk.video.signal.factory;

import com.mbridge.msdk.video.signal.c;
import com.mbridge.msdk.video.signal.d;
import com.mbridge.msdk.video.signal.f;
import com.mbridge.msdk.video.signal.g;
import com.mbridge.msdk.video.signal.i;
import com.mbridge.msdk.video.signal.impl.e;
import com.mbridge.msdk.video.signal.impl.h;
import com.mbridge.msdk.video.signal.j;

/* JADX INFO: loaded from: classes5.dex */
public class a implements IJSFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected com.mbridge.msdk.video.signal.b f39796a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected d f39797b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected j f39798c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected g f39799d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected f f39800e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected i f39801f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected c f39802g;

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public com.mbridge.msdk.video.signal.b getActivityProxy() {
        if (this.f39796a == null) {
            this.f39796a = new com.mbridge.msdk.video.signal.impl.b();
        }
        return this.f39796a;
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public i getIJSRewardVideoV1() {
        if (this.f39801f == null) {
            this.f39801f = new com.mbridge.msdk.video.signal.impl.g();
        }
        return this.f39801f;
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public c getJSBTModule() {
        if (this.f39802g == null) {
            this.f39802g = new com.mbridge.msdk.video.signal.impl.c();
        }
        return this.f39802g;
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public d getJSCommon() {
        if (this.f39797b == null) {
            this.f39797b = new com.mbridge.msdk.video.signal.impl.d();
        }
        return this.f39797b;
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public f getJSContainerModule() {
        if (this.f39800e == null) {
            this.f39800e = new e();
        }
        return this.f39800e;
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public g getJSNotifyProxy() {
        if (this.f39799d == null) {
            this.f39799d = new com.mbridge.msdk.video.signal.impl.f();
        }
        return this.f39799d;
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public j getJSVideoModule() {
        if (this.f39798c == null) {
            this.f39798c = new h();
        }
        return this.f39798c;
    }
}
