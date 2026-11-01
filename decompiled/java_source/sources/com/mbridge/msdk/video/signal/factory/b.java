package com.mbridge.msdk.video.signal.factory;

import android.app.Activity;
import android.webkit.WebView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.video.bt.module.MBridgeBTContainer;
import com.mbridge.msdk.video.module.MBridgeContainerView;
import com.mbridge.msdk.video.module.MBridgeVideoView;
import com.mbridge.msdk.video.signal.c;
import com.mbridge.msdk.video.signal.d;
import com.mbridge.msdk.video.signal.f;
import com.mbridge.msdk.video.signal.g;
import com.mbridge.msdk.video.signal.impl.i;
import com.mbridge.msdk.video.signal.impl.j;
import com.mbridge.msdk.video.signal.impl.k;
import com.mbridge.msdk.video.signal.impl.m;
import com.mbridge.msdk.video.signal.impl.n;
import com.mbridge.msdk.video.signal.impl.o;
import com.mbridge.msdk.video.signal.impl.q;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class b extends a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Activity f39803h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private WebView f39804i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private MBridgeVideoView f39805j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private MBridgeContainerView f39806k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private CampaignEx f39807l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private MBridgeBTContainer f39808m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private com.mbridge.msdk.video.signal.a.InterfaceC0570a f39809n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f39810o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private List<CampaignEx> f39811p;

    public b(Activity activity) {
        this.f39803h = activity;
    }

    public b(Activity activity, WebView webView, MBridgeVideoView mBridgeVideoView, MBridgeContainerView mBridgeContainerView, CampaignEx campaignEx, com.mbridge.msdk.video.signal.a.InterfaceC0570a interfaceC0570a) {
        this.f39803h = activity;
        this.f39804i = webView;
        this.f39805j = mBridgeVideoView;
        this.f39806k = mBridgeContainerView;
        this.f39807l = campaignEx;
        this.f39809n = interfaceC0570a;
        this.f39810o = mBridgeVideoView.getUnitId();
    }

    public b(Activity activity, MBridgeBTContainer mBridgeBTContainer, WebView webView) {
        this.f39803h = activity;
        this.f39808m = mBridgeBTContainer;
        this.f39804i = webView;
    }

    public void a(k kVar) {
        this.f39797b = kVar;
    }

    public void a(List<CampaignEx> list) {
        this.f39811p = list;
    }

    @Override // com.mbridge.msdk.video.signal.factory.a, com.mbridge.msdk.video.signal.factory.IJSFactory
    public com.mbridge.msdk.video.signal.b getActivityProxy() {
        WebView webView = this.f39804i;
        if (webView == null) {
            return super.getActivityProxy();
        }
        if (this.f39796a == null) {
            this.f39796a = new i(webView);
        }
        return this.f39796a;
    }

    @Override // com.mbridge.msdk.video.signal.factory.a, com.mbridge.msdk.video.signal.factory.IJSFactory
    public com.mbridge.msdk.video.signal.i getIJSRewardVideoV1() {
        Activity activity;
        MBridgeContainerView mBridgeContainerView = this.f39806k;
        if (mBridgeContainerView == null || (activity = this.f39803h) == null) {
            return super.getIJSRewardVideoV1();
        }
        if (this.f39801f == null) {
            this.f39801f = new o(activity, mBridgeContainerView);
        }
        return this.f39801f;
    }

    @Override // com.mbridge.msdk.video.signal.factory.a, com.mbridge.msdk.video.signal.factory.IJSFactory
    public c getJSBTModule() {
        if (this.f39803h == null || this.f39808m == null) {
            return super.getJSBTModule();
        }
        if (this.f39802g == null) {
            this.f39802g = new j(this.f39803h, this.f39808m);
        }
        return this.f39802g;
    }

    @Override // com.mbridge.msdk.video.signal.factory.a, com.mbridge.msdk.video.signal.factory.IJSFactory
    public d getJSCommon() {
        CampaignEx campaignEx;
        List<CampaignEx> list;
        Activity activity = this.f39803h;
        if (activity == null || (campaignEx = this.f39807l) == null) {
            return super.getJSCommon();
        }
        if (this.f39797b == null) {
            this.f39797b = new k(activity, campaignEx);
        }
        if (this.f39807l.getDynamicTempCode() == 5 && (list = this.f39811p) != null) {
            d dVar = this.f39797b;
            if (dVar instanceof k) {
                ((k) dVar).a(list);
            }
        }
        this.f39797b.setActivity(this.f39803h);
        this.f39797b.setUnitId(this.f39810o);
        this.f39797b.a(this.f39809n);
        return this.f39797b;
    }

    @Override // com.mbridge.msdk.video.signal.factory.a, com.mbridge.msdk.video.signal.factory.IJSFactory
    public f getJSContainerModule() {
        MBridgeContainerView mBridgeContainerView = this.f39806k;
        if (mBridgeContainerView == null) {
            return super.getJSContainerModule();
        }
        if (this.f39800e == null) {
            this.f39800e = new m(mBridgeContainerView);
        }
        return this.f39800e;
    }

    @Override // com.mbridge.msdk.video.signal.factory.a, com.mbridge.msdk.video.signal.factory.IJSFactory
    public g getJSNotifyProxy() {
        WebView webView = this.f39804i;
        if (webView == null) {
            return super.getJSNotifyProxy();
        }
        if (this.f39799d == null) {
            this.f39799d = new n(webView);
        }
        return this.f39799d;
    }

    @Override // com.mbridge.msdk.video.signal.factory.a, com.mbridge.msdk.video.signal.factory.IJSFactory
    public com.mbridge.msdk.video.signal.j getJSVideoModule() {
        MBridgeVideoView mBridgeVideoView = this.f39805j;
        if (mBridgeVideoView == null) {
            return super.getJSVideoModule();
        }
        if (this.f39798c == null) {
            this.f39798c = new q(mBridgeVideoView);
        }
        return this.f39798c;
    }
}
