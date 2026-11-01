package cn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLLinearLayout;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;
import com.transsion.moviedetail.view.InfoExtendView;

/* JADX INFO: loaded from: classes5.dex */
public final class i implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f17376a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InfoExtendView f17377b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ShapeableImageView f17378c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f17379d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f17380e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LinearLayoutCompat f17381f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f17382g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final BLLinearLayout f17383h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatTextView f17384i;

    private i(ConstraintLayout constraintLayout, InfoExtendView infoExtendView, ShapeableImageView shapeableImageView, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, LinearLayoutCompat linearLayoutCompat, AppCompatTextView appCompatTextView2, BLLinearLayout bLLinearLayout, AppCompatTextView appCompatTextView3) {
        this.f17376a = constraintLayout;
        this.f17377b = infoExtendView;
        this.f17378c = shapeableImageView;
        this.f17379d = appCompatImageView;
        this.f17380e = appCompatTextView;
        this.f17381f = linearLayoutCompat;
        this.f17382g = appCompatTextView2;
        this.f17383h = bLLinearLayout;
        this.f17384i = appCompatTextView3;
    }

    public static i a(View view) {
        int i11 = R$id.infoExtendView;
        InfoExtendView infoExtendView = (InfoExtendView) g4.b.a(view, i11);
        if (infoExtendView != null) {
            i11 = R$id.ivAvatar;
            ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
            if (shapeableImageView != null) {
                i11 = R$id.tv_close;
                AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView != null) {
                    i11 = R$id.tvDes;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView != null) {
                        i11 = R$id.tv_header_toolbar;
                        LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) g4.b.a(view, i11);
                        if (linearLayoutCompat != null) {
                            i11 = R$id.tvMovieTitle;
                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                            if (appCompatTextView2 != null) {
                                i11 = R$id.tv_music_avatar;
                                BLLinearLayout bLLinearLayout = (BLLinearLayout) g4.b.a(view, i11);
                                if (bLLinearLayout != null) {
                                    i11 = R$id.tvTag;
                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                                    if (appCompatTextView3 != null) {
                                        return new i((ConstraintLayout) view, infoExtendView, shapeableImageView, appCompatImageView, appCompatTextView, linearLayoutCompat, appCompatTextView2, bLLinearLayout, appCompatTextView3);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static i c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static i d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_music_info_dialog, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f17376a;
    }
}
