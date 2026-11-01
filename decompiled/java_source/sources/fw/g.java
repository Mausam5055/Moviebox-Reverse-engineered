package fw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.tn.lib.widget.TnTextView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class g implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f62657a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f62658b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FrameLayout f62659c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ImageView f62660d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TnTextView f62661e;

    private g(LinearLayout linearLayout, View view, FrameLayout frameLayout, ImageView imageView, TnTextView tnTextView) {
        this.f62657a = linearLayout;
        this.f62658b = view;
        this.f62659c = frameLayout;
        this.f62660d = imageView;
        this.f62661e = tnTextView;
    }

    public static g a(View view) {
        int i11 = R$id.divider_line;
        View viewA = g4.b.a(view, i11);
        if (viewA != null) {
            i11 = R$id.flContainer;
            FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
            if (frameLayout != null) {
                i11 = R$id.ivBack;
                ImageView imageView = (ImageView) g4.b.a(view, i11);
                if (imageView != null) {
                    i11 = R$id.tvToolbarTitle;
                    TnTextView tnTextView = (TnTextView) g4.b.a(view, i11);
                    if (tnTextView != null) {
                        return new g((LinearLayout) view, viewA, frameLayout, imageView, tnTextView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static g c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static g d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_manage_profiles, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f62657a;
    }
}
