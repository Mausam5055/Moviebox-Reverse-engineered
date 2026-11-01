package vk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatTextView;
import com.tn.lib.view.FlowLayout;
import com.transsion.edcation.R$id;
import com.transsion.edcation.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class a implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f77335a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FlowLayout f77336b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ProgressBar f77337c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f77338d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f77339e;

    private a(LinearLayout linearLayout, FlowLayout flowLayout, ProgressBar progressBar, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f77335a = linearLayout;
        this.f77336b = flowLayout;
        this.f77337c = progressBar;
        this.f77338d = appCompatTextView;
        this.f77339e = appCompatTextView2;
    }

    public static a a(View view) {
        int i11 = R$id.interestLayout;
        FlowLayout flowLayout = (FlowLayout) g4.b.a(view, i11);
        if (flowLayout != null) {
            i11 = R$id.loadView;
            ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
            if (progressBar != null) {
                i11 = R$id.tvConfirm;
                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView != null) {
                    i11 = R$id.tvSkip;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView2 != null) {
                        return new a((LinearLayout) view, flowLayout, progressBar, appCompatTextView, appCompatTextView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static a c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_interest_select, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f77335a;
    }
}
