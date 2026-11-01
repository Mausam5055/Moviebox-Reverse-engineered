package qv;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class d implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f73719a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f73720b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f73721c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final View f73722d;

    private d(ConstraintLayout constraintLayout, FrameLayout frameLayout, AppCompatTextView appCompatTextView, View view) {
        this.f73719a = constraintLayout;
        this.f73720b = frameLayout;
        this.f73721c = appCompatTextView;
        this.f73722d = view;
    }

    public static d a(View view) {
        View viewA;
        int i11 = R$id.fl_comment_container;
        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
        if (frameLayout != null) {
            i11 = R$id.tv_comment;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null && (viewA = g4.b.a(view, (i11 = R$id.v_bottom_divider))) != null) {
                return new d((ConstraintLayout) view, frameLayout, appCompatTextView, viewA);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static d c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static d d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_ugc_detail_comment, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f73719a;
    }
}
