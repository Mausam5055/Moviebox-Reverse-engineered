package on;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.transsion.ninegridview.R$id;
import com.transsion.ninegridview.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class a implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f71040a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f71041b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f71042c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ConstraintLayout f71043d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextView f71044e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f71045f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ViewPager2 f71046g;

    private a(ConstraintLayout constraintLayout, View view, AppCompatImageView appCompatImageView, ConstraintLayout constraintLayout2, TextView textView, AppCompatTextView appCompatTextView, ViewPager2 viewPager2) {
        this.f71040a = constraintLayout;
        this.f71041b = view;
        this.f71042c = appCompatImageView;
        this.f71043d = constraintLayout2;
        this.f71044e = textView;
        this.f71045f = appCompatTextView;
        this.f71046g = viewPager2;
    }

    public static a a(View view) {
        int i11 = R$id.btn_top;
        View viewA = g4.b.a(view, i11);
        if (viewA != null) {
            i11 = R$id.iv_download;
            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView != null) {
                ConstraintLayout constraintLayout = (ConstraintLayout) view;
                i11 = R$id.tv_pager;
                TextView textView = (TextView) g4.b.a(view, i11);
                if (textView != null) {
                    i11 = R$id.tvSaved;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView != null) {
                        i11 = R$id.viewPager;
                        ViewPager2 viewPager2 = (ViewPager2) g4.b.a(view, i11);
                        if (viewPager2 != null) {
                            return new a(constraintLayout, viewA, appCompatImageView, constraintLayout, textView, appCompatTextView, viewPager2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static a c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static a d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_gif_image_preview, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f71040a;
    }
}
