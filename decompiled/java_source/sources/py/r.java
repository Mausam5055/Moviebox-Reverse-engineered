package py;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.noober.background.view.BLTextView;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsnet.downloader.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class r implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f72891a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final NativeWrapperAdView f72892b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CardView f72893c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f72894d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f72895e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BLTextView f72896f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final BLTextView f72897g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppCompatTextView f72898h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatTextView f72899i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AppCompatTextView f72900j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AppCompatTextView f72901k;

    private r(ConstraintLayout constraintLayout, NativeWrapperAdView nativeWrapperAdView, CardView cardView, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, BLTextView bLTextView, BLTextView bLTextView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4) {
        this.f72891a = constraintLayout;
        this.f72892b = nativeWrapperAdView;
        this.f72893c = cardView;
        this.f72894d = appCompatImageView;
        this.f72895e = appCompatImageView2;
        this.f72896f = bLTextView;
        this.f72897g = bLTextView2;
        this.f72898h = appCompatTextView;
        this.f72899i = appCompatTextView2;
        this.f72900j = appCompatTextView3;
        this.f72901k = appCompatTextView4;
    }

    public static r a(View view) {
        int i11 = R$id.adContainer;
        NativeWrapperAdView nativeWrapperAdView = (NativeWrapperAdView) g4.b.a(view, i11);
        if (nativeWrapperAdView != null) {
            i11 = R$id.card_native_ad;
            CardView cardView = (CardView) g4.b.a(view, i11);
            if (cardView != null) {
                i11 = R$id.ivClose;
                AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView != null) {
                    i11 = R$id.ivDownload;
                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                    if (appCompatImageView2 != null) {
                        i11 = R$id.tvBtnDetails;
                        BLTextView bLTextView = (BLTextView) g4.b.a(view, i11);
                        if (bLTextView != null) {
                            i11 = R$id.tvBtnPlayNow;
                            BLTextView bLTextView2 = (BLTextView) g4.b.a(view, i11);
                            if (bLTextView2 != null) {
                                i11 = R$id.tvDes;
                                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                                if (appCompatTextView != null) {
                                    i11 = R$id.tvFileSize;
                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                                    if (appCompatTextView2 != null) {
                                        i11 = R$id.tvTitle;
                                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                                        if (appCompatTextView3 != null) {
                                            i11 = R$id.tvTitleCopy;
                                            AppCompatTextView appCompatTextView4 = (AppCompatTextView) g4.b.a(view, i11);
                                            if (appCompatTextView4 != null) {
                                                return new r((ConstraintLayout) view, nativeWrapperAdView, cardView, appCompatImageView, appCompatImageView2, bLTextView, bLTextView2, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4);
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

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f72891a;
    }
}
