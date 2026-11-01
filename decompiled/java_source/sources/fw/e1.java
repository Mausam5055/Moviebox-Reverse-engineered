package fw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tn.lib.view.TitleLayout;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class e1 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f62626a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ScrollView f62627b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TitleLayout f62628c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f62629d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f62630e;

    private e1(ConstraintLayout constraintLayout, ScrollView scrollView, TitleLayout titleLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f62626a = constraintLayout;
        this.f62627b = scrollView;
        this.f62628c = titleLayout;
        this.f62629d = appCompatTextView;
        this.f62630e = appCompatTextView2;
    }

    public static e1 a(View view) {
        int i11 = R$id.scrollView;
        ScrollView scrollView = (ScrollView) g4.b.a(view, i11);
        if (scrollView != null) {
            i11 = R$id.titleLayout;
            TitleLayout titleLayout = (TitleLayout) g4.b.a(view, i11);
            if (titleLayout != null) {
                i11 = R$id.tvMessage;
                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView != null) {
                    i11 = R$id.tvPostTime;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView2 != null) {
                        return new e1((ConstraintLayout) view, scrollView, titleLayout, appCompatTextView, appCompatTextView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static e1 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static e1 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.user_activity_detail, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f62626a;
    }
}
