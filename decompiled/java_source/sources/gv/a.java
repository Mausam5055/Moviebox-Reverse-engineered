package gv;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.view.TitleLayout;
import com.transsion.transfer.R$id;
import com.transsion.transfer.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class a implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f63954a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f63955b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RecyclerView f63956c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TitleLayout f63957d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f63958e;

    private a(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, RecyclerView recyclerView, TitleLayout titleLayout, AppCompatTextView appCompatTextView) {
        this.f63954a = constraintLayout;
        this.f63955b = appCompatImageView;
        this.f63956c = recyclerView;
        this.f63957d = titleLayout;
        this.f63958e = appCompatTextView;
    }

    public static a a(View view) {
        int i11 = R$id.ivHeader;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.rv_permissions;
            RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
            if (recyclerView != null) {
                i11 = R$id.toolBar;
                TitleLayout titleLayout = (TitleLayout) g4.b.a(view, i11);
                if (titleLayout != null) {
                    i11 = R$id.tvNext;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView != null) {
                        return new a((ConstraintLayout) view, appCompatImageView, recyclerView, titleLayout, appCompatTextView);
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
        View viewInflate = layoutInflater.inflate(R$layout.activity_permissions, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f63954a;
    }
}
