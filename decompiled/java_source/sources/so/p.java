package so;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.ninegridview.video.NineGridVideoView;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.ui.view.PostDetailOperationView;
import com.transsion.postdetail.ui.view.PostDetailSubjectView;

/* JADX INFO: loaded from: classes6.dex */
public final class p implements g4.a {
    public final AppCompatTextView A;
    public final View B;
    public final View C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f75646a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextView f75647b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConstraintLayout f75648c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f75649d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatSeekBar f75650e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppBarLayout f75651f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ConstraintLayout f75652g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CoordinatorLayout f75653h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final n0 f75654i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ConstraintLayout f75655j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final FrameLayout f75656k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Group f75657l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final AppCompatImageView f75658m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ShapeableImageView f75659n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final AppCompatImageView f75660o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final AppCompatImageView f75661p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final LinearLayout f75662q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final NineGridVideoView f75663r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final PostDetailOperationView f75664s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final PostDetailSubjectView f75665t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final Toolbar f75666u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final CollapsingToolbarLayout f75667v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final m0 f75668w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final AppCompatTextView f75669x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final o0 f75670y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final AppCompatTextView f75671z;

    private p(ConstraintLayout constraintLayout, TextView textView, ConstraintLayout constraintLayout2, AppCompatImageView appCompatImageView, AppCompatSeekBar appCompatSeekBar, AppBarLayout appBarLayout, ConstraintLayout constraintLayout3, CoordinatorLayout coordinatorLayout, n0 n0Var, ConstraintLayout constraintLayout4, FrameLayout frameLayout, Group group, AppCompatImageView appCompatImageView2, ShapeableImageView shapeableImageView, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, LinearLayout linearLayout, NineGridVideoView nineGridVideoView, PostDetailOperationView postDetailOperationView, PostDetailSubjectView postDetailSubjectView, Toolbar toolbar, CollapsingToolbarLayout collapsingToolbarLayout, m0 m0Var, AppCompatTextView appCompatTextView, o0 o0Var, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, View view, View view2) {
        this.f75646a = constraintLayout;
        this.f75647b = textView;
        this.f75648c = constraintLayout2;
        this.f75649d = appCompatImageView;
        this.f75650e = appCompatSeekBar;
        this.f75651f = appBarLayout;
        this.f75652g = constraintLayout3;
        this.f75653h = coordinatorLayout;
        this.f75654i = n0Var;
        this.f75655j = constraintLayout4;
        this.f75656k = frameLayout;
        this.f75657l = group;
        this.f75658m = appCompatImageView2;
        this.f75659n = shapeableImageView;
        this.f75660o = appCompatImageView3;
        this.f75661p = appCompatImageView4;
        this.f75662q = linearLayout;
        this.f75663r = nineGridVideoView;
        this.f75664s = postDetailOperationView;
        this.f75665t = postDetailSubjectView;
        this.f75666u = toolbar;
        this.f75667v = collapsingToolbarLayout;
        this.f75668w = m0Var;
        this.f75669x = appCompatTextView;
        this.f75670y = o0Var;
        this.f75671z = appCompatTextView2;
        this.A = appCompatTextView3;
        this.B = view;
        this.C = view2;
    }

