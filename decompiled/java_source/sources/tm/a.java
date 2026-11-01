package tm;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.tn.lib.view.TitleLayout;
import com.transsion.mbwidget.R$id;
import com.transsion.mbwidget.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class a implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f76282a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TitleLayout f76283b;

    private a(LinearLayout linearLayout, TitleLayout titleLayout) {
        this.f76282a = linearLayout;
        this.f76283b = titleLayout;
    }

    public static a a(View view) {
        int i11 = R$id.mTitleLayout;
        TitleLayout titleLayout = (TitleLayout) g4.b.a(view, i11);
        if (titleLayout != null) {
            return new a((LinearLayout) view, titleLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static a c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static a d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_widget_guide, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f76282a;
    }
}
