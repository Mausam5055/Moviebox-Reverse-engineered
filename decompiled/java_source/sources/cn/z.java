package cn;

import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.moviedetail.R$id;

/* JADX INFO: loaded from: classes5.dex */
public final class z implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f17536a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImageView f17537b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f17538c;

    private z(ConstraintLayout constraintLayout, ImageView imageView, AppCompatTextView appCompatTextView) {
        this.f17536a = constraintLayout;
        this.f17537b = imageView;
        this.f17538c = appCompatTextView;
    }

    public static z a(View view) {
        int i11 = R$id.closeWatchTv;
        ImageView imageView = (ImageView) g4.b.a(view, i11);
        if (imageView != null) {
            i11 = R$id.goWatchTv;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null) {
                return new z((ConstraintLayout) view, imageView, appCompatTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f17536a;
    }
}
