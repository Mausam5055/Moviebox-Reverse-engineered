package ms;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv._channel.ui.widget.ShortTvTitleLayout;

/* JADX INFO: loaded from: classes7.dex */
public final class n implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f69871a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f69872b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ShortTvTitleLayout f69873c;

    private n(ConstraintLayout constraintLayout, FrameLayout frameLayout, ShortTvTitleLayout shortTvTitleLayout) {
        this.f69871a = constraintLayout;
        this.f69872b = frameLayout;
        this.f69873c = shortTvTitleLayout;
    }

    public static n a(View view) {
        int i11 = R$id.content_layout;
        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
        if (frameLayout != null) {
            i11 = R$id.tool_bar;
            ShortTvTitleLayout shortTvTitleLayout = (ShortTvTitleLayout) g4.b.a(view, i11);
            if (shortTvTitleLayout != null) {
                return new n((ConstraintLayout) view, frameLayout, shortTvTitleLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static n c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static n d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.short_tv_activity_movie_filter, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f69871a;
    }
}