    public static p a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        View viewA4;
        View viewA5;
        int i11 = R$id.ad_audio_time;
        TextView textView = (TextView) g4.b.a(view, i11);
        if (textView != null) {
            i11 = R$id.ad_bottom_controller;
            ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
            if (constraintLayout != null) {
                i11 = R$id.ad_pause;
                AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView != null) {
                    i11 = R$id.ad_seekbar;
                    AppCompatSeekBar appCompatSeekBar = (AppCompatSeekBar) g4.b.a(view, i11);
                    if (appCompatSeekBar != null) {
                        i11 = R$id.appBar;
                        AppBarLayout appBarLayout = (AppBarLayout) g4.b.a(view, i11);
                        if (appBarLayout != null) {
                            ConstraintLayout constraintLayout2 = (ConstraintLayout) view;
                            i11 = R$id.clContent;
                            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) g4.b.a(view, i11);
                            if (coordinatorLayout != null && (viewA = g4.b.a(view, (i11 = R$id.clRating))) != null) {
                                n0 n0VarA = n0.a(viewA);
                                i11 = R$id.contentView;
                                ConstraintLayout constraintLayout3 = (ConstraintLayout) g4.b.a(view, i11);
                                if (constraintLayout3 != null) {
                                    i11 = R$id.flContainer;
                                    FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
                                    if (frameLayout != null) {
                                        i11 = R$id.groupAudio;
                                        Group group = (Group) g4.b.a(view, i11);
                                        if (group != null) {
                                            i11 = R$id.iv_audio_wave;
                                            AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                                            if (appCompatImageView2 != null) {
                                                i11 = R$id.ivAvatar;
                                                ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
                                                if (shapeableImageView != null) {
                                                    i11 = R$id.ivBack;
                                                    AppCompatImageView appCompatImageView3 = (AppCompatImageView) g4.b.a(view, i11);
                                                    if (appCompatImageView3 != null) {
                                                        i11 = R$id.iv_cover;
                                                        AppCompatImageView appCompatImageView4 = (AppCompatImageView) g4.b.a(view, i11);
                                                        if (appCompatImageView4 != null) {
                                                            i11 = R$id.llTop;
                                                            LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                                                            if (linearLayout != null) {
                                                                i11 = R$id.nine_grid;
                                                                NineGridVideoView nineGridVideoView = (NineGridVideoView) g4.b.a(view, i11);
                                                                if (nineGridVideoView != null) {
                                                                    i11 = R$id.postDetailOperationView;
                                                                    PostDetailOperationView postDetailOperationView = (PostDetailOperationView) g4.b.a(view, i11);
                                                                    if (postDetailOperationView != null) {
                                                                        i11 = R$id.postDetailSubjectView;
                                                                        PostDetailSubjectView postDetailSubjectView = (PostDetailSubjectView) g4.b.a(view, i11);
                                                                        if (postDetailSubjectView != null) {
                                                                            i11 = R$id.toolbar;
                                                                            Toolbar toolbar = (Toolbar) g4.b.a(view, i11);
                                                                            if (toolbar != null) {
                                                                                i11 = R$id.toolbarLayout;
                                                                                CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) g4.b.a(view, i11);
                                                                                if (collapsingToolbarLayout != null && (viewA2 = g4.b.a(view, (i11 = R$id.tvPostDesc))) != null) {
                                                                                    m0 m0VarA = m0.a(viewA2);
                                                                                    i11 = R$id.tvPostTime;
                                                                                    AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                                                                                    if (appCompatTextView != null && (viewA3 = g4.b.a(view, (i11 = R$id.tvPostTitle))) != null) {
                                                                                        o0 o0VarA = o0.a(viewA3);
                                                                                        i11 = R$id.tvSubject;
                                                                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                                                                        if (appCompatTextView2 != null) {
                                                                                            i11 = R$id.tvTitle;
                                                                                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                                                                                            if (appCompatTextView3 != null && (viewA4 = g4.b.a(view, (i11 = R$id.viewBg))) != null && (viewA5 = g4.b.a(view, (i11 = R$id.viewTitleLine))) != null) {
                                                                                                return new p(constraintLayout2, textView, constraintLayout, appCompatImageView, appCompatSeekBar, appBarLayout, constraintLayout2, coordinatorLayout, n0VarA, constraintLayout3, frameLayout, group, appCompatImageView2, shapeableImageView, appCompatImageView3, appCompatImageView4, linearLayout, nineGridVideoView, postDetailOperationView, postDetailSubjectView, toolbar, collapsingToolbarLayout, m0VarA, appCompatTextView, o0VarA, appCompatTextView2, appCompatTextView3, viewA4, viewA5);
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

    public static p c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static p d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_post_detail_common_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f75646a;
    }
}
