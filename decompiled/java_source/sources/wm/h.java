package wm;

import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.member.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class h implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f77755a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextView f77756b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConstraintLayout f77757c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f77758d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f77759e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextView f77760f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TextView f77761g;

    private h(ConstraintLayout constraintLayout, TextView textView, ConstraintLayout constraintLayout2, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, TextView textView2, TextView textView3) {
        this.f77755a = constraintLayout;
        this.f77756b = textView;
        this.f77757c = constraintLayout2;
        this.f77758d = appCompatImageView;
        this.f77759e = appCompatImageView2;
        this.f77760f = textView2;
        this.f77761g = textView3;
    }

    public static h a(View view) {
        int i11 = R$id.btnClaim;
        TextView textView = (TextView) g4.b.a(view, i11);
        if (textView != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            i11 = R$id.ivClose;
            AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView != null) {
                i11 = R$id.ivIcon;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView2 != null) {
                    i11 = R$id.tvSubTitle;
                    TextView textView2 = (TextView) g4.b.a(view, i11);
                    if (textView2 != null) {
                        i11 = R$id.tvTitle;
                        TextView textView3 = (TextView) g4.b.a(view, i11);
                        if (textView3 != null) {
                            return new h(constraintLayout, textView, constraintLayout, appCompatImageView, appCompatImageView2, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f77755a;
    }
}
