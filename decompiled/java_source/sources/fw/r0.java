package fw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.transsion.usercenter.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class r0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f62891a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f62892b;

    private r0(FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.f62891a = frameLayout;
        this.f62892b = frameLayout2;
    }

    public static r0 a(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        FrameLayout frameLayout = (FrameLayout) view;
        return new r0(frameLayout, frameLayout);
    }

    public static r0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static r0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_user_profile_playlists, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f62891a;
    }
}
