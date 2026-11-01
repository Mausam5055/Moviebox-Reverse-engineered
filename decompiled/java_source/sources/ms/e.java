package ms;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv_pugc.base.widget.ShortTvGradientTextView;

/* JADX INFO: loaded from: classes7.dex */
public final class e implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f69759a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f69760b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f69761c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ShortTvGradientTextView f69762d;

    private e(FrameLayout frameLayout, FrameLayout frameLayout2, AppCompatTextView appCompatTextView, ShortTvGradientTextView shortTvGradientTextView) {
        this.f69759a = frameLayout;
        this.f69760b = frameLayout2;
        this.f69761c = appCompatTextView;
        this.f69762d = shortTvGradientTextView;
    }

    public static e a(View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i11 = R$id.tvName;
        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
        if (appCompatTextView != null) {
            i11 = R$id.tvNameSelected;
            ShortTvGradientTextView shortTvGradientTextView = (ShortTvGradientTextView) g4.b.a(view, i11);
            if (shortTvGradientTextView != null) {
                return new e(frameLayout, frameLayout, appCompatTextView, shortTvGradientTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static e c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.pugc_short_tv_item_language_select, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f69759a;
    }
}
