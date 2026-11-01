package qv;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLTextView;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class j implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f73778a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f73779b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ShapeableImageView f73780c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final RecyclerView f73781d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f73782e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f73783f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final BLTextView f73784g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatTextView f73785h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatTextView f73786i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AppCompatTextView f73787j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final View f73788k;

    private j(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, ShapeableImageView shapeableImageView, RecyclerView recyclerView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, BLTextView bLTextView, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, View view) {
        this.f73778a = constraintLayout;
        this.f73779b = appCompatImageView;
        this.f73780c = shapeableImageView;
        this.f73781d = recyclerView;
        this.f73782e = appCompatTextView;
        this.f73783f = appCompatTextView2;
        this.f73784g = bLTextView;
        this.f73785h = appCompatTextView3;
        this.f73786i = appCompatTextView4;
        this.f73787j = appCompatTextView5;
        this.f73788k = view;
    }

    public static j a(View view) {
        View viewA;
        int i11 = R$id.ivClose;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.ivUserCover;
            ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
            if (shapeableImageView != null) {
                i11 = R$id.recyclerTag;
                RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                if (recyclerView != null) {
                    i11 = R$id.tvDes;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView != null) {
                        i11 = R$id.tvDesTitle;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                        if (appCompatTextView2 != null) {
                            i11 = R$id.tvFollow;
                            BLTextView bLTextView = (BLTextView) g4.b.a(view, i11);
                            if (bLTextView != null) {
                                i11 = R$id.tvPageTitle;
                                AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                                if (appCompatTextView3 != null) {
                                    i11 = R$id.tvTitle;
                                    AppCompatTextView appCompatTextView4 = (AppCompatTextView) g4.b.a(view, i11);
                                    if (appCompatTextView4 != null) {
                                        i11 = R$id.tvUsername;
                                        AppCompatTextView appCompatTextView5 = (AppCompatTextView) g4.b.a(view, i11);
                                        if (appCompatTextView5 != null && (viewA = g4.b.a(view, (i11 = R$id.vTitleLine))) != null) {
                                            return new j((ConstraintLayout) view, appCompatImageView, shapeableImageView, recyclerView, appCompatTextView, appCompatTextView2, bLTextView, appCompatTextView3, appCompatTextView4, appCompatTextView5, viewA);
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
        View viewInflate = layoutInflater.inflate(R$layout.fragment_ugc_video_detail_info_dialog, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f73778a;
    }
}
