package ms;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.base.widget.ShortTvGradientTextView;

/* JADX INFO: loaded from: classes7.dex */
public final class f0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f69771a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f69772b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f69773c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ShortTvGradientTextView f69774d;

    private f0(FrameLayout frameLayout, FrameLayout frameLayout2, AppCompatTextView appCompatTextView, ShortTvGradientTextView shortTvGradientTextView) {
        this.f69771a = frameLayout;
        this.f69772b = frameLayout2;
        this.f69773c = appCompatTextView;
        this.f69774d = shortTvGradientTextView;
    }

    public static f0 a(View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i11 = R$id.tvName;
        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
        if (appCompatTextView != null) {
            i11 = R$id.tvNameSelected;
            ShortTvGradientTextView shortTvGradientTextView = (ShortTvGradientTextView) g4.b.a(view, i11);
            if (shortTvGradientTextView != null) {
                return new f0(frameLayout, frameLayout, appCompatTextView, shortTvGradientTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static f0 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.short_tv_item_language_select, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f69771a;
    }
}
