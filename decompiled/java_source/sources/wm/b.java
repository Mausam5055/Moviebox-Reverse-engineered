package wm;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.transsion.member.R$id;
import com.transsion.member.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class b implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayoutCompat f77711a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f77712b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p f77713c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f77714d;

    private b(LinearLayoutCompat linearLayoutCompat, FrameLayout frameLayout, p pVar, AppCompatTextView appCompatTextView) {
        this.f77711a = linearLayoutCompat;
        this.f77712b = frameLayout;
        this.f77713c = pVar;
        this.f77714d = appCompatTextView;
    }

    public static b a(View view) {
        View viewA;
        int i11 = R$id.container;
        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
        if (frameLayout != null && (viewA = g4.b.a(view, (i11 = R$id.titleLayout))) != null) {
            p pVarA = p.a(viewA);
            int i12 = R$id.tvTotalCoin;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i12);
            if (appCompatTextView != null) {
                return new b((LinearLayoutCompat) view, frameLayout, pVarA, appCompatTextView);
            }
            i11 = i12;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_points_history_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayoutCompat getRoot() {
        return this.f77711a;
    }
}
