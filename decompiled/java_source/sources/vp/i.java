package vp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.rewardscenter.R$id;
import com.transsion.rewardscenter.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class i implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f77414a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatTextView f77415b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinearLayoutCompat f77416c;

    private i(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, LinearLayoutCompat linearLayoutCompat) {
        this.f77414a = constraintLayout;
        this.f77415b = appCompatTextView;
        this.f77416c = linearLayoutCompat;
    }

    public static i a(View view) {
        int i11 = R$id.rc_task_title;
        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
        if (appCompatTextView != null) {
            i11 = R$id.task_container;
            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) g4.b.a(view, i11);
            if (linearLayoutCompat != null) {
                return new i((ConstraintLayout) view, appCompatTextView, linearLayoutCompat);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static i c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.rewards_center_task_view, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f77414a;
    }
}
