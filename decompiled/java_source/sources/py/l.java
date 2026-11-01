package py;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.Group;
import com.transsnet.downloader.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class l implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f72815a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Group f72816b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Group f72817c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f72818d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextView f72819e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextView f72820f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TextView f72821g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TextView f72822h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TextView f72823i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final View f72824j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final View f72825k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final View f72826l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final View f72827m;

    private l(FrameLayout frameLayout, Group group, Group group2, AppCompatImageView appCompatImageView, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, View view, View view2, View view3, View view4) {
        this.f72815a = frameLayout;
        this.f72816b = group;
        this.f72817c = group2;
        this.f72818d = appCompatImageView;
        this.f72819e = textView;
        this.f72820f = textView2;
        this.f72821g = textView3;
        this.f72822h = textView4;
        this.f72823i = textView5;
        this.f72824j = view;
        this.f72825k = view2;
        this.f72826l = view3;
        this.f72827m = view4;
    }

    public static l a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        View viewA4;
        int i11 = R$id.groupBatteryPermission;
        Group group = (Group) g4.b.a(view, i11);
        if (group != null) {
            i11 = R$id.groupPremium;
            Group group2 = (Group) g4.b.a(view, i11);
            if (group2 != null) {
                i11 = R$id.ivPremium;
                AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView != null) {
                    i11 = R$id.tvBatteryPermission;
                    TextView textView = (TextView) g4.b.a(view, i11);
                    if (textView != null) {
                        i11 = R$id.tvCancel;
                        TextView textView2 = (TextView) g4.b.a(view, i11);
                        if (textView2 != null) {
                            i11 = R$id.tvDownloadXXSizeAtOnce;
                            TextView textView3 = (TextView) g4.b.a(view, i11);
                            if (textView3 != null) {
                                i11 = R$id.tvPremium;
                                TextView textView4 = (TextView) g4.b.a(view, i11);
                                if (textView4 != null) {
                                    i11 = R$id.tvResumeAll;
                                    TextView textView5 = (TextView) g4.b.a(view, i11);
                                    if (textView5 != null && (viewA = g4.b.a(view, (i11 = R$id.viewBgPremium))) != null && (viewA2 = g4.b.a(view, (i11 = R$id.viewLine1))) != null && (viewA3 = g4.b.a(view, (i11 = R$id.viewLine2))) != null && (viewA4 = g4.b.a(view, (i11 = R$id.viewLine3))) != null) {
                                        return new l((FrameLayout) view, group, group2, appCompatImageView, textView, textView2, textView3, textView4, textView5, viewA, viewA2, viewA3, viewA4);
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
    public FrameLayout getRoot() {
        return this.f72815a;
    }
}
