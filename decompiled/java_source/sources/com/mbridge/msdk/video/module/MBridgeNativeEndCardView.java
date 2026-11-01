package com.mbridge.msdk.video.module;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.GradientDrawable;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.dycreator.baseview.MBHeatLevelLayoutView;
import com.mbridge.msdk.dycreator.baseview.MBStarLevelLayoutView;
import com.mbridge.msdk.dycreator.baseview.cusview.MBridgeBaitClickView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.shake.MBShakeView;
import com.mbridge.msdk.video.dynview.widget.MBridgeLevelLayoutView;
import com.mbridge.msdk.videocommon.view.RoundImageView;
import com.mbridge.msdk.videocommon.view.StarLevelView;
import com.mbridge.msdk.widget.FeedBackButton;
import com.tn.lib.view.FlowLayout;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class MBridgeNativeEndCardView extends MBridgeNativeEndCardViewDiff {
    private LinearLayout A;
    private Runnable B;
    private Runnable C;
    private RelativeLayout D;
    private com.mbridge.msdk.video.signal.factory.b E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I;
    private int J;
    private AlphaAnimation K;
    private int L;
    private int M;
    private int N;
    private int O;
    private Bitmap P;
    private View Q;
    private FeedBackButton R;
    private String S;
    private CampaignUnit T;
    private MBShakeView U;
    private com.mbridge.msdk.shake.b V;
    private MBridgeBaitClickView W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private boolean f39305a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private int f39306b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private String f39307c0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ViewGroup f39308m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private ViewGroup f39309n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private RelativeLayout f39310o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private ImageView f39311p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private ImageView f39312q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private ImageView f39313r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private ImageView f39314s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private TextView f39315t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ImageView f39316u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private ImageView f39317v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private TextView f39318w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private TextView f39319x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private TextView f39320y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private LinearLayout f39321z;

    class a extends com.mbridge.msdk.widget.a {
        a() {
        }

        @Override // com.mbridge.msdk.widget.a
        protected void a(View view) {
            if (MBridgeNativeEndCardView.this.ctaView != null) {
                if (!com.mbridge.msdk.util.b.a()) {
                    MBridgeNativeEndCardView.this.f39226b.setTriggerClickSource(2);
                    MBridgeNativeEndCardView.this.c(0);
                } else if (MBridgeNativeEndCardView.this.checkProgressBarIntercepted()) {
                    MBridgeNativeEndCardView.this.f39226b.setTriggerClickSource(2);
                    MBridgeNativeEndCardView.this.c(0);
                }
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MBridgeNativeEndCardView.this.D != null) {
                CampaignEx campaignEx = MBridgeNativeEndCardView.this.f39226b;
                if (campaignEx != null && !campaignEx.isDynamicView() && MBridgeNativeEndCardView.this.f39226b.getAdSpaceT() != 2) {
                    MBridgeNativeEndCardView.this.D.setPadding(MBridgeNativeEndCardView.this.L, MBridgeNativeEndCardView.this.N, MBridgeNativeEndCardView.this.M, MBridgeNativeEndCardView.this.O);
                    MBridgeNativeEndCardView.this.D.startAnimation(MBridgeNativeEndCardView.this.K);
                }
                MBridgeNativeEndCardView.this.D.setVisibility(0);
            }
            if (MBridgeNativeEndCardView.this.Q != null && MBridgeNativeEndCardView.this.Q.getVisibility() != 0 && MBridgeNativeEndCardView.this.G) {
                MBridgeNativeEndCardView.this.Q.setVisibility(0);
            }
            MBridgeNativeEndCardView.this.f();
        }
    }

    class c implements com.mbridge.msdk.foundation.feedback.a {
        c() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            MBridgeNativeEndCardView.this.I = true;
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            MBridgeNativeEndCardView.this.I = false;
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            MBridgeNativeEndCardView.this.I = false;
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MBridgeNativeEndCardView.this.f39226b.setTriggerClickSource(5);
            MBridgeNativeEndCardView.this.c(0);
        }
    }

    class e extends com.mbridge.msdk.shake.b {
        e(int i11, int i12) {
            super(i11, i12);
        }

        @Override // com.mbridge.msdk.shake.b
        public void a() {
            if ((com.mbridge.msdk.util.b.a() && MBridgeNativeEndCardView.this.checkChinaShakeState()) || MBridgeNativeEndCardView.this.I || !MBridgeNativeEndCardView.this.H) {
                return;
            }
            MBridgeNativeEndCardView mBridgeNativeEndCardView = MBridgeNativeEndCardView.this;
            mBridgeNativeEndCardView.f39230f = 0.0f;
            mBridgeNativeEndCardView.f39231g = 0.0f;
            mBridgeNativeEndCardView.f39226b.setTriggerClickSource(5);
            MBridgeNativeEndCardView.this.c(4);
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MBridgeNativeEndCardView.this.f39226b.setTriggerClickSource(2);
            MBridgeNativeEndCardView.this.c(0);
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MBridgeNativeEndCardView.this.f39226b.setTriggerClickSource(2);
            MBridgeNativeEndCardView.this.f39226b.setClickType(1);
            MBridgeNativeEndCardView.this.c(2);
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MBridgeNativeEndCardView.this.f39226b.setTriggerClickSource(2);
            MBridgeNativeEndCardView.this.f39226b.setClickType(1);
            MBridgeNativeEndCardView.this.c(2);
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MBridgeNativeEndCardView.this.G = true;
            if (MBridgeNativeEndCardView.this.Q != null) {
                MBridgeNativeEndCardView.this.Q.setVisibility(0);
            }
        }
    }

    class j implements com.mbridge.msdk.video.dynview.listener.h {
        j() {
        }

        @Override // com.mbridge.msdk.video.dynview.listener.h
        public void a(com.mbridge.msdk.video.dynview.a aVar) {
            if (aVar != null) {
                MBridgeNativeEndCardView.this.addView(aVar.b());
                MBridgeNativeEndCardView.this.f39305a0 = aVar.c();
                if (MBridgeNativeEndCardView.this.ctaViewCanGet(aVar.b(), MBridgeNativeEndCardView.this.f39305a0)) {
                    MBridgeNativeEndCardView mBridgeNativeEndCardView = MBridgeNativeEndCardView.this;
                    mBridgeNativeEndCardView.f39229e = mBridgeNativeEndCardView.a(aVar.b());
                    MBridgeNativeEndCardView.this.l();
                } else {
                    MBridgeNativeEndCardView.this.f39305a0 = false;
                    MBridgeNativeEndCardView mBridgeNativeEndCardView2 = MBridgeNativeEndCardView.this;
                    mBridgeNativeEndCardView2.f39232h = false;
                    mBridgeNativeEndCardView2.j();
                }
                MBridgeNativeEndCardView mBridgeNativeEndCardView3 = MBridgeNativeEndCardView.this;
                CampaignEx campaignEx = mBridgeNativeEndCardView3.f39226b;
                if (campaignEx != null) {
                    campaignEx.setECTemplateRenderSucc(mBridgeNativeEndCardView3.f39305a0);
                }
            }
        }

        @Override // com.mbridge.msdk.video.dynview.listener.h
        public void a(com.mbridge.msdk.video.dynview.error.a aVar) {
            o0.b(MBridgeBaseView.TAG, "errorMsg:" + aVar.c());
        }
    }

    class k implements com.mbridge.msdk.foundation.same.image.c {
        k() {
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            if (bitmap == null || bitmap.isRecycled()) {
                return;
            }
            try {
                if (MBridgeNativeEndCardView.this.f39312q != null) {
                    MBridgeNativeEndCardView mBridgeNativeEndCardView = MBridgeNativeEndCardView.this;
                    if (mBridgeNativeEndCardView.f39232h) {
                        mBridgeNativeEndCardView.f39312q.setBackground(null);
                    }
                    MBridgeNativeEndCardView.this.f39312q.setImageBitmap(bitmap);
                }
                MBridgeNativeEndCardView.this.setBannerBackGroundBlurBimap(bitmap);
            } catch (Throwable unused) {
                if (MBridgeNativeEndCardView.this.f39311p != null) {
                    MBridgeNativeEndCardView.this.f39311p.setVisibility(4);
                }
            }
        }
    }

    class l implements com.mbridge.msdk.foundation.feedback.a {
        l() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            MBridgeNativeEndCardView.this.I = true;
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            MBridgeNativeEndCardView.this.I = false;
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            MBridgeNativeEndCardView.this.I = false;
        }
    }

    class m implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Bitmap f39334a;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                MBridgeNativeEndCardView mBridgeNativeEndCardView = MBridgeNativeEndCardView.this;
                if (mBridgeNativeEndCardView.f39232h) {
                    mBridgeNativeEndCardView.f39311p.setBackground(null);
                }
                o0.b(TmcConstants.KEY_ASYNC, "执行异步加载图");
                MBridgeNativeEndCardView.this.f39311p.setImageBitmap(MBridgeNativeEndCardView.this.P);
            }
        }

        m(Bitmap bitmap) {
            this.f39334a = bitmap;
        }

        @Override // java.lang.Runnable
        public void run() {
            MBridgeNativeEndCardView mBridgeNativeEndCardView = MBridgeNativeEndCardView.this;
            mBridgeNativeEndCardView.P = mBridgeNativeEndCardView.blurBitmap(this.f39334a);
            if (MBridgeNativeEndCardView.this.P == null || MBridgeNativeEndCardView.this.P.isRecycled() || MBridgeNativeEndCardView.this.f39311p == null) {
                return;
            }
            MBridgeNativeEndCardView.this.f39311p.post(new a());
        }
    }

    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MBridgeNativeEndCardView.this.F) {
                MBridgeNativeEndCardView.this.f39226b.setTriggerClickSource(2);
                MBridgeNativeEndCardView.this.c(1);
            }
        }
    }

    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MBridgeNativeEndCardView.this.f39232h) {
                try {
                    com.mbridge.msdk.video.dynview.moffer.a.a().b();
                } catch (Exception e11) {
                    o0.b(MBridgeBaseView.TAG, e11.getMessage());
                }
                try {
                    CampaignEx campaignEx = MBridgeNativeEndCardView.this.f39226b;
                    if (campaignEx != null) {
                        String strA = z0.a(campaignEx.getendcard_url(), "ecid");
                        String strA2 = z0.a(MBridgeNativeEndCardView.this.f39226b.getendcard_url(), "mof");
                        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                        eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, "choseFromTwoClose");
                        eVar.a("endcard_id", strA);
                        eVar.a("mof", strA2);
                        com.mbridge.msdk.video.module.report.a.a("2000103", MBridgeNativeEndCardView.this.f39226b, eVar);
                    }
                } catch (Exception e12) {
                    if (MBridgeConstans.DEBUG) {
                        e12.printStackTrace();
                    }
                }
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar2 = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar2.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 2);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000152", eVar2);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000134", MBridgeNativeEndCardView.this.f39226b);
            } catch (Throwable th2) {
                if (MBridgeConstans.DEBUG) {
                    th2.printStackTrace();
                }
            }
            MBridgeNativeEndCardView.this.notifyListener.a(104, "");
        }
    }

    class p extends com.mbridge.msdk.widget.a {
        p() {
        }

        @Override // com.mbridge.msdk.widget.a
        protected void a(View view) {
            MBridgeNativeEndCardView.this.f39226b.setTriggerClickSource(1);
            MBridgeNativeEndCardView.this.c(0);
        }
    }

    class q extends com.mbridge.msdk.widget.a {
        q() {
        }

        @Override // com.mbridge.msdk.widget.a
        protected void a(View view) {
            if (MBridgeNativeEndCardView.this.ctaView != null) {
                if (!com.mbridge.msdk.util.b.a()) {
                    MBridgeNativeEndCardView.this.f39226b.setTriggerClickSource(2);
                    MBridgeNativeEndCardView.this.c(0);
                } else if (MBridgeNativeEndCardView.this.checkProgressBarIntercepted()) {
                    MBridgeNativeEndCardView.this.f39226b.setTriggerClickSource(2);
                    MBridgeNativeEndCardView.this.c(0);
                }
            }
        }
    }

    public MBridgeNativeEndCardView(Context context) {
        super(context);
        this.F = false;
        this.G = false;
        this.H = false;
        this.I = false;
        this.J = 0;
        this.f39305a0 = false;
        this.f39306b0 = 1;
    }

    public MBridgeNativeEndCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.F = false;
        this.G = false;
        this.H = false;
        this.I = false;
        this.J = 0;
        this.f39305a0 = false;
        this.f39306b0 = 1;
    }

    public MBridgeNativeEndCardView(Context context, AttributeSet attributeSet, boolean z10, int i11, boolean z11, int i12, int i13) {
        super(context, attributeSet, z10, i11, z11, i12, i13);
        this.F = false;
        this.G = false;
        this.H = false;
        this.I = false;
        this.J = 0;
        this.f39305a0 = false;
        this.f39306b0 = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(View view) {
        try {
            this.f39310o = (RelativeLayout) view.findViewById(filterFindViewId(this.f39305a0, "mbridge_native_ec_layout"));
            this.f39312q = (ImageView) view.findViewById(filterFindViewId(this.f39305a0, "mbridge_iv_adbanner"));
            this.f39313r = (ImageView) view.findViewById(filterFindViewId(this.f39305a0, "mbridge_iv_icon"));
            this.f39314s = (ImageView) view.findViewById(filterFindViewId(this.f39305a0, "mbridge_iv_flag"));
            this.f39315t = (TextView) view.findViewById(filterFindViewId(this.f39305a0, "mbridge_tv_flag"));
            this.f39316u = (ImageView) view.findViewById(filterFindViewId(this.f39305a0, "mbridge_iv_logo"));
            this.f39317v = (ImageView) view.findViewById(filterFindViewId(this.f39305a0, "mbridge_iv_link"));
            this.f39318w = (TextView) view.findViewById(filterFindViewId(this.f39305a0, "mbridge_tv_apptitle"));
            this.f39321z = (LinearLayout) view.findViewById(filterFindViewId(this.f39305a0, "mbridge_sv_starlevel"));
            this.A = (LinearLayout) view.findViewById(filterFindViewId(this.f39305a0, "mbridge_sv_heat_count_level"));
            this.Q = view.findViewById(filterFindViewId(this.f39305a0, "mbridge_iv_close"));
            this.ctaView = (TextView) view.findViewById(filterFindViewId(this.f39305a0, "mbridge_tv_cta"));
            this.R = (FeedBackButton) view.findViewById(filterFindViewId(this.f39305a0, "mbridge_native_endcard_feed_btn"));
            this.D = (RelativeLayout) view.findViewById(filterFindViewId(this.f39305a0, "mbridge_native_ec_controller"));
            this.f39311p = (ImageView) view.findViewById(filterFindViewId(this.f39305a0, "mbridge_iv_adbanner_bg"));
            this.W = (MBridgeBaitClickView) findViewById(filterFindViewId(this.f39305a0, "mbridge_animation_click_view"));
            this.f39319x = (TextView) view.findViewById(filterFindViewId(this.f39305a0, "mbridge_tv_appdesc"));
            if (!this.f39232h) {
                TextView textView = (TextView) view.findViewById(filterFindViewId(this.f39305a0, "mbridge_tv_number"));
                this.f39320y = textView;
                return isNotNULL(this.f39312q, this.f39313r, this.f39318w, this.f39319x, textView, this.f39321z, this.Q, this.ctaView);
            }
            ImageView imageView = this.f39312q;
            if (imageView != null && (imageView instanceof RoundImageView)) {
                ((RoundImageView) imageView).setBorderRadius(10);
            }
            ImageView imageView2 = this.f39313r;
            if (imageView2 != null && (imageView2 instanceof RoundImageView)) {
                ((RoundImageView) imageView2).setBorderRadius(10);
            }
            return isNotNULL(this.f39312q, this.f39313r, this.f39318w, this.f39321z, this.Q, this.ctaView);
        } catch (Throwable th2) {
            o0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
            return false;
        }
    }

    private void b(View view) {
        if (view == null) {
            setLayout();
            preLoadData(this.E);
        } else {
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            addView(view);
            a(view);
            d();
        }
        o();
    }

    private boolean b(int i11) {
        if (isLandscape()) {
            ViewGroup viewGroup = (ViewGroup) this.f39227c.inflate(i11, (ViewGroup) null);
            this.f39309n = viewGroup;
            addView(viewGroup);
            return a(this.f39309n);
        }
        ViewGroup viewGroup2 = (ViewGroup) this.f39227c.inflate(i11, (ViewGroup) null);
        this.f39308m = viewGroup2;
        addView(viewGroup2);
        return a(this.f39308m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i11) {
        JSONObject jSONObject;
        CampaignEx campaignEx = this.f39226b;
        if (campaignEx != null && campaignEx.isDynamicView()) {
            try {
                CampaignEx.c rewardTemplateMode = this.f39226b.getRewardTemplateMode();
                String str = "";
                if (rewardTemplateMode != null) {
                    str = rewardTemplateMode.f() + "";
                }
                com.mbridge.msdk.foundation.same.report.j.a(com.mbridge.msdk.foundation.controller.c.m().d(), "end_card_click", this.f39226b.getCampaignUnitId(), this.f39226b.isBidCampaign(), this.f39226b.getRequestId(), this.f39226b.getRequestIdNotice(), this.f39226b.getId(), str);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        try {
            jSONObject = new JSONObject();
            try {
                jSONObject.put(com.mbridge.msdk.foundation.same.a.f35338j, a(i11));
                if (this.f39226b.getDynamicTempCode() == 5) {
                    jSONObject.put("camp_position", 0);
                }
            } catch (JSONException e12) {
                e = e12;
                e.printStackTrace();
            }
        } catch (JSONException e13) {
            e = e13;
            jSONObject = null;
        }
        this.f39226b.setClickTempSource(2);
        this.notifyListener.a(105, jSONObject);
    }

    private void e() {
        int i11;
        MBridgeBaitClickView mBridgeBaitClickView;
        try {
            CampaignEx campaignEx = this.f39226b;
            if (campaignEx == null || !campaignEx.isDynamicView()) {
                return;
            }
            String endScreenUrl = this.f39226b.getendcard_url();
            if (TextUtils.isEmpty(endScreenUrl)) {
                endScreenUrl = this.f39226b.getEndScreenUrl();
            }
            String strA = z0.a(endScreenUrl, "bait_click");
            try {
                i11 = Integer.parseInt(strA);
            } catch (Throwable th2) {
                o0.b(MBridgeBaseView.TAG, th2.getMessage());
                i11 = 1;
            }
            if (TextUtils.isEmpty(strA) || i11 == 0 || (mBridgeBaitClickView = this.W) == null) {
                return;
            }
            mBridgeBaitClickView.setVisibility(0);
            this.W.init(1342177280, i11);
            if (this.f39226b.getEcTemplateId() == 1302) {
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setShape(0);
                gradientDrawable.setColor(1342177280);
                gradientDrawable.setStroke(0, FlowLayout.SPACING_AUTO);
                gradientDrawable.setCornerRadius(25.0f);
                this.W.setBackground(gradientDrawable);
            }
            this.W.startAnimation();
            this.W.setOnClickListener(new f());
        } catch (Throwable th3) {
            o0.b(MBridgeBaseView.TAG, th3.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        CampaignEx campaignEx = this.f39226b;
        if (campaignEx != null) {
            campaignEx.setCampaignUnitId(this.S);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.S + "_2", this.f39226b);
        }
        if (!com.mbridge.msdk.foundation.feedback.b.b().a()) {
            FeedBackButton feedBackButton = this.R;
            if (feedBackButton != null) {
                feedBackButton.setVisibility(8);
                return;
            }
            return;
        }
        com.mbridge.msdk.foundation.feedback.b.b().a(this.S + "_2", new c());
        com.mbridge.msdk.foundation.feedback.b.b().d(this.S + "_1");
        if (this.R != null) {
            com.mbridge.msdk.foundation.feedback.b.b().a(this.S + "_2", this.R);
        }
    }

    private void g() {
        int i11;
        int i12;
        try {
            CampaignEx campaignEx = this.f39226b;
            if (campaignEx == null || !campaignEx.isDynamicView()) {
                return;
            }
            String endScreenUrl = this.f39226b.getendcard_url();
            if (TextUtils.isEmpty(endScreenUrl)) {
                endScreenUrl = this.f39226b.getEndScreenUrl();
            }
            String strA = z0.a(endScreenUrl, "shake_show");
            String strA2 = z0.a(endScreenUrl, "shake_strength");
            String strA3 = z0.a(endScreenUrl, "shake_time");
            if (!TextUtils.isEmpty(strA) && strA.equals("1") && this.U == null) {
                MBridgeBaitClickView mBridgeBaitClickView = this.W;
                if (mBridgeBaitClickView != null) {
                    mBridgeBaitClickView.setVisibility(8);
                }
                MBShakeView mBShakeView = new MBShakeView(getContext());
                this.U = mBShakeView;
                mBShakeView.initView(this.f39226b.getAdCall(), true);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                if (isLandscape()) {
                    layoutParams.addRule(13);
                } else {
                    layoutParams.addRule(2, filterFindViewId(this.f39305a0, "mbridge_iv_logo"));
                    layoutParams.addRule(14);
                    this.U.setPadding(0, 0, 0, t0.a(getContext(), 20.0f));
                }
                this.U.setLayoutParams(layoutParams);
                RelativeLayout relativeLayout = this.f39310o;
                if (relativeLayout != null && relativeLayout.isShown()) {
                    this.f39310o.addView(this.U);
                    TextView textView = this.ctaView;
                    if (textView != null) {
                        textView.setVisibility(4);
                    }
                    this.U.setOnClickListener(new d());
                    int i13 = 10;
                    if (!TextUtils.isEmpty(strA2) && (i12 = Integer.parseInt(strA2)) > 0) {
                        i13 = i12;
                    }
                    int i14 = 5000;
                    if (!TextUtils.isEmpty(strA3) && (i11 = Integer.parseInt(strA3)) > 0) {
                        i14 = i11 * 1000;
                    }
                    this.V = new e(i13, i14);
                    com.mbridge.msdk.shake.a.a().a(this.V);
                }
            }
        } catch (Throwable th2) {
            o0.b(MBridgeBaseView.TAG, th2.getMessage());
        }
    }

    private void h() {
        com.mbridge.msdk.foundation.same.image.b.a(this.f39225a.getApplicationContext()).a(this.f39226b.getImageUrl(), new k());
        com.mbridge.msdk.foundation.same.image.b.a(this.f39225a.getApplicationContext()).a(this.f39226b.getIconUrl(), new com.mbridge.msdk.video.module.listener.impl.j(this.f39313r, t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 8.0f)));
        this.f39318w.setText(this.f39226b.getAppName());
        TextView textView = this.ctaView;
        if (textView != null) {
            textView.setText(this.f39226b.getAdCall());
        }
        TextView textView2 = this.f39319x;
        if (textView2 != null) {
            textView2.setText(this.f39226b.getAppDesc());
        }
        TextView textView3 = this.f39320y;
        if (textView3 != null) {
            textView3.setText(this.f39226b.getNumberRating() + ")");
        }
        this.f39321z.removeAllViews();
        double rating = this.f39226b.getRating();
        if (rating <= 0.0d) {
            rating = 5.0d;
        }
        LinearLayout linearLayout = this.f39321z;
        if (linearLayout instanceof StarLevelView) {
            ((StarLevelView) linearLayout).initScore(rating);
        }
        LinearLayout linearLayout2 = this.f39321z;
        if (linearLayout2 instanceof MBridgeLevelLayoutView) {
            ((MBridgeLevelLayoutView) linearLayout2).setRatingAndUser(rating, this.f39226b.getNumberRating());
        }
        LinearLayout linearLayout3 = this.f39321z;
        if (linearLayout3 instanceof MBStarLevelLayoutView) {
            ((MBStarLevelLayoutView) linearLayout3).setRating((int) rating);
        }
        LinearLayout linearLayout4 = this.A;
        if (linearLayout4 != null && (linearLayout4 instanceof MBHeatLevelLayoutView)) {
            ((MBHeatLevelLayoutView) linearLayout4).setHeatCount(this.f39226b.getNumberRating());
        }
        if (!TextUtils.isEmpty(this.f39226b.getendcard_url()) && this.f39226b.getendcard_url().contains("alecfc=1")) {
            this.F = true;
        }
        String language = Locale.getDefault().getLanguage();
        if (TextUtils.isEmpty(language) || !language.equals("zh")) {
            this.f39314s.setImageDrawable(getResources().getDrawable(getResources().getIdentifier("mbridge_reward_flag_en", "drawable", com.mbridge.msdk.foundation.controller.c.m().h())));
            this.f39307c0 = "AD";
        } else {
            this.f39314s.setImageDrawable(getResources().getDrawable(getResources().getIdentifier("mbridge_reward_flag_cn", "drawable", com.mbridge.msdk.foundation.controller.c.m().h())));
            this.f39307c0 = "广告";
        }
        if (this.f39306b0 == 0) {
            ImageView imageView = this.f39314s;
            if (imageView != null) {
                imageView.setVisibility(4);
            }
            ImageView imageView2 = this.f39316u;
            if (imageView2 != null) {
                imageView2.setVisibility(4);
            }
            TextView textView4 = this.f39315t;
            if (textView4 != null) {
                textView4.setVisibility(0);
                this.f39315t.setText(this.f39307c0);
            }
        }
        t0.a(2, this.f39317v, this.f39226b, this.f39225a, true, new l());
        if (this.G) {
            return;
        }
        this.Q.setVisibility(8);
    }

    private void i() throws Throwable {
        com.mbridge.msdk.video.dynview.c cVarA = new com.mbridge.msdk.video.dynview.wrapper.c().a(getContext(), this.f39226b, this.f39233i, com.mbridge.msdk.util.b.a() ? "cn_" : "en_");
        this.f39306b0 = cVarA.o();
        com.mbridge.msdk.video.dynview.b.a().a(cVarA, new j());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        int iK = k();
        if (g0.a(iK)) {
            this.f39229e = b(iK);
            l();
            CampaignEx campaignEx = this.f39226b;
            if (campaignEx != null) {
                campaignEx.setECTemplateRenderSucc(false);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001b  */
    /* JADX WARN: Code duplicated, block: B:12:0x001d A[PHI: r3
  0x001d: PHI (r3v4 java.lang.String) = (r3v2 java.lang.String), (r3v5 java.lang.String) binds: [B:20:0x002b, B:8:0x0015] A[DONT_GENERATE, DONT_INLINE]] */
    private int k() {
        int i11 = this.f39235k;
        String str = "mbridge_reward_endcard_native_land";
        String str2 = "mbridge_reward_endcard_native_hor";
        if (i11 == 0) {
            str2 = this.f39234j ? "mbridge_reward_endcard_native_half_portrait" : "mbridge_reward_endcard_native_hor";
            if (!isLandscape()) {
                str = str2;
            } else if (this.f39234j) {
                str = "mbridge_reward_endcard_native_half_landscape";
            }
        } else {
            if (i11 != 1) {
                str2 = "";
            } else if (this.f39234j) {
                str2 = "mbridge_reward_endcard_native_half_portrait";
            }
            if (i11 != 2) {
                str = str2;
            } else if (this.f39234j) {
                str = "mbridge_reward_endcard_native_half_landscape";
            }
        }
        return findLayout(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        d();
        if (!this.f39229e) {
            this.notifyListener.a(104, "");
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 100.0f);
        this.K = alphaAnimation;
        alphaAnimation.setDuration(200L);
    }

    private void m() {
        try {
            CampaignEx campaignEx = this.f39226b;
            if (campaignEx == null || !campaignEx.isDynamicView()) {
                return;
            }
            String endScreenUrl = this.f39226b.getendcard_url();
            if (TextUtils.isEmpty(endScreenUrl)) {
                endScreenUrl = this.f39226b.getEndScreenUrl();
            }
            String strA = z0.a(endScreenUrl, "alac");
            if (TextUtils.isEmpty(strA) || !strA.equals("1") || this.f39226b.getAutoShowStoreMiniCard() == 1) {
                return;
            }
            postDelayed(new g(), 1000L);
        } catch (Throwable th2) {
            o0.b(MBridgeBaseView.TAG, th2.getMessage());
        }
    }

    private void n() {
        try {
            CampaignEx campaignEx = this.f39226b;
            if (campaignEx == null || campaignEx.getAutoShowStoreMiniCard() == 0 || TextUtils.isEmpty(this.f39226b.getDeepLinkURL())) {
                return;
            }
            long showStoreMiniCardDelayTime = this.f39226b.getShowStoreMiniCardDelayTime();
            if (showStoreMiniCardDelayTime == 0) {
                showStoreMiniCardDelayTime = 1;
            }
            if (this.C == null) {
                this.C = new h();
            }
            postDelayed(this.C, showStoreMiniCardDelayTime * 1000);
        } catch (Throwable th2) {
            o0.b(MBridgeBaseView.TAG, th2.getMessage());
        }
    }

    private void o() {
        RelativeLayout relativeLayout;
        if (!this.f39229e || (relativeLayout = this.D) == null) {
            return;
        }
        relativeLayout.postDelayed(new b(), 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBannerBackGroundBlurBimap(Bitmap bitmap) {
        try {
            com.mbridge.msdk.foundation.same.threadpool.a.a().execute(new m(bitmap));
        } catch (Exception e11) {
            o0.a(MBridgeBaseView.TAG, e11.getMessage());
        }
    }

    @TargetApi(17)
    public Bitmap blurBitmap(Bitmap bitmap) {
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_4444);
            RenderScript renderScriptCreate = RenderScript.create(this.f39225a.getApplicationContext());
            ScriptIntrinsicBlur scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
            Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(renderScriptCreate, bitmap);
            Allocation allocationCreateFromBitmap2 = Allocation.createFromBitmap(renderScriptCreate, bitmapCreateBitmap);
            scriptIntrinsicBlurCreate.setRadius(25.0f);
            scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
            scriptIntrinsicBlurCreate.forEach(allocationCreateFromBitmap2);
            allocationCreateFromBitmap2.copyTo(bitmapCreateBitmap);
            renderScriptCreate.destroy();
            return bitmapCreateBitmap;
        } catch (Throwable unused) {
            return null;
        }
    }

    public boolean canBackPress() {
        View view = this.Q;
        return view != null && view.getVisibility() == 0;
    }

    public void clearMoreOfferBitmap() {
        CampaignUnit campaignUnit;
        CampaignEx campaignEx = this.f39226b;
        if (campaignEx == null || !campaignEx.isDynamicView() || (campaignUnit = this.T) == null || campaignUnit.getAds() == null || this.T.getAds().size() <= 0) {
            return;
        }
        for (CampaignEx campaignEx2 : this.T.getAds()) {
            if (!TextUtils.isEmpty(campaignEx2.getIconUrl())) {
                com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(campaignEx2.getIconUrl());
            }
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    protected void d() {
        if (this.f39229e) {
            this.f39310o.setOnClickListener(new n());
            this.Q.setOnClickListener(new o());
            TextView textView = this.ctaView;
            if (textView != null) {
                textView.setOnClickListener(new p());
            }
            this.f39313r.setOnClickListener(new q());
            this.f39312q.setOnClickListener(new a());
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void init(Context context) {
    }

    public boolean isDyXmlSuccess() {
        return this.f39305a0;
    }

    public void notifyShowListener() {
        this.notifyListener.a(110, "");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.B == null) {
            this.B = new i();
        }
        Runnable runnable = this.B;
        if (runnable != null) {
            postDelayed(runnable, this.J * 1000);
            if (!this.H) {
                this.H = true;
            }
            m();
        }
        e();
        g();
        n();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.B;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        Runnable runnable2 = this.C;
        if (runnable2 != null) {
            removeCallbacks(runnable2);
        }
        if (this.V != null) {
            com.mbridge.msdk.shake.a.a().b(this.V);
            this.V = null;
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void onSelfConfigurationChanged(Configuration configuration) {
        super.onSelfConfigurationChanged(configuration);
        CampaignEx campaignEx = this.f39226b;
        if (campaignEx == null || !campaignEx.isDynamicView()) {
            RelativeLayout relativeLayout = this.D;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(4);
            }
            int i11 = configuration.orientation;
            this.f39228d = i11;
            if (i11 == 2) {
                removeView(this.f39308m);
                b(this.f39309n);
            } else {
                removeView(this.f39309n);
                b(this.f39308m);
            }
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeNativeEndCardViewDiff
    public void preLoadData(com.mbridge.msdk.video.signal.factory.b bVar) {
        this.E = bVar;
        try {
            if (this.f39226b == null || !this.f39229e) {
                return;
            }
            h();
        } catch (Throwable th2) {
            o0.a(MBridgeBaseView.TAG, th2.getMessage());
        }
    }

    public void release() {
        try {
            removeAllViews();
            AlphaAnimation alphaAnimation = this.K;
            if (alphaAnimation != null) {
                alphaAnimation.cancel();
            }
            this.B = null;
        } catch (Exception e11) {
            o0.b(MBridgeBaseView.TAG, e11.getMessage());
        }
    }

    public void setCloseBtnDelay(int i11) {
        this.J = i11;
    }

    public void setLayout() {
        if (this.f39232h) {
            i();
        } else {
            j();
        }
    }

    public void setMoreOfferCampaignUnit(CampaignUnit campaignUnit) {
        MBShakeView mBShakeView;
        CampaignEx campaignEx = this.f39226b;
        if (campaignEx == null || !campaignEx.isDynamicView()) {
            return;
        }
        this.T = campaignUnit;
        if (campaignUnit == null || campaignUnit.getAds() == null || this.T.getAds().size() <= 5 || (mBShakeView = this.U) == null) {
            return;
        }
        mBShakeView.setPadding(0, 0, 0, t0.a(getContext(), 5.0f));
    }

    public void setNotchPadding(int i11, int i12, int i13, int i14) {
        o0.b(MBridgeBaseView.TAG, "NOTCH NativeEndCard " + String.format("%1s-%2s-%3s-%4s", Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13), Integer.valueOf(i14)));
        this.L = i11;
        this.M = i12;
        this.N = i13;
        this.O = i14;
        o();
    }

    public void setOnPause() {
        this.H = false;
    }

    public void setOnResume() {
        this.H = true;
    }

    public void setUnitId(String str) {
        this.S = str;
    }
}
