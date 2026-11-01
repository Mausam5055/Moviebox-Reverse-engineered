package ux;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.web.R$id;
import com.transsion.web.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class b implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f76945a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f76946b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ShapeableImageView f76947c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final RecyclerView f76948d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextView f76949e;

    private b(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, ShapeableImageView shapeableImageView, RecyclerView recyclerView, TextView textView) {
        this.f76945a = constraintLayout;
        this.f76946b = appCompatImageView;
        this.f76947c = shapeableImageView;
        this.f76948d = recyclerView;
        this.f76949e = textView;
    }

    public static b a(View view) {
        int i11 = R$id.iv_close;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.iv_share;
            ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
            if (shapeableImageView != null) {
                i11 = R$id.share_list;
                RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                if (recyclerView != null) {
                    i11 = R$id.tv_share_title;
                    TextView textView = (TextView) g4.b.a(view, i11);
                    if (textView != null) {
                        return new b((ConstraintLayout) view, appCompatImageView, shapeableImageView, recyclerView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static b c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_imge_share, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f76945a;
    }
}
