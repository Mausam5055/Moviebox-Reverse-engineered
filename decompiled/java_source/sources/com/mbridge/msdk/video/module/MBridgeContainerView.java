package com.mbridge.msdk.video.module;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.m;
import com.mbridge.msdk.foundation.same.report.g;
import com.mbridge.msdk.foundation.same.report.metrics.e;
import com.mbridge.msdk.foundation.tools.b0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.video.dynview.widget.MBridgeOrderCampView;
import com.mbridge.msdk.video.module.listener.impl.i;
import com.mbridge.msdk.video.module.listener.impl.k;
import com.mbridge.msdk.video.module.listener.impl.l;
import com.mbridge.msdk.video.signal.f;
import com.mbridge.msdk.video.signal.h;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class MBridgeContainerView extends MBridgeBaseView implements f, h {
    private int A;
    private boolean B;
    private boolean C;
    private boolean D;
    private boolean E;
    private boolean F;
    private boolean G;
    private int H;
    private boolean I;
    private boolean J;
    private int K;
    private int L;
    private int M;
    private int N;
    private int O;
    private String P;
    private com.mbridge.msdk.video.signal.factory.b Q;
    private boolean R;
    private boolean S;
    private List<CampaignEx> T;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private MBridgePlayableView f39253m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private MBridgeClickCTAView f39254n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private MBridgeClickMiniCardView f39255o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private MBridgeNativeEndCardView f39256p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private MBridgeH5EndCardView f39257q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private MBridgeVastEndCardView f39258r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private MBridgeLandingPageView f39259s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private MBridgeVideoEndCoverView f39260t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private MBridgeAlertWebview f39261u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private MBridgeOrderCampView f39262v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private String f39263w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f39264x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f39265y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f39266z;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.video.signal.factory.b f39267a;

        a(com.mbridge.msdk.video.signal.factory.b bVar) {
            this.f39267a = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            MBridgeContainerView mBridgeContainerView = MBridgeContainerView.this;
            mBridgeContainerView.a(this.f39267a, Integer.valueOf(mBridgeContainerView.f39226b.getVideo_end_type()));
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.video.signal.factory.b f39269a;

        b(com.mbridge.msdk.video.signal.factory.b bVar) {
            this.f39269a = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            MBridgeContainerView mBridgeContainerView = MBridgeContainerView.this;
            mBridgeContainerView.a(this.f39269a, Integer.valueOf(mBridgeContainerView.f39226b.getVideo_end_type()));
        }
    }

    class c implements com.mbridge.msdk.video.dynview.listener.b {
        c() {
        }

        @Override // com.mbridge.msdk.video.dynview.listener.b
        public void a() {
            com.mbridge.msdk.video.module.listener.a aVar = MBridgeContainerView.this.notifyListener;
            if (aVar != null) {
                aVar.a(Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE, "");
            }
        }

        @Override // com.mbridge.msdk.video.dynview.listener.b
        public void b() {
            if (MBridgeContainerView.this.f39226b.getAdSpaceT() == 2) {
                MBridgeContainerView.this.showVideoEndCover();
            } else {
                MBridgeContainerView mBridgeContainerView = MBridgeContainerView.this;
                mBridgeContainerView.showEndcard(mBridgeContainerView.f39226b.getVideo_end_type());
            }
        }
    }

    class d extends i {
        d(com.mbridge.msdk.video.module.listener.a aVar) {
            super(aVar);
        }

        @Override // com.mbridge.msdk.video.module.listener.impl.i, com.mbridge.msdk.video.module.listener.impl.f, com.mbridge.msdk.video.module.listener.a
        public void a(int i11, Object obj) {
            super.a(i11, obj);
            if (i11 == 100) {
                MBridgeContainerView.this.webviewshow();
                MBridgeContainerView mBridgeContainerView = MBridgeContainerView.this;
                mBridgeContainerView.onConfigurationChanged(mBridgeContainerView.getResources().getConfiguration());
                m mVar = new m();
                mVar.n(MBridgeContainerView.this.f39226b.getRequestId());
                mVar.o(MBridgeContainerView.this.f39226b.getRequestIdNotice());
                mVar.b(MBridgeContainerView.this.f39226b.getId());
                mVar.b(MBridgeContainerView.this.f39226b.isMraid() ? m.N : m.O);
                MBridgeContainerView mBridgeContainerView2 = MBridgeContainerView.this;
                g.d(mVar, mBridgeContainerView2.f39225a, mBridgeContainerView2.f39263w);
            }
        }
    }

    public MBridgeContainerView(Context context) {
        super(context);
        this.f39265y = 1;
        this.f39266z = 1;
        this.A = 1;
        this.B = false;
        this.C = false;
        this.D = false;
        this.E = true;
        this.F = false;
        this.G = false;
        this.I = false;
        this.J = false;
        this.R = false;
        this.S = false;
        this.T = new ArrayList();
    }

    public MBridgeContainerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f39265y = 1;
        this.f39266z = 1;
        this.A = 1;
        this.B = false;
        this.C = false;
        this.D = false;
        this.E = true;
        this.F = false;
        this.G = false;
        this.I = false;
        this.J = false;
        this.R = false;
        this.S = false;
        this.T = new ArrayList();
    }

    private void a(Configuration configuration, MBridgeBaseView... mBridgeBaseViewArr) {
        for (MBridgeBaseView mBridgeBaseView : mBridgeBaseViewArr) {
            if (mBridgeBaseView != null && (mBridgeBaseView instanceof MBridgeClickMiniCardView)) {
                mBridgeBaseView.onSelfConfigurationChanged(configuration);
            } else if (mBridgeBaseView != null && mBridgeBaseView.getVisibility() == 0 && mBridgeBaseView.getParent() != null && !isLast()) {
                mBridgeBaseView.onSelfConfigurationChanged(configuration);
            }
        }
    }

    private void a(View view) {
        if (view != null) {
            try {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(view);
                }
            } catch (Throwable th2) {
                o0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
            }
        }
    }

    private void a(com.mbridge.msdk.video.module.listener.a aVar, MBridgeBaseView... mBridgeBaseViewArr) {
        for (MBridgeBaseView mBridgeBaseView : mBridgeBaseViewArr) {
            if (mBridgeBaseView != null) {
                if (mBridgeBaseView instanceof MBridgeClickMiniCardView) {
                    mBridgeBaseView.setNotifyListener(new com.mbridge.msdk.video.module.listener.impl.g(this.f39255o, aVar));
                } else {
                    mBridgeBaseView.setNotifyListener(new i(aVar));
                }
            }
        }
    }

    private void a(com.mbridge.msdk.video.signal.factory.b bVar) {
        if (this.f39253m == null) {
            this.f39253m = new MBridgePlayableView(this.f39225a);
        }
        this.f39253m.setCloseDelayShowTime(this.f39266z);
        this.f39253m.setPlayCloseBtnTm(this.A);
        this.f39253m.setCampaign(this.f39226b);
        this.f39253m.setNotifyListener(new d(this.notifyListener));
        this.f39253m.preLoadData(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.mbridge.msdk.video.signal.factory.b bVar, Integer num) {
        CampaignEx campaignEx;
        com.mbridge.msdk.video.module.listener.a aVar;
        CampaignEx campaignEx2;
        this.Q = bVar;
        CampaignEx campaignEx3 = this.f39226b;
        if (campaignEx3 != null) {
            if (num == null) {
                num = Integer.valueOf(campaignEx3.getVideo_end_type());
            }
            if (!isLast()) {
                o();
            }
            int iIntValue = num.intValue();
            if (iIntValue != 1) {
                if (iIntValue == 3) {
                    if (this.f39258r == null) {
                        this.f39258r = new MBridgeVastEndCardView(this.f39225a);
                    }
                    this.f39258r.setCampaign(this.f39226b);
                    this.f39258r.setNotifyListener(new l(this.notifyListener));
                    this.f39258r.preLoadData(bVar);
                    return;
                }
                if (iIntValue == 4) {
                    if (this.f39259s == null) {
                        this.f39259s = new MBridgeLandingPageView(this.f39225a);
                    }
                    this.f39259s.setCampaign(this.f39226b);
                    this.f39259s.setNotifyListener(new i(this.notifyListener));
                    return;
                }
                if (iIntValue != 5) {
                    if (this.f39265y == 2) {
                        boolean zIsDynamicView = this.f39226b.isDynamicView();
                        boolean zL = t0.l(this.f39226b.getendcard_url());
                        if ((zIsDynamicView && !zL && (campaignEx2 = this.f39226b) != null && !campaignEx2.isMraid()) || (campaignEx = this.f39226b) == null || campaignEx.getAdSpaceT() == 2) {
                            return;
                        }
                        if (this.f39257q == null) {
                            this.f39257q = new MBridgeH5EndCardView(this.f39225a);
                            try {
                                e eVar = new e();
                                eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 3);
                                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000154", this.f39226b, eVar);
                            } catch (Throwable th2) {
                                o0.b(MBridgeBaseView.TAG, th2.getMessage());
                            }
                        }
                        if (this.f39226b.getDynamicTempCode() == 5 && (aVar = this.notifyListener) != null && (aVar instanceof k)) {
                            ((k) aVar).a(this.f39226b);
                        }
                        this.f39257q.setCampaign(this.f39226b);
                        this.f39257q.setCloseDelayShowTime(this.f39266z);
                        this.f39257q.setNotifyListener(new i(this.notifyListener));
                        this.f39257q.setUnitId(this.f39263w);
                        this.f39257q.setNotchValue(this.P, this.K, this.L, this.M, this.N);
                        this.f39257q.preLoadData(bVar);
                        if (this.D) {
                            return;
                        }
                        addView(this.f39257q);
                        return;
                    }
                    CampaignEx campaignEx4 = this.f39226b;
                    int iB = (campaignEx4 == null || campaignEx4.getRewardTemplateMode() == null) ? 0 : this.f39226b.getRewardTemplateMode().b();
                    if (this.f39256p == null) {
                        CampaignEx campaignEx5 = this.f39226b;
                        if (campaignEx5 == null || !campaignEx5.isDynamicView()) {
                            Context context = this.f39225a;
                            CampaignEx campaignEx6 = this.f39226b;
                            boolean z10 = campaignEx6 != null && campaignEx6.getAdSpaceT() == 2;
                            CampaignEx campaignEx7 = this.f39226b;
                            MBridgeNativeEndCardView mBridgeNativeEndCardView = new MBridgeNativeEndCardView(context, null, false, -1, z10, iB, campaignEx7 != null ? campaignEx7.getMof_tplid() : 0);
                            this.f39256p = mBridgeNativeEndCardView;
                            mBridgeNativeEndCardView.setCampaign(this.f39226b);
                        } else {
                            p();
                        }
                    }
                    this.f39256p.setLayout();
                    if (this.f39226b.isDynamicView()) {
                        if (com.mbridge.msdk.video.dynview.moffer.a.a().b(this.f39226b.getRequestId() + "_" + this.f39226b.getId())) {
                            try {
                                com.mbridge.msdk.video.dynview.moffer.a.a().a(this.f39256p, this.f39226b.getRequestId() + "_" + this.f39226b.getId(), new i(this.notifyListener));
                            } catch (Exception e11) {
                                o0.b(MBridgeBaseView.TAG, e11.getMessage());
                            }
                        } else {
                            try {
                                String strA = z0.a(this.f39226b.getendcard_url(), "mof");
                                if (!TextUtils.isEmpty(strA) && Integer.parseInt(strA) == 1) {
                                    com.mbridge.msdk.video.dynview.moffer.a.a().a(this.f39226b, this.f39256p, new i(this.notifyListener), 2);
                                }
                            } catch (Exception e12) {
                                o0.b(MBridgeBaseView.TAG, e12.getMessage());
                            }
                        }
                    }
                    this.f39256p.setUnitId(this.f39263w);
                    this.f39256p.setCloseBtnDelay(this.f39266z);
                    this.f39256p.setNotifyListener(new i(this.notifyListener));
                    this.f39256p.preLoadData(bVar);
                    this.f39256p.setNotchPadding(this.K, this.L, this.M, this.N);
                }
            }
        }
    }

    private void a(MBridgeH5EndCardView... mBridgeH5EndCardViewArr) {
        for (MBridgeH5EndCardView mBridgeH5EndCardView : mBridgeH5EndCardViewArr) {
            if (mBridgeH5EndCardView != null && mBridgeH5EndCardView.getVisibility() == 0) {
                mBridgeH5EndCardView.orientation(getResources().getConfiguration());
            }
        }
    }

    private void addCTAView() {
        if (this.f39254n == null) {
            b(-1);
        }
        if (this.f39254n != null) {
            CampaignEx campaignEx = this.f39226b;
            if (campaignEx == null || !campaignEx.isDynamicView()) {
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams.addRule(12, -1);
                addView(this.f39254n, 0, layoutParams);
            }
        }
    }

    private void b(int i11) {
        if (i11 != -3) {
            if (i11 != -2) {
                if (this.f39254n == null) {
                    this.f39254n = new MBridgeClickCTAView(this.f39225a);
                }
                this.f39254n.setCampaign(this.f39226b);
                this.f39254n.setUnitId(this.f39263w);
                this.f39254n.setNotifyListener(new i(this.notifyListener));
                this.f39254n.preLoadData(this.Q);
                return;
            }
            CampaignEx campaignEx = this.f39226b;
            if (campaignEx == null || campaignEx.getVideo_end_type() != 2) {
                return;
            }
            if (this.f39255o == null) {
                this.f39255o = new MBridgeClickMiniCardView(this.f39225a);
            }
            this.f39255o.setCampaign(this.f39226b);
            MBridgeClickMiniCardView mBridgeClickMiniCardView = this.f39255o;
            mBridgeClickMiniCardView.setNotifyListener(new com.mbridge.msdk.video.module.listener.impl.g(mBridgeClickMiniCardView, this.notifyListener));
            this.f39255o.preLoadData(this.Q);
            setMatchParent();
            i();
            o();
        }
    }

    private void b(com.mbridge.msdk.video.signal.factory.b bVar) {
        this.Q = bVar;
        if (this.f39260t == null) {
            MBridgeVideoEndCoverView mBridgeVideoEndCoverView = new MBridgeVideoEndCoverView(this.f39225a);
            this.f39260t = mBridgeVideoEndCoverView;
            mBridgeVideoEndCoverView.setCampaign(this.f39226b);
            this.f39260t.setNotifyListener(new i(this.notifyListener));
            this.f39260t.preLoadData(bVar);
        }
    }

    private void b(MBridgeH5EndCardView... mBridgeH5EndCardViewArr) {
        for (MBridgeH5EndCardView mBridgeH5EndCardView : mBridgeH5EndCardViewArr) {
            if (mBridgeH5EndCardView != null && mBridgeH5EndCardView.getVisibility() == 0 && mBridgeH5EndCardView.getParent() != null && !isLast()) {
                mBridgeH5EndCardView.webviewshow();
            }
        }
    }

    private void e() {
        if (this.f39261u == null) {
            q();
        }
        MBridgeAlertWebview mBridgeAlertWebview = this.f39261u;
        if (mBridgeAlertWebview != null && mBridgeAlertWebview.getParent() != null) {
            removeView(this.f39261u);
        }
        addView(this.f39261u);
    }

    private void f() {
        CampaignEx campaignEx = this.f39226b;
        if (campaignEx != null) {
            boolean zIsDynamicView = campaignEx.isDynamicView();
            boolean zL = t0.l(this.f39226b.getendcard_url());
            if (zIsDynamicView && !zL && !this.f39226b.isMraid()) {
                j();
                return;
            }
        }
        if (this.f39265y != 2 || this.I) {
            j();
        } else {
            g();
        }
    }

    private void g() {
        if (this.f39257q == null) {
            a(this.Q, (Integer) 2);
        }
        MBridgeH5EndCardView mBridgeH5EndCardView = this.f39257q;
        if (mBridgeH5EndCardView == null || !mBridgeH5EndCardView.isLoadSuccess()) {
            j();
            MBridgeH5EndCardView mBridgeH5EndCardView2 = this.f39257q;
            if (mBridgeH5EndCardView2 != null) {
                mBridgeH5EndCardView2.reportRenderResult("timeout", 3);
                this.f39257q.setError(true);
            }
        } else {
            this.I = true;
            addView(this.f39257q);
            webviewshow();
            onConfigurationChanged(getResources().getConfiguration());
            this.f39257q.excuteTask();
            this.f39257q.setNotchValue(this.P, this.K, this.L, this.M, this.N);
            m mVar = new m();
            mVar.n(this.f39226b.getRequestId());
            mVar.o(this.f39226b.getRequestIdNotice());
            mVar.b(this.f39226b.getId());
            mVar.b(this.f39226b.isMraid() ? m.N : m.O);
            g.d(mVar, this.f39225a, this.f39263w);
        }
        MBridgeH5EndCardView mBridgeH5EndCardView3 = this.f39257q;
        if (mBridgeH5EndCardView3 != null) {
            mBridgeH5EndCardView3.setUnitId(this.f39263w);
        }
    }

    private void h() {
        if (this.f39259s == null) {
            a(this.Q, (Integer) 4);
        }
        this.f39259s.setUnitId(this.f39263w);
        this.f39259s.preLoadData(this.Q);
        addView(this.f39259s);
    }

    private void i() {
        if (this.f39255o == null) {
            b(-2);
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13, -1);
        if (this.D && this.E) {
            this.E = false;
            layoutParams.width = 1;
            layoutParams.height = 1;
        }
        addView(this.f39255o, layoutParams);
    }

    private void j() {
        this.f39265y = 1;
        if (this.f39256p == null) {
            a(this.Q, (Integer) 2);
        }
        addView(this.f39256p);
        onConfigurationChanged(getResources().getConfiguration());
        this.f39256p.notifyShowListener();
        this.S = true;
        bringToFront();
    }

    private void k() {
        if (this.f39253m == null) {
            preLoadData(this.Q);
        }
        addView(this.f39253m);
        MBridgePlayableView mBridgePlayableView = this.f39253m;
        if (mBridgePlayableView != null) {
            mBridgePlayableView.setUnitId(this.f39263w);
            CampaignEx campaignEx = this.f39226b;
            if (campaignEx != null && campaignEx.isMraid() && this.f39226b.getPlayable_ads_without_video() == 2) {
                this.f39253m.setCloseVisible(0);
            }
            this.f39253m.setNotchValue(this.P, this.K, this.L, this.M, this.N);
        }
    }

    private void l() {
        if (this.f39258r == null) {
            a(this.Q, (Integer) 3);
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13, -1);
        addView(this.f39258r, layoutParams);
        this.f39258r.notifyShowListener();
    }

    private void m() {
        if (this.f39260t == null) {
            b(this.Q);
        }
        addView(this.f39260t);
        onConfigurationChanged(getResources().getConfiguration());
        this.S = true;
        bringToFront();
    }

    private boolean n() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        return viewGroup.indexOfChild(this) == viewGroup.getChildCount() - 1;
    }

    private void o() {
        this.C = false;
        this.S = false;
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup != null) {
            int i11 = 0;
            for (int i12 = 0; i12 < viewGroup.getChildCount(); i12++) {
                View childAt = viewGroup.getChildAt(i11);
                if (childAt instanceof MBridgeContainerView) {
                    i11++;
                } else {
                    viewGroup.bringChildToFront(childAt);
                }
            }
        }
    }

    private void p() {
        CampaignEx campaignEx = this.f39226b;
        if (campaignEx == null) {
            return;
        }
        String str = campaignEx.getendcard_url();
        boolean zIsEmpty = TextUtils.isEmpty(str);
        int i11 = TTAdConstant.DEEPLINK_FALLBACK_CODE;
        if (!zIsEmpty) {
            try {
                i11 = Integer.parseInt(z0.a(str, "ecid"));
            } catch (Throwable th2) {
                o0.b(MBridgeBaseView.TAG, th2.getMessage());
            }
        }
        this.f39256p = new MBridgeNativeEndCardView(this.f39225a, null, true, i11, this.f39226b.getAdSpaceT() == 2, this.f39235k, this.f39226b.getMof_tplid());
        if (this.f39226b.getDynamicTempCode() != 5) {
            this.f39256p.setCampaign(this.f39226b);
            return;
        }
        com.mbridge.msdk.video.module.listener.a aVar = this.notifyListener;
        if (aVar != null && (aVar instanceof k)) {
            ((k) aVar).a(this.f39226b);
        }
        this.f39256p.setCampaign(this.f39226b);
    }

    private void q() {
        if (this.f39261u == null) {
            MBridgeAlertWebview mBridgeAlertWebview = new MBridgeAlertWebview(this.f39225a);
            this.f39261u = mBridgeAlertWebview;
            mBridgeAlertWebview.setUnitId(this.f39263w);
            this.f39261u.setCampaign(this.f39226b);
        }
        this.f39261u.preLoadData(this.Q);
    }

    private void r() {
        setWrapContent();
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            ((RelativeLayout.LayoutParams) layoutParams).addRule(12, -1);
        }
    }

    public void addOrderViewData(List<CampaignEx> list) {
        if (list == null) {
            return;
        }
        this.T = list;
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        if (view == null) {
            o0.b(MBridgeBaseView.TAG, "view is null");
        } else {
            a(view);
            super.addView(view);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (view == null) {
            o0.b(MBridgeBaseView.TAG, "view is null");
        } else {
            a(view);
            super.addView(view, layoutParams);
        }
    }

    public boolean canBackPress() {
        if (this.f39256p != null) {
            return false;
        }
        MBridgeH5EndCardView mBridgeH5EndCardView = this.f39257q;
        if (mBridgeH5EndCardView != null) {
            return mBridgeH5EndCardView.canBackPress();
        }
        MBridgeLandingPageView mBridgeLandingPageView = this.f39259s;
        if (mBridgeLandingPageView != null) {
            return mBridgeLandingPageView.canBackPress();
        }
        MBridgePlayableView mBridgePlayableView = this.f39253m;
        if (mBridgePlayableView != null) {
            return mBridgePlayableView.canBackPress();
        }
        return false;
    }

    @Override // com.mbridge.msdk.video.signal.f
    public void configurationChanged(int i11, int i12, int i13) {
        MBridgeClickMiniCardView mBridgeClickMiniCardView = this.f39255o;
        if (mBridgeClickMiniCardView == null || mBridgeClickMiniCardView.getVisibility() != 0) {
            return;
        }
        this.f39255o.resizeMiniCard(i11, i12);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void defaultShow() {
        super.defaultShow();
    }

    @Override // com.mbridge.msdk.video.signal.f
    public boolean endCardShowing() {
        return this.B;
    }

    public boolean endcardIsPlayable() {
        MBridgeH5EndCardView mBridgeH5EndCardView = this.f39257q;
        return mBridgeH5EndCardView != null && mBridgeH5EndCardView.isPlayable();
    }

    public MBridgeH5EndCardView getH5EndCardView() {
        MBridgeH5EndCardView mBridgeH5EndCardView = this.f39257q;
        return mBridgeH5EndCardView == null ? this.f39253m : mBridgeH5EndCardView;
    }

    public CampaignEx getReSetCampaign() {
        if (!this.f39226b.isDynamicView() || !TextUtils.isEmpty(this.f39226b.getendcard_url())) {
            return null;
        }
        int size = this.T.size();
        int i11 = 0;
        for (int i12 = 0; i12 < size; i12++) {
            if (this.T.get(i12) != null && this.T.get(i12).getId() == this.f39226b.getId()) {
                i11 = i12 - 1;
                break;
            }
        }
        if (i11 < 0 || i11 >= size || this.T.get(i11) == null) {
            return null;
        }
        return this.T.get(i11);
    }

    public boolean getShowingTransparent() {
        return this.D;
    }

    public String getUnitID() {
        return this.f39263w;
    }

    public int getVideoInteractiveType() {
        return this.f39264x;
    }

    public int getVideoSkipTime() {
        return this.H;
    }

    public void handlerPlayableException(String str) {
        MBridgeH5EndCardView mBridgeH5EndCardView = this.f39257q;
        if (mBridgeH5EndCardView == null) {
            f();
            return;
        }
        mBridgeH5EndCardView.handlerPlayableException(str);
        if (this.I) {
            f();
        }
    }

    @Override // com.mbridge.msdk.video.signal.f
    public void hideAlertWebview() {
        if (isLast()) {
            return;
        }
        if (this.R && !this.S) {
            o();
            this.R = false;
        }
        MBridgeAlertWebview mBridgeAlertWebview = this.f39261u;
        if (mBridgeAlertWebview == null || mBridgeAlertWebview.getParent() == null) {
            return;
        }
        removeView(this.f39261u);
        MBridgeClickCTAView mBridgeClickCTAView = this.f39254n;
        if (mBridgeClickCTAView == null || mBridgeClickCTAView.getParent() == null) {
            return;
        }
        r();
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void init(Context context) {
        setVisibility(0);
    }

    public void install(CampaignEx campaignEx) {
        this.notifyListener.a(105, campaignEx);
    }

    public boolean isLast() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        return viewGroup != null && viewGroup.indexOfChild(this) == 0;
    }

    @Override // com.mbridge.msdk.video.signal.f
    public void ivRewardAdsWithoutVideo(String str) {
        this.notifyListener.a(103, str);
    }

    public boolean miniCardLoaded() {
        MBridgeClickMiniCardView mBridgeClickMiniCardView = this.f39255o;
        return mBridgeClickMiniCardView != null && mBridgeClickMiniCardView.isLoadSuccess();
    }

    @Override // com.mbridge.msdk.video.signal.f
    public boolean miniCardShowing() {
        return this.C;
    }

    @Override // com.mbridge.msdk.video.signal.h
    public void notifyCloseBtn(int i11) {
        MBridgePlayableView mBridgePlayableView = this.f39253m;
        if (mBridgePlayableView != null) {
            mBridgePlayableView.notifyCloseBtn(i11);
        }
        MBridgeH5EndCardView mBridgeH5EndCardView = this.f39257q;
        if (mBridgeH5EndCardView != null) {
            mBridgeH5EndCardView.notifyCloseBtn(i11);
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        a(configuration, this.f39253m, this.f39254n, this.f39255o, this.f39256p, this.f39257q, this.f39258r, this.f39259s, this.f39260t);
    }

    public void onEndcardBackPress() {
        if (this.f39256p != null || this.f39258r != null) {
            this.notifyListener.a(104, "");
            try {
                com.mbridge.msdk.video.dynview.moffer.a.a().b();
                return;
            } catch (Exception e11) {
                o0.b(MBridgeBaseView.TAG, e11.getMessage());
                return;
            }
        }
        if (this.f39259s != null) {
            this.notifyListener.a(103, "");
            return;
        }
        MBridgeH5EndCardView mBridgeH5EndCardView = this.f39257q;
        if (mBridgeH5EndCardView != null) {
            mBridgeH5EndCardView.onBackPress();
        }
    }

    public void onMiniEndcardBackPress() {
        if (this.C) {
            this.notifyListener.a(107, "");
        }
    }

    public void onPlayableBackPress() {
        MBridgePlayableView mBridgePlayableView = this.f39253m;
        if (mBridgePlayableView != null) {
            mBridgePlayableView.onBackPress();
        }
    }

    public void orientation(Configuration configuration) {
        a(this.f39253m, this.f39255o, this.f39257q, this.f39261u);
    }

    public void preLoadData(com.mbridge.msdk.video.signal.factory.b bVar) {
        this.Q = bVar;
        CampaignEx campaignEx = this.f39226b;
        if (campaignEx != null) {
            if (campaignEx.getPlayable_ads_without_video() == 2) {
                a(bVar);
            } else {
                b(this.f39264x);
                if (this.f39226b.isDynamicView()) {
                    try {
                        a(bVar, Integer.valueOf(this.f39226b.getVideo_end_type()));
                    } catch (Throwable th2) {
                        o0.b(MBridgeBaseView.TAG, th2.getMessage());
                        new Handler(Looper.getMainLooper()).postAtFrontOfQueue(new a(bVar));
                    }
                    if (!t0.l(this.f39226b.getendcard_url())) {
                        try {
                            String strA = z0.a(this.f39226b.getendcard_url(), "mof");
                            if (!TextUtils.isEmpty(strA) && Integer.parseInt(strA) == 1) {
                                com.mbridge.msdk.video.dynview.moffer.a.a().a(this.f39226b, 2);
                            }
                        } catch (Exception e11) {
                            o0.b(MBridgeBaseView.TAG, e11.getMessage());
                        }
                    }
                } else {
                    new Handler(Looper.getMainLooper()).postDelayed(new b(bVar), getVideoSkipTime());
                }
            }
            q();
        }
    }

    @Override // com.mbridge.msdk.video.signal.f
    public void readyStatus(int i11) {
        MBridgeH5EndCardView mBridgeH5EndCardView = this.f39257q;
        if (mBridgeH5EndCardView != null) {
            mBridgeH5EndCardView.readyStatus(i11);
        }
    }

    public void release() {
        MBridgeH5EndCardView mBridgeH5EndCardView = this.f39257q;
        if (mBridgeH5EndCardView != null) {
            mBridgeH5EndCardView.release();
            this.f39257q = null;
        }
        MBridgePlayableView mBridgePlayableView = this.f39253m;
        if (mBridgePlayableView != null) {
            mBridgePlayableView.release();
        }
        MBridgeLandingPageView mBridgeLandingPageView = this.f39259s;
        if (mBridgeLandingPageView != null) {
            mBridgeLandingPageView.release();
        }
        MBridgeNativeEndCardView mBridgeNativeEndCardView = this.f39256p;
        if (mBridgeNativeEndCardView != null) {
            mBridgeNativeEndCardView.clearMoreOfferBitmap();
            this.f39256p.release();
        }
        if (this.notifyListener != null) {
            this.notifyListener = null;
        }
    }

    @Override // com.mbridge.msdk.video.signal.f
    public void resizeMiniCard(int i11, int i12, int i13) {
        MBridgeClickMiniCardView mBridgeClickMiniCardView = this.f39255o;
        if (mBridgeClickMiniCardView != null) {
            mBridgeClickMiniCardView.resizeMiniCard(i11, i12);
            this.f39255o.setRadius(i13);
            removeAllViews();
            setMatchParent();
            this.S = true;
            bringToFront();
            i();
        }
    }

    public void setCloseDelayTime(int i11) {
        this.f39266z = i11;
    }

    public void setEndscreenType(int i11) {
        this.f39265y = i11;
    }

    public void setJSFactory(com.mbridge.msdk.video.signal.factory.b bVar) {
        this.Q = bVar;
    }

    public void setMBridgeClickMiniCardViewTransparent() {
        MBridgeClickMiniCardView mBridgeClickMiniCardView = this.f39255o;
        if (mBridgeClickMiniCardView != null) {
            mBridgeClickMiniCardView.setMBridgeClickMiniCardViewTransparent();
            this.f39255o.setMBridgeClickMiniCardViewClickable(false);
        }
    }

    public void setNotchPadding(int i11, int i12, int i13, int i14, int i15) {
        o0.b(MBridgeBaseView.TAG, "NOTCH ContainerView " + String.format("%1s-%2s-%3s-%4s-%5s", Integer.valueOf(i12), Integer.valueOf(i13), Integer.valueOf(i14), Integer.valueOf(i15), Integer.valueOf(i11)));
        this.O = i11;
        this.K = i12;
        this.L = i13;
        this.M = i14;
        this.N = i15;
        this.P = b0.a(i11, i12, i13, i14, i15);
        MBridgeNativeEndCardView mBridgeNativeEndCardView = this.f39256p;
        if (mBridgeNativeEndCardView != null) {
            mBridgeNativeEndCardView.setNotchPadding(i12, i13, i14, i15);
        }
        MBridgeH5EndCardView mBridgeH5EndCardView = this.f39257q;
        if (mBridgeH5EndCardView != null && mBridgeH5EndCardView.f39276p != null) {
            mBridgeH5EndCardView.setNotchValue(this.P, i12, i13, i14, i15);
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.f39257q.f39276p, "oncutoutfetched", Base64.encodeToString(this.P.getBytes(), 0));
        }
        MBridgePlayableView mBridgePlayableView = this.f39253m;
        if (mBridgePlayableView != null && mBridgePlayableView.f39276p != null) {
            mBridgePlayableView.setNotchValue(this.P, i12, i13, i14, i15);
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.f39253m.f39276p, "oncutoutfetched", Base64.encodeToString(this.P.getBytes(), 0));
        }
        MBridgeOrderCampView mBridgeOrderCampView = this.f39262v;
        if (mBridgeOrderCampView != null) {
            mBridgeOrderCampView.setNotchPadding(i12, i13, i14, i15);
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void setNotifyListener(com.mbridge.msdk.video.module.listener.a aVar) {
        super.setNotifyListener(aVar);
        a(aVar, this.f39253m, this.f39254n, this.f39255o, this.f39256p, this.f39257q, this.f39258r, this.f39259s, this.f39260t);
    }

    public void setOnPause() {
        MBridgeNativeEndCardView mBridgeNativeEndCardView = this.f39256p;
        if (mBridgeNativeEndCardView != null) {
            mBridgeNativeEndCardView.setOnPause();
        }
    }

    public void setOnResume() {
        MBridgeNativeEndCardView mBridgeNativeEndCardView = this.f39256p;
        if (mBridgeNativeEndCardView != null) {
            mBridgeNativeEndCardView.setOnResume();
        }
    }

    public void setPlayCloseBtnTm(int i11) {
        this.A = i11;
    }

    public void setRewardStatus(boolean z10) {
        this.J = z10;
    }

    public void setShowingTransparent(boolean z10) {
        this.D = z10;
    }

    public void setUnitID(String str) {
        this.f39263w = str;
    }

    public void setVideoInteractiveType(int i11) {
        CampaignEx campaignEx = this.f39226b;
        if (campaignEx == null || !campaignEx.isDynamicView()) {
            this.f39264x = i11;
            return;
        }
        int iB = com.mbridge.msdk.video.dynview.util.a.b(this.f39226b);
        if (iB == 100) {
            this.f39264x = i11;
        } else {
            this.f39264x = iB;
        }
    }

    public void setVideoSkipTime(int i11) {
        this.H = i11;
    }

    @Override // com.mbridge.msdk.video.signal.f
    public boolean showAlertWebView() {
        MBridgeAlertWebview mBridgeAlertWebview = this.f39261u;
        if (mBridgeAlertWebview == null || !mBridgeAlertWebview.isLoadSuccess()) {
            return false;
        }
        setMatchParent();
        if (!n() && !this.S) {
            removeAllViews();
            bringToFront();
            this.R = true;
        }
        MBridgeClickMiniCardView mBridgeClickMiniCardView = this.f39255o;
        if (mBridgeClickMiniCardView != null && mBridgeClickMiniCardView.getParent() != null) {
            return false;
        }
        e();
        setBackgroundColor(0);
        this.f39261u.webviewshow();
        return true;
    }

    @Override // com.mbridge.msdk.video.signal.f
    public void showEndcard(int i11) {
        CampaignEx campaignEx = this.f39226b;
        if (campaignEx != null) {
            if (i11 == 1) {
                this.notifyListener.a(104, "");
            } else if (i11 == 100) {
                if (campaignEx.getPlayable_ads_without_video() == 2) {
                    this.G = true;
                }
                a(this.f39253m);
                setMatchParent();
                j();
            } else if (i11 == 3) {
                removeAllViews();
                setMatchParent();
                l();
                this.S = true;
                bringToFront();
            } else if (i11 == 4) {
                this.notifyListener.a(113, "");
                removeAllViews();
                setMatchParent();
                h();
                this.S = true;
                bringToFront();
            } else if (i11 != 5) {
                removeAllViews();
                setMatchParent();
                this.S = true;
                bringToFront();
                f();
                this.notifyListener.a(Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE, "");
            } else {
                this.notifyListener.a(106, "");
            }
        }
        this.B = true;
    }

    @Override // com.mbridge.msdk.video.signal.f
    public void showMiniCard(int i11, int i12, int i13, int i14, int i15) {
        MBridgeClickMiniCardView mBridgeClickMiniCardView = this.f39255o;
        if (mBridgeClickMiniCardView != null) {
            mBridgeClickMiniCardView.setMiniCardLocation(i11, i12, i13, i14);
            this.f39255o.setRadius(i15);
            this.f39255o.setCloseVisible(8);
            this.f39255o.setClickable(false);
            removeAllViews();
            setMatchParent();
            this.S = true;
            bringToFront();
            i();
            if (this.F) {
                return;
            }
            this.F = true;
            this.notifyListener.a(109, "");
            this.notifyListener.a(Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE, "");
        }
    }

    public void showOrderCampView() {
        MBridgeOrderCampView mBridgeOrderCampView = new MBridgeOrderCampView(this.f39225a);
        this.f39262v = mBridgeOrderCampView;
        mBridgeOrderCampView.setCampaignExes(this.T);
        com.mbridge.msdk.video.module.listener.a aVar = this.notifyListener;
        if (aVar != null && (aVar instanceof k)) {
            ((k) aVar).a(this.T);
        }
        this.f39262v.setNotifyListener(new i(this.notifyListener));
        this.f39262v.setRewarded(this.J);
        this.f39262v.setNotchPadding(this.K, this.L, this.M, this.N);
        this.f39262v.setCampOrderViewBuildCallback(new c());
        this.f39262v.createView(this);
    }

    public void showPlayableView() {
        if (this.f39226b == null || this.G) {
            return;
        }
        removeAllViews();
        setMatchParent();
        k();
        this.S = true;
        bringToFront();
    }

    @Override // com.mbridge.msdk.video.signal.f
    public void showVideoClickView(int i11) {
        if (this.f39226b != null) {
            if (i11 == -1) {
                if (isLast() || endCardShowing()) {
                    return;
                }
                o();
                return;
            }
            if (i11 == 1) {
                if (this.B) {
                    return;
                }
                MBridgeH5EndCardView mBridgeH5EndCardView = this.f39257q;
                if (mBridgeH5EndCardView != null && mBridgeH5EndCardView.getParent() != null) {
                    removeView(this.f39257q);
                }
                MBridgeClickMiniCardView mBridgeClickMiniCardView = this.f39255o;
                if (mBridgeClickMiniCardView != null && mBridgeClickMiniCardView.getParent() != null) {
                    removeView(this.f39255o);
                }
                MBridgeClickCTAView mBridgeClickCTAView = this.f39254n;
                if (mBridgeClickCTAView == null || mBridgeClickCTAView.getParent() == null) {
                    try {
                        CampaignEx campaignEx = this.f39226b;
                        if (campaignEx != null && campaignEx.getPlayable_ads_without_video() == 1) {
                            this.S = true;
                            addCTAView();
                        }
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                }
                if (isLast()) {
                    bringToFront();
                    return;
                }
                return;
            }
            if (i11 != 2) {
                return;
            }
            MBridgeClickCTAView mBridgeClickCTAView2 = this.f39254n;
            if (mBridgeClickCTAView2 != null && mBridgeClickCTAView2.getParent() != null) {
                removeView(this.f39254n);
            }
            MBridgeAlertWebview mBridgeAlertWebview = this.f39261u;
            if (mBridgeAlertWebview == null || mBridgeAlertWebview.getParent() == null) {
                MBridgeClickMiniCardView mBridgeClickMiniCardView2 = this.f39255o;
                if (mBridgeClickMiniCardView2 == null || mBridgeClickMiniCardView2.getParent() == null) {
                    try {
                        CampaignEx campaignEx2 = this.f39226b;
                        if (campaignEx2 != null && campaignEx2.getPlayable_ads_without_video() == 1) {
                            setMatchParent();
                            i();
                        }
                    } catch (Exception e12) {
                        e12.printStackTrace();
                    }
                }
                if (!miniCardLoaded()) {
                    o();
                    return;
                }
                MBridgeH5EndCardView mBridgeH5EndCardView2 = this.f39257q;
                if (mBridgeH5EndCardView2 != null && mBridgeH5EndCardView2.getParent() != null) {
                    removeView(this.f39257q);
                }
                this.notifyListener.a(112, "");
                CampaignEx campaignEx3 = this.f39226b;
                if (campaignEx3 != null && !campaignEx3.isHasReportAdTrackPause()) {
                    this.f39226b.setHasReportAdTrackPause(true);
                    com.mbridge.msdk.video.module.report.b.c(this.f39225a, this.f39226b);
                }
                if (this.D) {
                    this.notifyListener.a(Sdk$SDKError.Reason.INVALID_INDEX_URL_VALUE, "");
                } else {
                    this.S = true;
                    bringToFront();
                    webviewshow();
                    onConfigurationChanged(getResources().getConfiguration());
                }
                this.C = true;
            }
        }
    }

    @Override // com.mbridge.msdk.video.signal.f
    public void showVideoEndCover() {
        removeAllViews();
        setMatchParent();
        m();
    }

    @Override // com.mbridge.msdk.video.signal.h
    public void toggleCloseBtn(int i11) {
        MBridgePlayableView mBridgePlayableView = this.f39253m;
        if (mBridgePlayableView != null) {
            mBridgePlayableView.toggleCloseBtn(i11);
        }
        MBridgeH5EndCardView mBridgeH5EndCardView = this.f39257q;
        if (mBridgeH5EndCardView != null) {
            mBridgeH5EndCardView.toggleCloseBtn(i11);
        }
    }

    public void triggerCloseBtn(String str) {
        try {
            e eVar = new e();
            eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 2);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000152", eVar);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000134", this.f39226b);
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                th2.printStackTrace();
            }
        }
        if (this.f39226b != null) {
            this.notifyListener.a(Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE, "");
            this.notifyListener.a(104, "");
        }
    }

    public void webviewshow() {
        try {
            e eVar = new e();
            eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 3);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000133", this.f39226b, eVar);
        } catch (Exception unused) {
        }
        b(this.f39253m, this.f39255o, this.f39257q, this.f39261u);
    }
}
