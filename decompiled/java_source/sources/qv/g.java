package qv;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.noober.background.view.BLConstraintLayout;
import com.tn.lib.view.SwitchButton;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class g implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f73731a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BLConstraintLayout f73732b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BLConstraintLayout f73733c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final BLConstraintLayout f73734d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final BLConstraintLayout f73735e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BLConstraintLayout f73736f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ImageView f73737g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ImageView f73738h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ImageView f73739i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ImageView f73740j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ImageView f73741k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ImageView f73742l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final LinearLayout f73743m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final RecyclerView f73744n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final SwitchButton f73745o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final TextView f73746p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final TextView f73747q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final TextView f73748r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final GradientTextView f73749s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final GradientTextView f73750t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final GradientTextView f73751u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final GradientTextView f73752v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final GradientTextView f73753w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final GradientTextView f73754x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final TextView f73755y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final TextView f73756z;

    private g(ConstraintLayout constraintLayout, BLConstraintLayout bLConstraintLayout, BLConstraintLayout bLConstraintLayout2, BLConstraintLayout bLConstraintLayout3, BLConstraintLayout bLConstraintLayout4, BLConstraintLayout bLConstraintLayout5, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, ImageView imageView6, LinearLayout linearLayout, RecyclerView recyclerView, SwitchButton switchButton, TextView textView, TextView textView2, TextView textView3, GradientTextView gradientTextView, GradientTextView gradientTextView2, GradientTextView gradientTextView3, GradientTextView gradientTextView4, GradientTextView gradientTextView5, GradientTextView gradientTextView6, TextView textView4, TextView textView5) {
        this.f73731a = constraintLayout;
        this.f73732b = bLConstraintLayout;
        this.f73733c = bLConstraintLayout2;
        this.f73734d = bLConstraintLayout3;
        this.f73735e = bLConstraintLayout4;
        this.f73736f = bLConstraintLayout5;
        this.f73737g = imageView;
        this.f73738h = imageView2;
        this.f73739i = imageView3;
        this.f73740j = imageView4;
        this.f73741k = imageView5;
        this.f73742l = imageView6;
        this.f73743m = linearLayout;
        this.f73744n = recyclerView;
        this.f73745o = switchButton;
        this.f73746p = textView;
        this.f73747q = textView2;
        this.f73748r = textView3;
        this.f73749s = gradientTextView;
        this.f73750t = gradientTextView2;
        this.f73751u = gradientTextView3;
        this.f73752v = gradientTextView4;
        this.f73753w = gradientTextView5;
        this.f73754x = gradientTextView6;
        this.f73755y = textView4;
        this.f73756z = textView5;
    }

    public static g a(View view) {
        int i11 = R$id.clAutoplay;
        BLConstraintLayout bLConstraintLayout = (BLConstraintLayout) g4.b.a(view, i11);
        if (bLConstraintLayout != null) {
            i11 = R$id.clCleanMode;
            BLConstraintLayout bLConstraintLayout2 = (BLConstraintLayout) g4.b.a(view, i11);
            if (bLConstraintLayout2 != null) {
                i11 = R$id.clQuality;
                BLConstraintLayout bLConstraintLayout3 = (BLConstraintLayout) g4.b.a(view, i11);
                if (bLConstraintLayout3 != null) {
                    i11 = R$id.clSpeed;
                    BLConstraintLayout bLConstraintLayout4 = (BLConstraintLayout) g4.b.a(view, i11);
                    if (bLConstraintLayout4 != null) {
                        i11 = R$id.clSubtitle;
                        BLConstraintLayout bLConstraintLayout5 = (BLConstraintLayout) g4.b.a(view, i11);
                        if (bLConstraintLayout5 != null) {
                            i11 = R$id.ivAutoplayIcon;
                            ImageView imageView = (ImageView) g4.b.a(view, i11);
                            if (imageView != null) {
                                i11 = R$id.ivCleanModeIcon;
                                ImageView imageView2 = (ImageView) g4.b.a(view, i11);
                                if (imageView2 != null) {
                                    i11 = R$id.ivQualityIcon;
                                    ImageView imageView3 = (ImageView) g4.b.a(view, i11);
                                    if (imageView3 != null) {
                                        i11 = R$id.ivSpeedIcon;
                                        ImageView imageView4 = (ImageView) g4.b.a(view, i11);
                                        if (imageView4 != null) {
                                            i11 = R$id.ivSubtitleArrow;
                                            ImageView imageView5 = (ImageView) g4.b.a(view, i11);
                                            if (imageView5 != null) {
                                                i11 = R$id.ivSubtitleIcon;
                                                ImageView imageView6 = (ImageView) g4.b.a(view, i11);
                                                if (imageView6 != null) {
                                                    i11 = R$id.llSpeedOptions;
                                                    LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                                                    if (linearLayout != null) {
                                                        i11 = R$id.rvQuality;
                                                        RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                                                        if (recyclerView != null) {
                                                            i11 = R$id.switchAutoplay;
                                                            SwitchButton switchButton = (SwitchButton) g4.b.a(view, i11);
                                                            if (switchButton != null) {
                                                                i11 = R$id.tvAutoplayTitle;
                                                                TextView textView = (TextView) g4.b.a(view, i11);
                                                                if (textView != null) {
                                                                    i11 = R$id.tvCleanModeTitle;
                                                                    TextView textView2 = (TextView) g4.b.a(view, i11);
                                                                    if (textView2 != null) {
                                                                        i11 = R$id.tvQualityTitle;
                                                                        TextView textView3 = (TextView) g4.b.a(view, i11);
                                                                        if (textView3 != null) {
                                                                            i11 = R$id.tvSpeed05;
                                                                            GradientTextView gradientTextView = (GradientTextView) g4.b.a(view, i11);
                                                                            if (gradientTextView != null) {
                                                                                i11 = R$id.tvSpeed075;
                                                                                GradientTextView gradientTextView2 = (GradientTextView) g4.b.a(view, i11);
                                                                                if (gradientTextView2 != null) {
                                                                                    i11 = R$id.tvSpeed1;
                                                                                    GradientTextView gradientTextView3 = (GradientTextView) g4.b.a(view, i11);
                                                                                    if (gradientTextView3 != null) {
                                                                                        i11 = R$id.tvSpeed125;
                                                                                        GradientTextView gradientTextView4 = (GradientTextView) g4.b.a(view, i11);
                                                                                        if (gradientTextView4 != null) {
                                                                                            i11 = R$id.tvSpeed15;
                                                                                            GradientTextView gradientTextView5 = (GradientTextView) g4.b.a(view, i11);
                                                                                            if (gradientTextView5 != null) {
                                                                                                i11 = R$id.tvSpeed2;
                                                                                                GradientTextView gradientTextView6 = (GradientTextView) g4.b.a(view, i11);
                                                                                                if (gradientTextView6 != null) {
                                                                                                    i11 = R$id.tvSpeedTitle;
                                                                                                    TextView textView4 = (TextView) g4.b.a(view, i11);
                                                                                                    if (textView4 != null) {
                                                                                                        i11 = R$id.tvSubtitleTitle;
                                                                                                        TextView textView5 = (TextView) g4.b.a(view, i11);
                                                                                                        if (textView5 != null) {
                                                                                                            return new g((ConstraintLayout) view, bLConstraintLayout, bLConstraintLayout2, bLConstraintLayout3, bLConstraintLayout4, bLConstraintLayout5, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, linearLayout, recyclerView, switchButton, textView, textView2, textView3, gradientTextView, gradientTextView2, gradientTextView3, gradientTextView4, gradientTextView5, gradientTextView6, textView4, textView5);
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static g c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static g d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_ugc_imm_video_setting, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f73731a;
    }
}
