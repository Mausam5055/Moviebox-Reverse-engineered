package gl;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class b0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f63643a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f63644b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f63645c;

    private b0(LinearLayout linearLayout, FrameLayout frameLayout, View view) {
        this.f63643a = linearLayout;
        this.f63644b = frameLayout;
        this.f63645c = view;
    }

    public static b0 a(View view) {
        View viewA;
        int i11 = R$id.fl_container;
        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
        if (frameLayout == null || (viewA = g4.b.a(view, (i11 = R$id.tv_channel_header_bg))) == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
        }
        return new b0((LinearLayout) view, frameLayout, viewA);
    }

    public static b0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_tv_channel_tab, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f63643a;
    }
}
