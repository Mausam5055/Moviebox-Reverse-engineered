package fw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.view.TitleLayout;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class i0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f62690a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RecyclerView f62691b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TitleLayout f62692c;

    private i0(ConstraintLayout constraintLayout, RecyclerView recyclerView, TitleLayout titleLayout) {
        this.f62690a = constraintLayout;
        this.f62691b = recyclerView;
        this.f62692c = titleLayout;
    }

    public static i0 a(View view) {
        int i11 = R$id.pageList;
        RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
        if (recyclerView != null) {
            i11 = R$id.titleLayout;
            TitleLayout titleLayout = (TitleLayout) g4.b.a(view, i11);
            if (titleLayout != null) {
                return new i0((ConstraintLayout) view, recyclerView, titleLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static i0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static i0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_device_management, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f62690a;
    }
}
