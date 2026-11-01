package com.mbridge.msdk.splash.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.n0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.shake.MBShakeView;
import com.mbridge.msdk.splash.view.nativeview.MBNoRecycledCrashImageView;
import com.mbridge.msdk.splash.view.nativeview.MBSplashClickView;
import com.mbridge.msdk.widget.FeedBackButton;

/* JADX INFO: loaded from: classes5.dex */
public class BaseMBSplashNativeView extends RelativeLayout {
    private int A;
    private int B;
    private int C;
    private float D;
    private float E;
    private boolean F;
    private boolean G;
    protected boolean H;
    protected boolean I;
    protected boolean J;
    protected String K;
    private String L;
    protected MBSplashView M;
    protected CampaignEx N;
    protected MBShakeView O;
    private String P;
    private String Q;
    private String R;
    protected com.mbridge.msdk.shake.b S;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private MBNoRecycledCrashImageView f37622a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private MBNoRecycledCrashImageView f37623b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private RelativeLayout f37624c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ImageView f37625d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private FeedBackButton f37626e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected TextView f37627f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private RelativeLayout f37628g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private MBNoRecycledCrashImageView f37629h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private TextView f37630i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private MBNoRecycledCrashImageView f37631j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private TextView f37632k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private TextView f37633l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected RelativeLayout f37634m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected TextView f37635n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected TextView f37636o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected TextView f37637p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected TextView f37638q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected MBSplashClickView f37639r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected int f37640s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f37641t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f37642u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f37643v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    protected int f37644w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    protected int f37645x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    protected int f37646y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    protected int f37647z;

