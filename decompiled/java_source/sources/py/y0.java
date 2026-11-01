package py;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.Space;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.noober.background.view.BLTextView;
import com.transsnet.downloader.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class y0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f72984a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f72985b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f72986c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f72987d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f72988e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BLTextView f72989f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final LinearLayout f72990g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final RecyclerView f72991h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final BLTextView f72992i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Space f72993j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final View f72994k;

    private y0(View view, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, BLTextView bLTextView, LinearLayout linearLayout, RecyclerView recyclerView, BLTextView bLTextView2, Space space, View view2) {
        this.f72984a = view;
        this.f72985b = appCompatImageView;
        this.f72986c = appCompatTextView;
        this.f72987d = appCompatTextView2;
        this.f72988e = appCompatTextView3;
        this.f72989f = bLTextView;
        this.f72990g = linearLayout;
        this.f72991h = recyclerView;
        this.f72992i = bLTextView2;
        this.f72993j = space;
        this.f72994k = view2;
    }

    public static y0 a(View view) {
        View viewA;
        int i11 = R$id.innerIcon;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.innerTvInfo;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null) {
                i11 = R$id.innerTvName;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView2 != null) {
                    i11 = R$id.innerTvTitle;
                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView3 != null) {
                        i11 = R$id.iv_seasons;
                        BLTextView bLTextView = (BLTextView) g4.b.a(view, i11);
                        if (bLTextView != null) {
                            i11 = R$id.llLanguage;
                            LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                            if (linearLayout != null) {
                                i11 = R$id.quality_recycler_view;
                                RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                                if (recyclerView != null) {
                                    i11 = R$id.tvLanguage;
                                    BLTextView bLTextView2 = (BLTextView) g4.b.a(view, i11);
                                    if (bLTextView2 != null) {
                                        i11 = R$id.v_bottom_space;
                                        Space space = (Space) g4.b.a(view, i11);
                                        if (space != null && (viewA = g4.b.a(view, (i11 = R$id.v_line))) != null) {
                                            return new y0(view, appCompatImageView, appCompatTextView, appCompatTextView2, appCompatTextView3, bLTextView, linearLayout, recyclerView, bLTextView2, space, viewA);
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
    public View getRoot() {
        return this.f72984a;
    }
}
