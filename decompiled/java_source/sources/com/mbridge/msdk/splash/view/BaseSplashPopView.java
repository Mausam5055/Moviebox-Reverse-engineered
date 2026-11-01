package com.mbridge.msdk.splash.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.mbridge.msdk.click.j;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.n0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.s0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.y;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.MBridgeIds;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
public class BaseSplashPopView extends RelativeLayout {
    public static final int TYPE_POP_DEFAULT = 1;
    public static final int TYPE_POP_LARGE = 4;
    public static final int TYPE_POP_MEDIUM = 3;
    public static final int TYPE_POP_SMALL = 2;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final AtomicInteger f37655v = new AtomicInteger(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected String f37656a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String f37657b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f37658c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private CampaignEx f37659d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected com.mbridge.msdk.splash.middle.d f37660e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ImageView f37661f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ImageView f37662g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ImageView f37663h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ImageView f37664i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private TextView f37665j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private TextView f37666k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private TextView f37667l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f37668m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected Handler f37669n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f37670o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected com.mbridge.msdk.click.a f37671p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private j f37672q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Runnable f37673r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Runnable f37674s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    View.OnClickListener f37675t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    View.OnClickListener f37676u;

    class a implements j {
        a() {
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onFinishRedirection(Campaign campaign, String str) {
            if (campaign == null) {
                return;
            }
            s0.a(campaign, BaseSplashPopView.this);
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onRedirectionFailed(Campaign campaign, String str) {
            if (campaign == null) {
                return;
            }
            s0.a(campaign, BaseSplashPopView.this);
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onStartRedirection(Campaign campaign, String str) {
            int iA;
            int iA2;
            if (BaseSplashPopView.this.f37658c == 1) {
                int iMin = Math.min(BaseSplashPopView.this.getWidth(), BaseSplashPopView.this.getHeight());
                int iA3 = (t0.a(BaseSplashPopView.this.getContext(), 60.0f) - Math.min(Math.max(iMin / 4, 70), iMin)) / 2;
                iA = t0.a(BaseSplashPopView.this.getContext(), 23.0f) + iA3;
                iA2 = t0.a(BaseSplashPopView.this.getContext(), 10.0f) + iA3;
            } else {
                iA = 0;
                iA2 = 0;
            }
            s0.a(campaign, BaseSplashPopView.this, iA, iA2);
        }
    }

    class b implements com.mbridge.msdk.foundation.same.image.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f37678a;

        b(boolean z10) {
            this.f37678a = z10;
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            o0.b("MBSplashPopView", str);
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            try {
                if (bitmap.isRecycled()) {
                    return;
                }
                Bitmap bitmapB = this.f37678a ? n0.b(bitmap) : n0.a(bitmap, 1, 16);
                ImageView imageView = BaseSplashPopView.this.f37661f;
                if (bitmapB != null) {
                    bitmap = bitmapB;
                }
                imageView.setImageBitmap(bitmap);
            } catch (Throwable th2) {
                o0.b("MBSplashPopView", th2.getMessage());
            }
        }
    }

    class c implements com.mbridge.msdk.foundation.same.image.c {
        c() {
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            o0.b("MBSplashPopView", str);
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            try {
                if (bitmap.isRecycled()) {
                    return;
                }
                BaseSplashPopView.this.f37663h.setImageBitmap(y.a(bitmap, 10));
            } catch (Throwable th2) {
                o0.b("MBSplashPopView", th2.getMessage());
            }
        }
    }

    class d implements com.mbridge.msdk.foundation.same.image.c {
        d() {
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            o0.b("MBSplashPopView", str);
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            try {
                if (bitmap.isRecycled()) {
                    return;
                }
                BaseSplashPopView.this.f37662g.setImageBitmap(n0.a(bitmap, 1, 16));
            } catch (Throwable th2) {
                o0.b("MBSplashPopView", th2.getMessage());
            }
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (BaseSplashPopView.this.f37667l != null) {
                if (BaseSplashPopView.this.f37668m != 0) {
                    BaseSplashPopView.g(BaseSplashPopView.this);
                    BaseSplashPopView.this.f37667l.setText(String.valueOf(BaseSplashPopView.this.f37668m));
                    BaseSplashPopView baseSplashPopView = BaseSplashPopView.this;
                    baseSplashPopView.f37669n.postDelayed(baseSplashPopView.f37673r, 1000L);
                    return;
                }
                BaseSplashPopView.this.f37668m = -1;
                BaseSplashPopView.this.g();
                BaseSplashPopView baseSplashPopView2 = BaseSplashPopView.this;
                baseSplashPopView2.f37669n.removeCallbacks(baseSplashPopView2.f37673r);
                BaseSplashPopView baseSplashPopView3 = BaseSplashPopView.this;
                com.mbridge.msdk.splash.middle.d dVar = baseSplashPopView3.f37660e;
                if (dVar != null) {
                    dVar.a(new MBridgeIds(baseSplashPopView3.f37656a, baseSplashPopView3.f37657b), 5);
                }
            }
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseSplashPopView baseSplashPopView = BaseSplashPopView.this;
            com.mbridge.msdk.splash.middle.d dVar = baseSplashPopView.f37660e;
            if (dVar != null) {
                dVar.a(new MBridgeIds(baseSplashPopView.f37656a, baseSplashPopView.f37657b), BaseSplashPopView.this.getWidth(), BaseSplashPopView.this.getHeight(), BaseSplashPopView.this.f37658c);
            }
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BaseSplashPopView baseSplashPopView = BaseSplashPopView.this;
            if (baseSplashPopView.f37660e != null) {
                baseSplashPopView.b(baseSplashPopView.f37659d);
            }
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BaseSplashPopView baseSplashPopView;
            com.mbridge.msdk.splash.middle.d dVar;
            if (BaseSplashPopView.this.f37668m <= 0 && (dVar = (baseSplashPopView = BaseSplashPopView.this).f37660e) != null) {
                dVar.a(new MBridgeIds(baseSplashPopView.f37656a, baseSplashPopView.f37657b), 4);
            }
        }
    }

    public static class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f37686a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f37687b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f37688c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private CampaignEx f37689d;

        public i(String str, String str2, int i11, CampaignEx campaignEx) {
            this.f37686a = str;
            this.f37687b = str2;
            this.f37688c = i11;
            this.f37689d = campaignEx;
        }

        public CampaignEx a() {
            return this.f37689d;
        }

        public String b() {
            return this.f37686a;
        }

        public String c() {
            return this.f37687b;
        }

        public int d() {
            return this.f37688c;
        }
    }

    public BaseSplashPopView(Context context) {
        super(context);
        this.f37658c = 1;
        this.f37668m = -1;
        this.f37669n = new Handler();
        this.f37670o = false;
        this.f37672q = new a();
        this.f37673r = new e();
        this.f37674s = new f();
        this.f37675t = new g();
        this.f37676u = new h();
        this.f37658c = 1;
        o0.c("MBSplashPopView", "Please call setPopViewType() to init.");
    }

    public BaseSplashPopView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f37658c = 1;
        this.f37668m = -1;
        this.f37669n = new Handler();
        this.f37670o = false;
        this.f37672q = new a();
        this.f37673r = new e();
        this.f37674s = new f();
        this.f37675t = new g();
        this.f37676u = new h();
        this.f37658c = 1;
        o0.c("MBSplashPopView", "Please call setPopViewType() to init.");
    }

    public BaseSplashPopView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f37658c = 1;
        this.f37668m = -1;
        this.f37669n = new Handler();
        this.f37670o = false;
        this.f37672q = new a();
        this.f37673r = new e();
        this.f37674s = new f();
        this.f37675t = new g();
        this.f37676u = new h();
        this.f37658c = 1;
        o0.c("MBSplashPopView", "Please call setPopViewType() to init.");
    }