    class a implements com.mbridge.msdk.foundation.same.image.c {
        a() {
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            if (bitmap != null) {
                try {
                    if (bitmap.isRecycled()) {
                        return;
                    }
                    if (bitmap.getWidth() < bitmap.getHeight()) {
                        BaseMBSplashNativeView.this.G = true;
                        BaseMBSplashNativeView.this.f37628g.setVisibility(4);
                        BaseMBSplashNativeView.this.f37623b.setScaleType(ImageView.ScaleType.FIT_CENTER);
                        BaseMBSplashNativeView.this.f37623b.setImageBitmap(bitmap);
                    } else if (BaseMBSplashNativeView.this.A == 1) {
                        BaseMBSplashNativeView.this.f37628g.setVisibility(0);
                        try {
                            Bitmap bitmapA = n0.a(bitmap, 1, t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 10.0f));
                            if (bitmapA != null && !bitmapA.isRecycled()) {
                                BaseMBSplashNativeView.this.f37631j.setScaleType(ImageView.ScaleType.FIT_XY);
                                BaseMBSplashNativeView.this.f37631j.setImageBitmap(bitmapA);
                            }
                        } catch (Throwable th2) {
                            try {
                                o0.b("MBSplashNativeView", th2.getMessage());
                                BaseMBSplashNativeView.this.f37631j.setImageBitmap(bitmap);
                            } catch (Throwable th3) {
                                o0.b("MBSplashNativeView", th3.getMessage());
                            }
                        }
                        BaseMBSplashNativeView.this.f37630i.setText(BaseMBSplashNativeView.this.N.getAppName());
                        BaseMBSplashNativeView.this.f();
                        try {
                            try {
                                Bitmap bitmapA2 = n0.a(bitmap);
                                if (bitmapA2 != null && !bitmapA2.isRecycled()) {
                                    BaseMBSplashNativeView.this.f37623b.setScaleType(ImageView.ScaleType.CENTER_CROP);
                                    BaseMBSplashNativeView.this.f37623b.setImageBitmap(bitmapA2);
                                }
                            } catch (Throwable th4) {
                                o0.b("MBSplashNativeView", th4.getMessage());
                            }
                        } catch (Throwable unused) {
                            BaseMBSplashNativeView.this.f37623b.setImageBitmap(bitmap);
                        }
                    } else {
                        BaseMBSplashNativeView.this.f37628g.setVisibility(4);
                        BaseMBSplashNativeView.this.f37623b.setScaleType(ImageView.ScaleType.FIT_CENTER);
                        BaseMBSplashNativeView.this.f37623b.setImageBitmap(bitmap);
                    }
                    try {
                        Bitmap bitmapA3 = n0.a(bitmap);
                        if (bitmapA3 == null || bitmapA3.isRecycled()) {
                            return;
                        }
                        BaseMBSplashNativeView.this.f37622a.setScaleType(ImageView.ScaleType.CENTER_CROP);
                        BaseMBSplashNativeView.this.f37622a.setImageBitmap(bitmapA3);
                        return;
                    } catch (Throwable unused2) {
                        BaseMBSplashNativeView.this.f37623b.setImageBitmap(bitmap);
                        return;
                    }
                    o0.b("MBSplashNativeView", th.getMessage());
                } catch (Throwable th5) {
                    o0.b("MBSplashNativeView", th5.getMessage());
                }
            }
        }
    }

    class b implements com.mbridge.msdk.foundation.same.image.c {
        b() {
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            BaseMBSplashNativeView.this.f37629h.setVisibility(4);
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            Bitmap bitmapA;
            if (bitmap != null) {
                try {
                    if (bitmap.isRecycled()) {
                        return;
                    }
                    try {
                        if (BaseMBSplashNativeView.this.f37629h == null || (bitmapA = n0.a(bitmap, 1, t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 40.0f))) == null || bitmapA.isRecycled()) {
                            return;
                        }
                        BaseMBSplashNativeView.this.f37629h.setImageBitmap(bitmapA);
                        return;
                    } catch (Throwable th2) {
                        o0.b("MBSplashNativeView", th2.getMessage());
                        BaseMBSplashNativeView.this.f37629h.setImageBitmap(bitmap);
                        return;
                    }
                    o0.b("MBSplashNativeView", th.getMessage());
                } catch (Throwable th3) {
                    o0.b("MBSplashNativeView", th3.getMessage());
                }
            }
        }
    }

    class c implements com.mbridge.msdk.foundation.feedback.a {
        c() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            BaseMBSplashNativeView baseMBSplashNativeView = BaseMBSplashNativeView.this;
            baseMBSplashNativeView.J = true;
            baseMBSplashNativeView.setCountDownStatus(false);
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            BaseMBSplashNativeView baseMBSplashNativeView = BaseMBSplashNativeView.this;
            baseMBSplashNativeView.J = false;
            baseMBSplashNativeView.setCountDownStatus(true);
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            BaseMBSplashNativeView baseMBSplashNativeView = BaseMBSplashNativeView.this;
            baseMBSplashNativeView.J = false;
            baseMBSplashNativeView.setCountDownStatus(true);
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BaseMBSplashNativeView.this.a(1);
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BaseMBSplashNativeView.this.a(0);
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BaseMBSplashNativeView baseMBSplashNativeView = BaseMBSplashNativeView.this;
            if (baseMBSplashNativeView.H) {
                if (baseMBSplashNativeView.M.getSplashSignalCommunicationImpl() != null && BaseMBSplashNativeView.this.M.getSplashSignalCommunicationImpl().a() != null) {
                    BaseMBSplashNativeView.this.M.getSplashSignalCommunicationImpl().a().close();
                }
                BaseMBSplashNativeView.this.f37627f.setVisibility(4);
                BaseMBSplashNativeView.this.f37627f.setEnabled(false);
            }
        }
    }

    class g implements com.mbridge.msdk.foundation.feedback.a {
        g() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            BaseMBSplashNativeView baseMBSplashNativeView = BaseMBSplashNativeView.this;
            baseMBSplashNativeView.J = true;
            baseMBSplashNativeView.setCountDownStatus(false);
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            BaseMBSplashNativeView baseMBSplashNativeView = BaseMBSplashNativeView.this;
            baseMBSplashNativeView.J = false;
            baseMBSplashNativeView.setCountDownStatus(true);
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            BaseMBSplashNativeView baseMBSplashNativeView = BaseMBSplashNativeView.this;
            baseMBSplashNativeView.J = false;
            baseMBSplashNativeView.setCountDownStatus(true);
        }
    }

    public BaseMBSplashNativeView(Context context) {
        super(context);
        this.I = false;
        this.J = false;
    }

    public BaseMBSplashNativeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BaseMBSplashNativeView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.I = false;
        this.J = false;
    }

    public BaseMBSplashNativeView(Context context, MBSplashView mBSplashView, com.mbridge.msdk.splash.common.c cVar) {
        super(context);
        this.I = false;
        this.J = false;
        if (cVar == null) {
            throw new IllegalArgumentException("Parameters is NULL, can't gen view.");
        }
        this.K = cVar.l();
        this.L = cVar.h();
        this.N = cVar.b();
        this.M = mBSplashView;
        this.f37640s = cVar.d();
        this.f37643v = cVar.c();
        this.f37642u = cVar.f();
        this.f37644w = cVar.a();
        this.f37645x = cVar.i();
        this.f37646y = cVar.j();
        this.f37647z = cVar.k();
        this.A = cVar.g();
        this.H = cVar.m();
        this.B = cVar.e();
        d();
        c();
    }

    private void a() {
        CampaignEx campaignEx = this.N;
        if (campaignEx != null) {
            campaignEx.setCampaignUnitId(this.K);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.K, 3);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.K, this.N);
        }
        if (com.mbridge.msdk.foundation.feedback.b.b().a()) {
            com.mbridge.msdk.foundation.feedback.b.b().a(this.K, new g());
            com.mbridge.msdk.foundation.feedback.b.b().a(this.K, this.f37626e);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.K, 3);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.K, this.N);
            return;
        }
        FeedBackButton feedBackButton = this.f37626e;
        if (feedBackButton != null) {
            feedBackButton.setVisibility(8);
        }
    }

    private void c() {
        try {
            this.F = getContext().getResources().getConfiguration().locale.getLanguage().contains("zh");
        } catch (Throwable th2) {
            o0.b("MBSplashNativeView", th2.getMessage());
        }
        a();
        g();
        h();
        e();
        i();
        j();
        b();
        updateCountDown(this.f37640s);
    }

    private void d() {
        try {
            View viewInflate = LayoutInflater.from(getContext()).inflate(this.A == 1 ? g0.a(getContext().getApplicationContext(), "mbridge_splash_portrait", TtmlNode.TAG_LAYOUT) : g0.a(getContext().getApplicationContext(), "mbridge_splash_landscape", TtmlNode.TAG_LAYOUT), (ViewGroup) null);
            addView(viewInflate);
            this.f37622a = (MBNoRecycledCrashImageView) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_iv_image_bg", "id"));
            this.f37623b = (MBNoRecycledCrashImageView) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_iv_image", "id"));
            this.f37624c = (RelativeLayout) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_topcontroller", "id"));
            this.f37625d = (ImageView) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_iv_link", "id"));
            this.f37626e = (FeedBackButton) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_feedback", "id"));
            this.f37627f = (TextView) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_tv_skip", "id"));
            this.f37628g = (RelativeLayout) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_landscape_foreground", "id"));
            this.f37629h = (MBNoRecycledCrashImageView) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_iv_icon", "id"));
            this.f37630i = (TextView) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_tv_title", "id"));
            this.f37631j = (MBNoRecycledCrashImageView) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_iv_foregroundimage", "id"));
            this.f37632k = (TextView) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_tv_adrect", "id"));
            this.f37634m = (RelativeLayout) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_layout_appinfo", "id"));
            this.f37635n = (TextView) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_tv_appinfo", "id"));
            this.f37636o = (TextView) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_tv_privacy", "id"));
            this.f37637p = (TextView) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_tv_permission", "id"));
            this.f37638q = (TextView) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_tv_app_desc", "id"));
            this.f37639r = (MBSplashClickView) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_tv_click", "id"));
            this.f37633l = (TextView) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_tv_adcircle", "id"));
            int iA = g0.a(getContext().getApplicationContext(), "mbridge_splash_count_time_can_skip", "string");
            int iA2 = g0.a(getContext().getApplicationContext(), "mbridge_splash_count_time_can_skip_not", "string");
            int iA3 = g0.a(getContext().getApplicationContext(), "mbridge_splash_count_time_can_skip_s", "string");
            this.Q = getContext().getResources().getString(iA);
            this.R = getContext().getResources().getString(iA2);
            this.P = getContext().getResources().getString(iA3);
            this.C = t0.a(getContext(), 9.0f);
        } catch (Throwable th2) {
            o0.b("MBSplashNativeView", th2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        if (TextUtils.isEmpty(this.N.getIconUrl())) {
            this.f37629h.setVisibility(4);
        } else {
            com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(this.N.getIconUrl(), new b());
        }
    }

    private void g() {
        if (TextUtils.isEmpty(this.N.getImageUrl())) {
            this.f37623b.setVisibility(4);
        } else {
            com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(this.N.getImageUrl(), new a());
        }
    }

    private void h() {
        Drawable drawable;
        t0.a(3, this.f37625d, this.N, getContext(), true, new c());
        try {
            drawable = getResources().getDrawable(g0.a(getContext().getApplicationContext(), "mbridge_splash_m_circle", "drawable"));
            try {
                drawable.setBounds(0, 0, t0.a(getContext(), 10.0f), t0.a(getContext(), 10.0f));
            } catch (Throwable th2) {
                th = th2;
                o0.b("MBSplashNativeView", th.getMessage());
            }
        } catch (Throwable th3) {
            th = th3;
            drawable = null;
        }
        if (this.A == 1 && this.G) {
            if (this.B != 0 && drawable != null) {
                this.f37633l.setCompoundDrawables(drawable, null, null, null);
            }
            this.f37633l.setText(this.F ? "广告" : "AD");
            this.f37632k.setVisibility(4);
            return;
        }
        if (this.B != 0 && drawable != null) {
            this.f37632k.setCompoundDrawables(drawable, null, null, null);
        }
        this.f37632k.setText(this.F ? "广告" : "AD");
        this.f37633l.setVisibility(4);
    }

    private void i() {
        if (this.f37643v == 1) {
            this.f37639r.setVisibility(8);
        } else if (this.f37645x == 1) {
            this.f37639r.setVisibility(8);
        } else {
            this.f37639r.initView(this.N.getAdCall());
        }
    }

    private void j() {
        if (this.f37642u == 1) {
            setOnClickListener(new d());
        } else {
            this.f37639r.setOnClickListener(new e());
        }
        this.f37627f.setOnClickListener(new f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCountDownStatus(boolean z10) {
        if (this.M.getSplashSignalCommunicationImpl() == null || this.M.getSplashSignalCommunicationImpl().a() == null) {
            return;
        }
        this.M.getSplashSignalCommunicationImpl().a().a(z10 ? 2 : 1, this.f37641t);
    }

    protected void a(int i11) {
        if (this.M.getSplashSignalCommunicationImpl() == null || this.M.getSplashSignalCommunicationImpl().a() == null) {
            return;
        }
        try {
            this.M.getSplashSignalCommunicationImpl().a().a(com.mbridge.msdk.splash.common.util.a.a(com.mbridge.msdk.splash.common.util.a.a(i11, this.D, this.E), this.N));
        } catch (Throwable th2) {
            o0.b("MBSplashNativeView", th2.getMessage());
            this.M.getSplashSignalCommunicationImpl().a().a(this.N);
        }
    }

    protected void b() {
    }

    protected void e() {
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        try {
            if (this.f37645x != 1 || this.O == null || this.S == null) {
                return;
            }
            com.mbridge.msdk.shake.a.a().a(this.S);
        } catch (Throwable th2) {
            o0.b("MBSplashNativeView", th2.getMessage());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        release();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.D = motionEvent.getRawX();
        this.E = motionEvent.getRawY();
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void release() {
        try {
            if (this.S != null) {
                com.mbridge.msdk.shake.a.a().b(this.S);
                this.S = null;
            }
            com.mbridge.msdk.foundation.feedback.b.b().d(this.K);
            detachAllViewsFromParent();
        } catch (Exception e11) {
            o0.b("MBSplashNativeView", e11.getMessage());
        }
    }

    public void setIsPause(boolean z10) {
        this.I = z10;
    }

    public void setNotchPadding(int i11, int i12, int i13, int i14) {
        try {
            RelativeLayout relativeLayout = this.f37624c;
            if (relativeLayout == null) {
                return;
            }
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
            int i15 = this.C;
            layoutParams.leftMargin = i11 + i15;
            layoutParams.rightMargin = i12 + i15;
            layoutParams.topMargin = i13 + i15;
            layoutParams.bottomMargin = i15 + i14;
        } catch (Throwable th2) {
            o0.b("MBSplashNativeView", th2.getMessage());
        }
    }

    public void updateCountDown(int i11) {
        String str;
        if (this.f37627f != null) {
            this.f37641t = i11;
            if (this.H) {
                str = this.Q + " " + i11 + this.P;
            } else {
                str = i11 + this.P + " " + this.R;
            }
            this.f37627f.setText(str);
        }
    }
}
