package ji;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class v implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f66184a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatTextView f66185b;

    private v(FrameLayout frameLayout, AppCompatTextView appCompatTextView) {
        this.f66184a = frameLayout;
        this.f66185b = appCompatTextView;
    }

    public static v a(View view) {
        int i11 = R$id.tvConfig;
        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
        if (appCompatTextView != null) {
            return new v((FrameLayout) view, appCompatTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static v c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static v d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_test_ad_other_config_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f66184a;
    }
}
