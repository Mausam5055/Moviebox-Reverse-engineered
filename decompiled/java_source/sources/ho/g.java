package ho;

import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.noober.background.view.BLTextView;
import com.transsion.player.longvideo.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class g implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f64584a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Group f64585b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Group f64586c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final BLTextView f64587d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f64588e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f64589f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f64590g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final BLTextView f64591h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LinearLayout f64592i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ConstraintLayout f64593j;

    private g(ConstraintLayout constraintLayout, Group group, Group group2, BLTextView bLTextView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, BLTextView bLTextView2, LinearLayout linearLayout, ConstraintLayout constraintLayout2) {
        this.f64584a = constraintLayout;
        this.f64585b = group;
        this.f64586c = group2;
        this.f64587d = bLTextView;
        this.f64588e = appCompatTextView;
        this.f64589f = appCompatTextView2;
        this.f64590g = appCompatTextView3;
        this.f64591h = bLTextView2;
        this.f64592i = linearLayout;
        this.f64593j = constraintLayout2;
    }

    public static g a(View view) {
        int i11 = R$id.group1;
        Group group = (Group) g4.b.a(view, i11);
        if (group != null) {
            i11 = R$id.group2;
            Group group2 = (Group) g4.b.a(view, i11);
            if (group2 != null) {
                i11 = R$id.interceptPremium;
                BLTextView bLTextView = (BLTextView) g4.b.a(view, i11);
                if (bLTextView != null) {
                    i11 = R$id.interceptTip;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView != null) {
                        i11 = R$id.interceptTitle;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView2 != null) {
                            i11 = R$id.interceptTitleCam;
                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                            if (appCompatTextView3 != null) {
                                i11 = R$id.interceptWatchAd;
                                BLTextView bLTextView2 = (BLTextView) g4.b.a(view, i11);
                                if (bLTextView2 != null) {
                                    i11 = R$id.llBtn;
                                    LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                                    if (linearLayout != null) {
                                        ConstraintLayout constraintLayout = (ConstraintLayout) view;
                                        return new g(constraintLayout, group, group2, bLTextView, appCompatTextView, appCompatTextView2, appCompatTextView3, bLTextView2, linearLayout, constraintLayout);
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
        return this.f64584a;
    }
}
