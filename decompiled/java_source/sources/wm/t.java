package wm;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import com.transsion.member.R$id;
import com.transsion.member.R$layout;
import com.transsion.member.view.PremiumContentView;

/* JADX INFO: loaded from: classes6.dex */
public final class t implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f77875a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f77876b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImageView f77877c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f77878d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final PremiumContentView f77879e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final NestedScrollView f77880f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ConstraintLayout f77881g;

    private t(FrameLayout frameLayout, View view, ImageView imageView, AppCompatTextView appCompatTextView, PremiumContentView premiumContentView, NestedScrollView nestedScrollView, ConstraintLayout constraintLayout) {
        this.f77875a = frameLayout;
        this.f77876b = view;
        this.f77877c = imageView;
        this.f77878d = appCompatTextView;
        this.f77879e = premiumContentView;
        this.f77880f = nestedScrollView;
        this.f77881g = constraintLayout;
    }

    public static t a(View view) {
        int i11 = R$id.bg_mask;
        View viewA = g4.b.a(view, i11);
        if (viewA != null) {
            i11 = R$id.iv_member_close;
            ImageView imageView = (ImageView) g4.b.a(view, i11);
            if (imageView != null) {
                i11 = R$id.iv_premium;
                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView != null) {
                    i11 = R$id.layout_content;
                    PremiumContentView premiumContentView = (PremiumContentView) g4.b.a(view, i11);
                    if (premiumContentView != null) {
                        i11 = R$id.layout_scroller;
                        NestedScrollView nestedScrollView = (NestedScrollView) g4.b.a(view, i11);
                        if (nestedScrollView != null) {
                            i11 = R$id.titleLayout;
                            ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
                            if (constraintLayout != null) {
                                return new t((FrameLayout) view, viewA, imageView, appCompatTextView, premiumContentView, nestedScrollView, constraintLayout);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static t c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.view_member_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f77875a;
    }
}
