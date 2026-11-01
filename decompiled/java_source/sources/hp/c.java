package hp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
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
import com.transsion.publish.view.FixedViewPager;

/* JADX INFO: loaded from: classes6.dex */
public final class c implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f64728a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Group f64729b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f64730c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageButton f64731d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RelativeLayout f64732e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ProgressBar f64733f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TextView f64734g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ImageView f64735h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LinearLayout f64736i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TextView f64737j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final TextView f64738k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final TextView f64739l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final TextView f64740m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final FixedViewPager f64741n;

    private c(ConstraintLayout constraintLayout, Group group, View view, AppCompatImageButton appCompatImageButton, RelativeLayout relativeLayout, ProgressBar progressBar, TextView textView, ImageView imageView, LinearLayout linearLayout, TextView textView2, TextView textView3, TextView textView4, TextView textView5, FixedViewPager fixedViewPager) {
        this.f64728a = constraintLayout;
        this.f64729b = group;
        this.f64730c = view;
        this.f64731d = appCompatImageButton;
        this.f64732e = relativeLayout;
        this.f64733f = progressBar;
        this.f64734g = textView;
        this.f64735h = imageView;
        this.f64736i = linearLayout;
        this.f64737j = textView2;
        this.f64738k = textView3;
        this.f64739l = textView4;
        this.f64740m = textView5;
        this.f64741n = fixedViewPager;
    }

    public static c a(View view) {
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
                            i11 = R$id.ivDelete;
                            ImageView imageView = (ImageView) g4.b.a(view, i11);
                            if (imageView != null) {
                                i11 = R$id.llSelect;
                                LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                                if (linearLayout != null) {
                                    i11 = R$id.selectNumTV;
                                    TextView textView2 = (TextView) g4.b.a(view, i11);
                                    if (textView2 != null) {
                                        i11 = R$id.tv_num;
                                        TextView textView3 = (TextView) g4.b.a(view, i11);
                                        if (textView3 != null) {
                                            i11 = R$id.tvNumber;
                                            TextView textView4 = (TextView) g4.b.a(view, i11);
                                            if (textView4 != null) {
                                                i11 = R$id.tvSelect;
                                                TextView textView5 = (TextView) g4.b.a(view, i11);
                                                if (textView5 != null) {
                                                    i11 = R$id.f50311vp;
                                                    FixedViewPager fixedViewPager = (FixedViewPager) g4.b.a(view, i11);
                                                    if (fixedViewPager != null) {
                                                        return new c((ConstraintLayout) view, group, viewA, appCompatImageButton, relativeLayout, progressBar, textView, imageView, linearLayout, textView2, textView3, textView4, textView5, fixedViewPager);
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

    public static c c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_gallery, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f64728a;
    }
}
