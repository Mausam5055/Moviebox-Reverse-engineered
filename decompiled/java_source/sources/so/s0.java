package so;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class s0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f75706a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f75707b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f75708c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f75709d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f75710e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f75711f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f75712g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final View f75713h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final View f75714i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final View f75715j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final View f75716k;

    private s0(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, View view, View view2, View view3, View view4) {
        this.f75706a = constraintLayout;
        this.f75707b = appCompatImageView;
        this.f75708c = appCompatImageView2;
        this.f75709d = appCompatImageView3;
        this.f75710e = appCompatImageView4;
        this.f75711f = appCompatTextView;
        this.f75712g = appCompatTextView2;
        this.f75713h = view;
        this.f75714i = view2;
        this.f75715j = view3;
        this.f75716k = view4;
    }

    public static s0 a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        View viewA4;
        int i11 = R$id.ivComment;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.ivDownload;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView2 != null) {
                i11 = R$id.ivLike;
                AppCompatImageView appCompatImageView3 = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView3 != null) {
                    i11 = R$id.ivShare;
                    AppCompatImageView appCompatImageView4 = (AppCompatImageView) g4.b.a(view, i11);
                    if (appCompatImageView4 != null) {
                        i11 = R$id.tvComment;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView != null) {
                            i11 = R$id.tvLike;
                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                            if (appCompatTextView2 != null && (viewA = g4.b.a(view, (i11 = R$id.viewComment))) != null && (viewA2 = g4.b.a(view, (i11 = R$id.viewDownload))) != null && (viewA3 = g4.b.a(view, (i11 = R$id.viewLike))) != null && (viewA4 = g4.b.a(view, (i11 = R$id.viewShare))) != null) {
                                return new s0((ConstraintLayout) view, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatImageView4, appCompatTextView, appCompatTextView2, viewA, viewA2, viewA3, viewA4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static s0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static s0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.view_post_detail_operation_new_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f75706a;
    }
}
