package gl;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.noober.background.view.BLFrameLayout;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class c0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f63650a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f63651b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinearLayout f63652c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LinearLayout f63653d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinearLayout f63654e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ImageView f63655f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ImageView f63656g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ImageView f63657h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final BLFrameLayout f63658i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final FrameLayout f63659j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ProgressBar f63660k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final RecyclerView f63661l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final View f63662m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final LinearLayout f63663n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final View f63664o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final TextView f63665p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final TextView f63666q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final TextView f63667r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final ViewStub f63668s;

    private c0(ConstraintLayout constraintLayout, View view, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, ImageView imageView, ImageView imageView2, ImageView imageView3, BLFrameLayout bLFrameLayout, FrameLayout frameLayout, ProgressBar progressBar, RecyclerView recyclerView, View view2, LinearLayout linearLayout4, View view3, TextView textView, TextView textView2, TextView textView3, ViewStub viewStub) {
        this.f63650a = constraintLayout;
        this.f63651b = view;
        this.f63652c = linearLayout;
        this.f63653d = linearLayout2;
        this.f63654e = linearLayout3;
        this.f63655f = imageView;
        this.f63656g = imageView2;
        this.f63657h = imageView3;
        this.f63658i = bLFrameLayout;
        this.f63659j = frameLayout;
        this.f63660k = progressBar;
        this.f63661l = recyclerView;
        this.f63662m = view2;
        this.f63663n = linearLayout4;
        this.f63664o = view3;
        this.f63665p = textView;
        this.f63666q = textView2;
        this.f63667r = textView3;
        this.f63668s = viewStub;
    }

    public static c0 a(View view) {
        View viewA;
        View viewA2;
        int i11 = R$id.bottomGradient;
        View viewA3 = g4.b.a(view, i11);
        if (viewA3 != null) {
            i11 = R$id.btnHelp;
            LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
            if (linearLayout != null) {
                i11 = R$id.btnSetting;
                LinearLayout linearLayout2 = (LinearLayout) g4.b.a(view, i11);
                if (linearLayout2 != null) {
                    i11 = R$id.fsControls;
                    LinearLayout linearLayout3 = (LinearLayout) g4.b.a(view, i11);
                    if (linearLayout3 != null) {
                        i11 = R$id.ivBack;
                        ImageView imageView = (ImageView) g4.b.a(view, i11);
                        if (imageView != null) {
                            i11 = R$id.ivFullscreen;
                            ImageView imageView2 = (ImageView) g4.b.a(view, i11);
                            if (imageView2 != null) {
                                i11 = R$id.ivTapLock;
                                ImageView imageView3 = (ImageView) g4.b.a(view, i11);
                                if (imageView3 != null) {
                                    i11 = R$id.liveBadge;
                                    BLFrameLayout bLFrameLayout = (BLFrameLayout) g4.b.a(view, i11);
                                    if (bLFrameLayout != null) {
                                        i11 = R$id.playerLayout;
                                        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
                                        if (frameLayout != null) {
                                            i11 = R$id.playerLoading;
                                            ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
                                            if (progressBar != null) {
                                                i11 = R$id.rvChannels;
                                                RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                                                if (recyclerView != null && (viewA = g4.b.a(view, (i11 = R$id.statusBarPlaceholder))) != null) {
                                                    i11 = R$id.tapToLockLayout;
                                                    LinearLayout linearLayout4 = (LinearLayout) g4.b.a(view, i11);
                                                    if (linearLayout4 != null && (viewA2 = g4.b.a(view, (i11 = R$id.topGradient))) != null) {
                                                        i11 = R$id.tvChannelName;
                                                        TextView textView = (TextView) g4.b.a(view, i11);
                                                        if (textView != null) {
                                                            i11 = R$id.tvLiveBadge;
                                                            TextView textView2 = (TextView) g4.b.a(view, i11);
                                                            if (textView2 != null) {
                                                                i11 = R$id.tvTapToLock;
                                                                TextView textView3 = (TextView) g4.b.a(view, i11);
                                                                if (textView3 != null) {
                                                                    i11 = R$id.vsLoadFail;
                                                                    ViewStub viewStub = (ViewStub) g4.b.a(view, i11);
                                                                    if (viewStub != null) {
                                                                        return new c0((ConstraintLayout) view, viewA3, linearLayout, linearLayout2, linearLayout3, imageView, imageView2, imageView3, bLFrameLayout, frameLayout, progressBar, recyclerView, viewA, linearLayout4, viewA2, textView, textView2, textView3, viewStub);
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

    public static c0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_tv_live_detail_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f63650a;
    }
}
