package gl;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.tn.lib.widget.TnTextView;
import com.transsion.baseui.widget.BlurredSectorView;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes6.dex */
public final class j implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f63735a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f63736b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f63737c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f63738d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FrameLayout f63739e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ConstraintLayout f63740f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TnTextView f63741g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MagicIndicator f63742h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final BlurredSectorView f63743i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final View f63744j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ViewPager2 f63745k;

    private j(ConstraintLayout constraintLayout, FrameLayout frameLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, FrameLayout frameLayout2, ConstraintLayout constraintLayout2, TnTextView tnTextView, MagicIndicator magicIndicator, BlurredSectorView blurredSectorView, View view, ViewPager2 viewPager2) {
        this.f63735a = constraintLayout;
        this.f63736b = frameLayout;
        this.f63737c = appCompatImageView;
        this.f63738d = appCompatImageView2;
        this.f63739e = frameLayout2;
        this.f63740f = constraintLayout2;
        this.f63741g = tnTextView;
        this.f63742h = magicIndicator;
        this.f63743i = blurredSectorView;
        this.f63744j = view;
        this.f63745k = viewPager2;
    }

    public static j a(View view) {
        View viewA;
        int i11 = R$id.bottom_op_container;
        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
        if (frameLayout != null) {
            i11 = R$id.bottom_op_mb_logo;
            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView != null) {
                i11 = R$id.bottom_op_search_appstore;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView2 != null) {
                    i11 = R$id.bottom_op_search_gamestore;
                    FrameLayout frameLayout2 = (FrameLayout) g4.b.a(view, i11);
                    if (frameLayout2 != null) {
                        i11 = R$id.bottom_op_search_liner;
                        ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
                        if (constraintLayout != null) {
                            i11 = R$id.bottom_op_search_text;
                            TnTextView tnTextView = (TnTextView) g4.b.a(view, i11);
                            if (tnTextView != null) {
                                i11 = R$id.magicIndicator;
                                MagicIndicator magicIndicator = (MagicIndicator) g4.b.a(view, i11);
                                if (magicIndicator != null) {
                                    i11 = R$id.trending_bottom_bg;
                                    BlurredSectorView blurredSectorView = (BlurredSectorView) g4.b.a(view, i11);
                                    if (blurredSectorView != null && (viewA = g4.b.a(view, (i11 = R$id.viewLine))) != null) {
                                        i11 = R$id.viewPager;
                                        ViewPager2 viewPager2 = (ViewPager2) g4.b.a(view, i11);
                                        if (viewPager2 != null) {
                                            return new j((ConstraintLayout) view, frameLayout, appCompatImageView, appCompatImageView2, frameLayout2, constraintLayout, tnTextView, magicIndicator, blurredSectorView, viewA, viewPager2);
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

    public static j c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static j d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_bottom_op, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f63735a;
    }
}
