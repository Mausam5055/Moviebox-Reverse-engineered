package gv;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.view.SwitchButton;
import com.tn.lib.view.TitleLayout;
import com.transsion.transfer.R$id;
import com.transsion.transfer.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class d implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayoutCompat f63976a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Group f63977b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Group f63978c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f63979d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ShapeableImageView f63980e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LinearLayout f63981f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ConstraintLayout f63982g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ProgressBar f63983h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final SwitchButton f63984i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TitleLayout f63985j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AppCompatTextView f63986k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final AppCompatTextView f63987l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final AppCompatTextView f63988m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final AppCompatTextView f63989n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final AppCompatTextView f63990o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final AppCompatTextView f63991p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final AppCompatTextView f63992q;

    private d(LinearLayoutCompat linearLayoutCompat, Group group, Group group2, AppCompatImageView appCompatImageView, ShapeableImageView shapeableImageView, LinearLayout linearLayout, ConstraintLayout constraintLayout, ProgressBar progressBar, SwitchButton switchButton, TitleLayout titleLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7) {
        this.f63976a = linearLayoutCompat;
        this.f63977b = group;
        this.f63978c = group2;
        this.f63979d = appCompatImageView;
        this.f63980e = shapeableImageView;
        this.f63981f = linearLayout;
        this.f63982g = constraintLayout;
        this.f63983h = progressBar;
        this.f63984i = switchButton;
        this.f63985j = titleLayout;
        this.f63986k = appCompatTextView;
        this.f63987l = appCompatTextView2;
        this.f63988m = appCompatTextView3;
        this.f63989n = appCompatTextView4;
        this.f63990o = appCompatTextView5;
        this.f63991p = appCompatTextView6;
        this.f63992q = appCompatTextView7;
    }

    public static d a(View view) {
        int i11 = R$id.groupErrorLayout;
        Group group = (Group) g4.b.a(view, i11);
        if (group != null) {
            i11 = R$id.groupSuccessLayout;
            Group group2 = (Group) g4.b.a(view, i11);
            if (group2 != null) {
                i11 = R$id.ivError;
                AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView != null) {
                    i11 = R$id.ivTransWifiQrCode;
                    ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
                    if (shapeableImageView != null) {
                        i11 = R$id.llSend;
                        LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                        if (linearLayout != null) {
                            i11 = R$id.llUp;
                            ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
                            if (constraintLayout != null) {
                                i11 = R$id.progressBar;
                                ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
                                if (progressBar != null) {
                                    i11 = R$id.switchButton;
                                    SwitchButton switchButton = (SwitchButton) g4.b.a(view, i11);
                                    if (switchButton != null) {
                                        i11 = R$id.toolBar;
                                        TitleLayout titleLayout = (TitleLayout) g4.b.a(view, i11);
                                        if (titleLayout != null) {
                                            i11 = R$id.tvErrorTip;
                                            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                                            if (appCompatTextView != null) {
                                                i11 = R$id.tvRetry;
                                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                                if (appCompatTextView2 != null) {
                                                    i11 = R$id.tvSend;
                                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                                                    if (appCompatTextView3 != null) {
                                                        i11 = R$id.tvShareLink;
                                                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) g4.b.a(view, i11);
                                                        if (appCompatTextView4 != null) {
                                                            i11 = R$id.tvShareQrCode;
                                                            AppCompatTextView appCompatTextView5 = (AppCompatTextView) g4.b.a(view, i11);
                                                            if (appCompatTextView5 != null) {
                                                                i11 = R$id.tvWaitingForReceiver;
                                                                AppCompatTextView appCompatTextView6 = (AppCompatTextView) g4.b.a(view, i11);
                                                                if (appCompatTextView6 != null) {
                                                                    i11 = R$id.tvWifiSsid;
                                                                    AppCompatTextView appCompatTextView7 = (AppCompatTextView) g4.b.a(view, i11);
                                                                    if (appCompatTextView7 != null) {
                                                                        return new d((LinearLayoutCompat) view, group, group2, appCompatImageView, shapeableImageView, linearLayout, constraintLayout, progressBar, switchButton, titleLayout, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7);
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

    public static d c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static d d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_wifi_create, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayoutCompat getRoot() {
        return this.f63976a;
    }
}
