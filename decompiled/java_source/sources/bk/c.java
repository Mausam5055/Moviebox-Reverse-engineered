package bk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.baseui.R$id;
import com.transsion.baseui.R$layout;

/* JADX INFO: loaded from: classes5.dex */
public final class c implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f16582a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f16583b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinearLayoutCompat f16584c;

    private c(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, LinearLayoutCompat linearLayoutCompat) {
        this.f16582a = constraintLayout;
        this.f16583b = appCompatImageView;
        this.f16584c = linearLayoutCompat;
    }

    public static c a(View view) {
        int i11 = R$id.ivBack;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.toolbar_d;
            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) g4.b.a(view, i11);
            if (linearLayoutCompat != null) {
                return new c((ConstraintLayout) view, appCompatImageView, linearLayoutCompat);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static c c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.default_list_loading_view, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f16582a;
    }
}
