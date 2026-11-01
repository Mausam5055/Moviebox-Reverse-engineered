package so;

import android.view.View;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.tn.lib.view.SecondariesSeekBar;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.ui.view.ImmSpeedView;

/* JADX INFO: loaded from: classes6.dex */
public final class d0 implements g4.a {
    public final AppCompatTextView A;
    public final TextView B;
    public final TextView C;
    public final FrameLayout D;
    public final ViewStub E;
    public final ViewStub F;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f75466a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f75467b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinearLayoutCompat f75468c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f75469d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final View f75470e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final View f75471f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final po.a f75472g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final fu.j f75473h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ConstraintLayout f75474i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TextView f75475j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AppCompatTextView f75476k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ImmSpeedView f75477l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final AppCompatTextView f75478m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final AppCompatTextView f75479n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final TextView f75480o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final TextView f75481p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final View f75482q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final SimpleSubtitleView f75483r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final SimpleSubtitleView f75484s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final p0 f75485t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final AppCompatImageView f75486u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final ConstraintLayout f75487v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final AppCompatTextView f75488w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final Group f75489x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final AppCompatImageView f75490y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final SecondariesSeekBar f75491z;

    private d0(ConstraintLayout constraintLayout, FrameLayout frameLayout, LinearLayoutCompat linearLayoutCompat, AppCompatImageView appCompatImageView, View view, View view2, po.a aVar, fu.j jVar, ConstraintLayout constraintLayout2, TextView textView, AppCompatTextView appCompatTextView, ImmSpeedView immSpeedView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, TextView textView2, TextView textView3, View view3, SimpleSubtitleView simpleSubtitleView, SimpleSubtitleView simpleSubtitleView2, p0 p0Var, AppCompatImageView appCompatImageView2, ConstraintLayout constraintLayout3, AppCompatTextView appCompatTextView4, Group group, AppCompatImageView appCompatImageView3, SecondariesSeekBar secondariesSeekBar, AppCompatTextView appCompatTextView5, TextView textView4, TextView textView5, FrameLayout frameLayout2, ViewStub viewStub, ViewStub viewStub2) {
        this.f75466a = constraintLayout;
        this.f75467b = frameLayout;
        this.f75468c = linearLayoutCompat;
        this.f75469d = appCompatImageView;
        this.f75470e = view;
        this.f75471f = view2;
        this.f75472g = aVar;
        this.f75473h = jVar;
        this.f75474i = constraintLayout2;
        this.f75475j = textView;
        this.f75476k = appCompatTextView;
        this.f75477l = immSpeedView;
        this.f75478m = appCompatTextView2;
        this.f75479n = appCompatTextView3;
        this.f75480o = textView2;
        this.f75481p = textView3;
        this.f75482q = view3;
        this.f75483r = simpleSubtitleView;
        this.f75484s = simpleSubtitleView2;
        this.f75485t = p0Var;
        this.f75486u = appCompatImageView2;
        this.f75487v = constraintLayout3;
        this.f75488w = appCompatTextView4;
        this.f75489x = group;
        this.f75490y = appCompatImageView3;
        this.f75491z = secondariesSeekBar;
        this.A = appCompatTextView5;
        this.B = textView4;
        this.C = textView5;
        this.D = frameLayout2;
        this.E = viewStub;
        this.F = viewStub2;
    }

