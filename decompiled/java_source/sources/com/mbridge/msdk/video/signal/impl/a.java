package com.mbridge.msdk.video.signal.impl;

import android.app.Activity;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.NativeListener;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a implements com.mbridge.msdk.video.signal.d {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected String f39821j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected com.mbridge.msdk.videocommon.setting.c f39822k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected com.mbridge.msdk.click.a f39823l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected boolean f39812a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected boolean f39813b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f39814c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f39815d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected int f39816e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected int f39817f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected int f39818g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected int f39819h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected int f39820i = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public com.mbridge.msdk.video.signal.a.InterfaceC0570a f39824m = new C0571a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected int f39825n = 2;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected int f39826o = 2;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private com.iab.omid.library.mmadbridge.adsession.b f39827p = null;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private com.iab.omid.library.mmadbridge.adsession.media.a f39828q = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private com.iab.omid.library.mmadbridge.adsession.a f39829r = null;

    /* JADX INFO: renamed from: com.mbridge.msdk.video.signal.impl.a$a, reason: collision with other inner class name */
    public static class C0571a implements com.mbridge.msdk.video.signal.a.InterfaceC0570a {
        @Override // com.mbridge.msdk.video.signal.a.InterfaceC0570a
        public void a() {
            o0.a("DefaultJSCommon", "videoLocationReady");
        }

        @Override // com.mbridge.msdk.video.signal.a.InterfaceC0570a
        public void a(int i11, String str) {
            o0.a("DefaultJSCommon", "onH5Error,code:" + i11 + "，msg:" + str);
        }

        @Override // com.mbridge.msdk.video.signal.a.InterfaceC0570a
        public void a(boolean z10) {
            o0.a("DefaultJSCommon", "onStartInstall");
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDismissLoading(Campaign campaign) {
            o0.a("DefaultJSCommon", "onDismissLoading,campaign:" + campaign);
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDownloadFinish(Campaign campaign) {
            o0.a("DefaultJSCommon", "onDownloadFinish,campaign:" + campaign);
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDownloadProgress(int i11) {
            o0.a("DefaultJSCommon", "onDownloadProgress,progress:" + i11);
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDownloadStart(Campaign campaign) {
            o0.a("DefaultJSCommon", "onDownloadStart,campaign:" + campaign);
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onFinishRedirection(Campaign campaign, String str) {
            o0.a("DefaultJSCommon", "onFinishRedirection,campaign:" + campaign + ",url:" + str);
        }

        @Override // com.mbridge.msdk.video.signal.a.InterfaceC0570a
        public void onInitSuccess() {
            o0.a("DefaultJSCommon", "onInitSuccess");
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public boolean onInterceptDefaultLoadingDialog() {
            o0.a("DefaultJSCommon", "onInterceptDefaultLoadingDialog");
            return false;
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onRedirectionFailed(Campaign campaign, String str) {
            o0.a("DefaultJSCommon", "onFinishRedirection,campaign:" + campaign + ",url:" + str);
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onShowLoading(Campaign campaign) {
            o0.a("DefaultJSCommon", "onShowLoading,campaign:" + campaign);
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onStartRedirection(Campaign campaign, String str) {
            o0.a("DefaultJSCommon", "onStartRedirection,campaign:" + campaign + ",url:" + str);
        }
    }

    public static class b implements com.mbridge.msdk.video.signal.a.InterfaceC0570a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.mbridge.msdk.video.signal.d f39830a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private com.mbridge.msdk.video.signal.a.InterfaceC0570a f39831b;

        public b(com.mbridge.msdk.video.signal.d dVar, com.mbridge.msdk.video.signal.a.InterfaceC0570a interfaceC0570a) {
            this.f39830a = dVar;
            this.f39831b = interfaceC0570a;
        }

        @Override // com.mbridge.msdk.video.signal.a.InterfaceC0570a
        public void a() {
            com.mbridge.msdk.video.signal.a.InterfaceC0570a interfaceC0570a = this.f39831b;
            if (interfaceC0570a != null) {
                interfaceC0570a.a();
            }
        }

        @Override // com.mbridge.msdk.video.signal.a.InterfaceC0570a
        public void a(int i11, String str) {
            com.mbridge.msdk.video.signal.a.InterfaceC0570a interfaceC0570a = this.f39831b;
            if (interfaceC0570a != null) {
                interfaceC0570a.a(i11, str);
            }
        }

        @Override // com.mbridge.msdk.video.signal.a.InterfaceC0570a
        public void a(boolean z10) {
            com.mbridge.msdk.video.signal.a.InterfaceC0570a interfaceC0570a = this.f39831b;
            if (interfaceC0570a != null) {
                interfaceC0570a.a(z10);
            }
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDismissLoading(Campaign campaign) {
            com.mbridge.msdk.video.signal.a.InterfaceC0570a interfaceC0570a = this.f39831b;
            if (interfaceC0570a != null) {
                interfaceC0570a.onDismissLoading(campaign);
            }
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDownloadFinish(Campaign campaign) {
            com.mbridge.msdk.video.signal.a.InterfaceC0570a interfaceC0570a = this.f39831b;
            if (interfaceC0570a != null) {
                interfaceC0570a.onDownloadFinish(campaign);
            }
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDownloadProgress(int i11) {
            com.mbridge.msdk.video.signal.a.InterfaceC0570a interfaceC0570a = this.f39831b;
            if (interfaceC0570a != null) {
                interfaceC0570a.onDownloadProgress(i11);
            }
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDownloadStart(Campaign campaign) {
            com.mbridge.msdk.video.signal.a.InterfaceC0570a interfaceC0570a = this.f39831b;
            if (interfaceC0570a != null) {
                interfaceC0570a.onDownloadStart(campaign);
            }
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onFinishRedirection(Campaign campaign, String str) {
            com.mbridge.msdk.video.signal.a.InterfaceC0570a interfaceC0570a = this.f39831b;
            if (interfaceC0570a != null) {
                interfaceC0570a.onFinishRedirection(campaign, str);
            }
            com.mbridge.msdk.video.signal.d dVar = this.f39830a;
            if (dVar != null) {
                dVar.f();
            }
        }

        @Override // com.mbridge.msdk.video.signal.a.InterfaceC0570a
        public void onInitSuccess() {
            com.mbridge.msdk.video.signal.a.InterfaceC0570a interfaceC0570a = this.f39831b;
            if (interfaceC0570a != null) {
                interfaceC0570a.onInitSuccess();
            }
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public boolean onInterceptDefaultLoadingDialog() {
            com.mbridge.msdk.video.signal.a.InterfaceC0570a interfaceC0570a = this.f39831b;
            return interfaceC0570a != null && interfaceC0570a.onInterceptDefaultLoadingDialog();
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onRedirectionFailed(Campaign campaign, String str) {
            com.mbridge.msdk.video.signal.a.InterfaceC0570a interfaceC0570a = this.f39831b;
            if (interfaceC0570a != null) {
                interfaceC0570a.onRedirectionFailed(campaign, str);
            }
            com.mbridge.msdk.video.signal.d dVar = this.f39830a;
            if (dVar != null) {
                dVar.f();
            }
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onShowLoading(Campaign campaign) {
            com.mbridge.msdk.video.signal.a.InterfaceC0570a interfaceC0570a = this.f39831b;
            if (interfaceC0570a != null) {
                interfaceC0570a.onShowLoading(campaign);
            }
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onStartRedirection(Campaign campaign, String str) {
            com.mbridge.msdk.video.signal.a.InterfaceC0570a interfaceC0570a = this.f39831b;
            if (interfaceC0570a != null) {
                interfaceC0570a.onStartRedirection(campaign, str);
            }
        }
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void a(int i11) {
        this.f39820i = i11;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void a(int i11, String str) {
        o0.a("DefaultJSCommon", "statistics,type:" + i11 + ",json:" + str);
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void a(com.mbridge.msdk.video.signal.a.InterfaceC0570a interfaceC0570a) {
        o0.a("DefaultJSCommon", "setTrackingListener:" + interfaceC0570a);
        this.f39824m = interfaceC0570a;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void a(String str) {
        o0.a("DefaultJSCommon", "setNotchArea");
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void a(boolean z10) {
        o0.a("DefaultJSCommon", "setIsShowingTransparent:" + z10);
        this.f39813b = z10;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public boolean a() {
        return this.f39812a;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public int b() {
        return this.f39818g;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void b(int i11) {
        this.f39814c = i11;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void b(boolean z10) {
        this.f39812a = z10;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public String c() {
        o0.a("DefaultJSCommon", "init");
        return "{}";
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void c(int i11) {
        this.f39816e = i11;
    }

    @Override // com.mbridge.msdk.video.signal.e
    public void click(int i11, String str) {
        o0.a("DefaultJSCommon", "click:type" + i11 + ",pt:" + str);
    }

    @Override // com.mbridge.msdk.video.signal.a
    public int d() {
        o0.a("DefaultJSCommon", "getAlertDialogRole " + this.f39819h);
        return this.f39819h;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void d(int i11) {
        o0.a("DefaultJSCommon", "setAlertDialogRole " + i11);
        this.f39819h = i11;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public String e() {
        o0.a("DefaultJSCommon", "getNotchArea");
        return null;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void e(int i11) {
        this.f39815d = i11;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public String f(int i11) {
        o0.a("DefaultJSCommon", "getSDKInfo");
        return "{}";
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void f() {
        o0.a("DefaultJSCommon", "finish");
    }

    @Override // com.mbridge.msdk.video.signal.a
    public String g() {
        return "{}";
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void g(int i11) {
        this.f39825n = i11;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void h() {
    }

    @Override // com.mbridge.msdk.video.signal.e
    public void handlerH5Exception(int i11, String str) {
        o0.a("DefaultJSCommon", "handlerH5Exception,code=" + i11 + ",msg:" + str);
    }

    @Override // com.mbridge.msdk.video.signal.a
    public int i() {
        return this.f39820i;
    }

    public com.iab.omid.library.mmadbridge.adsession.a j() {
        return this.f39829r;
    }

    public com.iab.omid.library.mmadbridge.adsession.b k() {
        return this.f39827p;
    }

    public int l() {
        if (this.f39814c == 0 && this.f39813b) {
            this.f39814c = 1;
        }
        return this.f39814c;
    }

    public int m() {
        if (this.f39815d == 0 && this.f39813b) {
            this.f39815d = 1;
        }
        return this.f39815d;
    }

    public int n() {
        if (this.f39816e == 0 && this.f39813b) {
            this.f39816e = 1;
        }
        return this.f39816e;
    }

    public com.iab.omid.library.mmadbridge.adsession.media.a o() {
        return this.f39828q;
    }

    public boolean p() {
        return this.f39813b;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void release() {
        o0.a("DefaultJSCommon", "release");
        com.mbridge.msdk.click.a aVar = this.f39823l;
        if (aVar != null) {
            aVar.a(false);
            this.f39823l.a((NativeListener.NativeTrackingListener) null);
            this.f39823l.c();
        }
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void setActivity(Activity activity) {
        o0.a("DefaultJSCommon", "setActivity ");
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void setAdEvents(com.iab.omid.library.mmadbridge.adsession.a aVar) {
        this.f39829r = aVar;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void setAdSession(com.iab.omid.library.mmadbridge.adsession.b bVar) {
        this.f39827p = bVar;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void setRewardUnitSetting(com.mbridge.msdk.videocommon.setting.c cVar) {
        o0.a("DefaultJSCommon", "setSetting:" + cVar);
        this.f39822k = cVar;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void setUnitId(String str) {
        o0.a("DefaultJSCommon", "setUnitId:" + str);
        this.f39821j = str;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void setVideoEvents(com.iab.omid.library.mmadbridge.adsession.media.a aVar) {
        this.f39828q = aVar;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void setWebViewFront(int i11) {
        this.f39818g = i11;
    }
}
