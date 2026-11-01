package jx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.transsion.videodetail.R$id;
import com.transsion.videodetail.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class k implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayoutCompat f66447a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f66448b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f66449c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f66450d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f66451e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f66452f;

    private k(LinearLayoutCompat linearLayoutCompat, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, AppCompatTextView appCompatTextView) {
        this.f66447a = linearLayoutCompat;
        this.f66448b = appCompatImageView;
        this.f66449c = appCompatImageView2;
        this.f66450d = appCompatImageView3;
        this.f66451e = appCompatImageView4;
        this.f66452f = appCompatTextView;
    }

    public static k a(View view) {
        int i11 = R$id.ivClose;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.ivDance;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView2 != null) {
                i11 = R$id.ivLoop;
                AppCompatImageView appCompatImageView3 = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView3 != null) {
                    i11 = R$id.ivShuffle;
                    AppCompatImageView appCompatImageView4 = (AppCompatImageView) g4.b.a(view, i11);
                    if (appCompatImageView4 != null) {
                        i11 = R$id.tvTitle;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView != null) {
                            return new k((LinearLayoutCompat) view, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatImageView4, appCompatTextView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static k c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.view_music_detail_list_operate_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayoutCompat getRoot() {
        return this.f66447a;
    }
}
