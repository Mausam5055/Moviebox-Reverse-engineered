package cn;

import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.transsion.moviedetail.R$id;

/* JADX INFO: loaded from: classes5.dex */
public final class y implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayoutCompat f17532a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f17533b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextView f17534c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TextView f17535d;

    private y(LinearLayoutCompat linearLayoutCompat, AppCompatImageView appCompatImageView, TextView textView, TextView textView2) {
        this.f17532a = linearLayoutCompat;
        this.f17533b = appCompatImageView;
        this.f17534c = textView;
        this.f17535d = textView2;
    }

    public static y a(View view) {
        int i11 = R$id.ivDefaultImage;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.tvDesc;
            TextView textView = (TextView) g4.b.a(view, i11);
            if (textView != null) {
                i11 = R$id.tv_retry;
                TextView textView2 = (TextView) g4.b.a(view, i11);
                if (textView2 != null) {
                    return new y((LinearLayoutCompat) view, appCompatImageView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayoutCompat getRoot() {
        return this.f17532a;
    }
}
