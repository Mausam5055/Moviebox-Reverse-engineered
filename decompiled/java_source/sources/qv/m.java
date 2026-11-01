package qv;

import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.noober.background.view.BLTextView;
import com.transsion.ugcvideodetail.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class m implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f73799a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatTextView f73800b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f73801c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final BLTextView f73802d;

    private m(FrameLayout frameLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, BLTextView bLTextView) {
        this.f73799a = frameLayout;
        this.f73800b = appCompatTextView;
        this.f73801c = appCompatTextView2;
        this.f73802d = bLTextView;
    }

    public static m a(View view) {
        int i11 = R$id.tvUGCImmDownloading;
        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
        if (appCompatTextView != null) {
            i11 = R$id.tvUGCImmDownloadingPercent;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView2 != null) {
                i11 = R$id.tvUGCImmDownloadingView;
                BLTextView bLTextView = (BLTextView) g4.b.a(view, i11);
                if (bLTextView != null) {
                    return new m((FrameLayout) view, appCompatTextView, appCompatTextView2, bLTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f73799a;
    }
}
