package gl;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.tn.lib.view.FlowLayout;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class l0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f63773a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FlowLayout f63774b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f63775c;

    private l0(LinearLayout linearLayout, FlowLayout flowLayout, AppCompatTextView appCompatTextView) {
        this.f63773a = linearLayout;
        this.f63774b = flowLayout;
        this.f63775c = appCompatTextView;
    }

    public static l0 a(View view) {
        int i11 = R$id.flow_layout;
        FlowLayout flowLayout = (FlowLayout) g4.b.a(view, i11);
        if (flowLayout != null) {
            i11 = R$id.tvExpand;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null) {
                return new l0((LinearLayout) view, flowLayout, appCompatTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static l0 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.layout_filter_expand_view, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f63773a;
    }
}
