package qx;

import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.Group;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.transsion.videofloat.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class b implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f73889a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f73890b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Group f73891c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f73892d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f73893e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatImageView f73894f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatImageView f73895g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatImageView f73896h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final SimpleSubtitleView f73897i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final View f73898j;

    private b(View view, FrameLayout frameLayout, Group group, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, AppCompatImageView appCompatImageView5, SimpleSubtitleView simpleSubtitleView, View view2) {
        this.f73889a = view;
        this.f73890b = frameLayout;
        this.f73891c = group;
        this.f73892d = appCompatImageView;
        this.f73893e = appCompatImageView2;
        this.f73894f = appCompatImageView3;
        this.f73895g = appCompatImageView4;
        this.f73896h = appCompatImageView5;
        this.f73897i = simpleSubtitleView;
        this.f73898j = view2;
    }

    public static b a(View view) {
        View viewA;
        int i11 = R$id.fl_player_container;
        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
        if (frameLayout != null) {
            i11 = R$id.group_control;
            Group group = (Group) g4.b.a(view, i11);
            if (group != null) {
                i11 = R$id.iv_backward;
                AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView != null) {
                    i11 = R$id.iv_close;
                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                    if (appCompatImageView2 != null) {
                        i11 = R$id.iv_forward;
                        AppCompatImageView appCompatImageView3 = (AppCompatImageView) g4.b.a(view, i11);
                        if (appCompatImageView3 != null) {
                            i11 = R$id.iv_full;
                            AppCompatImageView appCompatImageView4 = (AppCompatImageView) g4.b.a(view, i11);
                            if (appCompatImageView4 != null) {
                                i11 = R$id.iv_play;
                                AppCompatImageView appCompatImageView5 = (AppCompatImageView) g4.b.a(view, i11);
                                if (appCompatImageView5 != null) {
                                    i11 = R$id.v_subtitle;
                                    SimpleSubtitleView simpleSubtitleView = (SimpleSubtitleView) g4.b.a(view, i11);
                                    if (simpleSubtitleView != null && (viewA = g4.b.a(view, (i11 = R$id.v_trans_float))) != null) {
                                        return new b(view, frameLayout, group, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatImageView4, appCompatImageView5, simpleSubtitleView, viewA);
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
    public View getRoot() {
        return this.f73889a;
    }
}
