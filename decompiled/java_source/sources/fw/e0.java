package fw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class e0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f62621a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatTextView f62622b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f62623c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f62624d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f62625e;

    private e0(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4) {
        this.f62621a = constraintLayout;
        this.f62622b = appCompatTextView;
        this.f62623c = appCompatTextView2;
        this.f62624d = appCompatTextView3;
        this.f62625e = appCompatTextView4;
    }

    public static e0 a(View view) {
        int i11 = R$id.btn_cancel;
        AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
        if (appCompatTextView != null) {
            i11 = R$id.btn_ok;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) g4.b.a(view, i11);
            if (appCompatTextView2 != null) {
                i11 = R$id.tv_tips;
                AppCompatTextView appCompatTextView3 = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView3 != null) {
                    i11 = R$id.tv_title;
                    AppCompatTextView appCompatTextView4 = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView4 != null) {
                        return new e0((ConstraintLayout) view, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static e0 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_profile_camera_permission, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f62621a;
    }
}
