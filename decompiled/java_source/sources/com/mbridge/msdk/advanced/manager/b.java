package com.mbridge.msdk.advanced.manager;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.advanced.view.MBNativeAdvancedView;
import com.mbridge.msdk.advanced.view.MBNativeAdvancedWebview;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.w;
import com.mbridge.msdk.foundation.tools.y0;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.out.MBridgeIds;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static String f34086z = "NativeAdvancedLoadManager";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f34087a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f34088b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f34089c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.mbridge.msdk.advanced.middle.b f34090d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private MBNativeAdvancedView f34092f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.mbridge.msdk.setting.l f34093g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private List<CampaignEx> f34094h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private CampaignEx f34095i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f34096j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f34097k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f34098l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f34099m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f34100n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f34101o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f34102p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private volatile boolean f34103q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private com.mbridge.msdk.videocommon.listener.a f34104r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private H5DownLoadManager.ZipDownloadListener f34105s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private H5DownLoadManager.ZipDownloadListener f34106t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f34107u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f34108v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private String f34109w = "";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Handler f34110x = new e(Looper.getMainLooper());

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private Runnable f34111y = new f();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f34091e = com.mbridge.msdk.foundation.controller.c.m().d();

    class a implements H5DownLoadManager.ZipDownloadListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CampaignEx f34112a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f34113b;

        a(CampaignEx campaignEx, int i11) {
            this.f34112a = campaignEx;
            this.f34113b = i11;
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onFailed(String str, String str2) {
            o0.a(b.f34086z, "zip 下载失败： " + str2 + " " + str);
            Message messageObtain = Message.obtain();
            messageObtain.what = 2;
            Bundle bundle = new Bundle();
            bundle.putSerializable("campaignex", this.f34112a);
            bundle.putString(NotificationCompat.CATEGORY_MESSAGE, str);
            bundle.putInt(NativeComponentConstants.KEY_COMPONENT_TYPE, 3);
            messageObtain.obj = bundle;
            b.this.f34110x.sendMessage(messageObtain);
            b.this.a(this.f34112a, str2, false, str);
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onSuccess(String str, String str2, boolean z10) {
            o0.a(b.f34086z, "zip 下载成功： " + str);
            Message messageObtain = Message.obtain();
            messageObtain.what = 1;
            messageObtain.obj = this.f34112a;
            messageObtain.arg1 = this.f34113b;
            b.this.f34110x.sendMessage(messageObtain);
            if (z10) {
                return;
            }
            b.this.a(this.f34112a, str, true, "");
        }
    }

    /* JADX INFO: renamed from: com.mbridge.msdk.advanced.manager.b$b, reason: collision with other inner class name */
    class C0467b extends com.mbridge.msdk.mbsignalcommon.listener.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CampaignEx f34115a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f34116b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ long f34117c;

        C0467b(CampaignEx campaignEx, int i11, long j11) {
            this.f34115a = campaignEx;
            this.f34116b = i11;
            this.f34117c = j11;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i11) throws Throwable {
            super.a(webView, i11);
            o0.b("NativeAdvancedLoadManager", "=========readyState: " + i11);
            if (i11 != 1) {
                b.this.a(this.f34115a, "readyState 2", this.f34116b);
                com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f34115a, b.this.f34087a, "readyState 2", this.f34117c, 3);
                return;
            }
            b.this.f34092f.setH5Ready(true);
            com.mbridge.msdk.advanced.common.c.a(b.this.f34088b + b.this.f34087a + this.f34115a.getRequestId(), true);
            b.this.h(this.f34115a, this.f34116b);
            com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f34115a, b.this.f34087a, "", this.f34117c, 1);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i11, String str, String str2) throws Throwable {
            super.a(webView, i11, str, str2);
            o0.b("NativeAdvancedLoadManager", "onReceivedError： " + i11 + "  " + str + "  " + str2);
            b.this.a(this.f34115a, str, this.f34116b);
            com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f34115a, b.this.f34087a, "error code:" + i11 + str, this.f34117c, 3);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) throws Throwable {
            super.a(webView, sslErrorHandler, sslError);
            o0.b("NativeAdvancedLoadManager", "onReceivedSslError: " + sslError.getPrimaryError());
            b.this.a(this.f34115a, "onReceivedSslError:" + sslError.getUrl(), this.f34116b);
            com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f34115a, b.this.f34087a, "error url:" + sslError.getUrl(), this.f34117c, 3);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str) {
            super.a(webView, str);
            o0.b("NativeAdvancedLoadManager", "onPageFinished");
            if (!this.f34115a.isHasMBTplMark()) {
                b.this.f34092f.setH5Ready(true);
                o0.b("NativeAdvancedLoadManager", "=======onPageFinished OK");
                com.mbridge.msdk.advanced.common.c.a(b.this.f34088b + b.this.f34087a + this.f34115a.getRequestId(), true);
                b.this.h(this.f34115a, this.f34116b);
                com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f34115a, b.this.f34087a, "", this.f34117c, 1);
            }
            com.mbridge.msdk.advanced.signal.a.a(webView);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ MBNativeAdvancedWebview f34119a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f34120b;

        c(MBNativeAdvancedWebview mBNativeAdvancedWebview, String str) {
            this.f34119a = mBNativeAdvancedWebview;
            this.f34120b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f34119a.loadUrl(this.f34120b);
        }
    }

    class d implements com.mbridge.msdk.videocommon.listener.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CampaignEx f34122a;

        d(CampaignEx campaignEx) {
            this.f34122a = campaignEx;
        }

        @Override // com.mbridge.msdk.videocommon.listener.a
        public void a(String str) {
            o0.a(b.f34086z, "Video 下载成功： " + str);
            Message messageObtain = Message.obtain();
            messageObtain.obj = this.f34122a;
            messageObtain.what = 5;
            b.this.f34110x.sendMessage(messageObtain);
        }

        @Override // com.mbridge.msdk.videocommon.listener.a
        public void a(String str, String str2) {
            o0.a(b.f34086z, "Video 下载失败： " + str);
            Message messageObtain = Message.obtain();
            Bundle bundle = new Bundle();
            bundle.putSerializable("campaignex", this.f34122a);
            bundle.putString(NotificationCompat.CATEGORY_MESSAGE, str);
            bundle.putInt(NativeComponentConstants.KEY_COMPONENT_TYPE, 1);
            messageObtain.obj = bundle;
            messageObtain.what = 2;
            b.this.f34110x.sendMessage(messageObtain);
        }
    }

    class e extends Handler {
        e(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) throws Throwable {
            int i11;
            Object obj;
            super.handleMessage(message);
            int i12 = message.what;
            if (i12 == 1) {
                Object obj2 = message.obj;
                int i13 = message.arg1;
                if (obj2 == null || !(obj2 instanceof CampaignEx)) {
                    return;
                }
                CampaignEx campaignEx = (CampaignEx) obj2;
                b.this.a(H5DownLoadManager.getInstance().getH5ResAddress(campaignEx.getAdZip()), campaignEx, i13);
                return;
            }
            if (i12 == 2) {
                Object obj3 = message.obj;
                try {
                    if (obj3 instanceof Bundle) {
                        int i14 = ((Bundle) obj3).getInt(NativeComponentConstants.KEY_COMPONENT_TYPE);
                        if (i14 == 1) {
                            i11 = 880004;
                        } else if (i14 == 2) {
                            i11 = 880007;
                        } else {
                            i11 = i14 == 3 ? 880006 : 880024;
                        }
                        com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(i11);
                        String string = ((Bundle) obj3).getString(NotificationCompat.CATEGORY_MESSAGE);
                        CampaignEx campaignEx2 = (CampaignEx) ((Bundle) obj3).getSerializable("campaignex");
                        bVar.c(string);
                        bVar.a(campaignEx2);
                        b bVar2 = b.this;
                        bVar2.a(bVar, bVar2.f34100n, b.this.f34101o, campaignEx2);
                        return;
                    }
                    return;
                } catch (Exception e11) {
                    com.mbridge.msdk.foundation.error.b bVar3 = new com.mbridge.msdk.foundation.error.b(880000);
                    bVar3.a((Throwable) e11);
                    b bVar4 = b.this;
                    bVar4.a(bVar3, bVar4.f34100n, b.this.f34101o, (CampaignEx) null);
                    return;
                }
            }
            if (i12 == 3) {
                Object obj4 = message.obj;
                if (obj4 == null || !(obj4 instanceof CampaignEx)) {
                    return;
                }
                b bVar5 = b.this;
                bVar5.i((CampaignEx) obj4, bVar5.f34101o);
                return;
            }
            if (i12 != 4) {
                if (i12 == 5 && (obj = message.obj) != null && (obj instanceof CampaignEx)) {
                    if (b.this.f34092f != null) {
                        b.this.f34092f.setVideoReady(true);
                    }
                    b bVar6 = b.this;
                    bVar6.i((CampaignEx) obj, bVar6.f34101o);
                    return;
                }
                return;
            }
            Object obj5 = message.obj;
            if (obj5 == null || !(obj5 instanceof CampaignEx)) {
                return;
            }
            if (b.this.f34092f != null) {
                b.this.f34092f.setEndCardReady(true);
            }
            b bVar7 = b.this;
            bVar7.i((CampaignEx) obj5, bVar7.f34101o);
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880010);
            b bVar2 = b.this;
            bVar2.a(bVar, bVar2.f34100n, b.this.f34101o, (CampaignEx) null);
        }
    }

    class g extends com.mbridge.msdk.advanced.request.b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f34126e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f34127f;

        class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Exception f34129a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f34130b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ CampaignUnit f34131c;

            a(Exception exc, int i11, CampaignUnit campaignUnit) {
                this.f34129a = exc;
                this.f34130b = i11;
                this.f34131c = campaignUnit;
            }

            @Override // java.lang.Runnable
            public void run() throws Throwable {
                com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880003);
                bVar.a((Throwable) this.f34129a);
                g gVar = g.this;
                b bVar2 = b.this;
                String str = gVar.f34126e;
                int i11 = this.f34130b;
                CampaignUnit campaignUnit = this.f34131c;
                bVar2.a(bVar, str, i11, (campaignUnit == null || campaignUnit.getAds() == null || this.f34131c.getAds().size() == 0) ? null : this.f34131c.getAds().get(0));
            }
        }

        /* JADX INFO: renamed from: com.mbridge.msdk.advanced.manager.b$g$b, reason: collision with other inner class name */
        class RunnableC0468b implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ String f34133a;

            RunnableC0468b(String str) {
                this.f34133a = str;
            }

            @Override // java.lang.Runnable
            public void run() throws Throwable {
                com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880002);
                bVar.c(this.f34133a);
                g gVar = g.this;
                b.this.a(bVar, gVar.f34126e, gVar.f34127f, (CampaignEx) null);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(int i11, String str, int i12) {
            super(i11);
            this.f34126e = str;
            this.f34127f = i12;
        }

        @Override // com.mbridge.msdk.advanced.request.b
        public void a(CampaignUnit campaignUnit, int i11) throws Throwable {
            try {
                b bVar = b.this;
                bVar.a(campaignUnit, i11, bVar.f34087a, this.f34126e);
                b.this.f34109w = campaignUnit.getRequestId();
                b.this.f34094h = campaignUnit.getAds();
            } catch (Exception e11) {
                o0.b(b.f34086z, e11.getMessage());
                o0.c(b.f34086z, "onLoadCompaginSuccess 数据刚请求失败");
                if (b.this.f34110x != null) {
                    b.this.f34110x.post(new a(e11, i11, campaignUnit));
                }
                b.this.f();
            }
        }

        @Override // com.mbridge.msdk.advanced.request.b
        public void b(int i11, String str) {
            o0.b(b.f34086z, str);
            o0.c(b.f34086z, "onLoadCompaginFailed load failed errorCode:" + i11 + " msg:" + str);
            if (b.this.f34110x != null) {
                b.this.f34110x.post(new RunnableC0468b(str));
            }
            b.this.f();
        }
    }

    class h extends com.mbridge.msdk.foundation.same.c.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CampaignEx f34135a;

        h(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
            this.f34135a = campaignEx;
        }

        @Override // com.mbridge.msdk.foundation.same.c.a
        public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            com.mbridge.msdk.advanced.report.a.a(str, cVar, this.f34135a, b.this.f34091e, null);
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CampaignEx f34137a;

        i(CampaignEx campaignEx) {
            this.f34137a = campaignEx;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.foundation.db.j.a(com.mbridge.msdk.foundation.db.g.a(b.this.f34091e)).a();
            w.a(b.this.f34091e, this.f34137a);
        }
    }

    class j implements com.mbridge.msdk.foundation.same.image.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CampaignEx f34139a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f34140b;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                j jVar = j.this;
                b.this.i(jVar.f34139a, jVar.f34140b);
            }
        }

        /* JADX INFO: renamed from: com.mbridge.msdk.advanced.manager.b$j$b, reason: collision with other inner class name */
        class RunnableC0469b implements Runnable {
            RunnableC0469b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                j jVar = j.this;
                b.this.i(jVar.f34139a, jVar.f34140b);
            }
        }

        j(CampaignEx campaignEx, int i11) {
            this.f34139a = campaignEx;
            this.f34140b = i11;
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            o0.a(b.f34086z, "gifurl 下载失败： " + str2);
            if (b.this.f34110x != null) {
                b.this.f34110x.post(new RunnableC0469b());
            }
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            o0.a(b.f34086z, "giturl 下载成功： " + str);
            if (b.this.f34110x != null) {
                b.this.f34110x.post(new a());
            }
        }
    }

    class k implements H5DownLoadManager.ZipDownloadListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CampaignEx f34144a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f34145b;

        k(CampaignEx campaignEx, int i11) {
            this.f34144a = campaignEx;
            this.f34145b = i11;
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onFailed(String str, String str2) {
            o0.a(b.f34086z, "endcard 下载失败： " + str2);
            if (b.this.f34092f != null) {
                b.this.f34092f.setEndCardReady(false);
            }
            Message messageObtain = Message.obtain();
            messageObtain.what = 2;
            Bundle bundle = new Bundle();
            bundle.putSerializable("campaignex", this.f34144a);
            bundle.putString(NotificationCompat.CATEGORY_MESSAGE, str);
            bundle.putInt(NativeComponentConstants.KEY_COMPONENT_TYPE, 2);
            messageObtain.obj = bundle;
            b.this.f34110x.sendMessage(messageObtain);
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onSuccess(String str, String str2, boolean z10) {
            o0.a(b.f34086z, "endcard 下载成功： " + str);
            if (b.this.f34110x != null) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 4;
                messageObtain.obj = this.f34144a;
                messageObtain.arg1 = this.f34145b;
                b.this.f34110x.sendMessage(messageObtain);
            }
        }
    }

    class l implements com.mbridge.msdk.foundation.same.image.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CampaignEx f34147a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f34148b;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                l lVar = l.this;
                b.this.i(lVar.f34147a, lVar.f34148b);
            }
        }

        /* JADX INFO: renamed from: com.mbridge.msdk.advanced.manager.b$l$b, reason: collision with other inner class name */
        class RunnableC0470b implements Runnable {
            RunnableC0470b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                l lVar = l.this;
                b.this.i(lVar.f34147a, lVar.f34148b);
            }
        }

        l(CampaignEx campaignEx, int i11) {
            this.f34147a = campaignEx;
            this.f34148b = i11;
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            o0.a(b.f34086z, "image 下载失败： " + str2);
            if (b.this.f34110x != null) {
                b.this.f34110x.post(new RunnableC0470b());
            }
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            o0.a(b.f34086z, "image 下载成功： " + str);
            if (b.this.f34110x != null) {
                b.this.f34110x.post(new a());
            }
        }
    }

    class m implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ File f34152a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CampaignEx f34153b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f34154c;

        m(File file, CampaignEx campaignEx, int i11) {
            this.f34152a = file;
            this.f34153b = campaignEx;
            this.f34154c = i11;
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            b.this.a("file:////" + this.f34152a.getAbsolutePath(), this.f34153b, this.f34154c);
        }
    }

    public b(String str, String str2, long j11) {
        this.f34088b = str;
        this.f34087a = str2;
    }

    @NonNull
    private com.mbridge.msdk.advanced.request.b a(String str, int i11) {
        g gVar = new g(i11, str, i11);
        gVar.a(str);
        gVar.setUnitId(this.f34087a);
        gVar.setPlacementId(this.f34088b);
        gVar.setAdType(298);
        return gVar;
    }

    private List<CampaignEx> a(CampaignUnit campaignUnit) {
        if (campaignUnit == null || campaignUnit.getAds() == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        CampaignEx campaignEx = campaignUnit.getAds().get(0);
        campaignEx.setCampaignUnitId(this.f34087a);
        a(campaignEx);
        this.f34107u = campaignUnit.getSessionId();
        if (campaignEx.getOfferType() != 99 && (!TextUtils.isEmpty(campaignEx.getAdZip()) || !TextUtils.isEmpty(campaignEx.getAdHtml()))) {
            if (t0.c(campaignEx)) {
                campaignEx.setRtinsType(t0.c(this.f34091e, campaignEx.getPackageName()) ? 1 : 2);
            }
            if (com.mbridge.msdk.foundation.same.c.b(this.f34091e, campaignEx)) {
                arrayList.add(campaignEx);
            } else {
                t0.a(this.f34087a, campaignEx, com.mbridge.msdk.foundation.same.a.f35352x);
            }
            a(campaignEx, (com.mbridge.msdk.foundation.same.report.metrics.c) null, (com.mbridge.msdk.foundation.same.report.metrics.callback.a) null);
        }
        return arrayList;
    }

    private void a(long j11) {
        this.f34110x.postDelayed(this.f34111y, j11);
    }

    private void a(Context context, String str, int i11) throws Throwable {
        try {
            if (context == null) {
                a(new com.mbridge.msdk.foundation.error.b(880025), str, i11, (CampaignEx) null);
                return;
            }
            if (y0.a(this.f34087a)) {
                a(new com.mbridge.msdk.foundation.error.b(880032), str, i11, (CampaignEx) null);
                return;
            }
            try {
                com.mbridge.msdk.advanced.manager.d.b(this.f34087a);
            } catch (Throwable th2) {
                o0.b(f34086z, th2.getMessage());
            }
            o0.c(f34086z, "load 开始准备请求参数");
            MBridgeIds mBridgeIds = new MBridgeIds(this.f34088b, this.f34087a);
            com.mbridge.msdk.advanced.request.f fVar = new com.mbridge.msdk.advanced.request.f();
            fVar.d(i11);
            fVar.c(this.f34108v);
            fVar.a(this.f34107u);
            fVar.b(this.f34099m);
            fVar.a(this.f34098l);
            com.mbridge.msdk.foundation.same.net.wrapper.e eVarB = com.mbridge.msdk.advanced.request.e.b(context, mBridgeIds, fVar);
            if (eVarB == null) {
                o0.c(f34086z, "load 请求参数为空 load失败");
                a(new com.mbridge.msdk.foundation.error.b(880001), str, i11, (CampaignEx) null);
                return;
            }
            if (!TextUtils.isEmpty(str)) {
                eVarB.a("token", str);
            }
            String strD = t0.d(this.f34087a);
            if (!TextUtils.isEmpty(strD)) {
                eVarB.a("j", strD);
            }
            new com.mbridge.msdk.advanced.request.c(context).choiceV3OrV5BySetting(1, eVarB, a(str, i11), str, com.mbridge.msdk.foundation.same.c.a(this.f34089c, 30000L));
        } catch (Exception e11) {
            o0.b(f34086z, e11.getMessage());
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880020);
            bVar.a((Throwable) e11);
            a(bVar, str, i11, (CampaignEx) null);
            f();
        }
    }

    private void a(CampaignEx campaignEx) {
        new Thread(new i(campaignEx)).start();
    }

    private void a(CampaignEx campaignEx, int i11) {
        String str;
        this.f34106t = new k(campaignEx, i11);
        int i12 = 0;
        if (campaignEx != null) {
            i12 = campaignEx.getAabEntity() != null ? campaignEx.getAabEntity().h3c : 0;
            str = campaignEx.getendcard_url();
        } else {
            str = "";
        }
        com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
        cVar.a(campaignEx);
        cVar.f(i12);
        H5DownLoadManager.getInstance().downloadH5Res(cVar, str, this.f34106t);
    }

    private void a(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.c cVar, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
        try {
            com.mbridge.msdk.foundation.same.c.a(campaignEx, this.f34091e, cVar, new h(campaignEx, aVar));
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(CampaignEx campaignEx, String str, int i11) throws Throwable {
        com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880009);
        bVar.c(str);
        a(bVar, this.f34100n, i11, campaignEx);
        com.mbridge.msdk.advanced.report.a.a(2, str, this.f34087a, campaignEx);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(CampaignEx campaignEx, String str, boolean z10, String str2) {
        try {
            com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m();
            mVar.e(2);
            mVar.j("m_download_end");
            if (campaignEx != null) {
                mVar.b(campaignEx.isMraid() ? com.mbridge.msdk.foundation.entity.m.N : com.mbridge.msdk.foundation.entity.m.O);
                mVar.o(campaignEx.getRequestIdNotice());
            }
            mVar.b("url", str);
            mVar.b("scenes", "1");
            if (z10) {
                mVar.d(1);
            } else {
                mVar.d(3);
                mVar.m(str2);
            }
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(mVar, campaignEx);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b(f34086z, e11.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(CampaignUnit campaignUnit, int i11, String str, String str2) throws Throwable {
        List<CampaignEx> listA = a(campaignUnit);
        if (listA == null || listA.size() <= 0) {
            o0.c(f34086z, "onload load失败 返回的compaign没有可以用的");
            a(new com.mbridge.msdk.foundation.error.b(880033), str2, i11, (campaignUnit == null || campaignUnit.getAds() == null || campaignUnit.getAds().size() == 0) ? null : campaignUnit.getAds().get(0));
            return;
        }
        g();
        o0.c(f34086z, "onload load成功 size:" + listA.size());
        CampaignEx campaignEx = listA.get(0);
        if (!TextUtils.isEmpty(campaignEx.getAdZip()) || (!TextUtils.isEmpty(campaignEx.getAdHtml()) && campaignEx.getAdHtml().contains("<MBTPLMARK>"))) {
            campaignEx.setHasMBTplMark(true);
            campaignEx.setIsMraid(false);
        } else {
            campaignEx.setHasMBTplMark(false);
            campaignEx.setIsMraid(true);
        }
        j(campaignEx, i11);
    }

    private void a(com.mbridge.msdk.foundation.error.b bVar, int i11, CampaignEx campaignEx) {
        if (this.f34103q) {
            return;
        }
        b();
        if (bVar != null) {
            o0.b(f34086z, "real failed: " + bVar.g());
        }
        this.f34103q = true;
        com.mbridge.msdk.advanced.middle.b bVar2 = this.f34090d;
        if (bVar2 != null) {
            bVar2.a(bVar, i11);
        }
    }

    private void a(com.mbridge.msdk.foundation.error.b bVar, int i11, String str) throws Throwable {
        CampaignEx campaignExA = com.mbridge.msdk.advanced.manager.d.a(this.f34092f, this.f34088b, this.f34087a, str, this.f34096j, true, true);
        if (campaignExA == null) {
            a(bVar, i11, campaignExA);
        } else {
            o0.b(f34086z, "load failed cache ");
            j(campaignExA, i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.mbridge.msdk.foundation.error.b bVar, String str, int i11, CampaignEx campaignEx) throws Throwable {
        if (this.f34102p) {
            this.f34102p = false;
            a(bVar, i11, str);
        } else {
            if (bVar != null) {
                bVar.a(campaignEx);
            }
            a(bVar, i11, campaignEx);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, CampaignEx campaignEx, int i11) throws Throwable {
        MBNativeAdvancedView mBNativeAdvancedView = this.f34092f;
        if (mBNativeAdvancedView == null || mBNativeAdvancedView.getAdvancedNativeWebview() == null) {
            return;
        }
        com.mbridge.msdk.advanced.report.a.b(this.f34087a, campaignEx);
        com.mbridge.msdk.advanced.signal.b bVar = new com.mbridge.msdk.advanced.signal.b(this.f34092f.getContext(), this.f34088b, this.f34087a);
        ArrayList arrayList = new ArrayList();
        arrayList.add(campaignEx);
        bVar.a(arrayList);
        bVar.a(this.f34096j);
        bVar.b(this.f34097k);
        this.f34092f.setAdvancedNativeSignalCommunicationImpl(bVar);
        long jCurrentTimeMillis = System.currentTimeMillis();
        MBNativeAdvancedWebview advancedNativeWebview = this.f34092f.getAdvancedNativeWebview();
        if (advancedNativeWebview == null) {
            a(campaignEx, "webview is null", i11);
            return;
        }
        if (advancedNativeWebview.isDestoryed()) {
            a(campaignEx, "webview is destroyed", i11);
            return;
        }
        advancedNativeWebview.setWebViewListener(new C0467b(campaignEx, i11, jCurrentTimeMillis));
        if (advancedNativeWebview.isDestoryed()) {
            a(new com.mbridge.msdk.foundation.error.b(880031), this.f34100n, i11, campaignEx);
            com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx, this.f34087a, "webview had destory", jCurrentTimeMillis, 3);
            return;
        }
        o0.b(f34086z, "=======开始渲染: " + str);
        Handler handler = this.f34110x;
        if (handler != null) {
            handler.post(new c(advancedNativeWebview, str));
        }
    }

    private void b() {
        this.f34110x.removeCallbacks(this.f34111y);
    }

    private void b(CampaignEx campaignEx, int i11) {
        com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(campaignEx.getGifUrl(), new j(campaignEx, i11));
    }

    private void c(CampaignEx campaignEx, int i11) {
        com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(campaignEx.getImageUrl(), new l(campaignEx, i11));
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00d6 A[Catch: all -> 0x00b8, Exception -> 0x0131, TRY_ENTER, TryCatch #6 {Exception -> 0x0131, blocks: (B:42:0x00d6, B:44:0x00da, B:46:0x00e0, B:48:0x00e6, B:50:0x00ec, B:52:0x00fe, B:53:0x0107, B:32:0x00b4), top: B:84:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00e0 A[Catch: all -> 0x00b8, Exception -> 0x0131, TryCatch #6 {Exception -> 0x0131, blocks: (B:42:0x00d6, B:44:0x00da, B:46:0x00e0, B:48:0x00e6, B:50:0x00ec, B:52:0x00fe, B:53:0x0107, B:32:0x00b4), top: B:84:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:53:0x0107 A[Catch: all -> 0x00b8, Exception -> 0x0131, TRY_LEAVE, TryCatch #6 {Exception -> 0x0131, blocks: (B:42:0x00d6, B:44:0x00da, B:46:0x00e0, B:48:0x00e6, B:50:0x00ec, B:52:0x00fe, B:53:0x0107, B:32:0x00b4), top: B:84:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:55:0x011f A[Catch: IOException -> 0x0123, TRY_ENTER, TRY_LEAVE, TryCatch #10 {IOException -> 0x0123, blocks: (B:68:0x013d, B:55:0x011f), top: B:79:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:82:0x014d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:97:? A[RETURN, SYNTHETIC] */
    private void d(CampaignEx campaignEx, int i11) throws Throwable {
        File file;
        Exception e11;
        FileOutputStream fileOutputStream;
        Exception e12;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                try {
                    try {
                        try {
                            com.mbridge.msdk.foundation.same.report.g.a("m_download_start", campaignEx, "", this.f34087a, PrepareException.ERROR_MANIFEST_INFO);
                            File file2 = new File(campaignEx.getAdHtml());
                            try {
                                try {
                                    if (!file2.exists()) {
                                        String strB = com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_HTML);
                                        String md5 = SameMD5.getMD5(z0.b(campaignEx.getAdHtml()));
                                        if (TextUtils.isEmpty(md5)) {
                                            md5 = String.valueOf(System.currentTimeMillis());
                                        }
                                        file = new File(strB, md5.concat(".html"));
                                        try {
                                            if (!file.exists()) {
                                                fileOutputStream = new FileOutputStream(file);
                                                try {
                                                    String strA = le.b.a(MBridgeConstans.OMID_JS_SERVICE_CONTENT, "<script>" + com.mbridge.msdk.setting.util.a.a().b() + "</script>" + campaignEx.getAdHtml());
                                                    if (campaignEx.isActiveOm()) {
                                                        strA = com.mbridge.msdk.omsdk.b.a(strA);
                                                    }
                                                    fileOutputStream.write(strA.getBytes());
                                                    fileOutputStream.flush();
                                                    fileOutputStream2 = fileOutputStream;
                                                } catch (Exception e13) {
                                                    e11 = e13;
                                                    file2 = file;
                                                    FileOutputStream fileOutputStream3 = fileOutputStream;
                                                    e12 = e11;
                                                    fileOutputStream2 = fileOutputStream3;
                                                    e12.printStackTrace();
                                                    campaignEx.setMraid("");
                                                    com.mbridge.msdk.foundation.same.report.g.a("m_download_end", campaignEx, e12.getMessage(), this.f34087a, PrepareException.ERROR_MANIFEST_INFO);
                                                    if (fileOutputStream2 != null) {
                                                        fileOutputStream2.close();
                                                    }
                                                    file = file2;
                                                    if (!file.exists()) {
                                                        o0.a(f34086z, "渲染 HTML 失败： html file write failed");
                                                        com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880013);
                                                        a(bVar, this.f34100n, i11, campaignEx);
                                                        a(bVar, this.f34100n, i11, campaignEx);
                                                    } else {
                                                        o0.a(f34086z, "渲染 HTML 失败： html file write failed");
                                                        com.mbridge.msdk.foundation.error.b bVar2 = new com.mbridge.msdk.foundation.error.b(880013);
                                                        a(bVar2, this.f34100n, i11, campaignEx);
                                                        a(bVar2, this.f34100n, i11, campaignEx);
                                                    }
                                                    if (fileOutputStream2 != null) {
                                                        fileOutputStream2.close();
                                                    }
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                    if (fileOutputStream != null) {
                                                        try {
                                                            fileOutputStream.close();
                                                        } catch (Exception unused) {
                                                            fileOutputStream2 = fileOutputStream;
                                                            a(new com.mbridge.msdk.foundation.error.b(880013), this.f34100n, i11, campaignEx);
                                                            if (fileOutputStream2 != null) {
                                                                fileOutputStream2.close();
                                                            }
                                                            return;
                                                        } catch (Throwable th3) {
                                                            th = th3;
                                                            fileOutputStream2 = fileOutputStream;
                                                            if (fileOutputStream2 != null) {
                                                                try {
                                                                    fileOutputStream2.close();
                                                                } catch (IOException e14) {
                                                                    o0.b(f34086z, e14.getMessage());
                                                                }
                                                            }
                                                            throw th;
                                                        }
                                                    }
                                                    throw th;
                                                }
                                            }
                                        } catch (Exception e15) {
                                            e12 = e15;
                                            file2 = file;
                                            e12.printStackTrace();
                                            campaignEx.setMraid("");
                                            com.mbridge.msdk.foundation.same.report.g.a("m_download_end", campaignEx, e12.getMessage(), this.f34087a, PrepareException.ERROR_MANIFEST_INFO);
                                            if (fileOutputStream2 != null) {
                                                fileOutputStream2.close();
                                            }
                                            file = file2;
                                        }
                                        if (!file.exists() && file.isFile() && file.canRead()) {
                                            campaignEx.setAdHtml(file.getAbsolutePath());
                                            o0.a(f34086z, "开始渲染 HTML： ");
                                            Handler handler = this.f34110x;
                                            if (handler != null) {
                                                handler.post(new m(file, campaignEx, i11));
                                            }
                                        } else {
                                            o0.a(f34086z, "渲染 HTML 失败： html file write failed");
                                            com.mbridge.msdk.foundation.error.b bVar3 = new com.mbridge.msdk.foundation.error.b(880013);
                                            a(bVar3, this.f34100n, i11, campaignEx);
                                            a(bVar3, this.f34100n, i11, campaignEx);
                                        }
                                        if (fileOutputStream2 != null) {
                                            fileOutputStream2.close();
                                        }
                                    }
                                    file = file2;
                                    com.mbridge.msdk.foundation.same.report.g.a("m_download_end", campaignEx, "", this.f34087a, PrepareException.ERROR_MANIFEST_INFO);
                                    if (fileOutputStream2 != null) {
                                        fileOutputStream2.close();
                                    }
                                } catch (Exception e16) {
                                    fileOutputStream = fileOutputStream2;
                                    e11 = e16;
                                    file2 = file;
                                    FileOutputStream fileOutputStream4 = fileOutputStream;
                                    e12 = e11;
                                    fileOutputStream2 = fileOutputStream4;
                                    e12.printStackTrace();
                                    campaignEx.setMraid("");
                                    com.mbridge.msdk.foundation.same.report.g.a("m_download_end", campaignEx, e12.getMessage(), this.f34087a, PrepareException.ERROR_MANIFEST_INFO);
                                    if (fileOutputStream2 != null) {
                                        fileOutputStream2.close();
                                    }
                                    file = file2;
                                }
                            } catch (Exception e17) {
                                e12 = e17;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            fileOutputStream = null;
                        }
                    } catch (Exception e18) {
                        file = null;
                        e11 = e18;
                        fileOutputStream = null;
                    }
                    if (!file.exists()) {
                        o0.a(f34086z, "渲染 HTML 失败： html file write failed");
                        com.mbridge.msdk.foundation.error.b bVar4 = new com.mbridge.msdk.foundation.error.b(880013);
                        a(bVar4, this.f34100n, i11, campaignEx);
                        a(bVar4, this.f34100n, i11, campaignEx);
                    } else {
                        o0.a(f34086z, "渲染 HTML 失败： html file write failed");
                        com.mbridge.msdk.foundation.error.b bVar5 = new com.mbridge.msdk.foundation.error.b(880013);
                        a(bVar5, this.f34100n, i11, campaignEx);
                        a(bVar5, this.f34100n, i11, campaignEx);
                    }
                    if (fileOutputStream2 != null) {
                        fileOutputStream2.close();
                    }
                } catch (IOException e19) {
                    o0.b(f34086z, e19.getMessage());
                }
            } catch (Throwable th5) {
                th = th5;
                if (fileOutputStream2 != null) {
                    fileOutputStream2.close();
                }
                throw th;
            }
        } catch (Exception unused2) {
        }
    }

    private void e(CampaignEx campaignEx, int i11) throws Throwable {
        MBNativeAdvancedView mBNativeAdvancedView = this.f34092f;
        if (mBNativeAdvancedView != null) {
            mBNativeAdvancedView.clearResState();
        }
        if (!TextUtils.isEmpty(campaignEx.getAdZip())) {
            o0.a(f34086z, "开始下载zip： " + campaignEx.getAdZip());
            g(campaignEx, i11);
        }
        if (!TextUtils.isEmpty(campaignEx.getAdHtml())) {
            o0.a(f34086z, "开始下载HTML： " + campaignEx.getAdHtml());
            d(campaignEx, i11);
        }
        if (!TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
            o0.a(f34086z, "开始下载Video： " + campaignEx.getVideoUrlEncode());
            f(campaignEx, i11);
        }
        if (!TextUtils.isEmpty(campaignEx.getImageUrl())) {
            o0.a(f34086z, "开始下载image： " + campaignEx.getImageUrl());
            c(campaignEx, i11);
        }
        if (!TextUtils.isEmpty(campaignEx.getendcard_url())) {
            o0.a(f34086z, "开始下载EndCard： " + campaignEx.getendcard_url());
            a(campaignEx, i11);
        }
        if (TextUtils.isEmpty(campaignEx.getGifUrl())) {
            return;
        }
        o0.a(f34086z, "开始下载gitUrl： " + campaignEx.getGifUrl());
        b(campaignEx, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        this.f34108v = 0;
    }

    private void f(CampaignEx campaignEx, int i11) {
        this.f34104r = new d(campaignEx);
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        copyOnWriteArrayList.add(campaignEx);
        com.mbridge.msdk.videocommon.download.b.getInstance().createUnitCache(this.f34091e, this.f34087a, copyOnWriteArrayList, 298, this.f34104r);
        if (!com.mbridge.msdk.videocommon.download.b.getInstance().b(298, this.f34087a, campaignEx.isBidCampaign())) {
            o0.a(f34086z, " load Video");
            com.mbridge.msdk.videocommon.download.b.getInstance().load(this.f34087a);
        } else {
            o0.a(f34086z, " load Video isReady true");
            this.f34092f.setVideoReady(true);
            i(campaignEx, i11);
        }
    }

    private void g() {
        try {
            int i11 = this.f34108v + 1;
            this.f34108v = i11;
            com.mbridge.msdk.setting.l lVar = this.f34093g;
            if (lVar == null || i11 > lVar.y()) {
                o0.c(f34086z, "onload 重置offset为0");
                this.f34108v = 0;
            }
            o0.c(f34086z, "onload 算出 下次的offset是:" + this.f34108v);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private void g(CampaignEx campaignEx, int i11) {
        String adZip;
        this.f34105s = new a(campaignEx, i11);
        com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
        cVar.a(campaignEx);
        int i12 = 0;
        if (campaignEx != null) {
            i12 = campaignEx.getAabEntity() != null ? campaignEx.getAabEntity().h3c : 0;
            adZip = campaignEx.getAdZip();
        } else {
            adZip = "";
        }
        cVar.f(i12);
        cVar.e(2);
        H5DownLoadManager.getInstance().downloadH5Res(cVar, adZip, this.f34105s);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(CampaignEx campaignEx, int i11) {
        if (this.f34092f.isH5Ready()) {
            i(campaignEx, i11);
            com.mbridge.msdk.advanced.report.a.a(1, "", this.f34087a, campaignEx);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(CampaignEx campaignEx, int i11) {
        if (!com.mbridge.msdk.advanced.manager.d.a(this.f34092f, campaignEx, this.f34088b, this.f34087a) || this.f34103q) {
            return;
        }
        b();
        com.mbridge.msdk.advanced.manager.d.a(campaignEx, this.f34087a);
        this.f34103q = true;
        com.mbridge.msdk.advanced.middle.b bVar = this.f34090d;
        if (bVar != null) {
            bVar.a(campaignEx, i11);
        }
    }

    private void j(CampaignEx campaignEx, int i11) throws Throwable {
        this.f34095i = campaignEx;
        if (com.mbridge.msdk.advanced.manager.d.a(this.f34092f, campaignEx, this.f34088b, this.f34087a)) {
            i(campaignEx, i11);
        } else {
            e(campaignEx, i11);
        }
    }

    public String a(String str) {
        int iJ;
        if (this.f34095i == null) {
            return "";
        }
        try {
            com.mbridge.msdk.videocommon.download.a aVarA = com.mbridge.msdk.videocommon.download.b.getInstance().a(this.f34087a, this.f34095i.getId() + this.f34095i.getVideoUrlEncode() + this.f34095i.getBidToken());
            if (aVarA == null || (iJ = aVarA.j()) != 5) {
                return str;
            }
            String strK = aVarA.k();
            if (!new File(strK).exists()) {
                return str;
            }
            o0.b(f34086z, "本地已下载完 拿本地播放地址：" + strK + " state：" + iJ);
            return strK;
        } catch (Exception e11) {
            o0.b(f34086z, e11.getMessage());
            return str;
        }
    }

    public void a(int i11) {
        this.f34096j = i11;
    }

    public void a(int i11, int i12) {
        this.f34099m = i11;
        this.f34098l = i12;
    }

    public void a(com.mbridge.msdk.advanced.middle.b bVar) {
        this.f34090d = bVar;
    }

    public void a(MBNativeAdvancedView mBNativeAdvancedView) {
        this.f34092f = mBNativeAdvancedView;
    }

    public void a(com.mbridge.msdk.setting.l lVar) {
        this.f34093g = lVar;
    }

    public void b(String str, int i11) throws Throwable {
        List<Integer> listC;
        this.f34103q = false;
        this.f34100n = str;
        this.f34101o = i11;
        this.f34095i = null;
        if (this.f34092f == null) {
            a(new com.mbridge.msdk.foundation.error.b(880030), str, i11, (CampaignEx) null);
            return;
        }
        CampaignEx campaignExA = TextUtils.isEmpty(str) ? com.mbridge.msdk.advanced.manager.d.a(this.f34092f, this.f34088b, this.f34087a, str, this.f34096j, false, false) : com.mbridge.msdk.advanced.manager.d.a(this.f34092f, this.f34088b, this.f34087a, str, this.f34096j, false, true);
        long timestamp = campaignExA != null ? campaignExA.getTimestamp() : 0L;
        com.mbridge.msdk.setting.l lVar = this.f34093g;
        if (lVar != null && lVar.t() == 1 && this.f34092f != null && campaignExA != null) {
            j(campaignExA, i11);
            return;
        }
        this.f34102p = false;
        com.mbridge.msdk.setting.l lVar2 = this.f34093g;
        if (lVar2 == null || (listC = lVar2.c()) == null || listC.size() <= 0) {
            this.f34089c = 30000L;
        } else {
            this.f34089c = listC.get(0).intValue() * 1000;
        }
        o0.a(f34086z, "开始从V3请求新的 offer，超时 ：" + this.f34089c);
        if (this.f34093g == null || timestamp <= 0 || !TextUtils.isEmpty(str)) {
            a(this.f34089c);
            a(this.f34091e, str, i11);
        } else if (System.currentTimeMillis() - timestamp <= this.f34093g.v() * 1000) {
            j(campaignExA, i11);
        } else {
            a(this.f34089c);
            a(this.f34091e, str, i11);
        }
    }

    public String c() {
        return com.mbridge.msdk.foundation.same.c.b(this.f34094h);
    }

    public String d() {
        return this.f34109w;
    }

    public void e() {
        if (this.f34090d != null) {
            this.f34090d = null;
        }
        if (this.f34104r != null) {
            this.f34104r = null;
        }
        if (this.f34105s != null) {
            this.f34105s = null;
        }
    }
}
