package jx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.noober.background.view.BLTextView;
import com.transsion.videodetail.R$id;
import com.transsion.videodetail.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class d implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f66349a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f66350b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f66351c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f66352d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f66353e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BLTextView f66354f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final LinearLayout f66355g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final RecyclerView f66356h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final BLTextView f66357i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final BLTextView f66358j;

    private d(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, BLTextView bLTextView, LinearLayout linearLayout, RecyclerView recyclerView, BLTextView bLTextView2, BLTextView bLTextView3) {
        this.f66349a = constraintLayout;
        this.f66350b = appCompatImageView;
        this.f66351c = appCompatTextView;
        this.f66352d = appCompatTextView2;
        this.f66353e = appCompatTextView3;
        this.f66354f = bLTextView;
        this.f66355g = linearLayout;
        this.f66356h = recyclerView;
        this.f66357i = bLTextView2;
        this.f66358j = bLTextView3;
    }

    public static d a(View view) {
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
                                i11 = R$id.resourceRv;
                                RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                                if (recyclerView != null) {
                                    i11 = R$id.tvLanguage;
                                    BLTextView bLTextView2 = (BLTextView) g4.b.a(view, i11);
                                    if (bLTextView2 != null) {
                                        i11 = R$id.tv_more;
                                        BLTextView bLTextView3 = (BLTextView) g4.b.a(view, i11);
                                        if (bLTextView3 != null) {
                                            return new d((ConstraintLayout) view, appCompatImageView, appCompatTextView, appCompatTextView2, appCompatTextView3, bLTextView, linearLayout, recyclerView, bLTextView2, bLTextView3);
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
        View viewInflate = layoutInflater.inflate(R$layout.fragment_episode, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f66349a;
    }
}
