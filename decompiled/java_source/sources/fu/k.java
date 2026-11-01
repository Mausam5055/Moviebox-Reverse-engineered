package fu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.noober.background.view.BLImageView;
import com.transsion.subtitle.R$id;
import com.transsion.subtitle.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class k implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f62555a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatEditText f62556b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BLImageView f62557c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final BLImageView f62558d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ConstraintLayout f62559e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatTextView f62560f;

    private k(ConstraintLayout constraintLayout, AppCompatEditText appCompatEditText, BLImageView bLImageView, BLImageView bLImageView2, ConstraintLayout constraintLayout2, AppCompatTextView appCompatTextView) {
        this.f62555a = constraintLayout;
        this.f62556b = appCompatEditText;
        this.f62557c = bLImageView;
        this.f62558d = bLImageView2;
        this.f62559e = constraintLayout2;
        this.f62560f = appCompatTextView;
    }

    public static k a(View view) {
        int i11 = R$id.et_sync_adjust;
        AppCompatEditText appCompatEditText = (AppCompatEditText) g4.b.a(view, i11);
        if (appCompatEditText != null) {
            i11 = R$id.iv_sync_adjust_minus;
            BLImageView bLImageView = (BLImageView) g4.b.a(view, i11);
            if (bLImageView != null) {
                i11 = R$id.iv_sync_adjust_plus;
                BLImageView bLImageView2 = (BLImageView) g4.b.a(view, i11);
                if (bLImageView2 != null) {
                    ConstraintLayout constraintLayout = (ConstraintLayout) view;
                    i11 = R$id.tvTitle;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                    if (appCompatTextView != null) {
                        return new k(constraintLayout, appCompatEditText, bLImageView, bLImageView2, constraintLayout, appCompatTextView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static k c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.view_subtitle_sync_adjust_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f62555a;
    }
}
