package hp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.tn.lib.view.TitleLayout;
import com.transsion.publish.R$id;
import com.transsion.publish.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class e implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f64751a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f64752b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TitleLayout f64753c;

    private e(LinearLayout linearLayout, FrameLayout frameLayout, TitleLayout titleLayout) {
        this.f64751a = linearLayout;
        this.f64752b = frameLayout;
        this.f64753c = titleLayout;
    }

    public static e a(View view) {
        int i11 = R$id.fl_container;
        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
        if (frameLayout != null) {
            i11 = R$id.tool_bar;
            TitleLayout titleLayout = (TitleLayout) g4.b.a(view, i11);
            if (titleLayout != null) {
                return new e((LinearLayout) view, frameLayout, titleLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static e c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static e d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_select_location, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f64751a;
    }
}
