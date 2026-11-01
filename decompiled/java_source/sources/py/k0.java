package py;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.transsion.wrapperad.view.NativeSlideshowView;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class k0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f72786a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f72787b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final NativeSlideshowView f72788c;

    private k0(FrameLayout frameLayout, FrameLayout frameLayout2, NativeSlideshowView nativeSlideshowView) {
        this.f72786a = frameLayout;
        this.f72787b = frameLayout2;
        this.f72788c = nativeSlideshowView;
    }

    public static k0 a(View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i11 = R$id.nativeSlideshowView;
        NativeSlideshowView nativeSlideshowView = (NativeSlideshowView) g4.b.a(view, i11);
        if (nativeSlideshowView != null) {
            return new k0(frameLayout, frameLayout, nativeSlideshowView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static k0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static k0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_top_card_ad_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f72786a;
    }
}
