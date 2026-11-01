package py;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class d0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f72663a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final z0 f72664b;

    private d0(FrameLayout frameLayout, z0 z0Var) {
        this.f72663a = frameLayout;
        this.f72664b = z0Var;
    }

    public static d0 a(View view) {
        int i11 = R$id.included_content;
        View viewA = g4.b.a(view, i11);
        if (viewA == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
        }
        return new d0((FrameLayout) view, z0.a(viewA));
    }

    public static d0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static d0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_download_res_path_setting, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f72663a;
    }
}
