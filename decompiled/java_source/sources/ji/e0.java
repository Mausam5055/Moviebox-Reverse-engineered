package ji;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import com.cloud.hisavana.sdk.api.view.MediaView;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class e0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CardView f66062a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CardView f66063b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f66064c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final CardView f66065d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextView f66066e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatImageView f66067f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final MediaView f66068g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final FrameLayout f66069h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TextView f66070i;

    private e0(CardView cardView, CardView cardView2, AppCompatTextView appCompatTextView, CardView cardView3, TextView textView, AppCompatImageView appCompatImageView, MediaView mediaView, FrameLayout frameLayout, TextView textView2) {
        this.f66062a = cardView;
        this.f66063b = cardView2;
        this.f66064c = appCompatTextView;
        this.f66065d = cardView3;
        this.f66066e = textView;
        this.f66067f = appCompatImageView;
        this.f66068g = mediaView;
        this.f66069h = frameLayout;
        this.f66070i = textView2;
    }

    public static e0 a(View view) {
        int i11 = R$id.icon_cardview;
        CardView cardView = (CardView) g4.b.a(view, i11);
        if (cardView != null) {
            i11 = R$id.native_ad_action;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null) {
                CardView cardView2 = (CardView) view;
                i11 = R$id.native_ad_des;
                TextView textView = (TextView) g4.b.a(view, i11);
                if (textView != null) {
                    i11 = R$id.native_ad_icon;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                    if (appCompatImageView != null) {
                        i11 = R$id.native_ad_media;
                        MediaView mediaView = (MediaView) g4.b.a(view, i11);
                        if (mediaView != null) {
                            i11 = R$id.native_ad_media_container;
                            FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
                            if (frameLayout != null) {
                                i11 = R$id.native_ad_title;
                                TextView textView2 = (TextView) g4.b.a(view, i11);
                                if (textView2 != null) {
                                    return new e0(cardView2, cardView, appCompatTextView, cardView2, textView, appCompatImageView, mediaView, frameLayout, textView2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static e0 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.test_ssp_hi_native_ad_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public CardView getRoot() {
        return this.f66062a;
    }
}
