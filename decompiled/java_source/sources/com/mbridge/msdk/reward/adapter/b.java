package com.mbridge.msdk.reward.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.cloud.config.utils.ConstantsKt;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.DownloadError;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.download.download.HTMLResourceManager;
import com.mbridge.msdk.foundation.download.download.ResDownloadCheckManager;
import com.mbridge.msdk.foundation.download.download.ResourceManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.x;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.video.bt.module.MBridgeBTLayout;
import com.mbridge.msdk.video.bt.module.MBridgeBTRootLayout;
import com.transsion.gslb.Utils;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static ConcurrentHashMap<String, f> f36798g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m f36799a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f36800b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f36801c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f36802d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f36803e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile List<WindVaneWebView> f36804f;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CopyOnWriteArrayList f36805a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f36806b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f36807c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f36808d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f36809e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f36810f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f36811g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ n f36812h;

        a(CopyOnWriteArrayList copyOnWriteArrayList, Context context, String str, int i11, String str2, String str3, String str4, n nVar) {
            this.f36805a = copyOnWriteArrayList;
            this.f36806b = context;
            this.f36807c = str;
            this.f36808d = i11;
            this.f36809e = str2;
            this.f36810f = str3;
            this.f36811g = str4;
            this.f36812h = nVar;
        }

        /* JADX WARN: Code duplicated, block: B:128:0x0374  */
        /* JADX WARN: Code duplicated, block: B:136:0x038c  */
        /* JADX WARN: Code duplicated, block: B:156:0x0272 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:158:0x021a A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:184:0x02a6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:51:0x0184  */
        /* JADX WARN: Code duplicated, block: B:66:0x01ea  */
        /* JADX WARN: Code duplicated, block: B:99:0x02d2  */
        @Override // java.lang.Runnable
        public void run() {
            String str;
            Iterator it;
            String str2;
            String str3;
            CharSequence charSequence;
            String str4;
            boolean zIsDynamicView;
            String iconUrl;
            String imageUrl;
            String strC;
            CampaignEx campaignEx;
            List<CampaignEx.c.a> listA;
            List<String> list;
            int i11;
            String str5;
            String str6 = "_";
            CopyOnWriteArrayList copyOnWriteArrayList = this.f36805a;
            if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
                return;
            }
            try {
                ResDownloadCheckManager.getInstance().setCampaignList(this.f36805a);
                com.mbridge.msdk.videocommon.download.b.getInstance().createUnitCache(this.f36806b, this.f36807c, this.f36805a, this.f36808d, new k(b.this.f36799a, this.f36809e, this.f36807c, this.f36810f, this.f36811g));
                com.mbridge.msdk.videocommon.download.b.getInstance().load(this.f36807c);
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardCampaignsResourceManager", e11.getLocalizedMessage());
                }
            }
            Iterator it2 = this.f36805a.iterator();
            while (it2.hasNext()) {
                CampaignEx campaignEx2 = (CampaignEx) it2.next();
                if (campaignEx2 != null) {
                    try {
                        Message messageObtain = Message.obtain();
                        messageObtain.what = 106;
                        Bundle bundle = new Bundle();
                        bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36807c);
                        bundle.putString(MBridgeConstans.PLACEMENT_ID, this.f36809e);
                        bundle.putString(TrackingKey.REQUEST_ID, this.f36810f);
                        bundle.putString("key", this.f36807c + str6 + this.f36810f + str6 + campaignEx2.getSecondRequestIndex());
                        messageObtain.setData(bundle);
                        b.this.f36799a.sendMessage(messageObtain);
                    } catch (Exception unused) {
                    }
                    CampaignEx.c rewardTemplateMode = campaignEx2.getRewardTemplateMode();
                    if (rewardTemplateMode != null) {
                        String strE = rewardTemplateMode.e();
                        int iF = rewardTemplateMode.f();
                        if (campaignEx2.isDynamicView() && t0.a(MBridgeConstans.DYNAMIC_VIEW_KEY_DY_VIEW, strE)) {
                            b.this.a(1, campaignEx2, iF + "", strE);
                        } else if (!TextUtils.isEmpty(strE) && !strE.contains(CampaignEx.KEY_IS_CMPT_ENTRY)) {
                            com.mbridge.msdk.foundation.same.report.metrics.c cVarA = b.this.a(campaignEx2, 2);
                            if (strE.contains(".zip")) {
                                try {
                                    H5DownLoadManager h5DownLoadManager = H5DownLoadManager.getInstance();
                                    Context context = this.f36806b;
                                    String str7 = this.f36809e;
                                    String str8 = this.f36807c;
                                    String str9 = this.f36810f;
                                    str = str6;
                                    try {
                                        m mVar = b.this.f36799a;
                                        try {
                                            n nVar = this.f36812h;
                                            CopyOnWriteArrayList copyOnWriteArrayList2 = this.f36805a;
                                            it = it2;
                                            str5 = "";
                                            str2 = MBridgeConstans.DYNAMIC_VIEW_KEY_DY_VIEW;
                                            charSequence = ".zip";
                                            try {
                                                h5DownLoadManager.downloadH5Res(cVarA, strE, new l(context, str7, str8, str9, campaignEx2, 859, mVar, nVar, copyOnWriteArrayList2));
                                            } catch (Exception e12) {
                                                e = e12;
                                                if (MBridgeConstans.DEBUG) {
                                                    o0.b("RewardCampaignsResourceManager", e.getLocalizedMessage());
                                                }
                                            }
                                        } catch (Exception e13) {
                                            e = e13;
                                            it = it2;
                                            str2 = MBridgeConstans.DYNAMIC_VIEW_KEY_DY_VIEW;
                                            charSequence = ".zip";
                                            str5 = "";
                                        }
                                    } catch (Exception e14) {
                                        e = e14;
                                        it = it2;
                                        str2 = MBridgeConstans.DYNAMIC_VIEW_KEY_DY_VIEW;
                                        str5 = "";
                                        charSequence = ".zip";
                                        if (MBridgeConstans.DEBUG) {
                                            o0.b("RewardCampaignsResourceManager", e.getLocalizedMessage());
                                        }
                                        str3 = str5;
                                        str4 = campaignEx2.getendcard_url();
                                        zIsDynamicView = campaignEx2.isDynamicView();
                                        boolean zL = t0.l(str4);
                                        if (!TextUtils.isEmpty(str4)) {
                                            if (zIsDynamicView) {
                                                b.this.a(this.f36806b, this.f36809e, this.f36807c, this.f36810f, campaignEx2, str4, this.f36812h, (CopyOnWriteArrayList<CampaignEx>) this.f36805a);
                                            } else if (t0.a(str2, str4)) {
                                                try {
                                                    i11 = Integer.parseInt(z0.a(str4, "ecid"));
                                                } catch (Throwable th2) {
                                                    o0.b("RewardCampaignsResourceManager", th2.getMessage());
                                                    i11 = TTAdConstant.DEEPLINK_FALLBACK_CODE;
                                                }
                                                b.this.a(2, campaignEx2, i11 + str3, str4);
                                            }
                                        }
                                        if (!TextUtils.isEmpty(campaignEx2.getEndScreenUrl())) {
                                            H5DownLoadManager.getInstance().download(b.this.a(campaignEx2, 6), campaignEx2.getEndScreenUrl());
                                        }
                                        iconUrl = campaignEx2.getIconUrl();
                                        if (!TextUtils.isEmpty(iconUrl)) {
                                            try {
                                                com.mbridge.msdk.foundation.same.image.b.a(this.f36806b).a(iconUrl, new j(b.this.f36799a, 0, this.f36809e, this.f36807c, this.f36810f, campaignEx2));
                                            } catch (Exception e15) {
                                                if (MBridgeConstans.DEBUG) {
                                                    o0.b("RewardCampaignsResourceManager", e15.getLocalizedMessage());
                                                }
                                            }
                                        }
                                        imageUrl = campaignEx2.getImageUrl();
                                        if (!TextUtils.isEmpty(imageUrl)) {
                                            try {
                                                com.mbridge.msdk.foundation.same.image.b.a(this.f36806b).a(imageUrl, new j(b.this.f36799a, 0, this.f36809e, this.f36807c, this.f36810f, campaignEx2));
                                            } catch (Exception e16) {
                                                if (MBridgeConstans.DEBUG) {
                                                    o0.b("RewardCampaignsResourceManager", e16.getLocalizedMessage());
                                                }
                                            }
                                        }
                                        if (rewardTemplateMode != null) {
                                            strC = rewardTemplateMode.c();
                                            if (TextUtils.isEmpty(strC)) {
                                                campaignEx = campaignEx2;
                                            } else {
                                                campaignEx = campaignEx2;
                                            }
                                            listA = rewardTemplateMode.a();
                                            if (listA != null) {
                                                while (r2.hasNext()) {
                                                    if (aVar == null) {
                                                    }
                                                }
                                            }
                                        }
                                        str6 = str;
                                        it2 = it;
                                    }
                                } catch (Exception e17) {
                                    e = e17;
                                    str = str6;
                                }
                                str3 = str5;
                            } else {
                                str = str6;
                                it = it2;
                                str2 = MBridgeConstans.DYNAMIC_VIEW_KEY_DY_VIEW;
                                charSequence = ".zip";
                                o0.a("RewardCampaignsResourceManager", "开始下载 html 类型的 template");
                                try {
                                    str3 = "";
                                    try {
                                        H5DownLoadManager.getInstance().downloadH5Res(cVarA, strE, new i(859, this.f36809e, this.f36807c, this.f36810f, campaignEx2, this.f36812h, b.this.f36799a, this.f36805a));
                                    } catch (Exception e18) {
                                        e = e18;
                                        if (MBridgeConstans.DEBUG) {
                                            o0.b("RewardCampaignsResourceManager", e.getLocalizedMessage());
                                        }
                                    }
                                } catch (Exception e19) {
                                    e = e19;
                                    str3 = "";
                                }
                            }
                        }
                        str = str6;
                        it = it2;
                        str2 = MBridgeConstans.DYNAMIC_VIEW_KEY_DY_VIEW;
                        str3 = "";
                        charSequence = ".zip";
                    } else {
                        str = str6;
                        it = it2;
                        str2 = MBridgeConstans.DYNAMIC_VIEW_KEY_DY_VIEW;
                        str3 = "";
                        charSequence = ".zip";
                    }
                    str4 = campaignEx2.getendcard_url();
                    zIsDynamicView = campaignEx2.isDynamicView();
                    boolean zL2 = t0.l(str4);
                    if (!TextUtils.isEmpty(str4)) {
                        if (zIsDynamicView || zL2) {
                            b.this.a(this.f36806b, this.f36809e, this.f36807c, this.f36810f, campaignEx2, str4, this.f36812h, (CopyOnWriteArrayList<CampaignEx>) this.f36805a);
                        } else if (t0.a(str2, str4)) {
                            i11 = Integer.parseInt(z0.a(str4, "ecid"));
                            b.this.a(2, campaignEx2, i11 + str3, str4);
                        }
                    }
                    if (!TextUtils.isEmpty(campaignEx2.getEndScreenUrl()) && !campaignEx2.isDynamicView()) {
                        H5DownLoadManager.getInstance().download(b.this.a(campaignEx2, 6), campaignEx2.getEndScreenUrl());
                    }
                    iconUrl = campaignEx2.getIconUrl();
                    if (!TextUtils.isEmpty(iconUrl)) {
                        com.mbridge.msdk.foundation.same.image.b.a(this.f36806b).a(iconUrl, new j(b.this.f36799a, 0, this.f36809e, this.f36807c, this.f36810f, campaignEx2));
                    }
                    imageUrl = campaignEx2.getImageUrl();
                    if (!TextUtils.isEmpty(imageUrl)) {
                        com.mbridge.msdk.foundation.same.image.b.a(this.f36806b).a(imageUrl, new j(b.this.f36799a, 0, this.f36809e, this.f36807c, this.f36810f, campaignEx2));
                    }
                    if (rewardTemplateMode != null) {
                        strC = rewardTemplateMode.c();
                        if (TextUtils.isEmpty(strC) || campaignEx2.isDynamicView()) {
                            campaignEx = campaignEx2;
                        } else {
                            int i12 = campaignEx2.getAabEntity() != null ? campaignEx2.getAabEntity().h3c : 0;
                            com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c(true);
                            cVar.f(i12);
                            if (strC.contains(charSequence)) {
                                o0.a("RewardCampaignsResourceManager", "开始下载 zip 类型的 pause");
                                try {
                                    campaignEx = campaignEx2;
                                    try {
                                        H5DownLoadManager.getInstance().downloadH5Res(cVar, strC, new l(this.f36806b, this.f36809e, this.f36807c, this.f36810f, campaignEx2, Sdk$SDKError.Reason.EVALUATE_JAVASCRIPT_FAILED_VALUE, b.this.f36799a, this.f36812h, this.f36805a));
                                    } catch (Exception e20) {
                                        e = e20;
                                        if (MBridgeConstans.DEBUG) {
                                            o0.b("RewardCampaignsResourceManager", e.getLocalizedMessage());
                                        }
                                    }
                                } catch (Exception e21) {
                                    e = e21;
                                    campaignEx = campaignEx2;
                                }
                            } else {
                                campaignEx = campaignEx2;
                                try {
                                    H5DownLoadManager.getInstance().downloadH5Res(cVar, strC, new i(Sdk$SDKError.Reason.EVALUATE_JAVASCRIPT_FAILED_VALUE, this.f36809e, this.f36807c, this.f36810f, campaignEx, this.f36812h, b.this.f36799a, this.f36805a));
                                } catch (Exception e22) {
                                    if (MBridgeConstans.DEBUG) {
                                        o0.b("RewardCampaignsResourceManager", e22.getLocalizedMessage());
                                    }
                                }
                            }
                        }
                        listA = rewardTemplateMode.a();
                        if (listA != null && listA.size() > 0) {
                            for (CampaignEx.c.a aVar : listA) {
                                if (aVar == null && (list = aVar.f35152a) != null && list.size() > 0) {
                                    for (String str10 : aVar.f35152a) {
                                        if (!TextUtils.isEmpty(str10)) {
                                            try {
                                                com.mbridge.msdk.foundation.same.image.b.a(this.f36806b).a(str10, new j(b.this.f36799a, 1, this.f36809e, this.f36807c, this.f36810f, campaignEx));
                                            } catch (Exception e23) {
                                                if (MBridgeConstans.DEBUG) {
                                                    o0.b("RewardCampaignsResourceManager", e23.getLocalizedMessage());
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    str6 = str;
                    it2 = it;
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.mbridge.msdk.reward.adapter.b$b, reason: collision with other inner class name */
    class C0520b implements x.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f36814a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CampaignEx f36815b;

        C0520b(int i11, CampaignEx campaignEx) {
            this.f36814a = i11;
            this.f36815b = campaignEx;
        }

        @Override // com.mbridge.msdk.foundation.tools.x.c
        public void a(String str, DownloadError downloadError) {
            String message = "";
            if (downloadError != null) {
                try {
                    if (downloadError.getException() != null) {
                        message = downloadError.getException().getMessage();
                    }
                } catch (Exception e11) {
                    if (MBridgeConstans.DEBUG) {
                        e11.printStackTrace();
                        return;
                    }
                    return;
                }
            }
            com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m();
            int i11 = this.f36814a;
            if (i11 == 0) {
                mVar.e(1);
                mVar.d(3);
                mVar.j("m_download_end");
            } else if (i11 == 1) {
                mVar.e(2);
                mVar.d(3);
                mVar.j("m_download_end");
            } else if (i11 == 2) {
                mVar.e(3);
                mVar.d(3);
                mVar.j("m_download_end");
                mVar.b(this.f36815b.isMraid() ? com.mbridge.msdk.foundation.entity.m.N : com.mbridge.msdk.foundation.entity.m.O);
                mVar.f("1");
            }
            b.b(mVar, this.f36815b);
            mVar.o(this.f36815b.getRequestIdNotice());
            mVar.m(message);
            mVar.b("scenes", "1");
            mVar.b("url", str);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(mVar, this.f36815b);
        }

        @Override // com.mbridge.msdk.foundation.tools.x.c
        public void a(String str, String str2, String str3, String str4, boolean z10) {
            if (z10) {
                return;
            }
            try {
                com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m();
                int i11 = this.f36814a;
                if (i11 == 0) {
                    mVar.e(1);
                    mVar.d(1);
                    mVar.j("m_download_end");
                } else if (i11 == 1) {
                    mVar.e(2);
                    mVar.d(1);
                    mVar.j("m_download_end");
                } else if (i11 == 2) {
                    mVar.e(3);
                    mVar.d(1);
                    mVar.j("m_download_end");
                    mVar.b(this.f36815b.isMraid() ? com.mbridge.msdk.foundation.entity.m.N : com.mbridge.msdk.foundation.entity.m.O);
                    mVar.f("1");
                }
                mVar.o(this.f36815b.getRequestIdNotice());
                mVar.b("url", str);
                mVar.b("scenes", "1");
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(mVar, this.f36815b);
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardCampaignsResourceManager", e11.getMessage());
                }
            }
        }
    }

    class c implements H5DownLoadManager.ZipDownloadListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f36817a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f36818b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f36819c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ CampaignEx f36820d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ n f36821e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ Context f36822f;

        c(String str, String str2, String str3, CampaignEx campaignEx, n nVar, Context context) {
            this.f36817a = str;
            this.f36818b = str2;
            this.f36819c = str3;
            this.f36820d = campaignEx;
            this.f36821e = nVar;
            this.f36822f = context;
        }

        /* JADX WARN: Code duplicated, block: B:34:0x0141 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onFailed(String str, String str2) {
            Exception exc;
            String str3;
            String str4 = "";
            String str5 = MBridgeConstans.PROPERTIES_UNIT_ID;
            String str6 = "RewardCampaignsResourceManager";
            String str7 = "_";
            try {
                ResDownloadCheckManager.getInstance().setZipDownloadDone(str2, false);
                Message messageObtain = Message.obtain();
                messageObtain.what = Sdk$SDKError.Reason.AD_IS_PLAYING_VALUE;
                Bundle bundle = new Bundle();
                bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36817a);
                bundle.putString(MBridgeConstans.PLACEMENT_ID, this.f36818b);
                bundle.putString(TrackingKey.REQUEST_ID, this.f36819c);
                bundle.putString("url", str2);
                bundle.putString("key", this.f36817a + "_" + this.f36819c + "_" + this.f36820d.getSecondRequestIndex());
                bundle.putString("message", str);
                messageObtain.setData(bundle);
                b.this.f36799a.sendMessage(messageObtain);
                if (this.f36821e != null) {
                    try {
                        try {
                            this.f36821e.a(str2, this.f36819c, b.b(880005, new MBridgeIds(this.f36818b, this.f36817a, this.f36819c), "", null, null));
                        } catch (Exception e11) {
                            e = e11;
                            try {
                                o0.b("RewardCampaignsResourceManager", e.getMessage());
                            } catch (Exception e12) {
                                exc = e12;
                                str7 = "_";
                                str6 = "RewardCampaignsResourceManager";
                                str4 = "";
                                str5 = MBridgeConstans.PROPERTIES_UNIT_ID;
                                ResDownloadCheckManager.getInstance().setZipDownloadDone(str2, false);
                                Message messageObtain2 = Message.obtain();
                                messageObtain2.what = 105;
                                Bundle bundle2 = new Bundle();
                                bundle2.putString(str5, this.f36817a);
                                bundle2.putString(MBridgeConstans.PLACEMENT_ID, this.f36818b);
                                bundle2.putString(TrackingKey.REQUEST_ID, this.f36819c);
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append(this.f36817a);
                                String str8 = str7;
                                sb2.append(str8);
                                sb2.append(this.f36819c);
                                sb2.append(str8);
                                sb2.append(this.f36820d.getSecondRequestIndex());
                                bundle2.putString("key", sb2.toString());
                                bundle2.putString("url", str2);
                                bundle2.putString("message", exc.getMessage());
                                messageObtain2.setData(bundle2);
                                b.this.f36799a.sendMessage(messageObtain2);
                                if (this.f36821e != null) {
                                    try {
                                        this.f36821e.a(str2, this.f36819c, b.b(880005, new MBridgeIds(this.f36818b, this.f36817a, this.f36819c), str4, exc, null));
                                    } catch (Exception e13) {
                                        str3 = str6;
                                        o0.b(str3, e13.getMessage());
                                        o0.b(str3, exc.getLocalizedMessage());
                                    }
                                }
                                str3 = str6;
                                o0.b(str3, exc.getLocalizedMessage());
                            }
                        }
                    } catch (Exception e14) {
                        e = e14;
                    }
                }
                try {
                    b.this.a(this.f36822f, 3, this.f36820d, str2, str, this.f36817a, "");
                } catch (Exception e15) {
                    e = e15;
                    exc = e;
                    ResDownloadCheckManager.getInstance().setZipDownloadDone(str2, false);
                    Message messageObtain3 = Message.obtain();
                    messageObtain3.what = 105;
                    Bundle bundle3 = new Bundle();
                    bundle3.putString(str5, this.f36817a);
                    bundle3.putString(MBridgeConstans.PLACEMENT_ID, this.f36818b);
                    bundle3.putString(TrackingKey.REQUEST_ID, this.f36819c);
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(this.f36817a);
                    String str9 = str7;
                    sb3.append(str9);
                    sb3.append(this.f36819c);
                    sb3.append(str9);
                    sb3.append(this.f36820d.getSecondRequestIndex());
                    bundle3.putString("key", sb3.toString());
                    bundle3.putString("url", str2);
                    bundle3.putString("message", exc.getMessage());
                    messageObtain3.setData(bundle3);
                    b.this.f36799a.sendMessage(messageObtain3);
                    if (this.f36821e != null) {
                        this.f36821e.a(str2, this.f36819c, b.b(880005, new MBridgeIds(this.f36818b, this.f36817a, this.f36819c), str4, exc, null));
                    }
                    str3 = str6;
                    o0.b(str3, exc.getLocalizedMessage());
                }
            } catch (Exception e16) {
                e = e16;
            }
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onSuccess(String str, String str2, boolean z10) {
            String str3;
            try {
                o0.a("RewardCampaignsResourceManager", "zip btl template download success");
                ResDownloadCheckManager.getInstance().setZipDownloadDone(str, true);
                Message messageObtain = Message.obtain();
                messageObtain.what = 105;
                Bundle bundle = new Bundle();
                bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36817a);
                bundle.putString(MBridgeConstans.PLACEMENT_ID, this.f36818b);
                bundle.putString(TrackingKey.REQUEST_ID, this.f36819c);
                bundle.putString("key", this.f36817a + "_" + this.f36819c + "_" + this.f36820d.getSecondRequestIndex());
                bundle.putString("url", str);
                messageObtain.setData(bundle);
                b.this.f36799a.sendMessage(messageObtain);
                n nVar = this.f36821e;
                if (nVar != null) {
                    nVar.a(this.f36818b, this.f36817a, this.f36819c, str);
                }
                if (z10) {
                    return;
                }
                try {
                    b.this.a(this.f36822f, 1, this.f36820d, str, "", this.f36817a, str2);
                    return;
                } catch (Exception e11) {
                    e = e11;
                }
            } catch (Exception e12) {
                e = e12;
            }
            Exception exc = e;
            ResDownloadCheckManager.getInstance().setZipDownloadDone(str, false);
            Message messageObtain2 = Message.obtain();
            messageObtain2.what = Sdk$SDKError.Reason.AD_IS_PLAYING_VALUE;
            Bundle bundle2 = new Bundle();
            bundle2.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36817a);
            bundle2.putString(MBridgeConstans.PLACEMENT_ID, this.f36818b);
            bundle2.putString(TrackingKey.REQUEST_ID, this.f36819c);
            bundle2.putString("key", this.f36817a + r9 + this.f36819c + "_" + this.f36820d.getSecondRequestIndex());
            bundle2.putString("url", str);
            messageObtain2.setData(bundle2);
            b.this.f36799a.sendMessage(messageObtain2);
            if (this.f36821e != null) {
                try {
                    this.f36821e.a(str, this.f36819c, b.b(880005, new MBridgeIds(this.f36818b, this.f36817a, this.f36819c), "", exc, null));
                } catch (Exception e13) {
                    str3 = r15;
                    o0.b(str3, e13.getMessage());
                }
            }
            str3 = "RewardCampaignsResourceManager";
            b.this.a(this.f36822f, 3, this.f36820d, str, exc.getLocalizedMessage(), this.f36817a, str2);
            if (MBridgeConstans.DEBUG) {
                o0.b(str3, exc.getLocalizedMessage());
            }
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CampaignEx f36824a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f36825b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f36826c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f36827d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f36828e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f36829f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f36830g;

        d(CampaignEx campaignEx, Context context, int i11, String str, String str2, String str3, String str4) {
            this.f36824a = campaignEx;
            this.f36825b = context;
            this.f36826c = i11;
            this.f36827d = str;
            this.f36828e = str2;
            this.f36829f = str3;
            this.f36830g = str4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f36824a == null || this.f36825b == null) {
                return;
            }
            try {
                com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m();
                mVar.j("m_download_end");
                Context context = this.f36825b;
                if (context != null) {
                    mVar.c(k0.s(context.getApplicationContext()));
                }
                mVar.d(this.f36826c);
                CampaignEx campaignEx = this.f36824a;
                if (campaignEx != null) {
                    mVar.b(campaignEx.getId());
                    mVar.n(this.f36824a.getRequestId());
                    mVar.k(this.f36824a.getCurrentLocalRid());
                    mVar.o(this.f36824a.getRequestIdNotice());
                }
                mVar.b("url", this.f36827d);
                mVar.t(this.f36827d);
                mVar.m(this.f36828e);
                mVar.u(this.f36829f);
                if (!TextUtils.isEmpty(this.f36830g)) {
                    mVar.q(this.f36830g);
                }
                mVar.e(1);
                mVar.b("scenes", "1");
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(mVar, this.f36824a);
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardCampaignsResourceManager", e11.getLocalizedMessage());
                }
            }
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f36832a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ WindVaneWebView f36833b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CampaignEx f36834c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ CopyOnWriteArrayList f36835d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f36836e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.videocommon.setting.c f36837f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f36838g;

        e(boolean z10, WindVaneWebView windVaneWebView, CampaignEx campaignEx, CopyOnWriteArrayList copyOnWriteArrayList, String str, com.mbridge.msdk.videocommon.setting.c cVar, String str2) {
            this.f36832a = z10;
            this.f36833b = windVaneWebView;
            this.f36834c = campaignEx;
            this.f36835d = copyOnWriteArrayList;
            this.f36836e = str;
            this.f36837f = cVar;
            this.f36838g = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.a(this.f36832a, this.f36833b, this.f36834c.getRewardTemplateMode().e(), 0, this.f36834c, (CopyOnWriteArrayList<CampaignEx>) this.f36835d, H5DownLoadManager.getInstance().getH5ResAddress(this.f36834c.getRewardTemplateMode().e()), this.f36836e, this.f36837f, this.f36838g, b.this.f36800b);
        }
    }

    private static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f36840a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f36841b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f36842c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f36843d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        String f36844e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        String f36845f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f36846g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        CopyOnWriteArrayList<CampaignEx> f36847h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        CopyOnWriteArrayList<CampaignEx> f36848i;

        public f(boolean z10, boolean z11, int i11, int i12, String str, String str2, int i13, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
            this.f36840a = z10;
            this.f36841b = z11;
            this.f36842c = i11;
            this.f36843d = i12;
            this.f36844e = str;
            this.f36845f = str2;
            this.f36846g = i13;
            this.f36847h = copyOnWriteArrayList;
            this.f36848i = new CopyOnWriteArrayList<>(copyOnWriteArrayList);
        }
    }

    private static class g extends com.mbridge.msdk.mbsignalcommon.listener.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Handler f36849a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Runnable f36850b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f36851c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f36852d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f36853e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f36854f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f36855g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private String f36856h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private String f36857i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private com.mbridge.msdk.videocommon.a.C0572a f36858j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private CampaignEx f36859k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private CopyOnWriteArrayList<CampaignEx> f36860l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private com.mbridge.msdk.videocommon.setting.c f36861m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private final o f36862n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private boolean f36863o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private boolean f36864p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private boolean f36865q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private int f36866r = 0;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private boolean f36867s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private long f36868t;

        public g(boolean z10, Handler handler, Runnable runnable, boolean z11, boolean z12, int i11, String str, String str2, String str3, String str4, com.mbridge.msdk.videocommon.a.C0572a c0572a, CampaignEx campaignEx, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, com.mbridge.msdk.videocommon.setting.c cVar, o oVar, boolean z13, long j11) {
            this.f36849a = handler;
            this.f36850b = runnable;
            this.f36851c = z11;
            this.f36852d = z12;
            this.f36853e = i11;
            this.f36854f = str;
            this.f36856h = str2;
            this.f36855g = str3;
            this.f36857i = str4;
            this.f36858j = c0572a;
            this.f36859k = campaignEx;
            this.f36860l = copyOnWriteArrayList;
            this.f36861m = cVar;
            this.f36862n = oVar;
            this.f36863o = z13;
            this.f36867s = z10;
            this.f36868t = j11;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.a, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView) {
            if (webView != null) {
                try {
                    com.mbridge.msdk.video.bt.component.d.c().c(this.f36855g, this.f36857i);
                } catch (Throwable th2) {
                    o0.b("RVWindVaneWebView", th2.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.a, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i11) {
            Runnable runnable;
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 1);
                eVar.a("result", Integer.valueOf(i11));
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000155", this.f36859k, eVar);
            } catch (Throwable th2) {
                o0.b("RVWindVaneWebView", th2.getMessage());
            }
            if (this.f36865q) {
                return;
            }
            String str = this.f36855g + "_" + this.f36854f;
            if (i11 == 1) {
                if (this.f36863o) {
                    com.mbridge.msdk.videocommon.a.d(this.f36855g + "_" + this.f36857i);
                } else {
                    com.mbridge.msdk.videocommon.a.c(this.f36855g + "_" + this.f36857i);
                }
                com.mbridge.msdk.videocommon.a.a(this.f36855g + "_" + this.f36857i + "_" + this.f36854f, this.f36858j, true, this.f36863o);
                Handler handler = this.f36849a;
                if (handler != null && (runnable = this.f36850b) != null) {
                    handler.removeCallbacks(runnable);
                }
                ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f36855g + "_" + this.f36857i + "_" + this.f36854f, true);
                com.mbridge.msdk.videocommon.a.C0572a c0572a = this.f36858j;
                if (c0572a != null) {
                    c0572a.a(true);
                }
                o oVar = this.f36862n;
                if (oVar != null) {
                    oVar.a(str, this.f36856h, this.f36855g, this.f36857i, this.f36854f, this.f36858j);
                }
            } else {
                ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f36855g + "_" + this.f36857i + "_" + this.f36854f, false);
                com.mbridge.msdk.videocommon.a.C0572a c0572a2 = this.f36858j;
                if (c0572a2 != null) {
                    c0572a2.a(false);
                }
                if (this.f36862n != null) {
                    this.f36862n.a(str, this.f36857i, this.f36854f, this.f36858j, b.b(880008, new MBridgeIds(this.f36856h, this.f36855g, this.f36857i), "readyState:" + i11, null, this.f36859k));
                }
            }
            this.f36865q = true;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.a, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i11, String str, String str2) {
            super.a(webView, i11, str, str2);
            ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f36855g + "_" + this.f36857i + "_" + this.f36854f, false);
            if (this.f36862n != null) {
                String str3 = this.f36855g + "_" + this.f36854f;
                com.mbridge.msdk.videocommon.a.C0572a c0572a = this.f36858j;
                if (c0572a != null) {
                    c0572a.a(false);
                }
                this.f36862n.a(str3, this.f36857i, this.f36854f, this.f36858j, b.b(880008, new MBridgeIds(this.f36856h, this.f36855g, this.f36857i), "onReceivedError： " + i11 + "  " + str, null, this.f36859k));
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.a, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str) {
            Runnable runnable;
            super.a(webView, str);
            if (this.f36864p) {
                return;
            }
            String str2 = this.f36855g + "_" + this.f36854f;
            if (!str.contains("wfr=1")) {
                ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f36855g + "_" + this.f36857i + "_" + this.f36854f, true);
                Handler handler = this.f36849a;
                if (handler != null && (runnable = this.f36850b) != null) {
                    handler.removeCallbacks(runnable);
                }
                com.mbridge.msdk.videocommon.a.C0572a c0572a = this.f36858j;
                if (c0572a != null) {
                    c0572a.a(true);
                }
                o oVar = this.f36862n;
                if (oVar != null) {
                    oVar.a(str2, this.f36856h, this.f36855g, this.f36857i, this.f36854f, this.f36858j);
                }
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(webView);
            this.f36864p = true;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.a
        public void a(WebView webView, String str, String str2, int i11, int i12) {
            boolean z10 = true;
            if (i11 == 1) {
                try {
                    com.mbridge.msdk.reward.controller.a aVar = new com.mbridge.msdk.reward.controller.a();
                    aVar.e(false);
                    if (i12 != 2) {
                        z10 = false;
                    }
                    aVar.d(z10);
                    aVar.c(str, str2);
                    aVar.a(new com.mbridge.msdk.video.bt.module.orglistener.a(null));
                    aVar.a(false, com.mbridge.msdk.foundation.same.report.metrics.d.b().a(0, i12, str2, true, 1));
                } catch (Exception e11) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RVWindVaneWebView", e11.getMessage());
                    }
                }
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.a
        public void a(Object obj, String str) {
            if (obj != null) {
                try {
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    String strOptString = new JSONObject(str).optString("id");
                    com.mbridge.msdk.video.bt.component.d.c().b(obj, strOptString);
                    String strF = com.mbridge.msdk.video.bt.component.d.c().f(strOptString);
                    CampaignEx campaignExC = com.mbridge.msdk.video.bt.component.d.c().c(strOptString);
                    com.mbridge.msdk.videocommon.setting.c cVarD = com.mbridge.msdk.video.bt.component.d.c().d(strOptString);
                    CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
                    copyOnWriteArrayList.add(campaignExC);
                    WindVaneWebView windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f36541b;
                    if (windVaneWebView != null) {
                        b.b().a(this.f36867s, windVaneWebView, campaignExC, (CopyOnWriteArrayList<CampaignEx>) copyOnWriteArrayList, cVarD, strF, strOptString, this.f36866r == 0 ? 3 : 6);
                        this.f36866r++;
                    }
                } catch (Throwable th2) {
                    o0.b("RVWindVaneWebView", th2.getMessage());
                }
            }
        }
    }

    public interface h {
        void a(String str, String str2, String str3, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList);

        void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, com.mbridge.msdk.foundation.error.b bVar);
    }

    private static final class i implements H5DownLoadManager.IH5SourceDownloadListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f36870b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f36871c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f36872d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final String f36873e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private CampaignEx f36874f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private n f36875g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private Handler f36876h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private CopyOnWriteArrayList<CampaignEx> f36877i;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f36869a = false;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final long f36878j = System.currentTimeMillis();

        class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ int f36879a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ long f36880b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ String f36881c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ String f36882d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ String f36883e;

            a(int i11, long j11, String str, String str2, String str3) {
                this.f36879a = i11;
                this.f36880b = j11;
                this.f36881c = str;
                this.f36882d = str2;
                this.f36883e = str3;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (i.this.f36874f == null) {
                    return;
                }
                try {
                    com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m("m_download_end", this.f36879a, this.f36880b + "", this.f36881c, i.this.f36874f.getId(), i.this.f36872d, this.f36882d, "2");
                    mVar.n(i.this.f36874f.getRequestId());
                    mVar.k(i.this.f36874f.getCurrentLocalRid());
                    mVar.o(i.this.f36874f.getRequestIdNotice());
                    mVar.b(i.this.f36874f.getId());
                    mVar.a(i.this.f36874f.getAdSpaceT());
                    mVar.b("scenes", "1");
                    mVar.b("url", this.f36881c);
                    if (i.this.f36874f.getAdType() == 287) {
                        mVar.a("3");
                    } else if (i.this.f36874f.getAdType() == 94) {
                        mVar.a("1");
                    }
                    if (!TextUtils.isEmpty(this.f36883e)) {
                        mVar.q(this.f36883e);
                    }
                    b.b(mVar, i.this.f36874f);
                    com.mbridge.msdk.foundation.same.report.g.a(mVar, i.this.f36872d, i.this.f36874f);
                } catch (Exception e11) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardCampaignsResourceManager", e11.getLocalizedMessage());
                    }
                }
            }
        }

        public i(int i11, String str, String str2, String str3, CampaignEx campaignEx, n nVar, Handler handler, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
            this.f36870b = i11;
            this.f36871c = str;
            this.f36872d = str2;
            this.f36873e = str3;
            this.f36874f = campaignEx;
            this.f36875g = nVar;
            this.f36876h = handler;
            this.f36877i = copyOnWriteArrayList;
        }

        private void a(int i11, long j11, String str, String str2, String str3) {
            com.mbridge.msdk.foundation.same.threadpool.a.e().execute(new a(i11, j11, str, str2, str3));
        }

        public void a(boolean z10) {
            this.f36869a = z10;
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onFailed(String str, String str2) {
            ResDownloadCheckManager.getInstance().setZipDownloadDone(str, false);
            int i11 = this.f36870b;
            if (i11 == 313) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 201;
                Bundle bundle = new Bundle();
                bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36872d);
                bundle.putString(MBridgeConstans.PLACEMENT_ID, this.f36871c);
                bundle.putString(TrackingKey.REQUEST_ID, this.f36873e);
                bundle.putString("key", this.f36872d + "_" + this.f36873e + "_" + this.f36874f.getSecondRequestIndex());
                bundle.putString("url", str);
                bundle.putString("message", str2);
                messageObtain.setData(bundle);
                this.f36876h.sendMessage(messageObtain);
                return;
            }
            if (i11 == 497) {
                Message messageObtain2 = Message.obtain();
                messageObtain2.what = 201;
                Bundle bundle2 = new Bundle();
                bundle2.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36872d);
                bundle2.putString(MBridgeConstans.PLACEMENT_ID, this.f36871c);
                bundle2.putString(TrackingKey.REQUEST_ID, this.f36873e);
                bundle2.putString("key", this.f36872d + "_" + this.f36873e + "_" + this.f36874f.getSecondRequestIndex());
                bundle2.putString("url", str);
                bundle2.putString("message", str2);
                messageObtain2.setData(bundle2);
                this.f36876h.sendMessage(messageObtain2);
                if (this.f36869a) {
                    a(3, System.currentTimeMillis() - this.f36878j, str, "url download failed", "");
                    return;
                }
                return;
            }
            if (i11 != 859) {
                return;
            }
            Message messageObtain3 = Message.obtain();
            messageObtain3.what = Sdk$SDKError.Reason.AD_IS_PLAYING_VALUE;
            Bundle bundle3 = new Bundle();
            bundle3.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36872d);
            bundle3.putString(MBridgeConstans.PLACEMENT_ID, this.f36871c);
            bundle3.putString(TrackingKey.REQUEST_ID, this.f36873e);
            bundle3.putString("key", this.f36872d + "_" + this.f36873e + "_" + this.f36874f.getSecondRequestIndex());
            bundle3.putString("message", str2);
            messageObtain3.setData(bundle3);
            this.f36876h.sendMessage(messageObtain3);
            if (this.f36875g != null) {
                try {
                    this.f36875g.a(str, this.f36873e, b.b(880006, new MBridgeIds(this.f36871c, this.f36872d, this.f36873e), str2, null, null));
                } catch (Exception e11) {
                    o0.b("RewardCampaignsResourceManager", e11.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onSuccess(String str, String str2, boolean z10) {
            ResDownloadCheckManager.getInstance().setZipDownloadDone(str, true);
            int i11 = this.f36870b;
            if (i11 == 313) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 101;
                Bundle bundle = new Bundle();
                bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36872d);
                bundle.putString(MBridgeConstans.PLACEMENT_ID, this.f36871c);
                bundle.putString(TrackingKey.REQUEST_ID, this.f36873e);
                bundle.putString("key", this.f36872d + "_" + this.f36873e + "_" + this.f36874f.getSecondRequestIndex());
                bundle.putString("url", str);
                messageObtain.setData(bundle);
                this.f36876h.sendMessage(messageObtain);
                return;
            }
            if (i11 == 497) {
                Message messageObtain2 = Message.obtain();
                messageObtain2.what = 101;
                Bundle bundle2 = new Bundle();
                bundle2.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36872d);
                bundle2.putString(MBridgeConstans.PLACEMENT_ID, this.f36871c);
                bundle2.putString(TrackingKey.REQUEST_ID, this.f36873e);
                bundle2.putString("key", this.f36872d + "_" + this.f36873e + "_" + this.f36874f.getSecondRequestIndex());
                bundle2.putString("url", str);
                messageObtain2.setData(bundle2);
                this.f36876h.sendMessage(messageObtain2);
                if (this.f36869a) {
                    a(1, System.currentTimeMillis() - this.f36878j, str, "", str2);
                    return;
                }
                return;
            }
            if (i11 != 859) {
                return;
            }
            Message messageObtain3 = Message.obtain();
            messageObtain3.what = 105;
            Bundle bundle3 = new Bundle();
            bundle3.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36872d);
            bundle3.putString(MBridgeConstans.PLACEMENT_ID, this.f36871c);
            bundle3.putString(TrackingKey.REQUEST_ID, this.f36873e);
            bundle3.putString("key", this.f36872d + "_" + this.f36873e + "_" + this.f36874f.getSecondRequestIndex());
            messageObtain3.setData(bundle3);
            this.f36876h.sendMessage(messageObtain3);
            n nVar = this.f36875g;
            if (nVar != null) {
                nVar.a(this.f36871c, this.f36872d, this.f36873e, str);
            }
        }
    }

    private static final class j implements com.mbridge.msdk.foundation.same.image.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Handler f36885a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f36886b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f36887c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f36888d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f36889e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private CampaignEx f36890f;

        class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ String f36891a;

            a(String str) {
                this.f36891a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (j.this.f36890f != null) {
                    try {
                        com.mbridge.msdk.foundation.db.n nVarA = com.mbridge.msdk.foundation.db.n.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                        o0.a("RewardCampaignsResourceManager", "campaign is null");
                        com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m();
                        mVar.j("2000044");
                        mVar.c(k0.s(com.mbridge.msdk.foundation.controller.c.m().d()));
                        mVar.b(j.this.f36890f.getId());
                        mVar.i(j.this.f36890f.getImageUrl());
                        mVar.n(j.this.f36890f.getRequestId());
                        mVar.k(j.this.f36890f.getCurrentLocalRid());
                        mVar.o(j.this.f36890f.getRequestIdNotice());
                        mVar.u(j.this.f36887c);
                        mVar.m(this.f36891a);
                        mVar.b("scenes", "1");
                        nVarA.a(mVar);
                    } catch (Exception e11) {
                        if (MBridgeConstans.DEBUG) {
                            o0.b("RewardCampaignsResourceManager", e11.getLocalizedMessage());
                        }
                    }
                }
            }
        }

        public j(Handler handler, int i11, String str, String str2, String str3, CampaignEx campaignEx) {
            this.f36885a = handler;
            this.f36886b = i11;
            this.f36888d = str;
            this.f36887c = str2;
            this.f36889e = str3;
            this.f36890f = campaignEx;
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            Message messageObtain = Message.obtain();
            messageObtain.what = this.f36886b == 0 ? Sdk$SDKError.Reason.AD_CONSUMED_VALUE : Sdk$SDKError.Reason.AD_ALREADY_LOADED_VALUE;
            Bundle bundle = new Bundle();
            bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36887c);
            bundle.putString(MBridgeConstans.PLACEMENT_ID, this.f36888d);
            bundle.putString(TrackingKey.REQUEST_ID, this.f36889e);
            bundle.putString("key", this.f36887c + "_" + this.f36889e + "_" + this.f36890f.getSecondRequestIndex());
            messageObtain.setData(bundle);
            this.f36885a.sendMessage(messageObtain);
            a aVar = new a(str);
            if (com.mbridge.msdk.foundation.controller.d.a().e()) {
                com.mbridge.msdk.foundation.same.threadpool.a.b().execute(aVar);
            } else {
                aVar.run();
            }
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            ResDownloadCheckManager.getInstance().setImageDownloadDone(str, true);
            Message messageObtain = Message.obtain();
            messageObtain.what = this.f36886b == 0 ? 102 : 104;
            Bundle bundle = new Bundle();
            bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36887c);
            bundle.putString(MBridgeConstans.PLACEMENT_ID, this.f36888d);
            bundle.putString(TrackingKey.REQUEST_ID, this.f36889e);
            bundle.putString("key", this.f36887c + "_" + this.f36889e + "_" + this.f36890f.getSecondRequestIndex());
            messageObtain.setData(bundle);
            this.f36885a.sendMessage(messageObtain);
        }
    }

    private static final class k implements com.mbridge.msdk.videocommon.listener.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Handler f36893a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f36894b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f36895c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f36896d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final String f36897e;

        public k(Handler handler, String str, String str2, String str3, String str4) {
            this.f36893a = handler;
            this.f36895c = str;
            this.f36894b = str2;
            this.f36896d = str3;
            this.f36897e = str4;
        }

        @Override // com.mbridge.msdk.videocommon.listener.a
        public void a(String str) {
            ResDownloadCheckManager.getInstance().setVideoDownloadDone(str, true);
            Message messageObtain = Message.obtain();
            messageObtain.what = 100;
            Bundle bundle = new Bundle();
            bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36894b);
            bundle.putString(MBridgeConstans.PLACEMENT_ID, this.f36895c);
            bundle.putString(TrackingKey.REQUEST_ID, this.f36896d);
            bundle.putString("key", this.f36897e);
            bundle.putString("url", str);
            messageObtain.setData(bundle);
            this.f36893a.sendMessage(messageObtain);
        }

        @Override // com.mbridge.msdk.videocommon.listener.a
        public void a(String str, String str2) {
            ResDownloadCheckManager.getInstance().setVideoDownloadDone(str2, false);
            Message messageObtain = Message.obtain();
            messageObtain.what = 200;
            Bundle bundle = new Bundle();
            bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36894b);
            bundle.putString(MBridgeConstans.PLACEMENT_ID, this.f36895c);
            bundle.putString(TrackingKey.REQUEST_ID, this.f36896d);
            bundle.putString("url", str2);
            bundle.putString("key", this.f36897e);
            bundle.putString("message", str);
            messageObtain.setData(bundle);
            this.f36893a.sendMessage(messageObtain);
        }
    }

    private static final class l implements H5DownLoadManager.ZipDownloadListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Context f36899b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f36900c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f36901d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f36902e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private CampaignEx f36903f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f36904g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private Handler f36905h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private n f36906i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private CopyOnWriteArrayList<CampaignEx> f36907j;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f36898a = false;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private long f36908k = System.currentTimeMillis();

        class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ int f36909a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f36910b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ String f36911c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ String f36912d;

            a(int i11, String str, String str2, String str3) {
                this.f36909a = i11;
                this.f36910b = str;
                this.f36911c = str2;
                this.f36912d = str3;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (l.this.f36903f == null || l.this.f36899b == null) {
                    return;
                }
                try {
                    com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m();
                    mVar.j("m_download_end");
                    if (l.this.f36899b != null) {
                        mVar.c(k0.s(l.this.f36899b.getApplicationContext()));
                    }
                    mVar.d(this.f36909a);
                    if (l.this.f36903f != null) {
                        mVar.b(l.this.f36903f.getId());
                        mVar.n(l.this.f36903f.getRequestId());
                        mVar.k(l.this.f36903f.getCurrentLocalRid());
                        mVar.o(l.this.f36903f.getRequestIdNotice());
                    }
                    mVar.t(this.f36910b);
                    mVar.m(this.f36911c);
                    mVar.u(l.this.f36900c);
                    if (!TextUtils.isEmpty(this.f36912d)) {
                        mVar.q(this.f36912d);
                    }
                    mVar.e(2);
                    mVar.b("scenes", "1");
                    mVar.b("url", this.f36910b);
                    b.b(mVar, l.this.f36903f);
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a(mVar, l.this.f36903f);
                } catch (Exception e11) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardCampaignsResourceManager", e11.getLocalizedMessage());
                    }
                }
            }
        }

        /* JADX INFO: renamed from: com.mbridge.msdk.reward.adapter.b$l$b, reason: collision with other inner class name */
        class RunnableC0521b implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ int f36914a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ long f36915b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ String f36916c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ String f36917d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ String f36918e;

            RunnableC0521b(int i11, long j11, String str, String str2, String str3) {
                this.f36914a = i11;
                this.f36915b = j11;
                this.f36916c = str;
                this.f36917d = str2;
                this.f36918e = str3;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (l.this.f36903f == null) {
                    return;
                }
                try {
                    com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m("m_download_end", this.f36914a, this.f36915b + "", this.f36916c, l.this.f36903f.getId(), l.this.f36900c, this.f36917d, "1");
                    mVar.n(l.this.f36903f.getRequestId());
                    mVar.k(l.this.f36903f.getCurrentLocalRid());
                    mVar.o(l.this.f36903f.getRequestIdNotice());
                    mVar.b(l.this.f36903f.getId());
                    mVar.a(l.this.f36903f.getAdSpaceT());
                    mVar.q(this.f36918e);
                    mVar.b("scenes", "1");
                    if (l.this.f36903f.getAdType() == 287) {
                        mVar.a("3");
                    } else if (l.this.f36903f.getAdType() == 94) {
                        mVar.a("1");
                    }
                    mVar.b("url", this.f36916c);
                    mVar.e(3);
                    b.b(mVar, l.this.f36903f);
                    com.mbridge.msdk.foundation.same.report.g.a(mVar, l.this.f36900c, l.this.f36903f);
                } catch (Exception e11) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardCampaignsResourceManager", e11.getLocalizedMessage());
                    }
                }
            }
        }

        public l(Context context, String str, String str2, String str3, CampaignEx campaignEx, int i11, Handler handler, n nVar, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
            this.f36899b = context;
            this.f36901d = str;
            this.f36900c = str2;
            this.f36902e = str3;
            this.f36903f = campaignEx;
            this.f36904g = i11;
            this.f36905h = handler;
            this.f36906i = nVar;
            this.f36907j = copyOnWriteArrayList;
        }

        private void a(int i11, long j11, String str, String str2, String str3) {
            com.mbridge.msdk.foundation.same.threadpool.a.e().execute(new RunnableC0521b(i11, j11, str, str2, str3));
        }

        private void a(int i11, String str, String str2, String str3) {
            com.mbridge.msdk.foundation.same.threadpool.a.e().execute(new a(i11, str, str2, str3));
        }

        public void a(boolean z10) {
            this.f36898a = z10;
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onFailed(String str, String str2) {
            ResDownloadCheckManager.getInstance().setZipDownloadDone(str2, false);
            long jCurrentTimeMillis = System.currentTimeMillis() - this.f36908k;
            int i11 = this.f36904g;
            if (i11 == 313) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 101;
                Bundle bundle = new Bundle();
                bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36900c);
                bundle.putString(MBridgeConstans.PLACEMENT_ID, this.f36901d);
                bundle.putString(TrackingKey.REQUEST_ID, this.f36902e);
                bundle.putString("key", this.f36900c + "_" + this.f36902e + "_" + this.f36903f.getSecondRequestIndex());
                bundle.putString("url", str2);
                bundle.putString("message", str);
                messageObtain.setData(bundle);
                this.f36905h.sendMessage(messageObtain);
                return;
            }
            if (i11 == 497) {
                Message messageObtain2 = Message.obtain();
                messageObtain2.what = 201;
                Bundle bundle2 = new Bundle();
                bundle2.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36900c);
                bundle2.putString(MBridgeConstans.PLACEMENT_ID, this.f36901d);
                bundle2.putString(TrackingKey.REQUEST_ID, this.f36902e);
                bundle2.putString("url", str2);
                bundle2.putString("key", this.f36900c + "_" + this.f36902e + "_" + this.f36903f.getSecondRequestIndex());
                bundle2.putString("message", str);
                messageObtain2.setData(bundle2);
                this.f36905h.sendMessage(messageObtain2);
                if (this.f36898a) {
                    a(3, jCurrentTimeMillis, str2, "zip download failed", "");
                    return;
                }
                return;
            }
            if (i11 != 859) {
                return;
            }
            Message messageObtain3 = Message.obtain();
            messageObtain3.what = Sdk$SDKError.Reason.AD_IS_LOADING_VALUE;
            Bundle bundle3 = new Bundle();
            bundle3.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36900c);
            bundle3.putString(MBridgeConstans.PLACEMENT_ID, this.f36901d);
            bundle3.putString(TrackingKey.REQUEST_ID, this.f36902e);
            bundle3.putString("url", str2);
            bundle3.putString("key", this.f36900c + "_" + this.f36902e + "_" + this.f36903f.getSecondRequestIndex());
            bundle3.putString("message", str);
            messageObtain3.setData(bundle3);
            this.f36905h.sendMessage(messageObtain3);
            if (this.f36906i != null) {
                try {
                    this.f36906i.a(str2, this.f36902e, b.b(880006, new MBridgeIds(this.f36901d, this.f36900c, this.f36902e), "", null, null));
                } catch (Exception e11) {
                    o0.b("RewardCampaignsResourceManager", e11.getMessage());
                }
            }
            a(3, str2, str, "");
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onSuccess(String str, String str2, boolean z10) {
            ResDownloadCheckManager.getInstance().setZipDownloadDone(str, true);
            long jCurrentTimeMillis = System.currentTimeMillis() - this.f36908k;
            int i11 = this.f36904g;
            if (i11 == 313) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 101;
                Bundle bundle = new Bundle();
                bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36900c);
                bundle.putString(MBridgeConstans.PLACEMENT_ID, this.f36901d);
                bundle.putString(TrackingKey.REQUEST_ID, this.f36902e);
                bundle.putString("key", this.f36900c + "_" + this.f36902e + "_" + this.f36903f.getSecondRequestIndex());
                bundle.putString("url", str);
                messageObtain.setData(bundle);
                this.f36905h.sendMessage(messageObtain);
                return;
            }
            if (i11 == 497) {
                Message messageObtain2 = Message.obtain();
                messageObtain2.what = 101;
                Bundle bundle2 = new Bundle();
                bundle2.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36900c);
                bundle2.putString(MBridgeConstans.PLACEMENT_ID, this.f36901d);
                bundle2.putString(TrackingKey.REQUEST_ID, this.f36902e);
                bundle2.putString("key", this.f36900c + "_" + this.f36902e + "_" + this.f36903f.getSecondRequestIndex());
                bundle2.putString("url", str);
                messageObtain2.setData(bundle2);
                this.f36905h.sendMessage(messageObtain2);
                if (this.f36898a) {
                    a(1, jCurrentTimeMillis, str, "", str2);
                    return;
                }
                return;
            }
            if (i11 != 859) {
                return;
            }
            Message messageObtain3 = Message.obtain();
            messageObtain3.what = 103;
            Bundle bundle3 = new Bundle();
            bundle3.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36900c);
            bundle3.putString(MBridgeConstans.PLACEMENT_ID, this.f36901d);
            bundle3.putString(TrackingKey.REQUEST_ID, this.f36902e);
            bundle3.putString("key", this.f36900c + "_" + this.f36902e + "_" + this.f36903f.getSecondRequestIndex());
            messageObtain3.setData(bundle3);
            this.f36905h.sendMessage(messageObtain3);
            n nVar = this.f36906i;
            if (nVar != null) {
                nVar.a(this.f36901d, this.f36900c, this.f36902e, str);
            }
            if (z10) {
                return;
            }
            a(1, str, "", str2);
        }
    }

    private static final class m extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Context f36920a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ConcurrentHashMap<String, h> f36921b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private ConcurrentHashMap<String, CopyOnWriteArrayList<CampaignEx>> f36922c;

        public m(Looper looper) {
            super(looper);
            this.f36921b = new ConcurrentHashMap<>();
            this.f36922c = new ConcurrentHashMap<>();
        }

        public void a(Context context) {
            this.f36920a = context;
        }

        public void a(String str, h hVar) {
            this.f36921b.put(str, hVar);
        }

        public void a(String str, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
            this.f36922c.put(str, copyOnWriteArrayList);
        }

        /* JADX WARN: Code duplicated, block: B:175:0x0368 A[Catch: Exception -> 0x0356, TRY_LEAVE, TryCatch #7 {Exception -> 0x0356, blocks: (B:165:0x033c, B:175:0x0368), top: B:246:0x00a3 }] */
        /* JADX WARN: Code duplicated, block: B:179:0x03a9 A[Catch: Exception -> 0x03b3, TryCatch #11 {Exception -> 0x03b3, blocks: (B:177:0x03a3, B:179:0x03a9, B:183:0x03ba, B:185:0x03c0, B:187:0x03ca, B:196:0x03db, B:199:0x03ea, B:202:0x03f9, B:205:0x0408, B:208:0x0413), top: B:253:0x03a3 }] */
        /* JADX WARN: Code duplicated, block: B:182:0x03b8  */
        /* JADX WARN: Code duplicated, block: B:189:0x03ce  */
        /* JADX WARN: Code duplicated, block: B:191:0x03d2  */
        /* JADX WARN: Code duplicated, block: B:193:0x03d6  */
        /* JADX WARN: Code duplicated, block: B:199:0x03ea A[Catch: Exception -> 0x03b3, TryCatch #11 {Exception -> 0x03b3, blocks: (B:177:0x03a3, B:179:0x03a9, B:183:0x03ba, B:185:0x03c0, B:187:0x03ca, B:196:0x03db, B:199:0x03ea, B:202:0x03f9, B:205:0x0408, B:208:0x0413), top: B:253:0x03a3 }] */
        /* JADX WARN: Code duplicated, block: B:202:0x03f9 A[Catch: Exception -> 0x03b3, TryCatch #11 {Exception -> 0x03b3, blocks: (B:177:0x03a3, B:179:0x03a9, B:183:0x03ba, B:185:0x03c0, B:187:0x03ca, B:196:0x03db, B:199:0x03ea, B:202:0x03f9, B:205:0x0408, B:208:0x0413), top: B:253:0x03a3 }] */
        /* JADX WARN: Code duplicated, block: B:205:0x0408 A[Catch: Exception -> 0x03b3, TryCatch #11 {Exception -> 0x03b3, blocks: (B:177:0x03a3, B:179:0x03a9, B:183:0x03ba, B:185:0x03c0, B:187:0x03ca, B:196:0x03db, B:199:0x03ea, B:202:0x03f9, B:205:0x0408, B:208:0x0413), top: B:253:0x03a3 }] */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v11 */
        /* JADX WARN: Type inference failed for: r10v26 */
        /* JADX WARN: Type inference failed for: r10v27 */
        /* JADX WARN: Type inference failed for: r10v28 */
        /* JADX WARN: Type inference failed for: r10v33 */
        /* JADX WARN: Type inference failed for: r10v37 */
        /* JADX WARN: Type inference failed for: r10v38 */
        /* JADX WARN: Type inference failed for: r10v39 */
        /* JADX WARN: Type inference failed for: r10v4 */
        /* JADX WARN: Type inference failed for: r10v44 */
        /* JADX WARN: Type inference failed for: r10v5, types: [com.mbridge.msdk.foundation.entity.CampaignEx] */
        /* JADX WARN: Type inference failed for: r10v7 */
        /* JADX WARN: Type inference failed for: r12v1, types: [int] */
        /* JADX WARN: Type inference failed for: r12v11 */
        /* JADX WARN: Type inference failed for: r12v2 */
        /* JADX WARN: Type inference failed for: r12v3 */
        /* JADX WARN: Type inference failed for: r12v4 */
        /* JADX WARN: Type inference failed for: r12v5 */
        /* JADX WARN: Type inference failed for: r12v7 */
        /* JADX WARN: Type inference failed for: r12v8 */
        /* JADX WARN: Type inference failed for: r15v0, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r15v10 */
        /* JADX WARN: Type inference failed for: r15v14 */
        /* JADX WARN: Type inference failed for: r15v15 */
        /* JADX WARN: Type inference failed for: r15v2 */
        /* JADX WARN: Type inference failed for: r15v3 */
        /* JADX WARN: Type inference failed for: r15v4 */
        /* JADX WARN: Type inference failed for: r15v5 */
        /* JADX WARN: Type inference failed for: r15v6 */
        /* JADX WARN: Type inference failed for: r15v8 */
        /* JADX WARN: Type inference failed for: r15v9 */
        /* JADX WARN: Type inference failed for: r6v10 */
        /* JADX WARN: Type inference failed for: r6v13 */
        /* JADX WARN: Type inference failed for: r6v14 */
        /* JADX WARN: Type inference failed for: r6v16 */
        /* JADX WARN: Type inference failed for: r6v17 */
        /* JADX WARN: Type inference failed for: r6v18 */
        /* JADX WARN: Type inference failed for: r6v20 */
        /* JADX WARN: Type inference failed for: r6v4 */
        /* JADX WARN: Type inference failed for: r6v5 */
        /* JADX WARN: Type inference failed for: r6v6, types: [int] */
        /* JADX WARN: Type inference failed for: r6v7 */
        /* JADX WARN: Type inference failed for: r6v8 */
        /* JADX WARN: Type inference failed for: r6v9 */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            boolean zA;
            ?? r11;
            ?? r12;
            com.mbridge.msdk.videocommon.download.b bVar;
            boolean z10;
            int i11;
            String str;
            boolean z11;
            int i12;
            Bundle data = message.getData();
            String string = data.getString(MBridgeConstans.PLACEMENT_ID);
            String string2 = data.getString(MBridgeConstans.PROPERTIES_UNIT_ID);
            String string3 = data.getString(TrackingKey.REQUEST_ID);
            String string4 = data.getString("key");
            f fVar = (f) b.f36798g.get(string4);
            h hVar = this.f36921b.get(string4);
            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.f36922c.get(string4);
            int i13 = message.what;
            ?? r15 = "RewardCampaignsResourceManager";
            switch (i13) {
                case 100:
                case 101:
                case 102:
                case 103:
                case 104:
                case 105:
                case 106:
                    break;
                default:
                    switch (i13) {
                        case 200:
                        case 201:
                        case AD_IS_LOADING_VALUE:
                        case AD_IS_PLAYING_VALUE:
                            if (fVar != null && hVar != null) {
                                String string5 = data.getString("message");
                                if (string5 == null) {
                                    string5 = "";
                                }
                                ?? C = b.c(message.what);
                                String str2 = "resource download failed " + b.d(message.what) + " " + string5;
                                CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2 = fVar.f36847h;
                                CampaignEx campaignEx = (copyOnWriteArrayList2 == null || copyOnWriteArrayList2.size() <= 0) ? null : fVar.f36847h.get(0);
                                try {
                                    try {
                                        if (!fVar.f36840a) {
                                            bVar = com.mbridge.msdk.videocommon.download.b.getInstance();
                                            String str3 = fVar.f36844e;
                                            z10 = fVar.f36841b;
                                            i11 = fVar.f36843d;
                                            str = str3;
                                            z11 = fVar.f36840a;
                                            if (bVar.a(94, str, z10, i11, z11, fVar.f36842c, copyOnWriteArrayList)) {
                                                hVar.a(string, string2, string3, fVar.f36847h);
                                                r11 = C;
                                                r12 = 0;
                                            } else {
                                                if (campaignEx != null) {
                                                    i12 = message.what;
                                                    if (i12 != 200) {
                                                        if (i12 != 201) {
                                                            if (i12 != 203) {
                                                                if (i12 != 205) {
                                                                }
                                                            } else if (campaignEx.getRsIgnoreCheckRule().contains(1)) {
                                                            }
                                                        } else if (campaignEx.getRsIgnoreCheckRule().contains(2)) {
                                                        }
                                                    } else if (campaignEx.getRsIgnoreCheckRule().contains(0)) {
                                                    }
                                                }
                                                r11 = C;
                                                r12 = 0;
                                                r12 = 0;
                                                hVar.a(fVar.f36847h, b.b(r11 == true ? 1 : 0, new MBridgeIds(string, string2, string3), str2, null, null));
                                                r11 = r11;
                                            }
                                            this.f36921b.remove(string4);
                                            b.f36798g.remove(string4);
                                            this.f36922c.remove(string4);
                                            C = str;
                                            r15 = z11;
                                        } else {
                                            try {
                                                if (fVar.f36848i != null) {
                                                    if (fVar.f36842c != 1) {
                                                        try {
                                                            String string6 = data.getString("url");
                                                            int i14 = message.what;
                                                            try {
                                                                if (i14 == 200) {
                                                                    if (campaignEx != null && campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0 && campaignEx.getRsIgnoreCheckRule().contains(0)) {
                                                                        o0.c("RewardCampaignsResourceManager", "Is TPL but  video download fail but hit ignoreCheckRule");
                                                                    } else {
                                                                        for (int i15 = 0; i15 < fVar.f36848i.size(); i15++) {
                                                                            if (fVar.f36848i.get(i15).getVideoUrlEncode().equals(string6)) {
                                                                                fVar.f36848i.remove(i15);
                                                                            }
                                                                        }
                                                                        b.f36798g.remove(string4);
                                                                        b.f36798g.put(string4, fVar);
                                                                    }
                                                                } else if (i14 == 201) {
                                                                    if (campaignEx != null && campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0 && campaignEx.getRsIgnoreCheckRule().contains(2)) {
                                                                        o0.c("RewardCampaignsResourceManager", "Is TPL but download endcard fail but hit ignoreCheckRule");
                                                                    } else {
                                                                        for (int i16 = 0; i16 < fVar.f36848i.size(); i16++) {
                                                                            CampaignEx campaignEx2 = fVar.f36848i.get(i16);
                                                                            if (campaignEx2.getRewardTemplateMode() != null && campaignEx2.getRewardTemplateMode().c().equals(string6)) {
                                                                                fVar.f36848i.remove(i16);
                                                                            }
                                                                            if (!TextUtils.isEmpty(campaignEx2.getendcard_url()) && campaignEx2.getendcard_url().equals(string6)) {
                                                                                fVar.f36848i.remove(i16);
                                                                            }
                                                                        }
                                                                        b.f36798g.remove(string4);
                                                                        b.f36798g.put(string4, fVar);
                                                                    }
                                                                } else if (i14 == 203) {
                                                                    if (campaignEx != null && campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0 && campaignEx.getRsIgnoreCheckRule().contains(1)) {
                                                                        o0.c("RewardCampaignsResourceManager", "Is TPL but download template fail but hit ignoreCheckRule");
                                                                    } else {
                                                                        for (int i17 = 0; i17 < fVar.f36848i.size(); i17++) {
                                                                            CampaignEx campaignEx3 = fVar.f36848i.get(i17);
                                                                            if (campaignEx3.getRewardTemplateMode() != null && campaignEx3.getRewardTemplateMode().e().equals(string6)) {
                                                                                fVar.f36848i.remove(i17);
                                                                            }
                                                                        }
                                                                        b.f36798g.remove(string4);
                                                                        b.f36798g.put(string4, fVar);
                                                                    }
                                                                } else if (i14 == 205) {
                                                                    if (campaignEx != null && campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0 && campaignEx.getRsIgnoreCheckRule().contains(3)) {
                                                                        o0.c("RewardCampaignsResourceManager", "Is TPL but download BTL Template fail but hit ignoreCheckRule");
                                                                    } else {
                                                                        fVar.f36848i.clear();
                                                                        b.f36798g.remove(string4);
                                                                        b.f36798g.put(string4, fVar);
                                                                    }
                                                                }
                                                                try {
                                                                    if (com.mbridge.msdk.videocommon.download.b.getInstance().a(94, fVar.f36844e, fVar.f36841b, fVar.f36843d, fVar.f36840a, fVar.f36842c, copyOnWriteArrayList)) {
                                                                        try {
                                                                            hVar.a(string, string2, string3, fVar.f36847h);
                                                                            this.f36921b.remove(string4);
                                                                            b.f36798g.remove(string4);
                                                                            this.f36922c.remove(string4);
                                                                        } catch (Exception e11) {
                                                                            e = e11;
                                                                            r11 = C;
                                                                            r12 = 0;
                                                                            hVar.a(fVar.f36847h, b.b(r11, new MBridgeIds(string, string2, string3), str2, e, r12));
                                                                            return;
                                                                        }
                                                                    } else if (fVar.f36848i.size() == 0) {
                                                                        ?? r16 = C;
                                                                        C = 0;
                                                                        hVar.a(fVar.f36847h, b.b(r16 == true ? 1 : 0, new MBridgeIds(string, string2, string3), str2, null, null));
                                                                        this.f36921b.remove(string4);
                                                                        b.f36798g.remove(string4);
                                                                        this.f36922c.remove(string4);
                                                                        r15 = r16;
                                                                    }
                                                                } catch (Exception e12) {
                                                                    e = e12;
                                                                    r15 = C;
                                                                    C = 0;
                                                                    r12 = C;
                                                                    r11 = r15;
                                                                    hVar.a(fVar.f36847h, b.b(r11, new MBridgeIds(string, string2, string3), str2, e, r12));
                                                                    return;
                                                                }
                                                            } catch (Exception e13) {
                                                                e = e13;
                                                                r11 = C;
                                                                r12 = 0;
                                                            }
                                                        } catch (Exception e14) {
                                                            e = e14;
                                                            r15 = C;
                                                            C = 0;
                                                            r12 = C;
                                                            r11 = r15;
                                                        }
                                                        break;
                                                    } else {
                                                        if (campaignEx != null && campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0) {
                                                            int i18 = message.what;
                                                            if (i18 != 200) {
                                                                if (i18 != 201) {
                                                                    if (i18 != 203) {
                                                                        if (i18 == 205) {
                                                                            if (!campaignEx.getRsIgnoreCheckRule().contains(3)) {
                                                                                CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList3 = fVar.f36847h;
                                                                                if (copyOnWriteArrayList3 != null && copyOnWriteArrayList3.size() > 0) {
                                                                                    CampaignEx campaignEx4 = fVar.f36847h.get(0);
                                                                                    if (campaignEx4.getCMPTEntryUrl().equals(campaignEx4.getendcard_url()) && campaignEx.getRsIgnoreCheckRule().contains(2)) {
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    } else if (campaignEx.getRsIgnoreCheckRule().contains(1)) {
                                                                    }
                                                                } else if (campaignEx.getRsIgnoreCheckRule().contains(2)) {
                                                                }
                                                            } else if (campaignEx.getRsIgnoreCheckRule().contains(0)) {
                                                            }
                                                        }
                                                        try {
                                                            r12 = 0;
                                                            try {
                                                                hVar.a(fVar.f36847h, b.b(C, new MBridgeIds(string, string2, string3), str2, null, null));
                                                                this.f36921b.remove(string4);
                                                                b.f36798g.remove(string4);
                                                                this.f36922c.remove(string4);
                                                            } catch (Exception e15) {
                                                                e = e15;
                                                                r11 = C;
                                                                hVar.a(fVar.f36847h, b.b(r11, new MBridgeIds(string, string2, string3), str2, e, r12));
                                                                return;
                                                            }
                                                        } catch (Exception e16) {
                                                            e = e16;
                                                            r12 = 0;
                                                        }
                                                    }
                                                } else {
                                                    bVar = com.mbridge.msdk.videocommon.download.b.getInstance();
                                                    String str4 = fVar.f36844e;
                                                    z10 = fVar.f36841b;
                                                    i11 = fVar.f36843d;
                                                    str = str4;
                                                    z11 = fVar.f36840a;
                                                    try {
                                                        if (bVar.a(94, str, z10, i11, z11, fVar.f36842c, copyOnWriteArrayList)) {
                                                            hVar.a(string, string2, string3, fVar.f36847h);
                                                            r11 = C;
                                                            r12 = 0;
                                                        } else {
                                                            if (campaignEx != null && campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0) {
                                                                i12 = message.what;
                                                                if (i12 != 200) {
                                                                    if (i12 != 201) {
                                                                        if (i12 != 203) {
                                                                            if (i12 != 205 && campaignEx.getRsIgnoreCheckRule().contains(3)) {
                                                                            }
                                                                        } else if (campaignEx.getRsIgnoreCheckRule().contains(1)) {
                                                                        }
                                                                    } else if (campaignEx.getRsIgnoreCheckRule().contains(2)) {
                                                                    }
                                                                } else if (campaignEx.getRsIgnoreCheckRule().contains(0)) {
                                                                }
                                                            }
                                                            r11 = C;
                                                            r12 = 0;
                                                            r12 = 0;
                                                            try {
                                                                hVar.a(fVar.f36847h, b.b(r11 == true ? 1 : 0, new MBridgeIds(string, string2, string3), str2, null, null));
                                                                r11 = r11;
                                                            } catch (Exception e17) {
                                                                e = e17;
                                                            }
                                                        }
                                                        this.f36921b.remove(string4);
                                                        b.f36798g.remove(string4);
                                                        this.f36922c.remove(string4);
                                                        C = str;
                                                        r15 = z11;
                                                    } catch (Exception e18) {
                                                        e = e18;
                                                        r11 = C;
                                                        r12 = 0;
                                                    }
                                                }
                                            } catch (Exception e19) {
                                                e = e19;
                                                r15 = C;
                                            }
                                        }
                                    } catch (Exception e20) {
                                        e = e20;
                                    }
                                } catch (Exception e21) {
                                    e = e21;
                                    r11 = C;
                                }
                                hVar.a(fVar.f36847h, b.b(r11, new MBridgeIds(string, string2, string3), str2, e, r12));
                                break;
                            }
                            break;
                    }
                    return;
            }
            if (fVar == null || hVar == null) {
                return;
            }
            try {
                try {
                    zA = com.mbridge.msdk.videocommon.download.b.getInstance().a(94, fVar.f36844e, fVar.f36841b, fVar.f36843d, fVar.f36840a, fVar.f36842c, copyOnWriteArrayList);
                } catch (Exception e22) {
                    e = e22;
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardCampaignsResourceManager", e.getLocalizedMessage());
                    }
                    zA = false;
                }
            } catch (Exception e23) {
                e = e23;
            }
            if (zA) {
                hVar.a(string, string2, string3, fVar.f36847h);
                this.f36921b.remove(string4);
                b.f36798g.remove(string4);
                this.f36922c.remove(string4);
            }
        }
    }

    public interface n {
        void a(String str, String str2, com.mbridge.msdk.foundation.error.b bVar);

        void a(String str, String str2, String str3, String str4);
    }

    public interface o {
        void a(String str, String str2, String str3, com.mbridge.msdk.videocommon.a.C0572a c0572a, com.mbridge.msdk.foundation.error.b bVar);

        void a(String str, String str2, String str3, String str4, String str5, com.mbridge.msdk.videocommon.a.C0572a c0572a);
    }

    private static class p extends com.mbridge.msdk.mbsignalcommon.listener.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Handler f36923a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Runnable f36924b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f36925c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f36926d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f36927e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final o f36928f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final WindVaneWebView f36929g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final String f36930h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final String f36931i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final String f36932j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final com.mbridge.msdk.videocommon.a.C0572a f36933k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final CampaignEx f36934l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private CopyOnWriteArrayList<CampaignEx> f36935m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private long f36936n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private boolean f36937o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private boolean f36938p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final Runnable f36939q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private final Runnable f36940r;

        class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ o f36941a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ com.mbridge.msdk.videocommon.a.C0572a f36942b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ String f36943c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ String f36944d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ String f36945e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ String f36946f;

            a(o oVar, com.mbridge.msdk.videocommon.a.C0572a c0572a, String str, String str2, String str3, String str4) {
                this.f36941a = oVar;
                this.f36942b = c0572a;
                this.f36943c = str;
                this.f36944d = str2;
                this.f36945e = str3;
                this.f36946f = str4;
            }

            @Override // java.lang.Runnable
            public void run() {
                WindVaneWebView windVaneWebViewB;
                com.mbridge.msdk.videocommon.a.C0572a c0572a;
                if (this.f36941a != null && (c0572a = this.f36942b) != null) {
                    c0572a.a(true);
                    ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f36943c + "_" + this.f36944d + "_" + this.f36945e, true);
                    o oVar = this.f36941a;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(this.f36943c);
                    sb2.append("_");
                    sb2.append(this.f36945e);
                    oVar.a(sb2.toString(), this.f36946f, this.f36943c, this.f36944d, this.f36945e, this.f36942b);
                }
                com.mbridge.msdk.videocommon.a.C0572a c0572a2 = this.f36942b;
                if (c0572a2 == null || (windVaneWebViewB = c0572a2.b()) == null) {
                    return;
                }
                try {
                    windVaneWebViewB.release();
                } catch (Exception e11) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("WindVaneWebView", e11.getMessage());
                    }
                }
            }
        }

        /* JADX INFO: renamed from: com.mbridge.msdk.reward.adapter.b$p$b, reason: collision with other inner class name */
        class RunnableC0522b implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ o f36948a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ com.mbridge.msdk.videocommon.a.C0572a f36949b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ String f36950c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ String f36951d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ String f36952e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ String f36953f;

            RunnableC0522b(o oVar, com.mbridge.msdk.videocommon.a.C0572a c0572a, String str, String str2, String str3, String str4) {
                this.f36948a = oVar;
                this.f36949b = c0572a;
                this.f36950c = str;
                this.f36951d = str2;
                this.f36952e = str3;
                this.f36953f = str4;
            }

            @Override // java.lang.Runnable
            public void run() {
                WindVaneWebView windVaneWebViewB;
                com.mbridge.msdk.videocommon.a.C0572a c0572a;
                if (this.f36948a != null && (c0572a = this.f36949b) != null) {
                    c0572a.a(true);
                    ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f36950c + "_" + this.f36951d + "_" + this.f36952e, true);
                    o oVar = this.f36948a;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(this.f36950c);
                    sb2.append("_");
                    sb2.append(this.f36952e);
                    oVar.a(sb2.toString(), this.f36953f, this.f36950c, this.f36951d, this.f36952e, this.f36949b);
                }
                com.mbridge.msdk.videocommon.a.C0572a c0572a2 = this.f36949b;
                if (c0572a2 == null || (windVaneWebViewB = c0572a2.b()) == null) {
                    return;
                }
                try {
                    windVaneWebViewB.release();
                } catch (Exception e11) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("WindVaneWebView", e11.getMessage());
                    }
                }
            }
        }

        public p(Handler handler, Runnable runnable, boolean z10, boolean z11, String str, o oVar, WindVaneWebView windVaneWebView, String str2, String str3, String str4, com.mbridge.msdk.videocommon.a.C0572a c0572a, CampaignEx campaignEx, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, long j11) {
            this.f36923a = handler;
            this.f36924b = runnable;
            this.f36925c = z10;
            this.f36926d = z11;
            this.f36927e = str;
            this.f36928f = oVar;
            this.f36929g = windVaneWebView;
            this.f36930h = str2;
            this.f36931i = str4;
            this.f36932j = str3;
            this.f36933k = c0572a;
            this.f36934l = campaignEx;
            this.f36935m = copyOnWriteArrayList;
            this.f36936n = j11;
            a aVar = new a(oVar, c0572a, str4, str, str2, str3);
            this.f36940r = aVar;
            this.f36939q = new RunnableC0522b(oVar, c0572a, str4, str, str2, str3);
            if (handler != null) {
                handler.postDelayed(aVar, 5000L);
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i11) {
            Handler handler;
            Runnable runnable;
            Runnable runnable2;
            super.a(webView, i11);
            Handler handler2 = this.f36923a;
            if (handler2 != null && (runnable2 = this.f36939q) != null) {
                handler2.removeCallbacks(runnable2);
            }
            Handler handler3 = this.f36923a;
            if (handler3 != null && (runnable = this.f36940r) != null) {
                handler3.removeCallbacks(runnable);
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 2);
                eVar.a("result", Integer.valueOf(i11));
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000155", this.f36934l, eVar);
            } catch (Throwable th2) {
                o0.b("WindVaneWebView", th2.getMessage());
            }
            if (this.f36938p) {
                return;
            }
            String str = this.f36931i + "_" + this.f36930h;
            if (i11 == 1) {
                Runnable runnable3 = this.f36924b;
                if (runnable3 != null && (handler = this.f36923a) != null) {
                    handler.removeCallbacks(runnable3);
                }
                ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f36931i + "_" + this.f36927e + "_" + this.f36930h, true);
                com.mbridge.msdk.videocommon.a.C0572a c0572a = this.f36933k;
                if (c0572a != null) {
                    c0572a.a(true);
                }
                if (this.f36925c) {
                    if (this.f36926d) {
                        com.mbridge.msdk.videocommon.a.a(MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f36934l.getRequestIdNotice(), this.f36933k);
                    } else {
                        com.mbridge.msdk.videocommon.a.b(MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f36934l.getRequestIdNotice(), this.f36933k);
                    }
                } else if (this.f36926d) {
                    com.mbridge.msdk.videocommon.a.a(94, this.f36934l.getRequestIdNotice(), this.f36933k);
                } else {
                    com.mbridge.msdk.videocommon.a.b(94, this.f36934l.getRequestIdNotice(), this.f36933k);
                }
                o oVar = this.f36928f;
                if (oVar != null) {
                    oVar.a(str, this.f36932j, this.f36931i, this.f36927e, this.f36930h, this.f36933k);
                }
            } else if (this.f36928f != null) {
                this.f36928f.a(str, this.f36927e, this.f36930h, this.f36933k, b.b(880009, new MBridgeIds(this.f36932j, this.f36931i, this.f36927e), "readyState:" + i11, null, this.f36934l));
            }
            this.f36938p = true;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i11, String str, String str2) {
            super.a(webView, i11, str, str2);
            ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f36931i + "_" + this.f36927e + "_" + this.f36930h, false);
            Handler handler = this.f36923a;
            if (handler != null) {
                if (this.f36939q != null) {
                    handler.removeCallbacks(this.f36940r);
                }
                Runnable runnable = this.f36939q;
                if (runnable != null) {
                    this.f36923a.removeCallbacks(runnable);
                }
            }
            try {
                String str3 = this.f36931i + "_" + this.f36930h;
                com.mbridge.msdk.videocommon.a.C0572a c0572a = this.f36933k;
                if (c0572a != null) {
                    c0572a.a(false);
                }
                if (this.f36928f != null) {
                    this.f36928f.a(str3, this.f36927e, str2, this.f36933k, b.b(880009, new MBridgeIds(this.f36932j, this.f36931i, this.f36927e), i11 + Utils.SEPARATOR + str, null, this.f36934l));
                }
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("WindVaneWebView", e11.getLocalizedMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.a(webView, sslErrorHandler, sslError);
            ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f36931i + "_" + this.f36927e + "_" + this.f36930h, false);
            Handler handler = this.f36923a;
            if (handler != null) {
                if (this.f36939q != null) {
                    handler.removeCallbacks(this.f36940r);
                }
                Runnable runnable = this.f36939q;
                if (runnable != null) {
                    this.f36923a.removeCallbacks(runnable);
                }
            }
            try {
                String str = this.f36931i + "_" + this.f36930h;
                com.mbridge.msdk.videocommon.a.C0572a c0572a = this.f36933k;
                if (c0572a != null) {
                    c0572a.a(false);
                }
                if (this.f36928f != null) {
                    MBridgeIds mBridgeIds = new MBridgeIds(this.f36932j, this.f36931i, this.f36927e);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("onReceivedSslError:");
                    sb2.append(sslError == null ? "" : Integer.valueOf(sslError.getPrimaryError()));
                    this.f36928f.a(str, this.f36927e, this.f36930h, this.f36933k, b.b(880009, mBridgeIds, sb2.toString(), null, this.f36934l));
                }
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("WindVaneWebView", e11.getLocalizedMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str) {
            Runnable runnable;
            Handler handler;
            Runnable runnable2;
            super.a(webView, str);
            Handler handler2 = this.f36923a;
            if (handler2 != null && (runnable2 = this.f36940r) != null) {
                handler2.removeCallbacks(runnable2);
            }
            if (this.f36937o) {
                return;
            }
            if (str.contains("wfr=1")) {
                Handler handler3 = this.f36923a;
                if (handler3 != null && (runnable = this.f36939q) != null) {
                    handler3.postDelayed(runnable, 5000L);
                }
            } else {
                String str2 = this.f36931i + "_" + this.f36930h;
                ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f36931i + "_" + this.f36927e + "_" + this.f36930h, true);
                Runnable runnable3 = this.f36924b;
                if (runnable3 != null && (handler = this.f36923a) != null) {
                    handler.removeCallbacks(runnable3);
                }
                com.mbridge.msdk.videocommon.a.C0572a c0572a = this.f36933k;
                if (c0572a != null) {
                    c0572a.a(true);
                }
                if (this.f36925c) {
                    if (this.f36934l.isBidCampaign()) {
                        com.mbridge.msdk.videocommon.a.a(MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f36934l.getRequestIdNotice(), this.f36933k);
                    } else {
                        com.mbridge.msdk.videocommon.a.b(MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f36934l.getRequestIdNotice(), this.f36933k);
                    }
                } else if (this.f36934l.isBidCampaign()) {
                    com.mbridge.msdk.videocommon.a.a(94, this.f36934l.getRequestIdNotice(), this.f36933k);
                } else {
                    com.mbridge.msdk.videocommon.a.b(94, this.f36934l.getRequestIdNotice(), this.f36933k);
                }
                o oVar = this.f36928f;
                if (oVar != null) {
                    oVar.a(str2, this.f36932j, this.f36931i, this.f36927e, this.f36930h, this.f36933k);
                }
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(webView);
            this.f36937o = true;
        }
    }

    private static class q extends com.mbridge.msdk.mbsignalcommon.listener.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f36955a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f36956b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final WindVaneWebView f36957c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f36958d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final String f36959e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final com.mbridge.msdk.videocommon.a.C0572a f36960f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final CampaignEx f36961g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f36962h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private String f36963i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private boolean f36964j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private boolean f36965k;

        public q(String str, boolean z10, WindVaneWebView windVaneWebView, String str2, String str3, com.mbridge.msdk.videocommon.a.C0572a c0572a, CampaignEx campaignEx, boolean z11, String str4) {
            this.f36956b = z10;
            this.f36957c = windVaneWebView;
            this.f36958d = str2;
            this.f36959e = str3;
            this.f36960f = c0572a;
            this.f36961g = campaignEx;
            this.f36955a = str;
            this.f36962h = z11;
            this.f36963i = str4;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i11) {
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 2);
                eVar.a("result", Integer.valueOf(i11));
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000155", this.f36961g, eVar);
            } catch (Throwable th2) {
                o0.b("WindVaneWebView", th2.getMessage());
            }
            if (this.f36965k) {
                return;
            }
            if (this.f36957c != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("id", this.f36955a);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("result", i11);
                    jSONObject2.put("error", "");
                    jSONObject.put("data", jSONObject2);
                    com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.f36957c, "onSubPlayTemplateViewLoad", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e11) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("WindVaneWebView", e11.getLocalizedMessage());
                    }
                }
            }
            String str = this.f36959e + "_" + this.f36961g.getId() + "_" + this.f36961g.getRequestId() + "_" + this.f36958d;
            if (i11 == 1) {
                ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f36959e + "_" + this.f36963i + "_" + this.f36958d, true);
                com.mbridge.msdk.videocommon.a.C0572a c0572a = this.f36960f;
                if (c0572a != null) {
                    c0572a.a(true);
                }
                if (this.f36956b) {
                    if (this.f36961g.isBidCampaign()) {
                        com.mbridge.msdk.videocommon.a.a(str, this.f36960f, false, this.f36962h);
                    } else {
                        com.mbridge.msdk.videocommon.a.a(str, this.f36960f, false, this.f36962h);
                    }
                } else if (this.f36961g.isBidCampaign()) {
                    com.mbridge.msdk.videocommon.a.a(str, this.f36960f, false, this.f36962h);
                } else {
                    com.mbridge.msdk.videocommon.a.a(str, this.f36960f, false, this.f36962h);
                }
            } else {
                ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f36959e + "_" + this.f36963i + "_" + this.f36958d, false);
                com.mbridge.msdk.videocommon.a.C0572a c0572a2 = this.f36960f;
                if (c0572a2 != null) {
                    c0572a2.a(false);
                }
            }
            this.f36965k = true;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i11, String str, String str2) {
            ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f36959e + "_" + this.f36963i + "_" + this.f36958d, false);
            com.mbridge.msdk.videocommon.a.C0572a c0572a = this.f36960f;
            if (c0572a != null) {
                c0572a.a(false);
            }
            if (this.f36957c != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("id", this.f36955a);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("result", 2);
                    jSONObject2.put("error", str);
                    jSONObject.put("data", jSONObject2);
                    com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.f36957c, "onSubPlayTemplateViewLoad", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e11) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("WindVaneWebView", e11.getLocalizedMessage());
                    }
                }
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str) {
            if (this.f36964j) {
                return;
            }
            if (!str.contains("wfr=1")) {
                if (this.f36957c != null) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("id", this.f36955a);
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("result", 1);
                        jSONObject2.put("error", "");
                        jSONObject.put("data", jSONObject2);
                        com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.f36957c, "componentReact", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    } catch (Exception e11) {
                        if (MBridgeConstans.DEBUG) {
                            o0.b("WindVaneWebView", e11.getLocalizedMessage());
                        }
                    }
                }
                ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f36959e + "_" + this.f36963i + "_" + this.f36958d, true);
                com.mbridge.msdk.videocommon.a.C0572a c0572a = this.f36960f;
                if (c0572a != null) {
                    c0572a.a(true);
                }
                String str2 = this.f36959e + "_" + this.f36961g.getId() + "_" + this.f36961g.getRequestId() + "_" + this.f36958d;
                if (this.f36956b) {
                    if (this.f36961g.isBidCampaign()) {
                        com.mbridge.msdk.videocommon.a.a(MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f36961g.getRequestIdNotice(), this.f36960f);
                    } else {
                        com.mbridge.msdk.videocommon.a.a(str2, this.f36960f, false, this.f36962h);
                    }
                } else if (this.f36961g.isBidCampaign()) {
                    com.mbridge.msdk.videocommon.a.a(94, this.f36961g.getRequestIdNotice(), this.f36960f);
                } else {
                    com.mbridge.msdk.videocommon.a.a(str2, this.f36960f, false, this.f36962h);
                }
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(webView);
            this.f36964j = true;
        }
    }

    private static final class r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final b f36966a = new b(null);
    }

    private b() {
        this.f36801c = CampaignEx.JSON_KEY_LOCAL_REQUEST_ID;
        this.f36802d = "down_type";
        this.f36803e = "h3c";
        this.f36804f = new ArrayList(6);
        HandlerThread handlerThread = new HandlerThread("mb-reward-load-thread");
        f36798g = new ConcurrentHashMap<>();
        handlerThread.start();
        this.f36799a = new m(handlerThread.getLooper());
    }

    /* synthetic */ b(a aVar) {
        this();
    }

    private int a(CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                if (campaignEx.getAabEntity() != null) {
                    return campaignEx.getAabEntity().h3c;
                }
            } catch (Throwable th2) {
                o0.b("RewardCampaignsResourceManager", th2.getMessage());
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.mbridge.msdk.foundation.same.report.metrics.c a(CampaignEx campaignEx, int i11) {
        com.mbridge.msdk.foundation.same.report.metrics.c cVarA = campaignEx != null ? com.mbridge.msdk.foundation.same.report.metrics.d.b().a(campaignEx.getCurrentLocalRid()) : null;
        if (cVarA == null) {
            cVarA = new com.mbridge.msdk.foundation.same.report.metrics.c();
        }
        cVarA.a(campaignEx);
        cVarA.f(a(campaignEx));
        cVarA.e(i11);
        return cVarA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i11, CampaignEx campaignEx, String str, String str2) {
        x.a(i11, str, str2, new C0520b(i11, campaignEx), campaignEx);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, int i11, CampaignEx campaignEx, String str, String str2, String str3, String str4) {
        com.mbridge.msdk.foundation.same.threadpool.a.e().execute(new d(campaignEx, context, i11, str, str2, str3, str4));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, String str, String str2, String str3, CampaignEx campaignEx, String str4, n nVar, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
        if (TextUtils.isEmpty(str4) || campaignEx.isMraid()) {
            return;
        }
        com.mbridge.msdk.foundation.same.report.metrics.c cVarA = a(campaignEx, 3);
        if (str4.contains(".zip") && str4.contains(ResourceManager.KEY_MD5FILENAME)) {
            boolean zIsEmpty = TextUtils.isEmpty(H5DownLoadManager.getInstance().getH5ResAddress(str4));
            try {
                l lVar = new l(context, str, str2, str3, campaignEx, 497, this.f36799a, nVar, copyOnWriteArrayList);
                lVar.a(zIsEmpty);
                H5DownLoadManager.getInstance().downloadH5Res(cVarA, str4, lVar);
                return;
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardCampaignsResourceManager", e11.getLocalizedMessage());
                    return;
                }
                return;
            }
        }
        boolean zIsEmpty2 = TextUtils.isEmpty(HTMLResourceManager.getInstance().getHtmlContentFromUrl(str4));
        try {
            i iVar = new i(497, str, str2, str3, campaignEx, nVar, this.f36799a, copyOnWriteArrayList);
            iVar.a(zIsEmpty2);
            H5DownLoadManager.getInstance().downloadH5Res(cVarA, str4, iVar);
        } catch (Exception e12) {
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardCampaignsResourceManager", e12.getLocalizedMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z10, WindVaneWebView windVaneWebView, CampaignEx campaignEx, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, com.mbridge.msdk.videocommon.setting.c cVar, String str, String str2, int i11) {
        if (windVaneWebView != null) {
            if (campaignEx == null || cVar == null || campaignEx.getRewardTemplateMode() == null || TextUtils.isEmpty(str)) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("id", str2);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("result", 2);
                    jSONObject2.put("error", ConstantsKt.ERROR_1000_MESSAGE);
                    jSONObject.put("data", jSONObject2);
                    com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) windVaneWebView, "onSubPlayTemplateViewLoad", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    return;
                } catch (Exception e11) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardCampaignsResourceManager", e11.getLocalizedMessage());
                        return;
                    }
                    return;
                }
            }
            if (!TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e())) {
                if (TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e()) || !campaignEx.getRewardTemplateMode().e().contains(CampaignEx.KEY_IS_CMPT_ENTRY)) {
                    new Handler(Looper.getMainLooper()).postDelayed(new e(z10, windVaneWebView, campaignEx, copyOnWriteArrayList, str, cVar, str2), i11 * 1000);
                    return;
                } else {
                    o0.a("RewardCampaignsResourceManager", "getTeamplateUrl contains cmpt=1");
                    return;
                }
            }
            JSONObject jSONObject3 = new JSONObject();
            try {
                jSONObject3.put("id", str2);
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("result", 1);
                jSONObject4.put("error", ConstantsKt.ERROR_1000_MESSAGE);
                jSONObject3.put("data", jSONObject4);
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) windVaneWebView, "onSubPlayTemplateViewLoad", Base64.encodeToString(jSONObject3.toString().getBytes(), 2));
            } catch (Exception e12) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("RewardCampaignsResourceManager", e12.getLocalizedMessage());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z10, WindVaneWebView windVaneWebView, String str, int i11, CampaignEx campaignEx, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, String str2, String str3, com.mbridge.msdk.videocommon.setting.c cVar, String str4, boolean z11) {
        com.mbridge.msdk.video.signal.impl.k kVar;
        String requestId;
        try {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 2);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000154", campaignEx, eVar);
            com.mbridge.msdk.videocommon.a.C0572a c0572a = new com.mbridge.msdk.videocommon.a.C0572a();
            WindVaneWebView windVaneWebView2 = new WindVaneWebView(com.mbridge.msdk.foundation.controller.c.m().d());
            if (campaignEx != null) {
                windVaneWebView2.setLocalRequestId(campaignEx.getCurrentLocalRid());
            }
            windVaneWebView2.setTempTypeForMetrics(2);
            c0572a.a(windVaneWebView2);
            if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
                kVar = new com.mbridge.msdk.video.signal.impl.k(null, campaignEx);
                requestId = campaignEx != null ? campaignEx.getRequestId() : "";
            } else {
                CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListB = com.mbridge.msdk.videocommon.download.b.getInstance().b(str3);
                if (copyOnWriteArrayListB != null && copyOnWriteArrayListB.size() > 0) {
                    for (int i12 = 0; i12 < copyOnWriteArrayList.size(); i12++) {
                        CampaignEx campaignEx2 = copyOnWriteArrayList.get(i12);
                        for (CampaignEx campaignEx3 : copyOnWriteArrayListB) {
                            if (campaignEx3.getId().equals(campaignEx2.getId()) && campaignEx3.getRequestId().equals(campaignEx2.getRequestId())) {
                                campaignEx2.setReady(true);
                                copyOnWriteArrayList.set(i12, campaignEx2);
                            }
                        }
                    }
                }
                com.mbridge.msdk.video.signal.impl.k kVar2 = new com.mbridge.msdk.video.signal.impl.k(null, campaignEx, copyOnWriteArrayList);
                requestId = copyOnWriteArrayList.get(0).getRequestId();
                kVar = kVar2;
            }
            kVar.g(i11);
            kVar.setUnitId(str3);
            kVar.c(str4);
            kVar.setRewardUnitSetting(cVar);
            kVar.d(z10);
            windVaneWebView2.setWebViewListener(new q(str4, false, windVaneWebView, str, str3, c0572a, campaignEx, z11, requestId));
            windVaneWebView2.setObject(kVar);
            windVaneWebView2.loadUrl(str2);
            windVaneWebView2.setRid(requestId);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardCampaignsResourceManager", e11.getLocalizedMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static com.mbridge.msdk.foundation.error.b b(int i11, MBridgeIds mBridgeIds, String str, Throwable th2, CampaignEx campaignEx) {
        com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(i11);
        bVar.a(mBridgeIds);
        bVar.a(th2);
        bVar.c(str);
        bVar.a(campaignEx);
        return bVar;
    }

    public static b b() {
        return r.f36966a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(com.mbridge.msdk.foundation.entity.m mVar, CampaignEx campaignEx) {
        try {
            com.mbridge.msdk.videocommon.setting.c cVarC = com.mbridge.msdk.videocommon.setting.b.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), campaignEx.getCampaignUnitId());
            if (cVarC != null) {
                mVar.s(cVarC.x());
            }
            com.mbridge.msdk.videocommon.setting.a aVarC = com.mbridge.msdk.videocommon.setting.b.b().c();
            if (aVarC != null) {
                mVar.r(aVarC.f());
            }
        } catch (Exception e11) {
            o0.b("RewardCampaignsResourceManager", e11.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int c(int i11) {
        if (i11 == 200) {
            return 880004;
        }
        if (i11 == 201) {
            return 880007;
        }
        if (i11 != 203) {
            return i11 != 205 ? 880024 : 880005;
        }
        return 880006;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    public static synchronized String d(int i11) {
        if (i11 == 200) {
            return "video";
        }
        if (i11 == 201) {
            return "zip/html";
        }
        if (i11 != 203) {
            return i11 != 205 ? TmcConstants.ROUTE_UNKNOWN : "tpl";
        }
        return "temp";
    }

    public synchronized void a(Context context, CampaignEx campaignEx, String str, String str2, String str3, n nVar) {
        try {
            this.f36799a.a(context);
            if (campaignEx != null) {
                String cMPTEntryUrl = campaignEx.getCMPTEntryUrl();
                if (campaignEx.isDynamicView()) {
                    if (t0.a(MBridgeConstans.DYNAMIC_VIEW_KEY_DY_VIEW, cMPTEntryUrl)) {
                        a(0, campaignEx, campaignEx.getMof_tplid() + "", cMPTEntryUrl);
                    }
                    ResDownloadCheckManager.getInstance().setZipDownloadDone(cMPTEntryUrl, true);
                    Message messageObtain = Message.obtain();
                    messageObtain.what = 105;
                    Bundle bundle = new Bundle();
                    bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                    bundle.putString(MBridgeConstans.PLACEMENT_ID, str);
                    bundle.putString(TrackingKey.REQUEST_ID, str3);
                    bundle.putString("key", str2 + "_" + str3 + "_" + campaignEx.getSecondRequestIndex());
                    bundle.putString("url", cMPTEntryUrl);
                    messageObtain.setData(bundle);
                    this.f36799a.sendMessage(messageObtain);
                    if (nVar != null) {
                        nVar.a(str, str2, str3, cMPTEntryUrl);
                    }
                    return;
                }
            }
            if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getCMPTEntryUrl())) {
                try {
                    com.mbridge.msdk.foundation.same.report.metrics.c cVarA = com.mbridge.msdk.foundation.same.report.metrics.d.b().a(campaignEx.getCurrentLocalRid());
                    if (cVarA == null) {
                        cVarA = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    com.mbridge.msdk.foundation.same.report.metrics.c cVar = cVarA;
                    cVar.a(campaignEx);
                    cVar.e(1);
                    cVar.f(a(campaignEx));
                    H5DownLoadManager.getInstance().downloadH5Res(cVar, campaignEx.getCMPTEntryUrl(), new c(str2, str, str3, campaignEx, nVar, context));
                } catch (Exception e11) {
                    o0.b("RewardCampaignsResourceManager", e11.getLocalizedMessage());
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void a(Context context, boolean z10, int i11, boolean z11, int i12, String str, String str2, String str3, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, h hVar, n nVar) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2 = new CopyOnWriteArrayList<>(copyOnWriteArrayList);
        String str4 = str2 + "_" + str3 + "_" + copyOnWriteArrayList2.get(0).getSecondRequestIndex();
        f36798g.put(str4, new f(z10, z11, i11, copyOnWriteArrayList2.size(), str2, str3, i12, copyOnWriteArrayList2));
        this.f36799a.a(str4, hVar);
        this.f36799a.a(context);
        this.f36799a.a(str4, copyOnWriteArrayList2);
        this.f36799a.post(new a(copyOnWriteArrayList2, context, str2, i12, str, str3, str4, nVar));
    }

    /* JADX WARN: Code duplicated, block: B:61:0x01a9 A[Catch: all -> 0x003a, TryCatch #5 {, blocks: (B:4:0x0009, B:5:0x0021, B:8:0x0029, B:16:0x0046, B:26:0x0088, B:29:0x008e, B:31:0x0094, B:34:0x00a3, B:36:0x00eb, B:59:0x01a5, B:61:0x01a9, B:63:0x01b4, B:33:0x009d, B:56:0x015b, B:43:0x0104, B:45:0x0112, B:47:0x0124), top: B:75:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x01b4 A[Catch: all -> 0x003a, TRY_LEAVE, TryCatch #5 {, blocks: (B:4:0x0009, B:5:0x0021, B:8:0x0029, B:16:0x0046, B:26:0x0088, B:29:0x008e, B:31:0x0094, B:34:0x00a3, B:36:0x00eb, B:59:0x01a5, B:61:0x01a9, B:63:0x01b4, B:33:0x009d, B:56:0x015b, B:43:0x0104, B:45:0x0112, B:47:0x0124), top: B:75:0x0009 }] */
    public synchronized void a(boolean z10, Handler handler, boolean z11, boolean z12, WindVaneWebView windVaneWebView, String str, int i11, CampaignEx campaignEx, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, String str2, String str3, String str4, String str5, String str6, com.mbridge.msdk.videocommon.setting.c cVar, o oVar) {
        String str7;
        String str8;
        String str9;
        String str10;
        String str11 = str4 + "_" + str;
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            if (t0.i(str)) {
                if (oVar != null) {
                    oVar.a(str11, str3, str4, str5, str, null);
                }
                return;
            }
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 2);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000154", campaignEx, eVar);
            com.mbridge.msdk.videocommon.a.C0572a c0572a = new com.mbridge.msdk.videocommon.a.C0572a();
            try {
                try {
                    try {
                        try {
                            try {
                                WindVaneWebView windVaneWebView2 = new WindVaneWebView(com.mbridge.msdk.foundation.controller.c.m().d());
                                if (campaignEx != null) {
                                    windVaneWebView2.setLocalRequestId(campaignEx.getCurrentLocalRid());
                                }
                                windVaneWebView2.setTempTypeForMetrics(2);
                                try {
                                    c0572a.a(windVaneWebView2);
                                    com.mbridge.msdk.video.signal.impl.k kVar = (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) ? new com.mbridge.msdk.video.signal.impl.k(null, campaignEx) : new com.mbridge.msdk.video.signal.impl.k(null, campaignEx, copyOnWriteArrayList);
                                    kVar.g(i11);
                                    kVar.setUnitId(str4);
                                    kVar.setRewardUnitSetting(cVar);
                                    kVar.d(z10);
                                    windVaneWebView2.setWebViewListener(new p(handler, null, z11, z12, str5, oVar, windVaneWebView, str, str3, str4, c0572a, campaignEx, copyOnWriteArrayList, jCurrentTimeMillis));
                                    windVaneWebView2.setObject(kVar);
                                    windVaneWebView2.loadUrl(str2);
                                    windVaneWebView2.setRid(str5);
                                } catch (Exception e11) {
                                    e = e11;
                                    str7 = str5;
                                    str8 = str4;
                                    if (MBridgeConstans.DEBUG) {
                                        o0.b("RewardCampaignsResourceManager", e.getLocalizedMessage());
                                    }
                                    if (oVar != null) {
                                        oVar.a(str11, str5, str, null, b(880009, new MBridgeIds(str3, str8, str7), "", e, campaignEx));
                                    }
                                }
                            } catch (Exception unused) {
                                str10 = str;
                                str9 = str4;
                                if (oVar != null) {
                                    c0572a.a(true);
                                    ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(str9 + "_" + str5 + "_" + str10, true);
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append(str9);
                                    sb2.append("_");
                                    sb2.append(str10);
                                    oVar.a(sb2.toString(), str3, str4, str5, str, c0572a);
                                }
                            }
                        } catch (Exception e12) {
                            e = e12;
                        }
                    } catch (Exception unused2) {
                        str9 = str4;
                        str10 = str;
                    }
                } catch (Throwable unused3) {
                    str7 = str5;
                    if (oVar != null) {
                        c0572a.a(true);
                        ResDownloadCheckManager resDownloadCheckManager = ResDownloadCheckManager.getInstance();
                        StringBuilder sb3 = new StringBuilder();
                        str8 = str4;
                        try {
                            sb3.append(str8);
                            sb3.append("_");
                            sb3.append(str7);
                            sb3.append("_");
                            sb3.append(str);
                            resDownloadCheckManager.setTemplatePreLoadDone(sb3.toString(), true);
                            oVar.a(str8 + "_" + str, str3, str4, str5, str, c0572a);
                        } catch (Exception e13) {
                            e = e13;
                            if (MBridgeConstans.DEBUG) {
                                o0.b("RewardCampaignsResourceManager", e.getLocalizedMessage());
                            }
                            if (oVar != null) {
                                oVar.a(str11, str5, str, null, b(880009, new MBridgeIds(str3, str8, str7), "", e, campaignEx));
                            }
                        }
                    }
                }
            } catch (Exception e14) {
                e = e14;
            }
        } catch (Exception e15) {
            e = e15;
            str7 = str5;
            str8 = str4;
        }
    }

    /* JADX WARN: Code duplicated, block: B:57:0x01d5 A[Catch: all -> 0x0044, TRY_ENTER, TryCatch #1 {, blocks: (B:4:0x000b, B:7:0x0031, B:13:0x0049, B:15:0x007c, B:18:0x008a, B:20:0x00a5, B:22:0x00ab, B:24:0x00b5, B:27:0x00bc, B:29:0x00c2, B:30:0x00cc, B:32:0x00d2, B:34:0x00e6, B:36:0x00f4, B:38:0x00fd, B:39:0x0101, B:42:0x0112, B:44:0x015b, B:46:0x016f, B:48:0x018f, B:57:0x01d5, B:58:0x01f7, B:60:0x01fb, B:41:0x010b), top: B:67:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:60:0x01fb A[Catch: all -> 0x0044, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x000b, B:7:0x0031, B:13:0x0049, B:15:0x007c, B:18:0x008a, B:20:0x00a5, B:22:0x00ab, B:24:0x00b5, B:27:0x00bc, B:29:0x00c2, B:30:0x00cc, B:32:0x00d2, B:34:0x00e6, B:36:0x00f4, B:38:0x00fd, B:39:0x0101, B:42:0x0112, B:44:0x015b, B:46:0x016f, B:48:0x018f, B:57:0x01d5, B:58:0x01f7, B:60:0x01fb, B:41:0x010b), top: B:67:0x000b }] */
    public synchronized void a(boolean z10, Handler handler, boolean z11, boolean z12, String str, String str2, String str3, String str4, String str5, int i11, CampaignEx campaignEx, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, String str6, String str7, com.mbridge.msdk.videocommon.setting.c cVar, o oVar, boolean z13) {
        String str8;
        String str9;
        com.mbridge.msdk.video.signal.impl.k kVar;
        this.f36800b = z13;
        long jCurrentTimeMillis = System.currentTimeMillis();
        String str10 = str4 + "_" + str5;
        this.f36800b = z13;
        if (t0.i(str5)) {
            if (oVar != null) {
                oVar.a(str10, str3, str4, str, str5, null);
            }
            return;
        }
        try {
            o0.a("RewardCampaignsResourceManager", "开始预加载大模板资源");
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 1);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000154", campaignEx, eVar);
            com.mbridge.msdk.videocommon.a.C0572a c0572a = new com.mbridge.msdk.videocommon.a.C0572a();
            WindVaneWebView windVaneWebView = new WindVaneWebView(com.mbridge.msdk.foundation.controller.c.m().d());
            if (campaignEx != null) {
                windVaneWebView.setLocalRequestId(campaignEx.getCurrentLocalRid());
            }
            windVaneWebView.setTempTypeForMetrics(1);
            c0572a.a(windVaneWebView);
            String strB = com.mbridge.msdk.video.bt.component.d.c().b();
            String strB2 = com.mbridge.msdk.video.bt.component.d.c().b();
            c0572a.a(strB2);
            if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
                kVar = new com.mbridge.msdk.video.signal.impl.k(null, campaignEx);
            } else {
                CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListB = com.mbridge.msdk.videocommon.download.b.getInstance().b(str4);
                if (copyOnWriteArrayListB != null && copyOnWriteArrayListB.size() > 0) {
                    for (int i12 = 0; i12 < copyOnWriteArrayList.size(); i12++) {
                        CampaignEx campaignEx2 = copyOnWriteArrayList.get(i12);
                        for (CampaignEx campaignEx3 : copyOnWriteArrayListB) {
                            if (campaignEx3.getId().equals(campaignEx2.getId()) && campaignEx3.getRequestId().equals(campaignEx2.getRequestId())) {
                                campaignEx2.setReady(true);
                                copyOnWriteArrayList.set(i12, campaignEx2);
                            }
                        }
                    }
                }
                kVar = new com.mbridge.msdk.video.signal.impl.k(null, campaignEx, copyOnWriteArrayList);
            }
            com.mbridge.msdk.video.signal.impl.k kVar2 = kVar;
            kVar2.g(i11);
            kVar2.setUnitId(str7);
            kVar2.c(strB2);
            kVar2.d(strB);
            kVar2.c(true);
            kVar2.setRewardUnitSetting(cVar);
            kVar2.d(z10);
            try {
                windVaneWebView.setWebViewListener(new g(z10, handler, null, z11, z12, i11, str5, str3, str4, str, c0572a, campaignEx, copyOnWriteArrayList, cVar, oVar, z13, jCurrentTimeMillis));
                windVaneWebView.setObject(kVar2);
                windVaneWebView.loadUrl(str6);
                str8 = str;
                try {
                    windVaneWebView.setRid(str8);
                    MBridgeBTRootLayout mBridgeBTRootLayout = new MBridgeBTRootLayout(com.mbridge.msdk.foundation.controller.c.m().d());
                    mBridgeBTRootLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                    mBridgeBTRootLayout.setInstanceId(strB);
                    str9 = str4;
                    try {
                        mBridgeBTRootLayout.setUnitId(str9);
                        MBridgeBTLayout mBridgeBTLayout = new MBridgeBTLayout(com.mbridge.msdk.foundation.controller.c.m().d());
                        mBridgeBTLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                        mBridgeBTLayout.setInstanceId(strB2);
                        mBridgeBTLayout.setUnitId(str9);
                        mBridgeBTLayout.setWebView(windVaneWebView);
                        AbstractMap abstractMapB = com.mbridge.msdk.video.bt.component.d.c().b(str9, str8);
                        abstractMapB.put(strB2, mBridgeBTLayout);
                        abstractMapB.put(strB, mBridgeBTRootLayout);
                        mBridgeBTRootLayout.addView(mBridgeBTLayout, new FrameLayout.LayoutParams(-1, -1));
                    } catch (Exception e11) {
                        e = e11;
                        if (oVar != null) {
                            oVar.a(str10, str, str5, null, b(880008, new MBridgeIds(str3, str9, str8), "", e, campaignEx));
                        }
                        if (MBridgeConstans.DEBUG) {
                            o0.b("RewardCampaignsResourceManager", e.getLocalizedMessage());
                        }
                    }
                } catch (Exception e12) {
                    e = e12;
                    str9 = str4;
                    if (oVar != null) {
                        oVar.a(str10, str, str5, null, b(880008, new MBridgeIds(str3, str9, str8), "", e, campaignEx));
                    }
                    if (MBridgeConstans.DEBUG) {
                        o0.b("RewardCampaignsResourceManager", e.getLocalizedMessage());
                    }
                }
            } catch (Exception e13) {
                e = e13;
                str8 = str;
            }
        } catch (Exception e14) {
            e = e14;
            str8 = str;
            str9 = str4;
        }
    }

    public void c() {
    }
}