    public BaseSplashPopView(Context context, AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
        this.f37658c = 1;
        this.f37668m = -1;
        this.f37669n = new Handler();
        this.f37670o = false;
        this.f37672q = new a();
        this.f37673r = new e();
        this.f37674s = new f();
        this.f37675t = new g();
        this.f37676u = new h();
        this.f37658c = 1;
        o0.c("MBSplashPopView", "Please call setPopViewType() to init.");
    }

    public BaseSplashPopView(Context context, i iVar, com.mbridge.msdk.splash.middle.d dVar) {
        super(context);
        this.f37658c = 1;
        this.f37668m = -1;
        this.f37669n = new Handler();
        this.f37670o = false;
        this.f37672q = new a();
        this.f37673r = new e();
        this.f37674s = new f();
        this.f37675t = new g();
        this.f37676u = new h();
        if (iVar == null) {
            throw new IllegalArgumentException("Parameters is NULL, can't gen view.");
        }
        this.f37657b = iVar.c();
        this.f37656a = iVar.b();
        this.f37658c = iVar.d();
        this.f37659d = iVar.a();
        this.f37660e = dVar;
        a();
    }

    private void a() {
        if (this.f37659d == null) {
            return;
        }
        setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        int i11 = this.f37658c;
        if (i11 == 1) {
            c();
            return;
        }
        if (i11 == 2) {
            f();
        } else if (i11 == 3) {
            e();
        } else {
            if (i11 != 4) {
                return;
            }
            d();
        }
    }

