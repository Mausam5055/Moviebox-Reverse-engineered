package com.mbridge.msdk.reward.player;

import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.view.ViewCompat;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.iab.omid.library.mmadbridge.adsession.FriendlyObstructionPurpose;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.newreward.function.common.MBridgeGlobalCommon;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.reward.adapter.RewardUnitCacheManager;
import com.mbridge.msdk.scheme.applet.AppletModelManager;
import com.mbridge.msdk.video.bt.module.MBTempContainer;
import com.mbridge.msdk.video.bt.module.MBridgeBTContainer;
import com.mbridge.msdk.video.bt.module.orglistener.h;
import com.mbridge.msdk.video.module.MBridgeVideoView;
import com.mbridge.msdk.video.signal.activity.AbstractJSActivity;
import com.mbridge.msdk.video.signal.impl.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class MBRewardVideoActivity extends AbstractJSActivity {
    public static String INTENT_EXTRADATA = "extraData";
    public static String INTENT_ISBID = "isBid";
    public static String INTENT_ISBIG_OFFER = "isBigOffer";
    public static String INTENT_ISIV = "isIV";
    public static String INTENT_IVREWARD_MODETYPE = "ivRewardMode";
    public static String INTENT_IVREWARD_VALUE = "ivRewardValue";
    public static String INTENT_IVREWARD_VALUETYPE = "ivRewardValueType";
    public static String INTENT_LOCAL_REQUEST_ID = "lRid";
    public static String INTENT_MUTE = "mute";
    public static String INTENT_REWARD = "reward";
    public static String INTENT_UNITID = "unitId";
    public static String INTENT_USERID = "userId";
    public static String SAVE_STATE_KEY_REPORT = "hasRelease";
    private MBridgeBTContainer A;
    private WindVaneWebView B;
    private com.mbridge.msdk.video.bt.module.listener.a C;
    private String D;
    private String E;
    private boolean F;
    private String N;
    private com.mbridge.msdk.foundation.same.report.metrics.c O;
    private boolean Q;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f37163f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f37164g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f37165h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.mbridge.msdk.videocommon.entity.c f37166i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f37170m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f37171n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f37172o;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private h f37175r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private com.mbridge.msdk.videocommon.setting.c f37176s;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private com.mbridge.msdk.videocommon.download.a f37179v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private CampaignEx f37180w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private List<com.mbridge.msdk.videocommon.download.a> f37181x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private List<CampaignEx> f37182y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private MBTempContainer f37183z;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f37167j = 2;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f37168k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f37169l = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f37173p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f37174q = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f37177t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f37178u = false;
    private int G = 1;
    private int H = 0;
    private int I = 0;
    private int J = 0;
    private int K = 0;
    private int L = 0;
    private int M = 0;
    private boolean P = false;
    private com.iab.omid.library.mmadbridge.adsession.b R = null;
    private com.iab.omid.library.mmadbridge.adsession.media.a S = null;
    private com.iab.omid.library.mmadbridge.adsession.a T = null;
    private long U = 0;
    private String V = "";
    private Boolean W = null;
    private int X = 0;
    private boolean Y = false;
    private boolean Z = false;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private com.mbridge.msdk.video.dynview.listener.a f37161a0 = new a();

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private com.mbridge.msdk.video.dynview.listener.d f37162b0 = new b();

    class a implements com.mbridge.msdk.video.dynview.listener.a {
        a() {
        }

        @Override // com.mbridge.msdk.video.dynview.listener.a
        public void a(Map<String, Object> map) {
            if (map == null) {
                return;
            }
            if (map.containsKey(CampaignEx.JSON_NATIVE_VIDEO_MUTE)) {
                MBRewardVideoActivity.this.f37167j = ((Integer) map.get(CampaignEx.JSON_NATIVE_VIDEO_MUTE)).intValue();
            }
            if (map.containsKey(RequestParameters.POSITION)) {
                int iIntValue = ((Integer) map.get(RequestParameters.POSITION)).intValue();
                if (MBRewardVideoActivity.this.f37182y == null || MBRewardVideoActivity.this.f37182y.size() <= 0 || iIntValue < 1) {
                    return;
                }
                MBRewardVideoActivity mBRewardVideoActivity = MBRewardVideoActivity.this;
                mBRewardVideoActivity.f37180w = (CampaignEx) mBRewardVideoActivity.f37182y.get(iIntValue);
                MBRewardVideoActivity.m(MBRewardVideoActivity.this);
                int i11 = iIntValue - 1;
                if (MBRewardVideoActivity.this.f37182y.get(i11) != null) {
                    MBRewardVideoActivity mBRewardVideoActivity2 = MBRewardVideoActivity.this;
                    MBRewardVideoActivity.b(mBRewardVideoActivity2, ((CampaignEx) mBRewardVideoActivity2.f37182y.get(i11)).getVideoLength());
                }
                MBRewardVideoActivity mBRewardVideoActivity3 = MBRewardVideoActivity.this;
                MBRewardVideoActivity.this.f37180w.setVideoCompleteTime(mBRewardVideoActivity3.a(mBRewardVideoActivity3.f37180w.getVideoCompleteTime(), MBRewardVideoActivity.this.G));
                MBRewardVideoActivity.this.f37180w.setShowIndex(MBRewardVideoActivity.this.G);
                MBRewardVideoActivity.this.f37180w.setShowType(1);
                MBRewardVideoActivity mBRewardVideoActivity4 = MBRewardVideoActivity.this;
                mBRewardVideoActivity4.c(mBRewardVideoActivity4.f37180w);
            }
        }
    }

    class b implements com.mbridge.msdk.video.dynview.listener.d {
        b() {
        }

        @Override // com.mbridge.msdk.video.dynview.listener.d
        public void a() {
            if (MBRewardVideoActivity.this.A != null) {
                new com.mbridge.msdk.video.dynview.ui.b().b(MBRewardVideoActivity.this.A, 500L);
            }
            MBRewardVideoActivity.this.f37173p = true;
            MBRewardVideoActivity.this.j();
            if (MBRewardVideoActivity.this.f37183z != null) {
                MBRewardVideoActivity.this.f37183z.setNotchPadding(MBRewardVideoActivity.this.M, MBRewardVideoActivity.this.I, MBRewardVideoActivity.this.K, MBRewardVideoActivity.this.J, MBRewardVideoActivity.this.L);
            }
        }

        @Override // com.mbridge.msdk.video.dynview.listener.d
        public void a(CampaignEx campaignEx) {
            if (campaignEx == null) {
                MBRewardVideoActivity.this.b("campaign is null");
                return;
            }
            if (MBRewardVideoActivity.this.A != null) {
                new com.mbridge.msdk.video.dynview.ui.b().b(MBRewardVideoActivity.this.A, 500L);
            }
            MBRewardVideoActivity.this.f37180w = campaignEx;
            MBRewardVideoActivity.this.f37180w.setShowType(2);
            MBRewardVideoActivity mBRewardVideoActivity = MBRewardVideoActivity.this;
            mBRewardVideoActivity.c(mBRewardVideoActivity.f37180w);
        }
    }

    class c implements com.mbridge.msdk.video.bt.module.listener.a {
        c() {
        }

        @Override // com.mbridge.msdk.video.bt.module.listener.a
        public void a() {
            if (MBRewardVideoActivity.this.f37175r != null) {
                MBRewardVideoActivity.this.f37175r.a(MBRewardVideoActivity.this.O);
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.listener.a
        public void a(int i11, String str, String str2) {
            if (MBRewardVideoActivity.this.f37175r != null) {
                MBRewardVideoActivity.this.f37175r.a(i11, str, str2);
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.listener.a
        public void a(String str) {
            if (MBRewardVideoActivity.this.f37175r != null) {
                MBRewardVideoActivity.this.f37175r.a(MBRewardVideoActivity.this.O, str);
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.listener.a
        public void a(String str, String str2) {
            if (MBRewardVideoActivity.this.f37175r != null) {
                MBRewardVideoActivity.this.f37175r.a(str, str2);
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.listener.a
        public void a(boolean z10, int i11) {
            if (MBRewardVideoActivity.this.f37175r != null) {
                MBRewardVideoActivity.this.f37175r.a(z10, i11);
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.listener.a
        public void a(boolean z10, com.mbridge.msdk.videocommon.entity.c cVar) {
            if (MBRewardVideoActivity.this.f37175r != null) {
                MBRewardVideoActivity.this.f37175r.a(MBRewardVideoActivity.this.O, z10, cVar);
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.listener.a
        public void a(boolean z10, String str, String str2) {
            if (MBRewardVideoActivity.this.f37175r != null) {
                MBRewardVideoActivity.this.f37175r.a(z10, str, str2);
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.listener.a
        public void b(String str, String str2) {
            if (MBRewardVideoActivity.this.f37175r != null) {
                MBRewardVideoActivity.this.f37175r.b(str, str2);
            }
        }
    }

    class d implements com.mbridge.msdk.foundation.feedback.a {
        d() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            MBRewardVideoActivity.this.onPause();
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            MBRewardVideoActivity.this.onResume();
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            MBRewardVideoActivity.this.onResume();
        }
    }

    private static final class e implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<com.mbridge.msdk.videocommon.download.a> f37188a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f37189b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f37190c;

        public e(List<com.mbridge.msdk.videocommon.download.a> list, String str, String str2) {
            this.f37188a = list;
            this.f37189b = str;
            this.f37190c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                List<com.mbridge.msdk.videocommon.download.a> list = this.f37188a;
                if (list == null || list.size() <= 0) {
                    return;
                }
                for (com.mbridge.msdk.videocommon.download.a aVar : this.f37188a) {
                    if (aVar != null && aVar.c() != null) {
                        CampaignEx campaignExC = aVar.c();
                        try {
                            AppletModelManager.getInstance().remove(campaignExC);
                        } catch (Exception e11) {
                            if (MBridgeConstans.DEBUG) {
                                o0.b("MBRewardVideoActivity", "AppletModelManager remove error", e11);
                            }
                        }
                        com.mbridge.msdk.videocommon.download.b.getInstance().c(this.f37189b, campaignExC.getRequestId() + campaignExC.getId() + campaignExC.getVideoUrlEncode());
                        if (campaignExC.getRewardTemplateMode() != null) {
                            if (!TextUtils.isEmpty(campaignExC.getRewardTemplateMode().e())) {
                                com.mbridge.msdk.videocommon.a.e(this.f37189b + "_" + campaignExC.getId() + "_" + this.f37190c + "_" + campaignExC.getRewardTemplateMode().e());
                                com.mbridge.msdk.videocommon.a.b(campaignExC.getAdType(), campaignExC);
                            }
                            if (!TextUtils.isEmpty(campaignExC.getCMPTEntryUrl())) {
                                com.mbridge.msdk.videocommon.a.e(this.f37189b + "_" + this.f37190c + "_" + campaignExC.getCMPTEntryUrl());
                            }
                            com.mbridge.msdk.videocommon.cache.a.a().a(this.f37189b, campaignExC);
                        }
                    }
                }
            } catch (Exception e12) {
                o0.a("MBRewardVideoActivity", e12.getMessage());
            }
        }
    }

    private static final class f implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<com.mbridge.msdk.videocommon.download.a> f37191a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f37192b;

        public f(String str, List<com.mbridge.msdk.videocommon.download.a> list) {
            this.f37191a = list;
            this.f37192b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                List<com.mbridge.msdk.videocommon.download.a> list = this.f37191a;
                if (list == null || list.size() <= 0) {
                    return;
                }
                for (com.mbridge.msdk.videocommon.download.a aVar : this.f37191a) {
                    if (aVar != null && aVar.c() != null) {
                        com.mbridge.msdk.videocommon.cache.a.a().a(aVar.c(), this.f37192b);
                    }
                }
            } catch (Throwable th2) {
                o0.b("MBRewardVideoActivity", th2.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(int i11, int i12) {
        List<CampaignEx> list = this.f37182y;
        if (list == null || list.size() == 0) {
            return i11;
        }
        int videoLength = 0;
        int videoCompleteTime = 0;
        for (int i13 = 0; i13 < this.f37182y.size(); i13++) {
            if (this.f37182y.get(0) != null) {
                if (i13 == 0) {
                    videoCompleteTime = this.f37182y.get(0).getVideoCompleteTime();
                }
                videoLength += this.f37182y.get(i13).getVideoLength();
            }
        }
        if (i12 == 1) {
            if (i11 == 0) {
                if (videoLength >= 45) {
                    return 45;
                }
            } else if (videoLength > i11) {
                if (i11 > 45) {
                    return 45;
                }
                return i11;
            }
            return videoLength;
        }
        int videoLength2 = 0;
        for (int i14 = 0; i14 < i12 - 1; i14++) {
            if (this.f37182y.get(i14) != null) {
                videoLength2 += this.f37182y.get(i14).getVideoLength();
            }
        }
        if (videoCompleteTime > videoLength2) {
            return videoCompleteTime - videoLength2;
        }
        return 0;
    }

    private WindVaneWebView a(String str) {
        com.mbridge.msdk.videocommon.a.C0572a c0572aB = com.mbridge.msdk.videocommon.a.b(str);
        if (c0572aB != null) {
            return c0572aB.b();
        }
        return null;
    }

    private void a(CampaignEx campaignEx) {
        if (campaignEx != null) {
            if (!TextUtils.isEmpty(campaignEx.getImageUrl())) {
                com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(campaignEx.getImageUrl());
            }
            if (TextUtils.isEmpty(campaignEx.getIconUrl())) {
                return;
            }
            com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(campaignEx.getIconUrl());
        }
    }

    private void a(List<CampaignEx> list) {
        CampaignEx campaignEx;
        if (this.Q) {
            return;
        }
        if (list == null) {
            try {
                if (this.f37173p) {
                    list = this.f37182y;
                } else {
                    list = new ArrayList<>();
                    List<com.mbridge.msdk.videocommon.download.a> list2 = this.f37181x;
                    if (list2 != null && list2.get(0) != null && this.f37181x.get(0).c() != null) {
                        list.add(this.f37181x.get(0).c());
                    }
                }
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    e11.printStackTrace();
                    return;
                }
                return;
            }
        }
        String currentLocalRid = "";
        if (list != null && !list.isEmpty() && (campaignEx = list.get(0)) != null) {
            currentLocalRid = campaignEx.getCurrentLocalRid();
        }
        if (!TextUtils.isEmpty(currentLocalRid)) {
            this.O = com.mbridge.msdk.foundation.same.report.metrics.d.b().a(currentLocalRid);
        }
        if (this.O == null) {
            this.O = new com.mbridge.msdk.foundation.same.report.metrics.c();
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a(MBridgeConstans.PROPERTIES_UNIT_ID, this.f37163f);
            eVar.a(CampaignEx.JSON_KEY_HB, Integer.valueOf(this.f37169l ? 1 : 0));
            eVar.a("adtp", Integer.valueOf(this.f37168k ? MBSupportMuteAdType.INTERSTITIAL_VIDEO : 94));
            eVar.a("lrid", this.N);
            eVar.a("his_reason", "show campaign is null");
            this.O.a("2000129", eVar);
        }
        if (list != null) {
            this.O.b(list);
        }
        this.Q = true;
        com.mbridge.msdk.reward.report.metrics.a.a().a("2000129", this.O);
    }

    static /* synthetic */ int b(MBRewardVideoActivity mBRewardVideoActivity, int i11) {
        int i12 = mBRewardVideoActivity.H - i11;
        mBRewardVideoActivity.H = i12;
        return i12;
    }

    private void b(CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                if (campaignEx.isActiveOm() && this.R == null) {
                    com.iab.omid.library.mmadbridge.adsession.b bVarA = com.mbridge.msdk.omsdk.b.a(getApplicationContext(), false, campaignEx.getOmid(), campaignEx.getRequestId(), campaignEx.getId(), this.f37163f, campaignEx.getVideoUrlEncode(), campaignEx.getRequestIdNotice());
                    this.R = bVarA;
                    if (bVarA != null) {
                        this.T = com.iab.omid.library.mmadbridge.adsession.a.a(bVarA);
                        this.S = com.iab.omid.library.mmadbridge.adsession.media.a.g(this.R);
                    }
                }
            } catch (Throwable th2) {
                o0.b("MBRewardVideoActivity", th2.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        o0.b("MBRewardVideoActivity", str);
        a(this.f37182y);
        h hVar = this.f37175r;
        if (hVar != null) {
            hVar.a(this.O, str);
        }
        finish();
    }

    private void b(List<CampaignEx> list) {
        int dynamicTempCode;
        if (list == null) {
            b("no available campaign");
            return;
        }
        if (list.size() == 0) {
            b("no available campaign");
            return;
        }
        if (list.get(0) != null) {
            dynamicTempCode = list.get(0).getDynamicTempCode();
            this.N = list.get(0).getCurrentLocalRid();
        } else {
            dynamicTempCode = 0;
        }
        if (dynamicTempCode != 5) {
            k();
            return;
        }
        for (CampaignEx campaignEx : list) {
            if (campaignEx != null) {
                this.H += campaignEx.getVideoLength();
            }
        }
        e(list.get(0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(CampaignEx campaignEx) {
        CampaignEx campaignExC;
        try {
            List<com.mbridge.msdk.videocommon.download.a> list = this.f37181x;
            if (list != null && list.size() > 0) {
                for (com.mbridge.msdk.videocommon.download.a aVar : this.f37181x) {
                    if (aVar != null && (campaignExC = aVar.c()) != null && TextUtils.equals(campaignExC.getId(), campaignEx.getId()) && TextUtils.equals(campaignExC.getRequestId(), campaignEx.getRequestId())) {
                        this.f37179v = aVar;
                    }
                }
            }
            this.f37173p = true;
            j();
            MBTempContainer mBTempContainer = this.f37183z;
            if (mBTempContainer != null) {
                mBTempContainer.setNotchPadding(this.M, this.I, this.K, this.J, this.L);
            }
        } catch (Exception e11) {
            o0.b("MBRewardVideoActivity", e11.getMessage());
            b("more offer to one offer exception");
        }
    }

    private void d(CampaignEx campaignEx) {
        com.mbridge.msdk.reward.player.a.a(this, campaignEx, this.f37176s, this.f37163f);
    }

    private void e() {
        try {
            ViewGroup viewGroup = (ViewGroup) getWindow().getDecorView();
            BitmapDrawable bitmapDrawableA = com.mbridge.msdk.foundation.controller.c.m().a(this.f37163f, this.f37168k ? MBSupportMuteAdType.INTERSTITIAL_VIDEO : 94);
            if (bitmapDrawableA != null) {
                ImageView imageView = new ImageView(com.mbridge.msdk.foundation.controller.c.m().d());
                t0.a(imageView, bitmapDrawableA, getResources().getDisplayMetrics());
                ((ViewGroup) ((ViewGroup) ((ViewGroup) viewGroup.getChildAt(0)).getChildAt(1)).getChildAt(0)).addView(imageView, new ViewGroup.LayoutParams(-1, -1));
                com.iab.omid.library.mmadbridge.adsession.b bVar = this.R;
                if (bVar != null) {
                    bVar.a(imageView, FriendlyObstructionPurpose.OTHER, null);
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private void e(CampaignEx campaignEx) {
        if (campaignEx == null) {
            b("campaign is less");
            return;
        }
        int iA = a(campaignEx.getVideoCompleteTime(), this.G);
        this.f37180w = campaignEx;
        campaignEx.setCampaignIsFiltered(true);
        this.G = 1;
        this.f37180w.setVideoCompleteTime(iA);
        this.f37180w.setShowIndex(this.G);
        this.f37180w.setShowType(1);
        c(this.f37180w);
    }

    private void f() {
        h hVar = this.f37175r;
        if (hVar == null || !(hVar instanceof com.mbridge.msdk.video.bt.module.orglistener.b)) {
            return;
        }
        try {
            com.mbridge.msdk.video.bt.module.orglistener.b bVar = (com.mbridge.msdk.video.bt.module.orglistener.b) hVar;
            Boolean boolD = bVar.d();
            Boolean boolC = bVar.c();
            if (boolD == null && boolC == null) {
                this.W = null;
            } else {
                Boolean bool = Boolean.FALSE;
                this.W = Boolean.valueOf(bool.equals(boolD) && bool.equals(boolC));
            }
        } catch (Throwable th2) {
            o0.b("MBRewardVideoActivity", th2.getMessage());
        }
    }

    private void g() {
        try {
            Boolean bool = this.W;
            if (bool != null && !bool.booleanValue()) {
                return;
            }
            h hVar = this.f37175r;
            if (hVar != null) {
                hVar.a(this.O, "show fail : unexpected destroy");
            }
        } catch (Throwable th2) {
            o0.b("MBRewardVideoActivity", th2.getMessage());
        }
    }

    private void h() {
        try {
            List<CampaignEx> list = this.f37182y;
            if (list != null && list.size() > 0) {
                Iterator<CampaignEx> it = this.f37182y.iterator();
                while (it.hasNext()) {
                    a(it.next());
                }
            }
            CampaignEx campaignEx = this.f37180w;
            if (campaignEx != null) {
                a(campaignEx);
            }
        } catch (Throwable th2) {
            o0.b("MBRewardVideoActivity", th2.getMessage());
        }
    }

    private com.mbridge.msdk.video.bt.module.listener.a i() {
        if (this.C == null) {
            this.C = new c();
        }
        return this.C;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        List<CampaignEx> list;
        RewardPlus rewardPlus;
        CampaignEx campaignEx;
        List<CampaignEx> list2;
        int iFindID = findID("mbridge_temp_container");
        if (!g0.a(iFindID)) {
            b("no id mbridge_bt_container in mbridge_more_offer_activity layout");
        }
        MBTempContainer mBTempContainer = (MBTempContainer) findViewById(iFindID);
        this.f37183z = mBTempContainer;
        if (mBTempContainer == null) {
            b("env error");
        }
        List<CampaignEx> list3 = this.f37182y;
        if (list3 == null || list3.size() <= 0 || !this.f37182y.get(0).isDynamicView()) {
            this.f37183z.setVisibility(0);
        } else {
            new com.mbridge.msdk.video.dynview.ui.b().a(this.f37183z, 500L);
        }
        changeHalfScreenPadding(-1);
        this.f37183z.setActivity(this);
        this.f37183z.setBidCampaign(this.f37169l);
        this.f37183z.setBigOffer(this.f37173p);
        this.f37183z.setUnitId(this.f37163f);
        this.f37183z.setCampaign(this.f37180w);
        if (this.f37180w.getDynamicTempCode() == 5 && (list2 = this.f37182y) != null && list2.size() > 1) {
            View viewFindViewById = findViewById(findID("mbridge_reward_root_container"));
            if (viewFindViewById != null) {
                viewFindViewById.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            }
            this.f37183z.removeAllViews();
            this.f37183z.setCampOrderViewData(this.f37182y, this.H);
            this.f37183z.setCamPlayOrderCallback(this.f37161a0, this.G);
        }
        this.f37183z.setCampaignDownLoadTask(this.f37179v);
        this.f37183z.setIV(this.f37168k);
        CampaignEx campaignEx2 = this.f37180w;
        if (campaignEx2 == null || campaignEx2.getAdSpaceT() != 2) {
            this.f37183z.setIVRewardEnable(this.f37170m, this.f37171n, this.f37172o);
        } else {
            this.f37183z.setIVRewardEnable(0, 0, 0);
        }
        this.f37183z.setMute(this.f37167j);
        CampaignEx campaignEx3 = this.f37180w;
        if (((campaignEx3 != null && (rewardPlus = campaignEx3.getRewardPlus()) != null) || ((list = this.f37182y) != null && list.size() > 0 && this.f37182y.get(0) != null && (rewardPlus = this.f37182y.get(0).getRewardPlus()) != null)) && !TextUtils.isEmpty(rewardPlus.getName()) && rewardPlus.getAmount() > 0) {
            com.mbridge.msdk.videocommon.entity.c cVar = new com.mbridge.msdk.videocommon.entity.c(rewardPlus.getName(), rewardPlus.getAmount());
            if (cVar.a() < 0) {
                cVar.a(1);
            }
            this.f37166i = cVar;
        }
        this.f37183z.setReward(this.f37166i);
        this.f37183z.setRewardUnitSetting(this.f37176s);
        this.f37183z.setPlacementId(this.f37164g);
        this.f37183z.setUserId(this.f37165h);
        this.f37183z.setShowRewardListener(this.f37175r);
        this.f37183z.setDeveloperExtraData(this.E);
        this.f37183z.init(this);
        this.f37183z.setAdSession(this.R);
        this.f37183z.setAdEvents(this.T);
        this.f37183z.setVideoEvents(this.S);
        this.f37183z.onCreate();
        if (!com.mbridge.msdk.util.b.a() || (campaignEx = this.f37180w) == null) {
            return;
        }
        d(campaignEx);
    }

    private void k() {
        RewardPlus rewardPlus;
        List<CampaignEx> list;
        int iFindID = findID("mbridge_bt_container");
        if (!g0.a(iFindID)) {
            b("no mbridge_webview_framelayout in mbridge_more_offer_activity layout");
        }
        MBridgeBTContainer mBridgeBTContainer = (MBridgeBTContainer) findViewById(iFindID);
        this.A = mBridgeBTContainer;
        if (mBridgeBTContainer == null) {
            b("env error");
        }
        this.A.setVisibility(0);
        com.mbridge.msdk.video.bt.module.listener.a aVarI = i();
        this.C = aVarI;
        this.A.setBTContainerCallback(aVarI);
        this.A.setShowRewardVideoListener(this.f37175r);
        this.A.setChoiceOneCallback(this.f37162b0);
        this.A.setCampaigns(this.f37182y);
        this.A.setCampaignDownLoadTasks(this.f37181x);
        this.A.setRewardUnitSetting(this.f37176s);
        this.A.setUnitId(this.f37163f);
        this.A.setPlacementId(this.f37164g);
        this.A.setUserId(this.f37165h);
        this.A.setActivity(this);
        CampaignEx campaignEx = this.f37180w;
        if (((campaignEx != null && (rewardPlus = campaignEx.getRewardPlus()) != null) || (this.f37182y.get(0) != null && (rewardPlus = this.f37182y.get(0).getRewardPlus()) != null)) && !TextUtils.isEmpty(rewardPlus.getName()) && rewardPlus.getAmount() > 0) {
            com.mbridge.msdk.videocommon.entity.c cVar = new com.mbridge.msdk.videocommon.entity.c(rewardPlus.getName(), rewardPlus.getAmount());
            if (cVar.a() < 0) {
                cVar.a(1);
            }
            this.f37166i = cVar;
        }
        this.A.setReward(this.f37166i);
        this.A.setIVRewardEnable(this.f37170m, this.f37171n, this.f37172o);
        this.A.setIV(this.f37168k);
        this.A.setMute(this.f37167j);
        this.A.setJSFactory((com.mbridge.msdk.video.signal.factory.b) this.jsFactory);
        this.A.setDeveloperExtraData(this.E);
        this.A.init(this);
        this.A.setAdSession(this.R);
        this.A.setVideoEvents(this.S);
        this.A.setAdEvents(this.T);
        this.A.onCreate(this.P);
        if (!com.mbridge.msdk.util.b.a() || (list = this.f37182y) == null || list.size() <= 0 || this.f37182y.get(0) == null) {
            return;
        }
        d(this.f37182y.get(0));
    }

    static /* synthetic */ int m(MBRewardVideoActivity mBRewardVideoActivity) {
        int i11 = mBRewardVideoActivity.G;
        mBRewardVideoActivity.G = i11 + 1;
        return i11;
    }

    public void changeHalfScreenPadding(int i11) {
        int iF;
        int iG;
        int iG2;
        float f11;
        try {
            CampaignEx campaignEx = this.f37180w;
            if (campaignEx == null || campaignEx.getAdSpaceT() != 2) {
                return;
            }
            getWindow().getDecorView().setBackgroundColor(-1728053248);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f37183z.getLayoutParams();
            layoutParams.gravity = 17;
            if (this.f37180w.getRewardTemplateMode().b() == 0) {
                if (i11 == 2) {
                    iF = (int) (t0.f(this) * 0.6f);
                    iG2 = t0.g(this);
                    f11 = iG2 * 0.6f;
                } else {
                    iF = (int) (t0.f(this) * 0.6f);
                    iG = t0.g(this);
                    f11 = iG * 0.7f;
                }
            } else if (this.f37180w.getRewardTemplateMode().b() == 2) {
                iF = (int) (t0.f(this) * 0.6f);
                iG2 = t0.g(this);
                f11 = iG2 * 0.6f;
            } else {
                iF = (int) (t0.f(this) * 0.6f);
                iG = t0.g(this);
                f11 = iG * 0.7f;
            }
            int i12 = (int) f11;
            layoutParams.height = iF;
            layoutParams.width = i12;
            this.f37183z.setLayoutParams(layoutParams);
        } catch (Throwable th2) {
            o0.b("MBRewardVideoActivity", th2.getMessage());
        }
    }

    public int findID(String str) {
        return g0.a(getApplicationContext(), str, "id");
    }

    public int findLayout(String str) {
        return g0.a(getApplicationContext(), str, TtmlNode.TAG_LAYOUT);
    }

    @Override // android.app.Activity
    public void finish() {
        this.Y = true;
        com.mbridge.msdk.foundation.controller.c.m().b(0);
        MBTempContainer mBTempContainer = this.f37183z;
        if (mBTempContainer != null) {
            mBTempContainer.onDestroy();
            this.f37183z = null;
        }
        com.mbridge.msdk.foundation.feedback.b.b().d(this.f37163f);
        if (this.R != null) {
            o0.b("omsdk", "mbrewardvideoac finish");
            this.R.e();
            this.R.c();
            this.R = null;
        }
        MBridgeBTContainer mBridgeBTContainer = this.A;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onDestroy();
            this.A = null;
        }
        super.finish();
    }

    @Override // com.mbridge.msdk.video.signal.activity.AbstractJSActivity, android.app.Activity
    public void onBackPressed() {
        this.Z = true;
        super.onBackPressed();
        MBTempContainer mBTempContainer = this.f37183z;
        if (mBTempContainer != null) {
            mBTempContainer.onBackPressed();
        }
        MBridgeBTContainer mBridgeBTContainer = this.A;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onBackPressed();
        }
    }

    @Override // com.mbridge.msdk.video.signal.activity.AbstractJSActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.f37183z != null) {
            changeHalfScreenPadding(configuration.orientation);
            this.f37183z.onConfigurationChanged(configuration);
        }
        MBridgeBTContainer mBridgeBTContainer = this.A;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onConfigurationChanged(configuration);
        }
    }

    @Override // com.mbridge.msdk.activity.MBBaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        String str;
        List<com.mbridge.msdk.videocommon.download.a> list;
        String cMPTEntryUrl = "";
        super.onCreate(bundle);
        MBridgeConstans.isRewardActivityShowing = true;
        com.mbridge.msdk.foundation.controller.c.m().a(this);
        this.U = SystemClock.elapsedRealtime();
        if (TextUtils.isEmpty(this.V)) {
            str = "onCreate";
        } else {
            str = this.V + "_onCreate";
        }
        this.V = str;
        try {
            Intent intent = getIntent();
            this.f37163f = intent.getStringExtra(INTENT_UNITID);
            this.f37164g = intent.getStringExtra(MBridgeConstans.PLACEMENT_ID);
            this.f37166i = com.mbridge.msdk.videocommon.entity.c.a(intent.getStringExtra(INTENT_REWARD));
            this.f37165h = intent.getStringExtra(INTENT_USERID);
            this.f37167j = intent.getIntExtra(INTENT_MUTE, 2);
            this.f37168k = intent.getBooleanExtra(INTENT_ISIV, false);
            com.mbridge.msdk.foundation.controller.c.m().b(this.f37168k ? 287 : 94);
            this.f37169l = intent.getBooleanExtra(INTENT_ISBID, false);
            this.E = intent.getStringExtra(INTENT_EXTRADATA);
            boolean booleanExtra = intent.getBooleanExtra("is_refactor", false);
            this.P = booleanExtra;
            if (booleanExtra) {
                this.f37175r = MBridgeGlobalCommon.showRewardListenerMap.get(this.f37163f);
            } else {
                this.f37175r = com.mbridge.msdk.reward.controller.a.f37067f0.get(this.f37163f);
            }
            if (this.f37168k) {
                this.f37170m = intent.getIntExtra(INTENT_IVREWARD_MODETYPE, 0);
                this.f37171n = intent.getIntExtra(INTENT_IVREWARD_VALUETYPE, 0);
                this.f37172o = intent.getIntExtra(INTENT_IVREWARD_VALUE, 0);
            }
            this.f37173p = intent.getBooleanExtra(INTENT_ISBIG_OFFER, false);
            this.f37181x = com.mbridge.msdk.videocommon.download.b.getInstance().a(this.f37163f);
            this.f37182y = com.mbridge.msdk.videocommon.download.b.getInstance().b(this.f37163f);
            int iFindLayout = findLayout("mbridge_more_offer_activity");
            if (!g0.a(iFindLayout)) {
                b("no mbridge_more_offer_activity layout");
                return;
            }
            setContentView(iFindLayout);
            if (TextUtils.isEmpty(this.f37163f)) {
                b("data empty error");
                return;
            }
            com.mbridge.msdk.video.signal.factory.b bVar = new com.mbridge.msdk.video.signal.factory.b(this);
            this.jsFactory = bVar;
            registerJsFactory(bVar);
            h hVar = this.f37175r;
            if (hVar == null) {
                b("showRewardListener is null");
                return;
            }
            this.X = hVar.hashCode();
            com.mbridge.msdk.videocommon.setting.c cVar = RewardUnitCacheManager.getInstance().get(this.f37164g, this.f37163f);
            this.f37176s = cVar;
            if (cVar == null) {
                com.mbridge.msdk.videocommon.setting.c cVarC = com.mbridge.msdk.videocommon.setting.b.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), this.f37163f);
                this.f37176s = cVarC;
                if (cVarC == null) {
                    this.f37176s = com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.f37163f, this.f37168k);
                }
            }
            com.mbridge.msdk.videocommon.setting.c cVar2 = this.f37176s;
            if (cVar2 != null) {
                this.f37166i.a(cVar2.d());
                this.f37166i.b(this.f37176s.s());
            }
            com.mbridge.msdk.videocommon.entity.c cVar3 = this.f37166i;
            if (cVar3 != null && cVar3.a() <= 0) {
                this.f37166i.a(1);
            }
            int iA = g0.a(this, "mbridge_reward_activity_open", "anim");
            int iA2 = g0.a(this, "mbridge_reward_activity_stay", "anim");
            if (g0.a(iA) && g0.a(iA2)) {
                overridePendingTransition(iA, iA2);
            }
            if (bundle != null) {
                try {
                    this.f37178u = bundle.getBoolean(SAVE_STATE_KEY_REPORT);
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
            o0.a("DynamicViewCampaignResourceDownloader", "进入 show，大模板 " + this.f37173p);
            if (!this.f37173p) {
                List<com.mbridge.msdk.videocommon.download.a> list2 = this.f37181x;
                if (list2 != null && list2.size() > 0) {
                    this.f37179v = this.f37181x.get(0);
                }
                com.mbridge.msdk.videocommon.download.a aVar = this.f37179v;
                if (aVar != null) {
                    this.f37180w = aVar.c();
                    this.f37179v.b(true);
                    this.f37179v.d(false);
                    CampaignEx campaignEx = this.f37180w;
                    if (campaignEx != null) {
                        this.N = campaignEx.getCurrentLocalRid();
                        this.f37180w.setShowIndex(1);
                        this.f37180w.setShowType(1);
                        com.mbridge.msdk.reward.controller.a.f37063b0 = this.f37180w.getEcppv();
                        com.mbridge.msdk.click.c.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f37180w.getMaitve(), this.f37180w.getMaitve_src());
                    }
                }
                if (this.f37179v != null && this.f37180w != null && this.f37166i != null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(this.f37180w);
                    a(arrayList);
                    b(this.f37180w);
                    j();
                    if (com.mbridge.msdk.util.b.a()) {
                        return;
                    }
                    e();
                    return;
                }
                b("data empty error");
                return;
            }
            a(this.f37182y);
            this.D = "";
            List<CampaignEx> list3 = this.f37182y;
            if (list3 != null && list3.size() > 0) {
                CampaignEx campaignEx2 = this.f37182y.get(0);
                b(campaignEx2);
                cMPTEntryUrl = campaignEx2.getCMPTEntryUrl();
                this.D = campaignEx2.getRequestId();
                this.N = campaignEx2.getCurrentLocalRid();
                com.mbridge.msdk.reward.controller.a.f37063b0 = campaignEx2.getEcppv();
                com.mbridge.msdk.click.c.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx2.getMaitve(), campaignEx2.getMaitve_src());
            }
            WindVaneWebView windVaneWebViewA = a(this.f37163f + "_" + this.D + "_" + cMPTEntryUrl);
            this.B = windVaneWebViewA;
            if (windVaneWebViewA == null) {
                if (this.f37179v == null && (list = this.f37181x) != null && list.size() > 0) {
                    this.f37179v = this.f37181x.get(0);
                }
                if (this.f37179v == null) {
                    this.f37179v = com.mbridge.msdk.videocommon.download.b.getInstance().a(this.f37168k ? 287 : 94, this.f37163f, this.f37169l);
                }
                com.mbridge.msdk.videocommon.download.a aVar2 = this.f37179v;
                if (aVar2 != null) {
                    this.f37180w = aVar2.c();
                    this.f37179v.b(true);
                    this.f37179v.d(false);
                }
                if (this.f37179v != null && this.f37180w != null && this.f37166i != null) {
                    this.f37173p = false;
                    List<CampaignEx> listA = com.mbridge.msdk.videocommon.cache.a.a().a(this.f37182y);
                    if (listA == null) {
                        b("no available campaign");
                        return;
                    }
                    int size = listA.size();
                    if (size == 0) {
                        b("no available campaign");
                        return;
                    }
                    if (listA.get(0) == null || !listA.get(0).isDynamicView()) {
                        j();
                    } else if (size == 1) {
                        CampaignEx campaignEx3 = listA.get(0);
                        this.f37180w = campaignEx3;
                        if (campaignEx3 != null) {
                            this.N = campaignEx3.getCurrentLocalRid();
                            this.f37180w.setCampaignIsFiltered(true);
                        }
                        c(this.f37180w);
                    } else {
                        b(listA);
                    }
                }
                b("data empty error");
                return;
            }
            b(this.f37182y.get(0));
            WindVaneWebView windVaneWebView = this.B;
            if (windVaneWebView != null) {
                try {
                    k kVar = (k) windVaneWebView.getObject();
                    kVar.setAdEvents(this.T);
                    kVar.setAdSession(this.R);
                    kVar.setVideoEvents(this.S);
                    this.B.setObject(kVar);
                } catch (Exception e12) {
                    o0.b("MBRewardVideoActivity", e12.getMessage());
                }
            }
            k();
            if (com.mbridge.msdk.util.b.a()) {
                return;
            }
            e();
        } catch (Throwable th2) {
            a(this.f37182y);
            b("onCreate error" + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.activity.AbstractJSActivity, com.mbridge.msdk.activity.MBBaseActivity, android.app.Activity
    public void onDestroy() {
        String str;
        int i11;
        if (TextUtils.isEmpty(this.V)) {
            str = "onDestroy";
        } else {
            str = this.V + "_onDestroy";
        }
        this.V = str;
        super.onDestroy();
        f();
        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        eVar.a("activity_life_cycle", TextUtils.isEmpty(this.V) ? "unKnown" : this.V);
        eVar.a("activity_duration", Long.valueOf(SystemClock.elapsedRealtime() - this.U));
        Boolean bool = this.W;
        int i12 = 0;
        if (bool == null) {
            i11 = 0;
        } else {
            i11 = bool.booleanValue() ? 1 : 2;
        }
        eVar.a("is_unexpected_destroy", Integer.valueOf(i11));
        eVar.a("is_listener_null", Integer.valueOf(this.f37175r == null ? 1 : 2));
        eVar.a("is_called_finish", Integer.valueOf(this.Y ? 1 : 2));
        eVar.a("is_back_pressed", Integer.valueOf(this.Z ? 1 : 2));
        h hVar = this.f37175r;
        if (hVar != null) {
            i12 = hVar.hashCode() == this.X ? 1 : 2;
        }
        eVar.a("is_listener_change", Integer.valueOf(i12));
        com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000151", this.f37180w, eVar);
        g();
        com.mbridge.msdk.video.module.report.b.a(this.f37163f);
        h();
        MBTempContainer mBTempContainer = this.f37183z;
        if (mBTempContainer != null) {
            mBTempContainer.onDestroy();
            this.f37183z = null;
        }
        MBridgeBTContainer mBridgeBTContainer = this.A;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onDestroy();
            this.A = null;
        }
        this.f37161a0 = null;
        this.f37162b0 = null;
        com.mbridge.msdk.foundation.feedback.b.b().d(this.f37163f + "_1");
        com.mbridge.msdk.foundation.feedback.b.b().d(this.f37163f + "_2");
        com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new e(this.f37181x, this.f37163f, this.D));
    }

    @Override // com.mbridge.msdk.video.signal.activity.AbstractJSActivity, android.app.Activity
    public void onPause() {
        String str;
        super.onPause();
        if (TextUtils.isEmpty(this.V)) {
            str = "onPause";
        } else {
            str = this.V + "_onPause";
        }
        this.V = str;
        MBTempContainer mBTempContainer = this.f37183z;
        if (mBTempContainer != null) {
            mBTempContainer.onPause();
        }
        MBridgeBTContainer mBridgeBTContainer = this.A;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onPause();
        }
    }

    @Override // android.app.Activity
    protected void onRestart() {
        String str;
        super.onRestart();
        if (TextUtils.isEmpty(this.V)) {
            str = "onRestart";
        } else {
            str = this.V + "_onRestart";
        }
        this.V = str;
        MBTempContainer mBTempContainer = this.f37183z;
        if (mBTempContainer != null) {
            mBTempContainer.onRestart();
        }
        MBridgeBTContainer mBridgeBTContainer = this.A;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onRestart();
        }
    }

    @Override // com.mbridge.msdk.video.signal.activity.AbstractJSActivity, com.mbridge.msdk.activity.MBBaseActivity, android.app.Activity
    public void onResume() {
        String str;
        MBridgeVideoView mBridgeVideoView;
        super.onResume();
        if (TextUtils.isEmpty(this.V)) {
            str = "onResume";
        } else {
            str = this.V + "_onResume";
        }
        this.V = str;
        if (com.mbridge.msdk.foundation.feedback.b.f35289f) {
            MBTempContainer mBTempContainer = this.f37183z;
            if (mBTempContainer == null || (mBridgeVideoView = mBTempContainer.mbridgeVideoView) == null) {
                return;
            }
            mBridgeVideoView.setCover(false);
            return;
        }
        com.mbridge.msdk.foundation.controller.c.m().a(this);
        try {
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new f(this.f37163f, this.f37181x));
        } catch (Throwable th2) {
            o0.b("MBRewardVideoActivity", th2.getMessage());
        }
        MBTempContainer mBTempContainer2 = this.f37183z;
        if (mBTempContainer2 != null) {
            mBTempContainer2.onResume();
        }
        MBridgeBTContainer mBridgeBTContainer = this.A;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onResume();
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean(SAVE_STATE_KEY_REPORT, this.f37178u);
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected void onStart() {
        String str;
        super.onStart();
        if (TextUtils.isEmpty(this.V)) {
            str = TmcConstants.NAVIGATION_ON_START;
        } else {
            str = this.V + "_onStart";
        }
        this.V = str;
        if (com.mbridge.msdk.foundation.feedback.b.f35289f) {
            return;
        }
        new d();
        MBTempContainer mBTempContainer = this.f37183z;
        if (mBTempContainer != null) {
            mBTempContainer.onStart();
            this.f37180w.setCampaignUnitId(this.f37163f);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.f37163f + "_1", this.f37180w);
        }
        MBridgeBTContainer mBridgeBTContainer = this.A;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onStart();
            List<CampaignEx> list = this.f37182y;
            if (list != null && list.size() > 0) {
                CampaignEx campaignEx = this.f37182y.get(0);
                campaignEx.setCampaignUnitId(this.f37163f);
                com.mbridge.msdk.foundation.feedback.b.b().a(this.f37163f + "_1", campaignEx);
            }
        }
        if (this.F) {
            return;
        }
        com.mbridge.msdk.foundation.feedback.b.b().a(this.f37163f + "_1", 1);
        com.mbridge.msdk.foundation.feedback.b.b().d(this.f37163f + "_2");
        this.F = true;
    }

    @Override // android.app.Activity
    protected void onStop() {
        String str;
        if (TextUtils.isEmpty(this.V)) {
            str = "onStop";
        } else {
            str = this.V + "_onStop";
        }
        this.V = str;
        MBridgeConstans.isRewardActivityShowing = false;
        super.onStop();
        MBTempContainer mBTempContainer = this.f37183z;
        if (mBTempContainer != null) {
            mBTempContainer.onStop();
        }
        MBridgeBTContainer mBridgeBTContainer = this.A;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onStop();
        }
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i11) {
        super.setTheme(g0.a(this, "mbridge_transparent_theme", TtmlNode.TAG_STYLE));
    }

    @Override // com.mbridge.msdk.activity.MBBaseActivity
    public void setTopControllerPadding(int i11, int i12, int i13, int i14, int i15) {
        this.I = i12;
        this.K = i13;
        this.J = i14;
        this.L = i15;
        this.M = i11;
        MBTempContainer mBTempContainer = this.f37183z;
        if (mBTempContainer != null) {
            mBTempContainer.setNotchPadding(i11, i12, i13, i14, i15);
        }
        MBridgeBTContainer mBridgeBTContainer = this.A;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.setNotchPadding(i11, i12, i13, i14, i15);
        }
        com.mbridge.msdk.video.dynview.constant.a.a(i11, i12, i13, i14, i15);
    }
}
