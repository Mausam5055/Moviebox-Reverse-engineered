package gl;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.compose.ui.platform.ComposeView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tn.lib.view.TitleLayout;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class u implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f63849a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ComposeView f63850b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FrameLayout f63851c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ConstraintLayout f63852d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TitleLayout f63853e;

    private u(ConstraintLayout constraintLayout, ComposeView composeView, FrameLayout frameLayout, ConstraintLayout constraintLayout2, TitleLayout titleLayout) {
        this.f63849a = constraintLayout;
        this.f63850b = composeView;
        this.f63851c = frameLayout;
        this.f63852d = constraintLayout2;
        this.f63853e = titleLayout;
    }

    public static u a(View view) {
        int i11 = R$id.rank_all_category_container;
        ComposeView composeView = (ComposeView) g4.b.a(view, i11);
        if (composeView != null) {
            i11 = R$id.rank_all_error;
            FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
            if (frameLayout != null) {
                i11 = R$id.rank_all_loading_frame;
                ConstraintLayout constraintLayout = (ConstraintLayout) g4.b.a(view, i11);
                if (constraintLayout != null) {
                    i11 = R$id.rank_all_title;
                    TitleLayout titleLayout = (TitleLayout) g4.b.a(view, i11);
                    if (titleLayout != null) {
                        return new u((ConstraintLayout) view, composeView, frameLayout, constraintLayout, titleLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static u c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static u d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_rank_all, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f63849a;
    }
}
