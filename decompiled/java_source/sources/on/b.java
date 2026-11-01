package on;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.noober.background.view.BLView;
import com.transsion.ninegridview.R$id;
import com.transsion.ninegridview.R$layout;
import com.transsion.ninegridview.preview.HackyViewPager;

/* JADX INFO: loaded from: classes6.dex */
public final class b implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f71047a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BLView f71048b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BLView f71049c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ImageView f71050d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ConstraintLayout f71051e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final View f71052f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f71053g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TextView f71054h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatTextView f71055i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final HackyViewPager f71056j;

    private b(ConstraintLayout constraintLayout, BLView bLView, BLView bLView2, ImageView imageView, ConstraintLayout constraintLayout2, View view, AppCompatTextView appCompatTextView, TextView textView, AppCompatTextView appCompatTextView2, HackyViewPager hackyViewPager) {
        this.f71047a = constraintLayout;
        this.f71048b = bLView;
        this.f71049c = bLView2;
        this.f71050d = imageView;
        this.f71051e = constraintLayout2;
        this.f71052f = view;
        this.f71053g = appCompatTextView;
        this.f71054h = textView;
        this.f71055i = appCompatTextView2;
        this.f71056j = hackyViewPager;
    }

    public static b a(View view) {
        int i11 = R$id.bg_download;
        BLView bLView = (BLView) g4.b.a(view, i11);
        if (bLView != null) {
            i11 = R$id.bg_share;
            BLView bLView2 = (BLView) g4.b.a(view, i11);
            if (bLView2 != null) {
                i11 = R$id.iv_back;
                ImageView imageView = (ImageView) g4.b.a(view, i11);
                if (imageView != null) {
                    ConstraintLayout constraintLayout = (ConstraintLayout) view;
                    i11 = R$id.statusSpace;
                    View viewA = g4.b.a(view, i11);
                    if (viewA != null) {
                        i11 = R$id.tv_download;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView != null) {
                            i11 = R$id.tv_pager;
                            TextView textView = (TextView) g4.b.a(view, i11);
                            if (textView != null) {
                                i11 = R$id.tv_share;
                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                if (appCompatTextView2 != null) {
                                    i11 = R$id.viewPager;
                                    HackyViewPager hackyViewPager = (HackyViewPager) g4.b.a(view, i11);
                                    if (hackyViewPager != null) {
                                        return new b(constraintLayout, bLView, bLView2, imageView, constraintLayout, viewA, appCompatTextView, textView, appCompatTextView2, hackyViewPager);
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

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_preview, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f71047a;
    }
}
