package hp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.transsion.publish.R$id;
import com.transsion.publish.R$layout;
import com.transsion.publish.view.MatchParentVideoView;

/* JADX INFO: loaded from: classes6.dex */
public final class g implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f64761a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Group f64762b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f64763c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageButton f64764d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RelativeLayout f64765e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ProgressBar f64766f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TextView f64767g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ImageView f64768h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final FrameLayout f64769i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final LinearLayout f64770j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ImageView f64771k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ConstraintLayout f64772l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final TextView f64773m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final TextView f64774n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final TextView f64775o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final TextView f64776p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final MatchParentVideoView f64777q;

    private g(ConstraintLayout constraintLayout, Group group, View view, AppCompatImageButton appCompatImageButton, RelativeLayout relativeLayout, ProgressBar progressBar, TextView textView, ImageView imageView, FrameLayout frameLayout, LinearLayout linearLayout, ImageView imageView2, ConstraintLayout constraintLayout2, TextView textView2, TextView textView3, TextView textView4, TextView textView5, MatchParentVideoView matchParentVideoView) {
        this.f64761a = constraintLayout;
        this.f64762b = group;
        this.f64763c = view;
        this.f64764d = appCompatImageButton;
        this.f64765e = relativeLayout;
        this.f64766f = progressBar;
        this.f64767g = textView;
        this.f64768h = imageView;
        this.f64769i = frameLayout;
        this.f64770j = linearLayout;
        this.f64771k = imageView2;
        this.f64772l = constraintLayout2;
        this.f64773m = textView2;
        this.f64774n = textView3;
        this.f64775o = textView4;
        this.f64776p = textView5;
        this.f64777q = matchParentVideoView;
    }

    public static g a(View view) {
        View viewA;
        int i11 = R$id.bottomGroup;
        Group group = (Group) g4.b.a(view, i11);
        if (group != null && (viewA = g4.b.a(view, (i11 = R$id.bottomLine))) != null) {
            i11 = R$id.btn_back;
            AppCompatImageButton appCompatImageButton = (AppCompatImageButton) g4.b.a(view, i11);
            if (appCompatImageButton != null) {
                i11 = R$id.clTitle;
                RelativeLayout relativeLayout = (RelativeLayout) g4.b.a(view, i11);
                if (relativeLayout != null) {
                    i11 = R$id.clip_loading;
                    ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
                    if (progressBar != null) {
                        i11 = R$id.confirmTV;
                        TextView textView = (TextView) g4.b.a(view, i11);
                        if (textView != null) {
                            i11 = R$id.coverIV;
                            ImageView imageView = (ImageView) g4.b.a(view, i11);
                            if (imageView != null) {
                                i11 = R$id.fl_clear;
                                FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
                                if (frameLayout != null) {
                                    i11 = R$id.llSelect;
                                    LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                                    if (linearLayout != null) {
                                        i11 = R$id.playIV;
                                        ImageView imageView2 = (ImageView) g4.b.a(view, i11);
                                        if (imageView2 != null) {
                                            ConstraintLayout constraintLayout = (ConstraintLayout) view;
                                            i11 = R$id.selectNumTV;
                                            TextView textView2 = (TextView) g4.b.a(view, i11);
                                            if (textView2 != null) {
                                                i11 = R$id.tv_delete;
                                                TextView textView3 = (TextView) g4.b.a(view, i11);
                                                if (textView3 != null) {
                                                    i11 = R$id.tvNumber;
                                                    TextView textView4 = (TextView) g4.b.a(view, i11);
                                                    if (textView4 != null) {
                                                        i11 = R$id.tvSelect;
                                                        TextView textView5 = (TextView) g4.b.a(view, i11);
                                                        if (textView5 != null) {
                                                            i11 = R$id.vv_video;
                                                            MatchParentVideoView matchParentVideoView = (MatchParentVideoView) g4.b.a(view, i11);
                                                            if (matchParentVideoView != null) {
                                                                return new g(constraintLayout, group, viewA, appCompatImageButton, relativeLayout, progressBar, textView, imageView, frameLayout, linearLayout, imageView2, constraintLayout, textView2, textView3, textView4, textView5, matchParentVideoView);
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
        View viewInflate = layoutInflater.inflate(R$layout.activity_video_preview, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f64761a;
    }
}
