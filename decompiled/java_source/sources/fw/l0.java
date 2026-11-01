package fw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.noober.background.view.BLConstraintLayout;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class l0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f62758a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f62759b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f62760c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f62761d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final BLConstraintLayout f62762e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BLConstraintLayout f62763f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final BLConstraintLayout f62764g;

    private l0(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, BLConstraintLayout bLConstraintLayout, BLConstraintLayout bLConstraintLayout2, BLConstraintLayout bLConstraintLayout3) {
        this.f62758a = constraintLayout;
        this.f62759b = appCompatImageView;
        this.f62760c = appCompatImageView2;
        this.f62761d = appCompatImageView3;
        this.f62762e = bLConstraintLayout;
        this.f62763f = bLConstraintLayout2;
        this.f62764g = bLConstraintLayout3;
    }

    public static l0 a(View view) {
        int i11 = R$id.ivChangePinArrow;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.ivDeletePinArrow;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
            if (appCompatImageView2 != null) {
                i11 = R$id.ivTrumpet;
                AppCompatImageView appCompatImageView3 = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView3 != null) {
                    i11 = R$id.layoutChangePin;
                    BLConstraintLayout bLConstraintLayout = (BLConstraintLayout) g4.b.a(view, i11);
                    if (bLConstraintLayout != null) {
                        i11 = R$id.layoutDeletePin;
                        BLConstraintLayout bLConstraintLayout2 = (BLConstraintLayout) g4.b.a(view, i11);
                        if (bLConstraintLayout2 != null) {
                            i11 = R$id.layoutLockStatus;
                            BLConstraintLayout bLConstraintLayout3 = (BLConstraintLayout) g4.b.a(view, i11);
                            if (bLConstraintLayout3 != null) {
                                return new l0((ConstraintLayout) view, appCompatImageView, appCompatImageView2, appCompatImageView3, bLConstraintLayout, bLConstraintLayout2, bLConstraintLayout3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static l0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static l0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_pin_management, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f62758a;
    }
}
