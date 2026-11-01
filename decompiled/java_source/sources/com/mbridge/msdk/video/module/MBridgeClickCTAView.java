package com.mbridge.msdk.video.module;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.j;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.video.dynview.listener.h;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class MBridgeClickCTAView extends MBridgeClickCTAViewDiff {
    public f ctaClickCallBack;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ViewGroup f39237m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private ImageView f39238n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private TextView f39239o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private TextView f39240p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f39241q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f39242r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f39243s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f39244t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ObjectAnimator f39245u;

    class a implements h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup f39246a;

        a(ViewGroup viewGroup) {
            this.f39246a = viewGroup;
        }

        @Override // com.mbridge.msdk.video.dynview.listener.h
        public void a(com.mbridge.msdk.video.dynview.a aVar) {
            if (aVar != null) {
                this.f39246a.addView(aVar.b());
                MBridgeClickCTAView mBridgeClickCTAView = MBridgeClickCTAView.this;
                mBridgeClickCTAView.f39229e = mBridgeClickCTAView.h();
                MBridgeClickCTAView mBridgeClickCTAView2 = MBridgeClickCTAView.this;
                mBridgeClickCTAView2.f39240p = (TextView) mBridgeClickCTAView2.findViewById(mBridgeClickCTAView2.findID("mbridge_tv_desc"));
                MBridgeClickCTAView.this.d();
            }
        }

        @Override // com.mbridge.msdk.video.dynview.listener.h
        public void a(com.mbridge.msdk.video.dynview.error.a aVar) {
            o0.b(MBridgeBaseView.TAG, "errorMsg:" + aVar.c());
        }
    }

    class b extends com.mbridge.msdk.widget.a {
        b() {
        }

        @Override // com.mbridge.msdk.widget.a
        protected void a(View view) {
            MBridgeClickCTAView.this.getClass();
            MBridgeClickCTAView.this.e();
        }
    }

    class c extends com.mbridge.msdk.widget.a {
        c() {
        }

        @Override // com.mbridge.msdk.widget.a
        protected void a(View view) {
            MBridgeClickCTAView.this.getClass();
            MBridgeClickCTAView.this.e();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    class e extends com.mbridge.msdk.video.module.listener.impl.e {
        e(ImageView imageView, CampaignEx campaignEx, String str) {
            super(imageView, campaignEx, str);
        }

        @Override // com.mbridge.msdk.video.module.listener.impl.e, com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            super.onFailedLoad(str, str2);
            MBridgeClickCTAView.this.g();
        }
    }

    public interface f {
    }

    public MBridgeClickCTAView(Context context) {
        super(context);
    }

    public MBridgeClickCTAView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void a(ViewGroup viewGroup, CampaignEx campaignEx) {
        com.mbridge.msdk.video.dynview.b.a().a(new com.mbridge.msdk.video.dynview.wrapper.c().a(viewGroup, campaignEx), new a(viewGroup));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        JSONException e11;
        JSONObject jSONObject;
        CampaignEx campaignEx = this.f39226b;
        if (campaignEx != null && campaignEx.isDynamicView()) {
            try {
                CampaignEx.c rewardTemplateMode = this.f39226b.getRewardTemplateMode();
                String str = "";
                if (rewardTemplateMode != null) {
                    str = rewardTemplateMode.f() + "";
                }
                j.a(com.mbridge.msdk.foundation.controller.c.m().d(), "cta_click", this.f39226b.getCampaignUnitId(), this.f39226b.isBidCampaign(), this.f39226b.getRequestId(), this.f39226b.getRequestIdNotice(), this.f39226b.getId(), str);
            } catch (Exception e12) {
                e12.printStackTrace();
            }
        }
        try {
            jSONObject = new JSONObject();
            try {
                jSONObject.put(com.mbridge.msdk.foundation.same.a.f35338j, a(0));
            } catch (JSONException e13) {
                e11 = e13;
                e11.printStackTrace();
            }
        } catch (JSONException e14) {
            e11 = e14;
            jSONObject = null;
        }
        this.f39226b.setTriggerClickSource(1);
        this.f39226b.setClickTempSource(1);
        this.notifyListener.a(105, jSONObject);
    }

    private void f() {
        int iFindLayout = findLayout("mbridge_reward_clickable_cta");
        if (g0.a(iFindLayout)) {
            this.f39227c.inflate(iFindLayout, this);
            this.f39229e = h();
            d();
            i();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        ImageView imageView = this.f39238n;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean h() {
        this.f39237m = (ViewGroup) findViewById(findID("mbridge_viewgroup_ctaroot"));
        this.f39238n = (ImageView) findViewById(findID("mbridge_iv_appicon"));
        this.f39239o = (TextView) findViewById(findID("mbridge_tv_title"));
        TextView textView = (TextView) findViewById(findID("mbridge_tv_install"));
        this.ctaTv = textView;
        return isNotNULL(this.f39237m, this.f39238n, this.f39239o, textView);
    }

    private void i() {
        setWrapContent();
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    protected void d() {
        super.d();
        if (this.f39229e) {
            CampaignEx campaignEx = this.f39226b;
            if (campaignEx != null && campaignEx.isDynamicView()) {
                setOnClickListener(new b());
            }
            this.ctaTv.setOnClickListener(new c());
            ImageView imageView = this.f39238n;
            if (imageView != null) {
                imageView.setOnClickListener(new d());
            }
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeClickCTAViewDiff, com.mbridge.msdk.video.module.MBridgeBaseView
    public void init(Context context) {
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ObjectAnimator objectAnimator = this.f39245u;
        if (objectAnimator != null) {
            try {
                objectAnimator.start();
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ObjectAnimator objectAnimator = this.f39245u;
        if (objectAnimator != null) {
            try {
                objectAnimator.cancel();
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.f39242r = motionEvent.getRawX();
        this.f39243s = motionEvent.getRawY();
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void onSelfConfigurationChanged(Configuration configuration) {
        super.onSelfConfigurationChanged(configuration);
        this.f39244t = configuration.orientation;
    }

    @Override // com.mbridge.msdk.video.module.MBridgeClickCTAViewDiff
    public void preLoadData(com.mbridge.msdk.video.signal.factory.b bVar) {
        CampaignEx campaignEx = this.f39226b;
        if (campaignEx != null) {
            if (campaignEx.isDynamicView()) {
                a(this, this.f39226b);
            } else {
                f();
            }
            if (this.f39229e) {
                if (com.mbridge.msdk.util.b.a()) {
                    setChinaCTAData();
                }
                this.ctaTv.setText(this.f39226b.getAdCall());
                if (TextUtils.isEmpty(this.f39226b.getIconUrl())) {
                    g();
                } else {
                    com.mbridge.msdk.foundation.same.image.b.a(this.f39225a.getApplicationContext()).a(this.f39226b.getIconUrl(), new e(this.f39238n, this.f39226b, this.f39241q));
                }
                if (this.f39239o != null && !TextUtils.isEmpty(this.f39226b.getAppName())) {
                    this.f39239o.setText(this.f39226b.getAppName());
                }
                if (this.f39240p == null || TextUtils.isEmpty(this.f39226b.getAppDesc())) {
                    return;
                }
                this.f39240p.setText(this.f39226b.getAppDesc());
            }
        }
    }

    public void setCtaClickCallBack(f fVar) {
    }

    public void setObjectAnimator(ObjectAnimator objectAnimator) {
        this.f39245u = objectAnimator;
    }

    public void setUnitId(String str) {
        this.f39241q = str;
    }
}