    private void a(String str, boolean z10) {
        com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(str, new b(z10));
    }

    private void b() {
        String language;
        this.f37664i = new ImageView(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(t0.a(getContext(), 32.0f), t0.a(getContext(), 13.0f));
        layoutParams.addRule(11);
        layoutParams.addRule(8, this.f37661f.getId());
        this.f37664i.setLayoutParams(layoutParams);
        try {
            language = getResources().getConfiguration().locale.getLanguage();
        } catch (Throwable th2) {
            o0.b("MBSplashPopView", th2.getMessage());
            language = "ZH";
        }
        this.f37664i.setBackgroundResource((language.toUpperCase().equals("CN") || language.toUpperCase().equals("ZH")) ? getResources().getIdentifier("mbridge_splash_pop_ad", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()) : getResources().getIdentifier("mbridge_splash_pop_ad_en", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
        addView(this.f37664i);
    }

    private void c() {
        View imageView = new ImageView(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(t0.a(getContext(), 80.0f), t0.a(getContext(), 80.0f));
        layoutParams.addRule(9);
        layoutParams.topMargin = t0.a(getContext(), 16.0f);
        imageView.setId(generateViewId());
        imageView.setLayoutParams(layoutParams);
        imageView.setBackgroundResource(getResources().getIdentifier("mbridge_splash_popview_default", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
        this.f37661f = new ImageView(getContext());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(t0.a(getContext(), 60.0f), t0.a(getContext(), 60.0f));
        layoutParams2.addRule(6, imageView.getId());
        layoutParams2.topMargin = t0.a(getContext(), 7.0f);
        layoutParams2.leftMargin = t0.a(getContext(), 10.0f);
        this.f37661f.setId(generateViewId());
        this.f37661f.setLayoutParams(layoutParams2);
        this.f37661f.setScaleType(ImageView.ScaleType.FIT_CENTER);
        CampaignEx campaignEx = this.f37659d;
        if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getIconUrl())) {
            a(this.f37659d.getIconUrl(), true);
        }
        this.f37667l = new TextView(getContext());
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.addRule(5, imageView.getId());
        layoutParams3.addRule(8, imageView.getId());
        layoutParams3.leftMargin = t0.a(getContext(), 62.0f);
        layoutParams3.bottomMargin = t0.a(getContext(), 70.0f);
        this.f37667l.setId(generateViewId());
        this.f37667l.setTextSize(10.0f);
        this.f37667l.setTextColor(-1);
        this.f37667l.setGravity(17);
        this.f37667l.setMinWidth(t0.a(getContext(), 16.0f));
        this.f37667l.setMaxHeight(t0.a(getContext(), 16.0f));
        this.f37667l.setLayoutParams(layoutParams3);
        this.f37667l.setBackgroundResource(getResources().getIdentifier("mbridge_cm_circle_50black", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
        addView(imageView);
        addView(this.f37667l);
        addView(this.f37661f);
        CampaignEx campaignEx2 = this.f37659d;
        if (campaignEx2 != null && campaignEx2.getFlbSkipTime() <= 0) {
            g();
        }
        setOnClickListener(this.f37675t);
        this.f37667l.setOnClickListener(this.f37676u);
    }

    private void d() {
        this.f37663h = new ImageView(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, t0.a(getContext(), 131.0f));
        layoutParams.addRule(10);
        layoutParams.addRule(14);
        this.f37663h.setScaleType(ImageView.ScaleType.FIT_XY);
        this.f37663h.setId(generateViewId());
        this.f37663h.setLayoutParams(layoutParams);
        setBackgroundImage(this.f37659d.getImageUrl());
        this.f37662g = new ImageView(getContext());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, t0.a(getContext(), 131.0f));
        layoutParams2.addRule(10);
        layoutParams2.addRule(14);
        this.f37662g.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.f37662g.setId(generateViewId());
        this.f37662g.setLayoutParams(layoutParams2);
        setForegroundImage(this.f37659d.getImageUrl());
        this.f37661f = new ImageView(getContext());
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(t0.a(getContext(), 50.0f), t0.a(getContext(), 50.0f));
        layoutParams3.addRule(9);
        layoutParams3.addRule(3, this.f37663h.getId());
        layoutParams3.topMargin = 20;
        this.f37661f.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        this.f37661f.setId(generateViewId());
        this.f37661f.setLayoutParams(layoutParams3);
        a(this.f37659d.getIconUrl(), false);
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams4.addRule(1, this.f37661f.getId());
        layoutParams4.addRule(6, this.f37661f.getId());
        layoutParams4.addRule(8, this.f37661f.getId());
        layoutParams4.leftMargin = t0.a(getContext(), 8.0f);
        layoutParams4.rightMargin = t0.a(getContext(), 8.0f);
        relativeLayout.setLayoutParams(layoutParams4);
        relativeLayout.setGravity(16);
        TextView textView = new TextView(getContext());
        this.f37665j = textView;
        textView.setId(generateViewId());
        this.f37665j.setGravity(16);
        this.f37665j.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        this.f37665j.setTextSize(12.0f);
        this.f37665j.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        TextView textView2 = this.f37665j;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.MARQUEE;
        textView2.setEllipsize(truncateAt);
        this.f37665j.setMarqueeRepeatLimit(-1);
        this.f37665j.setSelected(true);
        this.f37665j.setSingleLine(true);
        this.f37665j.setText(this.f37659d.getAppName());
        TextView textView3 = new TextView(getContext());
        this.f37666k = textView3;
        textView3.setId(generateViewId());
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams5.addRule(5, this.f37665j.getId());
        layoutParams5.addRule(3, this.f37665j.getId());
        layoutParams5.topMargin = t0.a(getContext(), 4.0f);
        layoutParams5.rightMargin = t0.a(getContext(), 36.0f);
        this.f37666k.setGravity(16);
        this.f37666k.setLayoutParams(layoutParams5);
        this.f37666k.setTextSize(8.0f);
        this.f37666k.setTextColor(-10066330);
        this.f37666k.setEllipsize(truncateAt);
        this.f37666k.setMarqueeRepeatLimit(-1);
        this.f37666k.setSelected(true);
        this.f37666k.setSingleLine(true);
        this.f37666k.setText(this.f37659d.getAppDesc());
        relativeLayout.addView(this.f37665j);
        relativeLayout.addView(this.f37666k);
        addView(this.f37663h);
        addView(this.f37662g);
        addView(this.f37661f);
        addView(relativeLayout);
        b();
        setOnClickListener(this.f37675t);
    }

    private void e() {
        int iA = t0.a(getContext(), 4.0f);
        this.f37661f = new ImageView(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(t0.a(getContext(), 50.0f), t0.a(getContext(), 50.0f));
        layoutParams.addRule(9);
        this.f37661f.setId(generateViewId());
        this.f37661f.setLayoutParams(layoutParams);
        this.f37661f.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        this.f37661f.setPadding(iA, iA, iA, iA);
        a(this.f37659d.getIconUrl(), false);
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(1, this.f37661f.getId());
        layoutParams2.addRule(6, this.f37661f.getId());
        layoutParams2.addRule(8, this.f37661f.getId());
        layoutParams2.leftMargin = t0.a(getContext(), 8.0f);
        layoutParams2.rightMargin = t0.a(getContext(), 8.0f);
        relativeLayout.setLayoutParams(layoutParams2);
        relativeLayout.setGravity(16);
        TextView textView = new TextView(getContext());
        this.f37665j = textView;
        textView.setId(generateViewId());
        this.f37665j.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        this.f37665j.setGravity(16);
        this.f37665j.setTextSize(12.0f);
        this.f37665j.setSelected(true);
        TextView textView2 = this.f37665j;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.MARQUEE;
        textView2.setEllipsize(truncateAt);
        this.f37665j.setMarqueeRepeatLimit(-1);
        this.f37665j.setSingleLine(true);
        this.f37665j.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        this.f37665j.setText(this.f37659d.getAppName());
        TextView textView3 = new TextView(getContext());
        this.f37666k = textView3;
        textView3.setId(generateViewId());
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.addRule(5, this.f37665j.getId());
        layoutParams3.addRule(3, this.f37665j.getId());
        layoutParams3.topMargin = t0.a(getContext(), 4.0f);
        layoutParams3.rightMargin = t0.a(getContext(), 36.0f);
        this.f37666k.setGravity(16);
        this.f37666k.setLayoutParams(layoutParams3);
        this.f37666k.setTextSize(8.0f);
        this.f37666k.setTextColor(-10066330);
        this.f37666k.setEllipsize(truncateAt);
        this.f37666k.setMarqueeRepeatLimit(-1);
        this.f37666k.setSelected(true);
        this.f37666k.setSingleLine(true);
        this.f37666k.setText(this.f37659d.getAppDesc());
        relativeLayout.addView(this.f37665j);
        relativeLayout.addView(this.f37666k);
        setBackgroundResource(getResources().getIdentifier("mbridge_shape_corners_bg", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
        addView(this.f37661f);
        addView(relativeLayout);
        b();
        setOnClickListener(this.f37675t);
    }

    private void f() {
        int iA = t0.a(getContext(), 4.0f);
        this.f37661f = new ImageView(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(t0.a(getContext(), 28.0f), t0.a(getContext(), 28.0f));
        layoutParams.addRule(9);
        this.f37661f.setId(generateViewId());
        this.f37661f.setLayoutParams(layoutParams);
        this.f37661f.setPadding(iA, iA, iA, iA);
        this.f37661f.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        a(this.f37659d.getIconUrl(), false);
        TextView textView = new TextView(getContext());
        this.f37665j = textView;
        textView.setId(generateViewId());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(1, this.f37661f.getId());
        layoutParams2.addRule(6, this.f37661f.getId());
        layoutParams2.addRule(8, this.f37661f.getId());
        layoutParams2.leftMargin = t0.a(getContext(), 4.0f);
        layoutParams2.rightMargin = t0.a(getContext(), 40.0f);
        this.f37665j.setLayoutParams(layoutParams2);
        this.f37665j.setGravity(16);
        this.f37665j.setTextSize(10.0f);
        this.f37665j.setSelected(true);
        this.f37665j.setEllipsize(TextUtils.TruncateAt.MARQUEE);
        this.f37665j.setMarqueeRepeatLimit(-1);
        this.f37665j.setSingleLine(true);
        this.f37665j.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        this.f37665j.setText(this.f37659d.getAppName());
        setBackgroundResource(getResources().getIdentifier("mbridge_shape_corners_bg", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
        addView(this.f37661f);
        addView(this.f37665j);
        b();
        setOnClickListener(this.f37675t);
    }

    static /* synthetic */ int g(BaseSplashPopView baseSplashPopView) {
        int i11 = baseSplashPopView.f37668m;
        baseSplashPopView.f37668m = i11 - 1;
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        TextView textView = this.f37667l;
        if (textView != null) {
            ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
            layoutParams.width = t0.a(getContext(), 16.0f);
            layoutParams.height = t0.a(getContext(), 16.0f);
            this.f37667l.setLayoutParams(layoutParams);
            this.f37667l.setText("");
            this.f37667l.setSelected(true);
            this.f37667l.setBackgroundResource(getResources().getIdentifier("mbridge_splash_popview_close", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
        }
    }

    public static int generateViewId() {
        AtomicInteger atomicInteger;
        int i11;
        int i12;
        do {
            atomicInteger = f37655v;
            i11 = atomicInteger.get();
            i12 = i11 + 1;
            if (i12 > 16777215) {
                i12 = 1;
            }
        } while (!atomicInteger.compareAndSet(i11, i12));
        return i11;
    }

    private void setBackgroundImage(String str) {
        com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(str, new c());
    }

    private void setForegroundImage(String str) {
        com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(str, new d());
    }

    protected void a(CampaignEx campaignEx) {
        if (this.f37671p == null) {
            com.mbridge.msdk.click.a aVar = new com.mbridge.msdk.click.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f37657b);
            this.f37671p = aVar;
            aVar.a(this.f37672q);
        }
        campaignEx.setCampaignUnitId(this.f37657b);
        this.f37671p.a(campaignEx);
        if (!campaignEx.isReportClick()) {
            campaignEx.setReportClick(true);
            com.mbridge.msdk.splash.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx);
        }
        com.mbridge.msdk.splash.middle.d dVar = this.f37660e;
        if (dVar != null) {
            dVar.a(new MBridgeIds(this.f37656a, this.f37657b));
            this.f37660e.a(new MBridgeIds(this.f37656a, this.f37657b), 6);
        }
    }

    protected void b(CampaignEx campaignEx) {
        com.mbridge.msdk.splash.report.a.a(campaignEx, this.f37657b);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f37660e != null) {
            postDelayed(this.f37674s, 500L);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        release();
    }

    public void pauseCountDown() {
        this.f37670o = true;
        if (this.f37667l != null) {
            this.f37669n.removeCallbacks(this.f37673r);
        }
    }

    public void reStartCountDown() {
        if (this.f37670o) {
            this.f37670o = false;
            int i11 = this.f37668m;
            if (i11 == -1 || i11 == 0) {
                g();
                return;
            }
            TextView textView = this.f37667l;
            if (textView != null) {
                textView.setText(String.valueOf(i11));
                this.f37669n.postDelayed(this.f37673r, 1000L);
            }
        }
    }

    public void release() {
        try {
            this.f37669n.removeCallbacks(this.f37674s);
            this.f37669n.removeCallbacks(this.f37673r);
            this.f37673r = null;
            detachAllViewsFromParent();
            this.f37659d = null;
            this.f37660e = null;
        } catch (Exception e11) {
            o0.b("MBSplashPopView", e11.getMessage());
        }
    }

    public void setPopViewType(i iVar, com.mbridge.msdk.splash.middle.d dVar) {
        if (iVar == null) {
            throw new IllegalArgumentException("Parameters is NULL, can't gen view.");
        }
        this.f37657b = iVar.c();
        this.f37656a = iVar.b();
        this.f37658c = iVar.d();
        this.f37659d = iVar.a();
        this.f37660e = dVar;
        a();
    }

    public void startCountDown() {
        this.f37669n.removeCallbacks(this.f37673r);
        CampaignEx campaignEx = this.f37659d;
        if (campaignEx == null || this.f37658c != 1) {
            return;
        }
        int flbSkipTime = campaignEx.getFlbSkipTime();
        if (flbSkipTime <= 0) {
            g();
            return;
        }
        this.f37668m = flbSkipTime;
        TextView textView = this.f37667l;
        if (textView != null) {
            textView.setText(String.valueOf(flbSkipTime));
            this.f37669n.postDelayed(this.f37673r, 1000L);
        }
    }
}
