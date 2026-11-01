package kk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.view.TitleLayout;
import com.transsion.commercialization.R$id;
import com.transsion.commercialization.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class i implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayoutCompat f66882a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RecyclerView f66883b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TitleLayout f66884c;

    private i(LinearLayoutCompat linearLayoutCompat, RecyclerView recyclerView, TitleLayout titleLayout) {
        this.f66882a = linearLayoutCompat;
        this.f66883b = recyclerView;
        this.f66884c = titleLayout;
    }

    public static i a(View view) {
        int i11 = R$id.rv_game_list;
        RecyclerView recyclerView = (RecyclerView) g4.b.a(view, i11);
        if (recyclerView != null) {
            i11 = R$id.title_layout;
            TitleLayout titleLayout = (TitleLayout) g4.b.a(view, i11);
            if (titleLayout != null) {
                return new i((LinearLayoutCompat) view, recyclerView, titleLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static i c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static i d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_game_center, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayoutCompat getRoot() {
        return this.f66882a;
    }
}
