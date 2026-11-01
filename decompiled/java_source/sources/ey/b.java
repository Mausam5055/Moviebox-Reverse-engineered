package ey;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.cloud.hisavana.sdk.api.view.AdChoicesView;
import com.cloud.hisavana.sdk.api.view.MediaView;
import com.transsion.ad.view.AdTagView;
import com.transsion.wrapperad.R$id;
import com.transsion.wrapperad.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class b implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f62071a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AdChoicesView f62072b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AdTagView f62073c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f62074d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MediaView f62075e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FrameLayout f62076f;

    private b(ConstraintLayout constraintLayout, AdChoicesView adChoicesView, AdTagView adTagView, AppCompatTextView appCompatTextView, MediaView mediaView, FrameLayout frameLayout) {
        this.f62071a = constraintLayout;
        this.f62072b = adChoicesView;
        this.f62073c = adTagView;
        this.f62074d = appCompatTextView;
        this.f62075e = mediaView;
        this.f62076f = frameLayout;
    }

    public static b a(View view) {
        int i11 = R$id.adChoicesView;
        AdChoicesView adChoicesView = (AdChoicesView) g4.b.a(view, i11);
        if (adChoicesView != null) {
            i11 = R$id.adTag;
            AdTagView adTagView = (AdTagView) g4.b.a(view, i11);
            if (adTagView != null) {
                i11 = R$id.native_ad_action;
                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView != null) {
                    i11 = R$id.native_ad_media;
                    MediaView mediaView = (MediaView) g4.b.a(view, i11);
                    if (mediaView != null) {
                        i11 = R$id.native_ad_media_container;
                        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
                        if (frameLayout != null) {
                            return new b((ConstraintLayout) view, adChoicesView, adTagView, appCompatTextView, mediaView, frameLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static b c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.media_content_ssp_native_ad_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f62071a;
    }
}
