package cn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.view.SecondariesSeekBar;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;

/* JADX INFO: loaded from: classes5.dex */
public final class j implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f17385a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Group f17386b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Group f17387c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ShapeableImageView f17388d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ShapeableImageView f17389e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatImageView f17390f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ProgressBar f17391g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TextView f17392h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final View f17393i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AppCompatImageView f17394j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final SecondariesSeekBar f17395k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final TextView f17396l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ViewStub f17397m;

    private j(ConstraintLayout constraintLayout, Group group, Group group2, ShapeableImageView shapeableImageView, ShapeableImageView shapeableImageView2, AppCompatImageView appCompatImageView, ProgressBar progressBar, TextView textView, View view, AppCompatImageView appCompatImageView2, SecondariesSeekBar secondariesSeekBar, TextView textView2, ViewStub viewStub) {
        this.f17385a = constraintLayout;
        this.f17386b = group;
        this.f17387c = group2;
        this.f17388d = shapeableImageView;
        this.f17389e = shapeableImageView2;
        this.f17390f = appCompatImageView;
        this.f17391g = progressBar;
        this.f17392h = textView;
        this.f17393i = view;
        this.f17394j = appCompatImageView2;
        this.f17395k = secondariesSeekBar;
        this.f17396l = textView2;
        this.f17397m = viewStub;
    }

    public static j a(View view) {
        View viewA;
        int i11 = R$id.groupLoading;
        Group group = (Group) g4.b.a(view, i11);
        if (group != null) {
            i11 = R$id.groupProgress;
            Group group2 = (Group) g4.b.a(view, i11);
            if (group2 != null) {
                i11 = R$id.ivMovieBlurCover;
                ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
                if (shapeableImageView != null) {
                    i11 = R$id.ivMovieCover;
                    ShapeableImageView shapeableImageView2 = (ShapeableImageView) g4.b.a(view, i11);
                    if (shapeableImageView2 != null) {
                        i11 = R$id.ivPlay;
                        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                        if (appCompatImageView != null) {
                            i11 = R$id.progress;
                            ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
                            if (progressBar != null) {
                                i11 = R$id.tvLoading;
                                TextView textView = (TextView) g4.b.a(view, i11);
                                if (textView != null && (viewA = g4.b.a(view, (i11 = R$id.vTap))) != null) {
                                    i11 = R$id.vdPause;
                                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                                    if (appCompatImageView2 != null) {
                                        i11 = R$id.vdSeekbar;
                                        SecondariesSeekBar secondariesSeekBar = (SecondariesSeekBar) g4.b.a(view, i11);
                                        if (secondariesSeekBar != null) {
                                            i11 = R$id.vdVideoTime;
                                            TextView textView2 = (TextView) g4.b.a(view, i11);
                                            if (textView2 != null) {
                                                i11 = R$id.vsLoadFailed;
                                                ViewStub viewStub = (ViewStub) g4.b.a(view, i11);
                                                if (viewStub != null) {
                                                    return new j((ConstraintLayout) view, group, group2, shapeableImageView, shapeableImageView2, appCompatImageView, progressBar, textView, viewA, appCompatImageView2, secondariesSeekBar, textView2, viewStub);
                                                }
                                            }
                                        }
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

    public static j c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static j d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_music_trailer_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f17385a;
    }
}
