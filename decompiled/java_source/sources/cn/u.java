package cn;

import android.view.LayoutInflater;
import android.view.TextureView;
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
public final class u implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f17499a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Group f17500b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Group f17501c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ShapeableImageView f17502d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ShapeableImageView f17503e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatImageView f17504f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ProgressBar f17505g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TextureView f17506h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TextView f17507i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final View f17508j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AppCompatImageView f17509k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final SecondariesSeekBar f17510l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final TextView f17511m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ViewStub f17512n;

    private u(ConstraintLayout constraintLayout, Group group, Group group2, ShapeableImageView shapeableImageView, ShapeableImageView shapeableImageView2, AppCompatImageView appCompatImageView, ProgressBar progressBar, TextureView textureView, TextView textView, View view, AppCompatImageView appCompatImageView2, SecondariesSeekBar secondariesSeekBar, TextView textView2, ViewStub viewStub) {
        this.f17499a = constraintLayout;
        this.f17500b = group;
        this.f17501c = group2;
        this.f17502d = shapeableImageView;
        this.f17503e = shapeableImageView2;
        this.f17504f = appCompatImageView;
        this.f17505g = progressBar;
        this.f17506h = textureView;
        this.f17507i = textView;
        this.f17508j = view;
        this.f17509k = appCompatImageView2;
        this.f17510l = secondariesSeekBar;
        this.f17511m = textView2;
        this.f17512n = viewStub;
    }

    public static u a(View view) {
        View viewA;
        int i11 = R$id.group_loading;
        Group group = (Group) g4.b.a(view, i11);
        if (group != null) {
            i11 = R$id.group_progress;
            Group group2 = (Group) g4.b.a(view, i11);
            if (group2 != null) {
                i11 = R$id.ivMovieBlurCover;
                ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
                if (shapeableImageView != null) {
                    i11 = R$id.ivMovieCover;
                    ShapeableImageView shapeableImageView2 = (ShapeableImageView) g4.b.a(view, i11);
                    if (shapeableImageView2 != null) {
                        i11 = R$id.iv_play;
                        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                        if (appCompatImageView != null) {
                            i11 = R$id.progress;
                            ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
                            if (progressBar != null) {
                                i11 = R$id.textureView;
                                TextureView textureView = (TextureView) g4.b.a(view, i11);
                                if (textureView != null) {
                                    i11 = R$id.tv_loading;
                                    TextView textView = (TextView) g4.b.a(view, i11);
                                    if (textView != null && (viewA = g4.b.a(view, (i11 = R$id.v_tap))) != null) {
                                        i11 = R$id.vd_pause;
                                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                                        if (appCompatImageView2 != null) {
                                            i11 = R$id.vd_seekbar;
                                            SecondariesSeekBar secondariesSeekBar = (SecondariesSeekBar) g4.b.a(view, i11);
                                            if (secondariesSeekBar != null) {
                                                i11 = R$id.vd_video_time;
                                                TextView textView2 = (TextView) g4.b.a(view, i11);
                                                if (textView2 != null) {
                                                    i11 = R$id.vs_load_failed;
                                                    ViewStub viewStub = (ViewStub) g4.b.a(view, i11);
                                                    if (viewStub != null) {
                                                        return new u((ConstraintLayout) view, group, group2, shapeableImageView, shapeableImageView2, appCompatImageView, progressBar, textureView, textView, viewA, appCompatImageView2, secondariesSeekBar, textView2, viewStub);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static u c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static u d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_trailer, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f17499a;
    }
}
