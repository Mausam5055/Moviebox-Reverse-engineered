package ms;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.transsion.shorttv.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class o implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f69877a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f69878b;

    private o(FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.f69877a = frameLayout;
        this.f69878b = frameLayout2;
    }

    public static o a(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        FrameLayout frameLayout = (FrameLayout) view;
        return new o(frameLayout, frameLayout);
    }

    public static o c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static o d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.short_tv_activity_play_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f69877a;
    }
}
