package zy;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsnet.login.R$id;
import com.transsnet.login.R$layout;
import com.transsnet.login.country.widget.SideBar;

/* JADX INFO: loaded from: classes7.dex */
public final class i implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f79581a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f79582b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f79583c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final RecyclerView f79584d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SideBar f79585e;

    private i(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, View view, RecyclerView recyclerView, SideBar sideBar) {
        this.f79581a = constraintLayout;
        this.f79582b = appCompatImageView;
        this.f79583c = view;
        this.f79584d = recyclerView;
        this.f79585e = sideBar;
    }

    public static i a(View view) {
        View viewA;
        int i11 = R$id.btn_back;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null && (viewA = g4.b.a(view, (i11 = R$id.line))) != null) {
            i11 = R$id.recycler_view;
            RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
            if (recyclerView != null) {
                i11 = R$id.side_bar;
                SideBar sideBar = (SideBar) g4.b.a(view, i11);
                if (sideBar != null) {
                    return new i((ConstraintLayout) view, appCompatImageView, viewA, recyclerView, sideBar);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static i c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static i d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.login_activity_sel_country, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f79581a;
    }
}
