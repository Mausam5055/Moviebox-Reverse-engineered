package fu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.view.SwitchButton;
import com.transsion.subtitle.R$id;
import com.transsion.subtitle.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class g implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f62503a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f62504b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f62505c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LinearLayoutCompat f62506d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinearLayoutCompat f62507e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RecyclerView f62508f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final SwitchButton f62509g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SwitchButton f62510h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatTextView f62511i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AppCompatTextView f62512j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AppCompatTextView f62513k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final AppCompatTextView f62514l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final View f62515m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final LinearLayoutCompat f62516n;

    private g(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, LinearLayoutCompat linearLayoutCompat, LinearLayoutCompat linearLayoutCompat2, RecyclerView recyclerView, SwitchButton switchButton, SwitchButton switchButton2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, View view, LinearLayoutCompat linearLayoutCompat3) {
        this.f62503a = constraintLayout;
        this.f62504b = appCompatImageView;
        this.f62505c = appCompatImageView2;
        this.f62506d = linearLayoutCompat;
        this.f62507e = linearLayoutCompat2;
        this.f62508f = recyclerView;
        this.f62509g = switchButton;
        this.f62510h = switchButton2;
        this.f62511i = appCompatTextView;
        this.f62512j = appCompatTextView2;
        this.f62513k = appCompatTextView3;
        this.f62514l = appCompatTextView4;
        this.f62515m = view;
        this.f62516n = linearLayoutCompat3;
    }

    public static g a(View view) {
        View viewA;
        int i11 = R$id.ivOptions;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.ivSync;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView2 != null) {
                i11 = R$id.llOptions;
                LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) g4.b.a(view, i11);
                if (linearLayoutCompat != null) {
                    i11 = R$id.llSync;
                    LinearLayoutCompat linearLayoutCompat2 = (LinearLayoutCompat) g4.b.a(view, i11);
                    if (linearLayoutCompat2 != null) {
                        i11 = R$id.recycler_view;
                        RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                        if (recyclerView != null) {
                            i11 = R$id.switchBilingual;
                            SwitchButton switchButton = (SwitchButton) g4.b.a(view, i11);
                            if (switchButton != null) {
                                i11 = R$id.switchBtn;
                                SwitchButton switchButton2 = (SwitchButton) g4.b.a(view, i11);
                                if (switchButton2 != null) {
                                    i11 = R$id.tvBilingual;
                                    AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                                    if (appCompatTextView != null) {
                                        i11 = R$id.tvOptions;
                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                        if (appCompatTextView2 != null) {
                                            i11 = R$id.tvSync;
                                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                                            if (appCompatTextView3 != null) {
                                                i11 = R$id.tvTitle;
                                                AppCompatTextView appCompatTextView4 = (AppCompatTextView) g4.b.a(view, i11);
                                                if (appCompatTextView4 != null && (viewA = g4.b.a(view, (i11 = R$id.viewLine))) != null) {
                                                    i11 = R$id.viewOptionsBg;
                                                    LinearLayoutCompat linearLayoutCompat3 = (LinearLayoutCompat) g4.b.a(view, i11);
                                                    if (linearLayoutCompat3 != null) {
                                                        return new g((ConstraintLayout) view, appCompatImageView, appCompatImageView2, linearLayoutCompat, linearLayoutCompat2, recyclerView, switchButton, switchButton2, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, viewA, linearLayoutCompat3);
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
        View viewInflate = layoutInflater.inflate(R$layout.fragment_subtitle_select_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f62503a;
    }
}
