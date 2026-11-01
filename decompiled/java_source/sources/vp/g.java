package vp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.rewardscenter.R$id;
import com.transsion.rewardscenter.R$layout;
import com.transsion.rewardscenter.task.ad.StageTaskProgressLayout;

/* JADX INFO: loaded from: classes6.dex */
public final class g implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f77402a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatTextView f77403b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f77404c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final StageTaskProgressLayout f77405d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CardView f77406e;

    private g(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, StageTaskProgressLayout stageTaskProgressLayout, CardView cardView) {
        this.f77402a = constraintLayout;
        this.f77403b = appCompatTextView;
        this.f77404c = appCompatTextView2;
        this.f77405d = stageTaskProgressLayout;
        this.f77406e = cardView;
    }

    public static g a(View view) {
        int i11 = R$id.btn_action;
        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
        if (appCompatTextView != null) {
            i11 = R$id.dada_title;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView2 != null) {
                i11 = R$id.double_progress;
                StageTaskProgressLayout stageTaskProgressLayout = (StageTaskProgressLayout) g4.b.a(view, i11);
                if (stageTaskProgressLayout != null) {
                    i11 = R$id.icon_cardview;
                    CardView cardView = (CardView) g4.b.a(view, i11);
                    if (cardView != null) {
                        return new g((ConstraintLayout) view, appCompatTextView, appCompatTextView2, stageTaskProgressLayout, cardView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static g c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.rc_dada_activate_view, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f77402a;
    }
}
