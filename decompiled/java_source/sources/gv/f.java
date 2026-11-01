package gv;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.noober.background.view.BLTextView;
import com.transsion.transfer.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class f implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f63996a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatTextView f63997b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BLTextView f63998c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f63999d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f64000e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final View f64001f;

    private f(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, BLTextView bLTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, View view) {
        this.f63996a = constraintLayout;
        this.f63997b = appCompatTextView;
        this.f63998c = bLTextView;
        this.f63999d = appCompatTextView2;
        this.f64000e = appCompatTextView3;
        this.f64001f = view;
    }

    public static f a(View view) {
        View viewA;
        int i11 = R$id.btn_no;
        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
        if (appCompatTextView != null) {
            i11 = R$id.btn_yes;
            BLTextView bLTextView = (BLTextView) g4.b.a(view, i11);
            if (bLTextView != null) {
                i11 = R$id.tv_tips;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView2 != null) {
                    i11 = R$id.tv_title;
                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView3 != null && (viewA = g4.b.a(view, (i11 = R$id.v_ling_1))) != null) {
                        return new f((ConstraintLayout) view, appCompatTextView, bLTextView, appCompatTextView2, appCompatTextView3, viewA);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f63996a;
    }
}
