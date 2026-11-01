package rq;

import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.view.CornerTextView;
import com.transsion.search.R$id;
import com.transsnet.downloader.widget.DownloadView;

/* JADX INFO: loaded from: classes6.dex */
public final class m implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f74674a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ShapeableImageView f74675b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CornerTextView f74676c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final View f74677d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final DownloadView f74678e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RecyclerView f74679f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final LinearLayout f74680g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatTextView f74681h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatTextView f74682i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AppCompatTextView f74683j;

    private m(View view, ShapeableImageView shapeableImageView, CornerTextView cornerTextView, View view2, DownloadView downloadView, RecyclerView recyclerView, LinearLayout linearLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        this.f74674a = view;
        this.f74675b = shapeableImageView;
        this.f74676c = cornerTextView;
        this.f74677d = view2;
        this.f74678e = downloadView;
        this.f74679f = recyclerView;
        this.f74680g = linearLayout;
        this.f74681h = appCompatTextView;
        this.f74682i = appCompatTextView2;
        this.f74683j = appCompatTextView3;
    }

    public static m a(View view) {
        View viewA;
        int i11 = R$id.ivCover;
        ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
        if (shapeableImageView != null) {
            i11 = R$id.ivSearchCorner;
            CornerTextView cornerTextView = (CornerTextView) g4.b.a(view, i11);
            if (cornerTextView != null && (viewA = g4.b.a(view, (i11 = R$id.line))) != null) {
                i11 = R$id.llDownload;
                DownloadView downloadView = (DownloadView) g4.b.a(view, i11);
                if (downloadView != null) {
                    i11 = R$id.rvSeasons;
                    RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
                    if (recyclerView != null) {
                        i11 = R$id.tagContentLL;
                        LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
                        if (linearLayout != null) {
                            i11 = R$id.tvSubject;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                            if (appCompatTextView != null) {
                                i11 = R$id.tvSubjectScore;
                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                if (appCompatTextView2 != null) {
                                    i11 = R$id.tvSubjectYear;
                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                                    if (appCompatTextView3 != null) {
                                        return new m(view, shapeableImageView, cornerTextView, viewA, downloadView, recyclerView, linearLayout, appCompatTextView, appCompatTextView2, appCompatTextView3);
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
        return this.f74674a;
    }
}
