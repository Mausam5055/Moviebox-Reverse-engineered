package ey;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import com.cloud.hisavana.sdk.api.view.MediaView;
import com.transsion.wrapperad.R$id;
import com.transsion.wrapperad.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class d implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CardView f62082a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CardView f62083b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f62084c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final CardView f62085d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextView f62086e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatImageView f62087f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final MediaView f62088g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final FrameLayout f62089h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TextView f62090i;

    private d(CardView cardView, CardView cardView2, AppCompatTextView appCompatTextView, CardView cardView3, TextView textView, AppCompatImageView appCompatImageView, MediaView mediaView, FrameLayout frameLayout, TextView textView2) {
        this.f62082a = cardView;
        this.f62083b = cardView2;
        this.f62084c = appCompatTextView;
        this.f62085d = cardView3;
        this.f62086e = textView;
        this.f62087f = appCompatImageView;
        this.f62088g = mediaView;
        this.f62089h = frameLayout;
        this.f62090i = textView2;
    }

    public static d a(View view) {
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
                                    return new d(cardView2, cardView, appCompatTextView, cardView2, textView, appCompatImageView, mediaView, frameLayout, textView2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static d c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.search_hot_hi_native_ad_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public CardView getRoot() {
        return this.f62082a;
    }
}
