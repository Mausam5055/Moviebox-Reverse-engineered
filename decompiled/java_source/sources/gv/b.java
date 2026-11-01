package gv;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.tn.lib.view.TitleLayout;
import com.transsion.transfer.R$id;
import com.transsion.transfer.R$layout;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes7.dex */
public final class b implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f63959a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinearLayout f63960b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CoordinatorLayout f63961c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LinearLayout f63962d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FrameLayout f63963e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MagicIndicator f63964f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TextView f63965g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TitleLayout f63966h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TextView f63967i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TextView f63968j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AppCompatImageView f63969k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ImageView f63970l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ViewPager2 f63971m;

    private b(ConstraintLayout constraintLayout, LinearLayout linearLayout, CoordinatorLayout coordinatorLayout, LinearLayout linearLayout2, FrameLayout frameLayout, MagicIndicator magicIndicator, TextView textView, TitleLayout titleLayout, TextView textView2, TextView textView3, AppCompatImageView appCompatImageView, ImageView imageView, ViewPager2 viewPager2) {
        this.f63959a = constraintLayout;
        this.f63960b = linearLayout;
        this.f63961c = coordinatorLayout;
        this.f63962d = linearLayout2;
        this.f63963e = frameLayout;
        this.f63964f = magicIndicator;
        this.f63965g = textView;
        this.f63966h = titleLayout;
        this.f63967i = textView2;
        this.f63968j = textView3;
        this.f63969k = appCompatImageView;
        this.f63970l = imageView;
        this.f63971m = viewPager2;
    }

    public static b a(View view) {
        int i11 = R$id.bottom_layout;
        LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
        if (linearLayout != null) {
            i11 = R$id.cl_root;
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) g4.b.a(view, i11);
            if (coordinatorLayout != null) {
                i11 = R$id.connect_info_layout;
                LinearLayout linearLayout2 = (LinearLayout) g4.b.a(view, i11);
                if (linearLayout2 != null) {
                    i11 = R$id.fl_select_page_container;
                    FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
                    if (frameLayout != null) {
                        i11 = R$id.magic_indicator;
                        MagicIndicator magicIndicator = (MagicIndicator) g4.b.a(view, i11);
                        if (magicIndicator != null) {
                            i11 = R$id.sendMore;
                            TextView textView = (TextView) g4.b.a(view, i11);
                            if (textView != null) {
                                i11 = R$id.tool_bar;
                                TitleLayout titleLayout = (TitleLayout) g4.b.a(view, i11);
                                if (titleLayout != null) {
                                    i11 = R$id.transfer_connect_state;
                                    TextView textView2 = (TextView) g4.b.a(view, i11);
                                    if (textView2 != null) {
                                        i11 = R$id.transfer_connected_devicename;
                                        TextView textView3 = (TextView) g4.b.a(view, i11);
                                        if (textView3 != null) {
                                            i11 = R$id.transfer_connected_state_image;
                                            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                                            if (appCompatImageView != null) {
                                                i11 = R$id.v_top_bg;
                                                ImageView imageView = (ImageView) g4.b.a(view, i11);
                                                if (imageView != null) {
                                                    i11 = R$id.view_pager;
                                                    ViewPager2 viewPager2 = (ViewPager2) g4.b.a(view, i11);
                                                    if (viewPager2 != null) {
                                                        return new b((ConstraintLayout) view, linearLayout, coordinatorLayout, linearLayout2, frameLayout, magicIndicator, textView, titleLayout, textView2, textView3, appCompatImageView, imageView, viewPager2);
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

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_transfer_status, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f63959a;
    }
}
