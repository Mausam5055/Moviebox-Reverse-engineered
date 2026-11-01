package fw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tn.lib.widget.TnTextView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class z0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f63027a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TnTextView f63028b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f63029c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ImageView f63030d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinearLayout f63031e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TnTextView f63032f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final View f63033g;

    private z0(ConstraintLayout constraintLayout, TnTextView tnTextView, AppCompatTextView appCompatTextView, ImageView imageView, LinearLayout linearLayout, TnTextView tnTextView2, View view) {
        this.f63027a = constraintLayout;
        this.f63028b = tnTextView;
        this.f63029c = appCompatTextView;
        this.f63030d = imageView;
        this.f63031e = linearLayout;
        this.f63032f = tnTextView2;
        this.f63033g = view;
    }

    public static z0 a(View view) {
        View viewA;
        int i11 = R$id.btnTv;
        TnTextView tnTextView = (TnTextView) g4.b.a(view, i11);
        if (tnTextView != null) {
            i11 = R$id.desTv;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null) {
                i11 = R$id.icIV;
                ImageView imageView = (ImageView) g4.b.a(view, i11);
                if (imageView != null) {
                    i11 = R$id.llBottom;
                    LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                    if (linearLayout != null) {
                        i11 = R$id.titleTv;
                        TnTextView tnTextView2 = (TnTextView) g4.b.a(view, i11);
                        if (tnTextView2 != null && (viewA = g4.b.a(view, (i11 = R$id.vTopGuideline))) != null) {
                            return new z0((ConstraintLayout) view, tnTextView, appCompatTextView, imageView, linearLayout, tnTextView2, viewA);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static z0 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.mine_item_novel_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f63027a;
    }
}
