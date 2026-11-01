package wm;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.member.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class q implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f77854a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f77855b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f77856c;

    private q(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView) {
        this.f77854a = constraintLayout;
        this.f77855b = appCompatImageView;
        this.f77856c = appCompatTextView;
    }

    public static q a(View view) {
        int i11 = R$id.iv_points_img;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.iv_points_text;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null) {
                return new q((ConstraintLayout) view, appCompatImageView, appCompatTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f77854a;
    }
}
