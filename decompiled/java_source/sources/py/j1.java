package py;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class j1 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f72778a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f72779b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f72780c;

    private j1(LinearLayout linearLayout, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView) {
        this.f72778a = linearLayout;
        this.f72779b = appCompatImageView;
        this.f72780c = appCompatTextView;
    }

    public static j1 a(View view) {
        int i11 = R$id.ivPremium;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.tvResolution;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null) {
                return new j1((LinearLayout) view, appCompatImageView, appCompatTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static j1 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.view_playback_resolution_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f72778a;
    }
}
