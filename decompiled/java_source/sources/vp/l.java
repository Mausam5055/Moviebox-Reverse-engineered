package vp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.rewardscenter.R$id;
import com.transsion.rewardscenter.R$layout;
import com.transsion.rewardscenter.task.ad.StageTaskProgressLayout;

/* JADX INFO: loaded from: classes6.dex */
public final class l implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f77432a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f77433b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f77434c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f77435d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final StageTaskProgressLayout f77436e;

    private l(ConstraintLayout constraintLayout, FrameLayout frameLayout, View view, AppCompatTextView appCompatTextView, StageTaskProgressLayout stageTaskProgressLayout) {
        this.f77432a = constraintLayout;
        this.f77433b = frameLayout;
        this.f77434c = view;
        this.f77435d = appCompatTextView;
        this.f77436e = stageTaskProgressLayout;
    }

    public static l a(View view) {
        View viewA;
        int i11 = R$id.ad_container;
        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
        if (frameLayout != null && (viewA = g4.b.a(view, (i11 = R$id.ad_mask))) != null) {
            i11 = R$id.btn_action;
            AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView != null) {
                i11 = R$id.double_progress;
                StageTaskProgressLayout stageTaskProgressLayout = (StageTaskProgressLayout) g4.b.a(view, i11);
                if (stageTaskProgressLayout != null) {
                    return new l((ConstraintLayout) view, frameLayout, viewA, appCompatTextView, stageTaskProgressLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static l c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.stage_task_view_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f77432a;
    }
}
