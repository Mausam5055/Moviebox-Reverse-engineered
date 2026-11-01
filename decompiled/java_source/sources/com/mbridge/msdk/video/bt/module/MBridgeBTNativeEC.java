package com.mbridge.msdk.video.bt.module;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.video.module.listener.impl.j;
import com.mbridge.msdk.video.signal.impl.k;
import com.mbridge.msdk.videocommon.view.RoundImageView;
import com.mbridge.msdk.videocommon.view.StarLevelView;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class MBridgeBTNativeEC extends MBridgeBTNativeECDiff {
    private TextView A;
    private StarLevelView B;
    private boolean C;
    private boolean D;
    private int E;
    private Runnable F;
    private boolean G;
    private View H;
    private String I;
    private k J;
    private WebView K;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private ViewGroup f38887p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private ViewGroup f38888q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private RelativeLayout f38889r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private ImageView f38890s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private RoundImageView f38891t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ImageView f38892u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private ImageView f38893v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private ImageView f38894w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private ImageView f38895x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private TextView f38896y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private TextView f38897z;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MBridgeBTNativeEC.this.D = true;
            if (MBridgeBTNativeEC.this.H != null) {
                MBridgeBTNativeEC.this.H.setVisibility(0);
            }
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MBridgeBTNativeEC.this.C) {
                MBridgeBTNativeEC.this.a(1, view.getContext());
                MBridgeBTNativeEC.this.a(view.getX(), view.getY());
            }
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MBridgeBTNativeEC.this.K != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("id", MBridgeBTNativeEC.this.f38814d);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("unitId", MBridgeBTNativeEC.this.I);
                    jSONObject.put("data", jSONObject2);
                    o0.a(BTBaseView.TAG, "NativeEC Call H5 onCloseBtnClicked " + jSONObject.toString());
                } catch (JSONException e11) {
                    o0.a(BTBaseView.TAG, e11.getMessage());
                }
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(MBridgeBTNativeEC.this.K, "onCloseBtnClicked", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            }
        }
    }

    class d extends com.mbridge.msdk.widget.a {
        d() {
        }

        @Override // com.mbridge.msdk.widget.a
        protected void a(View view) {
            MBridgeBTNativeEC.this.a(0, view.getContext());
            MBridgeBTNativeEC.this.a(view.getX(), view.getY());
        }
    }

    class e extends com.mbridge.msdk.widget.a {
        e() {
        }

        @Override // com.mbridge.msdk.widget.a
        protected void a(View view) {
            if (!com.mbridge.msdk.util.b.a() || MBridgeBTNativeEC.this.checkChinaProgressBarStatus()) {
                MBridgeBTNativeEC.this.a(0, view.getContext());
            }
            MBridgeBTNativeEC.this.a(view.getX(), view.getY());
        }
    }

    class f extends com.mbridge.msdk.widget.a {
        f() {
        }

        @Override // com.mbridge.msdk.widget.a
        protected void a(View view) {
            if (!com.mbridge.msdk.util.b.a() || MBridgeBTNativeEC.this.checkChinaProgressBarStatus()) {
                MBridgeBTNativeEC.this.a(0, view.getContext());
            }
            MBridgeBTNativeEC.this.a(view.getX(), view.getY());
        }
    }

    public MBridgeBTNativeEC(Context context) {
        super(context);
        this.C = false;
        this.D = false;
        this.E = 0;
        this.G = false;
    }

    public MBridgeBTNativeEC(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.C = false;
        this.D = false;
        this.E = 0;
        this.G = false;
    }

    private Bitmap a(Drawable drawable) {
        try {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
            drawable.draw(canvas);
            return bitmapCreateBitmap;
        } catch (Throwable th2) {
            o0.a(BTBaseView.TAG, th2.getMessage());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(float f11, float f12) {
        if (this.K != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("code", BTBaseView.f38809n);
                jSONObject.put("id", this.f38814d);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("x", String.valueOf(f11));
                jSONObject2.put("y", String.valueOf(f12));
                jSONObject.put("data", jSONObject2);
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(this.K, "onClicked", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            } catch (Exception unused) {
                com.mbridge.msdk.video.bt.component.d.c().a(this.K, "onClicked", this.f38814d);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i11, Context context) {
        JSONObject jSONObject;
        try {
            try {
                jSONObject = new JSONObject();
                try {
                    jSONObject.put(com.mbridge.msdk.foundation.same.a.f35338j, a(i11));
                } catch (JSONException e11) {
                    e = e11;
                    e.printStackTrace();
                }
            } catch (JSONException e12) {
                e = e12;
                jSONObject = null;
            }
            if (this.J != null) {
                if (com.mbridge.msdk.util.b.a()) {
                    doChinaJumpClick(context, this.J);
                }
                this.J.click(1, jSONObject != null ? jSONObject.toString() : "");
            }
        } catch (Throwable th2) {
            o0.a(BTBaseView.TAG, th2.getMessage());
        }
    }

    private boolean a(View view) {
        try {
            this.f38889r = (RelativeLayout) view.findViewById(findID("mbridge_native_ec_layout"));
            this.f38890s = (ImageView) view.findViewById(findID("mbridge_iv_adbanner_bg"));
            this.f38891t = (RoundImageView) view.findViewById(findID("mbridge_iv_adbanner"));
            this.f38892u = (ImageView) view.findViewById(findID("mbridge_iv_icon"));
            this.f38893v = (ImageView) view.findViewById(findID("mbridge_iv_flag"));
            this.f38894w = (ImageView) view.findViewById(findID("mbridge_iv_link"));
            this.f38896y = (TextView) view.findViewById(findID("mbridge_tv_apptitle"));
            this.f38897z = (TextView) view.findViewById(findID("mbridge_tv_appdesc"));
            this.A = (TextView) view.findViewById(findID("mbridge_tv_number"));
            this.B = (StarLevelView) view.findViewById(findID("mbridge_sv_starlevel"));
            this.H = view.findViewById(findID("mbridge_iv_close"));
            this.ctaView = view.findViewById(findID("mbridge_tv_cta"));
            this.f38895x = (ImageView) view.findViewById(findID("mbridge_iv_logo"));
            return isNotNULL(this.f38890s, this.f38891t, this.f38892u, this.f38896y, this.f38897z, this.A, this.B, this.H, this.ctaView);
        } catch (Throwable th2) {
            o0.b(BTBaseView.TAG, th2.getMessage(), th2);
            return false;
        }
    }

    private void b(View view) {
        if (view == null) {
            init(this.f38811a);
            preLoadData();
            return;
        }
        if (view.getParent() != null) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
        addView(view);
        a(view);
        b();
    }

    private boolean b(int i11) {
        if (isLandscape()) {
            ViewGroup viewGroup = (ViewGroup) this.f38816f.inflate(i11, (ViewGroup) null);
            this.f38888q = viewGroup;
            addView(viewGroup);
            return a(this.f38888q);
        }
        ViewGroup viewGroup2 = (ViewGroup) this.f38816f.inflate(i11, (ViewGroup) null);
        this.f38887p = viewGroup2;
        addView(viewGroup2);
        return a(this.f38887p);
    }

    private int c() {
        return findLayout(isLandscape() ? "mbridge_reward_endcard_native_land" : "mbridge_reward_endcard_native_hor");
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView
    protected void b() {
        if (this.f38818h) {
            this.f38889r.setOnClickListener(new b());
            this.H.setOnClickListener(new c());
            this.ctaView.setOnClickListener(new d());
            this.f38892u.setOnClickListener(new e());
            this.f38891t.setOnClickListener(new f());
        }
    }

    @TargetApi(17)
    public Bitmap blurBitmap(Bitmap bitmap) {
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
            RenderScript renderScriptCreate = RenderScript.create(this.f38811a.getApplicationContext());
            ScriptIntrinsicBlur scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
            Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(renderScriptCreate, bitmap);
            Allocation allocationCreateFromBitmap2 = Allocation.createFromBitmap(renderScriptCreate, bitmapCreateBitmap);
            scriptIntrinsicBlurCreate.setRadius(10.0f);
            scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
            scriptIntrinsicBlurCreate.forEach(allocationCreateFromBitmap2);
            allocationCreateFromBitmap2.copyTo(bitmapCreateBitmap);
            bitmap.recycle();
            renderScriptCreate.destroy();
            return bitmapCreateBitmap;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.MBridgeBTNativeECDiff, com.mbridge.msdk.video.bt.module.BTBaseView
    public void init(Context context) {
        int iC = c();
        if (g0.a(iC)) {
            this.f38818h = b(iC);
            b();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.F == null) {
            this.F = new a();
        }
        Runnable runnable = this.F;
        if (runnable != null) {
            postDelayed(runnable, this.E * 1000);
        }
        if (!this.f38818h && this.K != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("id", this.f38814d);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("unitId", this.I);
                jSONObject.put("data", jSONObject2);
                o0.a(BTBaseView.TAG, "NativeEC Call H5 onCloseBtnClicked " + jSONObject.toString());
            } catch (JSONException e11) {
                o0.a(BTBaseView.TAG, e11.getMessage());
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(this.K, "onCloseBtnClicked", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        }
        if (this.K != null) {
            JSONObject jSONObject3 = new JSONObject();
            try {
                jSONObject3.put("id", this.f38814d);
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("unitId", this.I);
                jSONObject3.put("data", jSONObject4);
                o0.a(BTBaseView.TAG, "NativeEC Call H5 onEndCardShow " + jSONObject3.toString());
            } catch (JSONException e12) {
                o0.a(BTBaseView.TAG, e12.getMessage());
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(this.K, "onNativeECShow", Base64.encodeToString(jSONObject3.toString().getBytes(), 2));
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.MBridgeBTNativeECDiff, com.mbridge.msdk.video.bt.module.BTBaseView
    public void onDestory() {
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.F;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView
    public void onSelfConfigurationChanged(Configuration configuration) {
        super.onSelfConfigurationChanged(configuration);
        int i11 = configuration.orientation;
        this.f38817g = i11;
        if (i11 == 2) {
            removeView(this.f38887p);
            b(this.f38888q);
        } else {
            removeView(this.f38888q);
            b(this.f38887p);
        }
    }

    public void preLoadData() {
        Bitmap bitmapBlurBitmap;
        try {
            CampaignEx campaignEx = this.f38812b;
            if (campaignEx == null || !this.f38818h) {
                return;
            }
            if (campaignEx.getCbd() > -2) {
                this.E = this.f38812b.getCbd();
            } else {
                com.mbridge.msdk.videocommon.setting.c cVar = this.f38815e;
                if (cVar != null) {
                    this.E = cVar.i();
                }
            }
            com.mbridge.msdk.foundation.same.image.b.a(this.f38811a.getApplicationContext()).a(this.f38812b.getImageUrl(), new com.mbridge.msdk.video.module.listener.impl.e(this.f38891t, this.f38812b, this.I));
            com.mbridge.msdk.foundation.same.image.b.a(this.f38811a.getApplicationContext()).a(this.f38812b.getIconUrl(), new j(this.f38892u, t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 8.0f)));
            this.f38896y.setText(this.f38812b.getAppName());
            this.f38897z.setText(this.f38812b.getAppDesc());
            this.A.setText(this.f38812b.getNumberRating() + ")");
            this.B.removeAllViews();
            if (com.mbridge.msdk.util.b.a()) {
                setChinaCTAData(this.f38812b);
            }
            double rating = this.f38812b.getRating();
            if (rating <= 0.0d) {
                rating = 5.0d;
            }
            this.B.initScore(rating);
            try {
                Bitmap bitmapA = a(this.f38891t.getDrawable());
                if (bitmapA != null && (bitmapBlurBitmap = blurBitmap(bitmapA)) != null) {
                    this.f38890s.setImageBitmap(bitmapBlurBitmap);
                }
            } catch (Throwable unused) {
                this.f38890s.setVisibility(8);
            }
            if (!TextUtils.isEmpty(this.f38812b.getendcard_url()) && this.f38812b.getendcard_url().contains("alecfc=1")) {
                this.C = true;
            }
            if (!TextUtils.isEmpty(this.f38812b.getendcard_url()) && this.f38812b.getendcard_url().contains("wlgo=1")) {
                this.G = true;
            }
            String language = Locale.getDefault().getLanguage();
            if (TextUtils.isEmpty(language) || !language.equals("zh")) {
                this.f38893v.setImageDrawable(getResources().getDrawable(getResources().getIdentifier("mbridge_reward_flag_en", "drawable", com.mbridge.msdk.foundation.controller.c.m().h())));
            } else {
                this.f38893v.setImageDrawable(getResources().getDrawable(getResources().getIdentifier("mbridge_reward_flag_cn", "drawable", com.mbridge.msdk.foundation.controller.c.m().h())));
            }
            if (!this.G) {
                this.f38893v.setVisibility(4);
                this.f38895x.setVisibility(4);
            }
            t0.a(2, this.f38894w, this.f38812b, this.f38811a, true, null);
            if (this.D) {
                return;
            }
            this.H.setVisibility(8);
        } catch (Throwable th2) {
            o0.a(BTBaseView.TAG, th2.getMessage());
        }
    }

    public void setCreateWebView(WebView webView) {
        this.K = webView;
    }

    public void setJSCommon(k kVar) {
        this.J = kVar;
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView
    public void setUnitId(String str) {
        this.I = str;
    }
}
