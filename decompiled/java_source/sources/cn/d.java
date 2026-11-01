package cn;

import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.noober.background.view.BLLinearLayout;
import com.noober.background.view.BLTextView;
import com.tn.lib.view.MaxHeightNestedScrollView;
import com.transsion.moviedetail.R$id;

/* JADX INFO: loaded from: classes5.dex */
public final class d implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BLLinearLayout f17330a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImageView f17331b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinearLayoutCompat f17332c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final MaxHeightNestedScrollView f17333d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final BLTextView f17334e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BLTextView f17335f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AppCompatTextView f17336g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatTextView f17337h;

    private d(BLLinearLayout bLLinearLayout, ImageView imageView, LinearLayoutCompat linearLayoutCompat, MaxHeightNestedScrollView maxHeightNestedScrollView, BLTextView bLTextView, BLTextView bLTextView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f17330a = bLLinearLayout;
        this.f17331b = imageView;
        this.f17332c = linearLayoutCompat;
        this.f17333d = maxHeightNestedScrollView;
        this.f17334e = bLTextView;
        this.f17335f = bLTextView2;
        this.f17336g = appCompatTextView;
        this.f17337h = appCompatTextView2;
    }

    public static d a(View view) {
        int i11 = R$id.iv_select;
        ImageView imageView = (ImageView) g4.b.a(view, i11);
        if (imageView != null) {
            i11 = R$id.ll_select;
            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) g4.b.a(view, i11);
            if (linearLayoutCompat != null) {
                i11 = R$id.ns_tips;
                MaxHeightNestedScrollView maxHeightNestedScrollView = (MaxHeightNestedScrollView) g4.b.a(view, i11);
                if (maxHeightNestedScrollView != null) {
                    i11 = R$id.tv_back;
                    BLTextView bLTextView = (BLTextView) g4.b.a(view, i11);
                    if (bLTextView != null) {
                        i11 = R$id.tv_confirm;
                        BLTextView bLTextView2 = (BLTextView) g4.b.a(view, i11);
                        if (bLTextView2 != null) {
                            i11 = R$id.tv_tips;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                            if (appCompatTextView != null) {
                                i11 = R$id.tv_title;
                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                if (appCompatTextView2 != null) {
                                    return new d((BLLinearLayout) view, imageView, linearLayoutCompat, maxHeightNestedScrollView, bLTextView, bLTextView2, appCompatTextView, appCompatTextView2);
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
    public BLLinearLayout getRoot() {
        return this.f17330a;
    }
}
