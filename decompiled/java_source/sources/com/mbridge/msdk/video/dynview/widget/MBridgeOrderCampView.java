package com.mbridge.msdk.video.dynview.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.j;
import com.mbridge.msdk.foundation.same.report.metrics.e;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.video.bt.module.orglistener.f;
import com.mbridge.msdk.video.dynview.listener.h;
import com.mbridge.msdk.video.module.MBridgeBaseView;
import com.mbridge.msdk.widget.FeedBackButton;
import java.util.HashMap;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class MBridgeOrderCampView extends MBridgeBaseView {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private MBridgeOrderCampView f39124m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private List<CampaignEx> f39125n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f39126o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f39127p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f39128q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f39129r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f39130s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private FeedBackButton f39131t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ImageView f39132u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f39133v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private com.mbridge.msdk.video.dynview.listener.c f39134w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private com.mbridge.msdk.video.dynview.listener.b f39135x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f39136y;

    class a implements com.mbridge.msdk.video.dynview.listener.c {
        a() {
        }

        @Override // com.mbridge.msdk.video.dynview.listener.c
        public void a(CampaignEx campaignEx, int i11) {
            if (campaignEx != null) {
                try {
                    MBridgeOrderCampView.this.setCampaign(campaignEx);
                    campaignEx.setClickTempSource(2);
                    campaignEx.setTriggerClickSource(2);
                    MBridgeOrderCampView.this.a(campaignEx, 0, i11);
                } catch (Exception e11) {
                    o0.b(MBridgeBaseView.TAG, e11.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.video.dynview.listener.c
        public void close() {
            MBridgeOrderCampView.this.g();
        }
    }

    class b implements h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup f39138a;

        b(ViewGroup viewGroup) {
            this.f39138a = viewGroup;
        }

        @Override // com.mbridge.msdk.video.dynview.listener.h
        public void a(com.mbridge.msdk.video.dynview.a aVar) {
            if (aVar != null) {
                try {
                    MBridgeOrderCampView.this.f39124m.addView(aVar.b());
                    MBridgeOrderCampView.this.f39133v = aVar.c();
                    this.f39138a.removeAllViews();
                    this.f39138a.addView(MBridgeOrderCampView.this.f39124m);
                    f.a(com.mbridge.msdk.foundation.controller.c.m().d(), (List<CampaignEx>) MBridgeOrderCampView.this.f39125n, ((CampaignEx) MBridgeOrderCampView.this.f39125n.get(0)).getCampaignUnitId());
                    MBridgeOrderCampView.this.setViewStatus();
                    if (MBridgeOrderCampView.this.f39135x != null) {
                        MBridgeOrderCampView.this.f39135x.a();
                    }
                } catch (Exception e11) {
                    o0.b(MBridgeBaseView.TAG, e11.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.video.dynview.listener.h
        public void a(com.mbridge.msdk.video.dynview.error.a aVar) {
            try {
                f.a(com.mbridge.msdk.foundation.controller.c.m().d(), (List<CampaignEx>) MBridgeOrderCampView.this.f39125n, ((CampaignEx) MBridgeOrderCampView.this.f39125n.get(0)).getCampaignUnitId(), aVar.c());
                if (MBridgeOrderCampView.this.f39135x != null) {
                    MBridgeOrderCampView.this.f39135x.b();
                }
            } catch (Exception e11) {
                o0.b(MBridgeBaseView.TAG, e11.getMessage());
            }
        }
    }

    class c implements com.mbridge.msdk.foundation.feedback.a {
        c() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f39141a;

        d(String str) {
            this.f39141a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.mbridge.msdk.click.c.e(((MBridgeBaseView) MBridgeOrderCampView.this).f39225a, this.f39141a);
        }
    }

    public MBridgeOrderCampView(Context context) {
        super(context);
        this.f39133v = false;
        this.f39134w = new a();
        this.f39136y = false;
    }

    public MBridgeOrderCampView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f39133v = false;
        this.f39134w = new a();
        this.f39136y = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(CampaignEx campaignEx, int i11, int i12) {
        JSONException e11;
        JSONObject jSONObject;
        if (campaignEx != null && campaignEx.isDynamicView()) {
            try {
                CampaignEx.c rewardTemplateMode = campaignEx.getRewardTemplateMode();
                String str = "";
                if (rewardTemplateMode != null) {
                    str = rewardTemplateMode.f() + "";
                }
                String str2 = str;
                j.a(com.mbridge.msdk.foundation.controller.c.m().d(), "order_view_click" + str2, campaignEx.getCampaignUnitId(), campaignEx.isBidCampaign(), campaignEx.getRequestId(), campaignEx.getRequestIdNotice(), campaignEx.getId(), str2);
            } catch (Exception e12) {
                o0.b(MBridgeBaseView.TAG, e12.getMessage());
            }
        }
        try {
            jSONObject = new JSONObject();
            try {
                jSONObject.put(com.mbridge.msdk.foundation.same.a.f35338j, a(i11));
                jSONObject.put("camp_position", i12);
            } catch (JSONException e13) {
                e11 = e13;
                e11.printStackTrace();
            }
        } catch (JSONException e14) {
            e11 = e14;
            jSONObject = null;
        }
        com.mbridge.msdk.video.module.listener.a aVar = this.notifyListener;
        if (aVar != null) {
            aVar.a(105, jSONObject);
        }
    }

    private void e() {
        List<CampaignEx> list = this.f39125n;
        if (list == null || list.get(0) == null) {
            FeedBackButton feedBackButton = this.f39131t;
            if (feedBackButton != null) {
                feedBackButton.setVisibility(8);
                return;
            }
            return;
        }
        this.f39130s = this.f39125n.get(0).getCampaignUnitId();
        this.f39226b = this.f39125n.get(0);
        com.mbridge.msdk.foundation.feedback.b.b().a(this.f39130s + "_2", this.f39226b);
        if (this.f39131t == null) {
            return;
        }
        if (!com.mbridge.msdk.foundation.feedback.b.b().a()) {
            this.f39131t.setVisibility(8);
            return;
        }
        com.mbridge.msdk.foundation.feedback.b.b().a(this.f39130s + "_2", new c());
        com.mbridge.msdk.foundation.feedback.b.b().a(this.f39130s + "_2", this.f39131t);
    }

    private void f() {
        if (this.f39132u == null) {
            return;
        }
        g gVarD = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        if (gVarD == null) {
            this.f39132u.setVisibility(8);
            return;
        }
        String strC = gVarD.c();
        if (TextUtils.isEmpty(strC)) {
            this.f39132u.setVisibility(8);
        }
        this.f39132u.setOnClickListener(new d(strC));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        try {
            e eVar = new e();
            eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 2);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000152", eVar);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000134", this.f39226b);
        } catch (Throwable th2) {
            o0.a(MBridgeBaseView.TAG, th2.getMessage());
        }
        try {
            com.mbridge.msdk.video.dynview.moffer.a.a().b();
        } catch (Exception e11) {
            o0.b(MBridgeBaseView.TAG, e11.getMessage());
        }
        com.mbridge.msdk.video.module.listener.a aVar = this.notifyListener;
        if (aVar != null) {
            aVar.a(104, "");
        }
    }

    public void createView(ViewGroup viewGroup) {
        if (this.f39125n == null) {
            com.mbridge.msdk.video.dynview.listener.b bVar = this.f39135x;
            if (bVar != null) {
                bVar.b();
                return;
            }
            return;
        }
        HashMap map = new HashMap();
        map.put("order_view_callback", this.f39134w);
        com.mbridge.msdk.video.dynview.b.a().a(new com.mbridge.msdk.video.dynview.wrapper.c().b(com.mbridge.msdk.foundation.controller.c.m().d(), this.f39125n), new b(viewGroup), map);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void init(Context context) {
        this.f39124m = this;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        JSONException e11;
        JSONObject jSONObject;
        super.onAttachedToWindow();
        if (this.f39125n == null) {
            return;
        }
        for (int i11 = 0; i11 < this.f39125n.size(); i11++) {
            try {
                jSONObject = new JSONObject();
                try {
                    jSONObject.put("camp_position", i11);
                } catch (JSONException e12) {
                    e11 = e12;
                    e11.printStackTrace();
                }
            } catch (JSONException e13) {
                e11 = e13;
                jSONObject = null;
            }
            com.mbridge.msdk.video.module.listener.a aVar = this.notifyListener;
            if (aVar != null) {
                aVar.a(110, jSONObject);
            }
        }
    }

    public void setCampOrderViewBuildCallback(com.mbridge.msdk.video.dynview.listener.b bVar) {
        this.f39135x = bVar;
    }

    public void setCampaignExes(List<CampaignEx> list) {
        this.f39125n = list;
    }

    public void setNotchPadding(int i11, int i12, int i13, int i14) {
        this.f39126o = i11;
        this.f39127p = i12;
        this.f39128q = i13;
        this.f39129r = i14;
        setViewStatus();
    }

    public void setRewarded(boolean z10) {
        this.f39136y = z10;
    }

    public void setViewStatus() {
        MBridgeOrderCampView mBridgeOrderCampView = this.f39124m;
        if (mBridgeOrderCampView == null || !this.f39136y) {
            return;
        }
        RelativeLayout relativeLayout = (RelativeLayout) mBridgeOrderCampView.findViewById(filterFindViewId(this.f39133v, "mbridge_native_order_camp_controller"));
        this.f39131t = (FeedBackButton) this.f39124m.findViewById(filterFindViewId(this.f39133v, "mbridge_native_order_camp_feed_btn"));
        this.f39132u = (ImageView) this.f39124m.findViewById(filterFindViewId(this.f39133v, "mbridge_iv_link"));
        if (relativeLayout != null) {
            relativeLayout.setPadding(this.f39126o, this.f39128q, this.f39127p, this.f39129r);
        }
        if (this.f39131t != null) {
            try {
                e();
            } catch (Exception e11) {
                o0.b(MBridgeBaseView.TAG, e11.getMessage());
            }
        }
        if (this.f39132u != null) {
            try {
                f();
            } catch (Exception e12) {
                o0.b(MBridgeBaseView.TAG, e12.getMessage());
            }
        }
    }

    public void startAlphaAnimation() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(500L);
        this.f39124m.startAnimation(alphaAnimation);
    }

    public void startTranslateAnimation() {
        TranslateAnimation translateAnimation = new TranslateAnimation(2, 1.0f, 2, 0.0f, 2, 0.0f, 2, 0.0f);
        translateAnimation.setDuration(500L);
        this.f39124m.startAnimation(translateAnimation);
    }
}
