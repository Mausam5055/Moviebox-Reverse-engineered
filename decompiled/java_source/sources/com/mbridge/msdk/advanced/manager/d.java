package com.mbridge.msdk.advanced.manager;

import android.net.http.SslError;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.mbridge.msdk.advanced.view.MBNativeAdvancedView;
import com.mbridge.msdk.advanced.view.MBNativeAdvancedWebview;
import com.mbridge.msdk.foundation.db.e;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.setting.h;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f34158a = "ResManager";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f34159b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static e f34160c = e.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));

    class a extends com.mbridge.msdk.mbsignalcommon.listener.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f34161a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f34162b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CampaignEx f34163c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ MBNativeAdvancedView f34164d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ long f34165e;

        a(String str, String str2, CampaignEx campaignEx, MBNativeAdvancedView mBNativeAdvancedView, long j11) {
            this.f34161a = str;
            this.f34162b = str2;
            this.f34163c = campaignEx;
            this.f34164d = mBNativeAdvancedView;
            this.f34165e = j11;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i11) {
            super.a(webView, i11);
            if (i11 != 1) {
                this.f34164d.setH5Ready(false);
                o0.a("WindVaneWebView", "======渲染失败");
                com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f34163c, this.f34162b, "readyState 2", this.f34165e, 3);
                return;
            }
            com.mbridge.msdk.advanced.common.c.a(this.f34161a + this.f34162b + this.f34163c.getRequestId(), true);
            this.f34164d.setH5Ready(true);
            o0.a("WindVaneWebView", "======渲染成功：ready");
            com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f34163c, this.f34162b, "", this.f34165e, 1);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i11, String str, String str2) {
            super.a(webView, i11, str, str2);
            this.f34164d.setH5Ready(false);
            o0.a("WindVaneWebView", "======渲染失败");
            com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f34163c, this.f34162b, "error code:" + i11 + str, this.f34165e, 3);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.a(webView, sslErrorHandler, sslError);
            this.f34164d.setH5Ready(false);
            o0.a("WindVaneWebView", "======渲染失败");
            com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f34163c, this.f34162b, "error url:" + sslError.getUrl(), this.f34165e, 3);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str) {
            super.a(webView, str);
            if (!this.f34163c.isHasMBTplMark()) {
                com.mbridge.msdk.advanced.common.c.a(this.f34161a + this.f34162b + this.f34163c.getRequestId(), true);
                this.f34164d.setH5Ready(true);
                o0.a("WindVaneWebView", "======渲染成功：finish");
                com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f34163c, this.f34162b, "", this.f34165e, 1);
            }
            com.mbridge.msdk.advanced.signal.a.a(webView);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ MBNativeAdvancedWebview f34166a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f34167b;

        b(MBNativeAdvancedWebview mBNativeAdvancedWebview, String str) {
            this.f34166a = mBNativeAdvancedWebview;
            this.f34167b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f34166a.loadUrl(this.f34167b);
        }
    }

    public static CampaignEx a(MBNativeAdvancedView mBNativeAdvancedView, String str, String str2, String str3, int i11, boolean z10, boolean z11) {
        com.mbridge.msdk.setting.g gVarD = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        if (gVarD == null) {
            gVarD = h.b().a();
        }
        long jZ = gVarD.Z() * 1000;
        long jA0 = gVarD.a0() * 1000;
        a(jA0, str2);
        List<CampaignEx> listA = a(str2, str3);
        if (listA == null || listA.size() <= 0) {
            return null;
        }
        CampaignEx campaignEx = listA.get(0);
        if (TextUtils.isEmpty(campaignEx.getAdZip()) && TextUtils.isEmpty(campaignEx.getAdHtml())) {
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j11 = jCurrentTimeMillis - jZ;
        if (!z10) {
            if ((campaignEx.getPlct() <= 0 || (campaignEx.getPlct() * 1000) + campaignEx.getTimestamp() < jCurrentTimeMillis) && (campaignEx.getPlct() > 0 || campaignEx.getTimestamp() < j11)) {
                o0.a(f34158a, "========已经超了缓存时间");
                if (campaignEx.isSpareOffer(jZ, jA0) || mBNativeAdvancedView == null) {
                    return null;
                }
                mBNativeAdvancedView.setVisibility(8);
                return null;
            }
            if (!a(mBNativeAdvancedView, campaignEx, str, str2, i11, z11)) {
                return null;
            }
            o0.b(f34158a, "cache campain is picked:" + campaignEx.getAppName());
            return a(campaignEx);
        }
        if ((campaignEx.getPlct() <= 0 || (campaignEx.getPlct() * 1000) + campaignEx.getTimestamp() < jCurrentTimeMillis) && (campaignEx.getPlct() > 0 || campaignEx.getTimestamp() < j11)) {
            if (a(mBNativeAdvancedView, campaignEx, str, str2, i11, z11) && campaignEx.isSpareOffer(jZ, jA0)) {
                return a(campaignEx);
            }
            if (campaignEx.isSpareOffer(jZ, jA0) || mBNativeAdvancedView == null) {
                return null;
            }
            mBNativeAdvancedView.setVisibility(8);
            return null;
        }
        if (!a(mBNativeAdvancedView, campaignEx, str, str2, i11, z11)) {
            return null;
        }
        o0.b(f34158a, "cache campain is picked:" + campaignEx.getAppName());
        return a(campaignEx);
    }

    private static CampaignEx a(CampaignEx campaignEx) {
        if (!TextUtils.isEmpty(campaignEx.getAdZip()) || (!TextUtils.isEmpty(campaignEx.getAdHtml()) && campaignEx.getAdHtml().contains("<MBTPLMARK>"))) {
            campaignEx.setHasMBTplMark(true);
            campaignEx.setIsMraid(false);
        } else {
            campaignEx.setHasMBTplMark(false);
            campaignEx.setIsMraid(true);
        }
        return campaignEx;
    }

    private static String a(String str) {
        try {
            File file = new File(str);
            if (file.exists()) {
                return "file:///" + file.getAbsolutePath();
            }
            return "";
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Exception e11) {
                e11.getMessage();
            }
        }
    }

    private static List<CampaignEx> a(String str, String str2) {
        if (f34160c == null) {
            f34160c = e.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
        }
        return f34160c.b(str, 0, 0, f34159b);
    }

    public static void a(long j11, String str) {
        if (f34160c == null) {
            f34160c = e.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
        }
        f34160c.a(j11, str);
    }

    private static void a(MBNativeAdvancedView mBNativeAdvancedView, String str, CampaignEx campaignEx, String str2, String str3, int i11) {
        if (mBNativeAdvancedView == null || mBNativeAdvancedView.getAdvancedNativeWebview() == null) {
            return;
        }
        com.mbridge.msdk.advanced.report.a.b(str3, campaignEx);
        com.mbridge.msdk.advanced.signal.b bVar = new com.mbridge.msdk.advanced.signal.b(mBNativeAdvancedView.getContext(), str2, str3);
        ArrayList arrayList = new ArrayList();
        arrayList.add(campaignEx);
        bVar.a(arrayList);
        bVar.a(i11);
        mBNativeAdvancedView.setAdvancedNativeSignalCommunicationImpl(bVar);
        MBNativeAdvancedWebview advancedNativeWebview = mBNativeAdvancedView.getAdvancedNativeWebview();
        long jCurrentTimeMillis = System.currentTimeMillis();
        advancedNativeWebview.setWebViewListener(new a(str2, str3, campaignEx, mBNativeAdvancedView, jCurrentTimeMillis));
        if (advancedNativeWebview.isDestoryed()) {
            mBNativeAdvancedView.setH5Ready(false);
            com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx, str3, "webview had destory", jCurrentTimeMillis, 3);
            return;
        }
        o0.a(f34158a, "======开始渲染：" + str);
        new Handler(Looper.getMainLooper()).post(new b(advancedNativeWebview, str));
    }

    public static void a(CampaignEx campaignEx, String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(campaignEx);
        if (f34160c == null) {
            f34160c = e.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
        }
        f34160c.a(arrayList, str);
    }

    public static boolean a(MBNativeAdvancedView mBNativeAdvancedView, CampaignEx campaignEx, String str, String str2) {
        boolean zA;
        boolean z10 = false;
        if (mBNativeAdvancedView == null) {
            o0.b(f34158a, "mbAdvancedNativeView  is null");
            return false;
        }
        if (TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
            zA = true;
        } else {
            zA = mBNativeAdvancedView.isVideoReady();
            o0.b(f34158a, "======isReady isVideoReady:" + zA);
        }
        if (zA && !TextUtils.isEmpty(campaignEx.getAdZip())) {
            zA = com.mbridge.msdk.advanced.common.c.a(str + str2 + campaignEx.getRequestId());
            o0.b(f34158a, "======isReady getAdZip:" + zA);
        }
        if (zA && TextUtils.isEmpty(campaignEx.getAdZip()) && !TextUtils.isEmpty(campaignEx.getAdHtml())) {
            zA = com.mbridge.msdk.advanced.common.c.a(str + str2 + campaignEx.getRequestId());
            o0.b(f34158a, "======isReady getAdHtml:" + zA);
        }
        if (TextUtils.isEmpty(campaignEx.getAdZip()) && TextUtils.isEmpty(campaignEx.getAdHtml())) {
            o0.b(f34158a, "======isReady getAdHtml  getAdZip all are empty");
        } else {
            z10 = zA;
        }
        if (!z10 || TextUtils.isEmpty(campaignEx.getendcard_url())) {
            return z10;
        }
        boolean zIsEndCardReady = mBNativeAdvancedView.isEndCardReady();
        o0.b(f34158a, "======isReady isEndCardReady:" + zIsEndCardReady);
        return zIsEndCardReady;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x009f  */
    public static boolean a(MBNativeAdvancedView mBNativeAdvancedView, CampaignEx campaignEx, String str, String str2, int i11, boolean z10) {
        boolean z11;
        if (campaignEx == null) {
            return false;
        }
        mBNativeAdvancedView.clearResState();
        if (TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
            mBNativeAdvancedView.setVideoReady(true);
            z11 = true;
        } else {
            boolean zB = com.mbridge.msdk.videocommon.download.b.getInstance().b(298, str2, campaignEx.isBidCampaign());
            if (zB) {
                mBNativeAdvancedView.setVideoReady(true);
            }
            z11 = zB;
        }
        if (!TextUtils.isEmpty(campaignEx.getendcard_url()) && !mBNativeAdvancedView.isEndCardReady() && !TextUtils.isEmpty(H5DownLoadManager.getInstance().getH5ResAddress(campaignEx.getendcard_url()))) {
            mBNativeAdvancedView.setEndCardReady(true);
        }
        if (!TextUtils.isEmpty(campaignEx.getAdZip()) && !mBNativeAdvancedView.isH5Ready()) {
            String h5ResAddress = H5DownLoadManager.getInstance().getH5ResAddress(campaignEx.getAdZip());
            if (TextUtils.isEmpty(h5ResAddress)) {
                z11 = false;
            } else {
                if (com.mbridge.msdk.advanced.common.c.a(str + str2 + campaignEx.getRequestId())) {
                    mBNativeAdvancedView.setH5Ready(true);
                } else {
                    a(mBNativeAdvancedView, h5ResAddress, campaignEx, str, str2, i11);
                    if (!z10) {
                        z11 = false;
                    }
                }
            }
        }
        if (TextUtils.isEmpty(campaignEx.getAdZip()) && !TextUtils.isEmpty(campaignEx.getAdHtml()) && !mBNativeAdvancedView.isH5Ready()) {
            String strA = a(campaignEx.getAdHtml());
            if (TextUtils.isEmpty(strA)) {
                return false;
            }
            if (com.mbridge.msdk.advanced.common.c.a(str + str2 + campaignEx.getRequestId())) {
                mBNativeAdvancedView.setH5Ready(true);
                if (campaignEx.isMraid()) {
                    mBNativeAdvancedView.setVideoReady(true);
                }
                return true;
            }
            a(mBNativeAdvancedView, strA, campaignEx, str, str2, i11);
            if (!z10) {
                return false;
            }
        }
        return z11;
    }

    public static void b(String str) {
        if (f34160c == null) {
            f34160c = e.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
        }
        f34160c.a(str, 0, f34159b);
    }
}
