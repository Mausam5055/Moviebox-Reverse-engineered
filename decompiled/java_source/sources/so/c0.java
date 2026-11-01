package so;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLLinearLayout;
import com.noober.background.view.BLTextView;
import com.transsion.postdetail.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class c0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f75454a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f75455b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f75456c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f75457d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ShapeableImageView f75458e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BLLinearLayout f75459f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final BLLinearLayout f75460g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final RecyclerView f75461h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatTextView f75462i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final BLTextView f75463j;

    private c0(View view, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, ShapeableImageView shapeableImageView, BLLinearLayout bLLinearLayout, BLLinearLayout bLLinearLayout2, RecyclerView recyclerView, AppCompatTextView appCompatTextView3, BLTextView bLTextView) {
        this.f75454a = view;
        this.f75455b = appCompatImageView;
        this.f75456c = appCompatTextView;
        this.f75457d = appCompatTextView2;
        this.f75458e = shapeableImageView;
        this.f75459f = bLLinearLayout;
        this.f75460g = bLLinearLayout2;
        this.f75461h = recyclerView;
        this.f75462i = appCompatTextView3;
        this.f75463j = bLTextView;
    }

    public static c0 a(View view) {
        int i11 = R$id.innerIcon;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.innerTvInfo;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null) {
                i11 = R$id.innerTvName;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView2 != null) {
                    i11 = R$id.iv_cover;
                    ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
                    if (shapeableImageView != null) {
                        i11 = R$id.ll_detail;
                        BLLinearLayout bLLinearLayout = (BLLinearLayout) g4.b.a(view, i11);
                        if (bLLinearLayout != null) {
                            i11 = R$id.ll_download;
                            BLLinearLayout bLLinearLayout2 = (BLLinearLayout) g4.b.a(view, i11);
                            if (bLLinearLayout2 != null) {
                                i11 = R$id.recycler_view_ep;
                                RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                                if (recyclerView != null) {
                                    i11 = R$id.tv_ep_title;
                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                                    if (appCompatTextView3 != null) {
                                        i11 = R$id.tv_more;
                                        BLTextView bLTextView = (BLTextView) g4.b.a(view, i11);
                                        if (bLTextView != null) {
                                            return new c0(view, appCompatImageView, appCompatTextView, appCompatTextView2, shapeableImageView, bLLinearLayout, bLLinearLayout2, recyclerView, appCompatTextView3, bLTextView);
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
        return this.f75454a;
    }
}