    public static d0 a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        View viewA4;
        View viewA5;
        int i11 = R$id.flRootSubtitle;
        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
        if (frameLayout != null) {
            i11 = R$id.flSubtitle;
            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) g4.b.a(view, i11);
            if (linearLayoutCompat != null) {
                i11 = R$id.iv_feedback;
                AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView != null && (viewA = g4.b.a(view, (i11 = R$id.land_view1))) != null && (viewA2 = g4.b.a(view, (i11 = R$id.land_view2))) != null && (viewA3 = g4.b.a(view, (i11 = R$id.layout_bv))) != null) {
                    po.a aVarA = po.a.a(viewA3);
                    i11 = R$id.layout_sync_adjust;
                    View viewA6 = g4.b.a(view, i11);
                    if (viewA6 != null) {
                        fu.j jVarA = fu.j.a(viewA6);
                        ConstraintLayout constraintLayout = (ConstraintLayout) view;
                        i11 = R$id.tvHelpTip;
                        TextView textView = (TextView) g4.b.a(view, i11);
                        if (textView != null) {
                            i11 = R$id.tv_language;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                            if (appCompatTextView != null) {
                                i11 = R$id.tv_play_speed;
                                ImmSpeedView immSpeedView = (ImmSpeedView) g4.b.a(view, i11);
                                if (immSpeedView != null) {
                                    i11 = R$id.tvPressSpeed;
                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                    if (appCompatTextView2 != null) {
                                        i11 = R$id.tvRotate;
                                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                                        if (appCompatTextView3 != null) {
                                            i11 = R$id.tv_toast_1;
                                            TextView textView2 = (TextView) g4.b.a(view, i11);
                                            if (textView2 != null) {
                                                i11 = R$id.tv_toast_2;
                                                TextView textView3 = (TextView) g4.b.a(view, i11);
                                                if (textView3 != null && (viewA4 = g4.b.a(view, (i11 = R$id.v_gesture))) != null) {
                                                    i11 = R$id.vSubtitleBottom;
                                                    SimpleSubtitleView simpleSubtitleView = (SimpleSubtitleView) g4.b.a(view, i11);
                                                    if (simpleSubtitleView != null) {
                                                        i11 = R$id.vSubtitleTop;
                                                        SimpleSubtitleView simpleSubtitleView2 = (SimpleSubtitleView) g4.b.a(view, i11);
                                                        if (simpleSubtitleView2 != null && (viewA5 = g4.b.a(view, (i11 = R$id.vd_include_load))) != null) {
                                                            p0 p0VarA = p0.a(viewA5);
                                                            i11 = R$id.vd_iv_back;
                                                            AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                                                            if (appCompatImageView2 != null) {
                                                                i11 = R$id.vd_land_bottom_controller;
                                                                ConstraintLayout constraintLayout2 = (ConstraintLayout) g4.b.a(view, i11);
                                                                if (constraintLayout2 != null) {
                                                                    i11 = R$id.vd_land_center_progress;
                                                                    AppCompatTextView appCompatTextView4 = (AppCompatTextView) g4.b.a(view, i11);
                                                                    if (appCompatTextView4 != null) {
                                                                        i11 = R$id.vd_land_toolbar;
                                                                        Group group = (Group) g4.b.a(view, i11);
                                                                        if (group != null) {
                                                                            i11 = R$id.vd_pause;
                                                                            AppCompatImageView appCompatImageView3 = (AppCompatImageView) g4.b.a(view, i11);
                                                                            if (appCompatImageView3 != null) {
                                                                                i11 = R$id.vd_seekbar;
                                                                                SecondariesSeekBar secondariesSeekBar = (SecondariesSeekBar) g4.b.a(view, i11);
                                                                                if (secondariesSeekBar != null) {
                                                                                    i11 = R$id.vd_title;
                                                                                    AppCompatTextView appCompatTextView5 = (AppCompatTextView) g4.b.a(view, i11);
                                                                                    if (appCompatTextView5 != null) {
                                                                                        i11 = R$id.vd_video_duration;
                                                                                        TextView textView4 = (TextView) g4.b.a(view, i11);
                                                                                        if (textView4 != null) {
                                                                                            i11 = R$id.vd_video_time;
                                                                                            TextView textView5 = (TextView) g4.b.a(view, i11);
                                                                                            if (textView5 != null) {
                                                                                                i11 = R$id.video_portrait_surface;
                                                                                                FrameLayout frameLayout2 = (FrameLayout) g4.b.a(view, i11);
                                                                                                if (frameLayout2 != null) {
                                                                                                    i11 = R$id.vs_load_failed;
                                                                                                    ViewStub viewStub = (ViewStub) g4.b.a(view, i11);
                                                                                                    if (viewStub != null) {
                                                                                                        i11 = R$id.vs_replay;
                                                                                                        ViewStub viewStub2 = (ViewStub) g4.b.a(view, i11);
                                                                                                        if (viewStub2 != null) {
                                                                                                            return new d0(constraintLayout, frameLayout, linearLayoutCompat, appCompatImageView, viewA, viewA2, aVarA, jVarA, constraintLayout, textView, appCompatTextView, immSpeedView, appCompatTextView2, appCompatTextView3, textView2, textView3, viewA4, simpleSubtitleView, simpleSubtitleView2, p0VarA, appCompatImageView2, constraintLayout2, appCompatTextView4, group, appCompatImageView3, secondariesSeekBar, appCompatTextView5, textView4, textView5, frameLayout2, viewStub, viewStub2);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f75466a;
    }
}
