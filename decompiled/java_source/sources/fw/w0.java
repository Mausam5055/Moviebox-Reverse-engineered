package fw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import com.noober.background.view.BLConstraintLayout;
import com.noober.background.view.BLView;
import com.tn.lib.widget.TnTextView;
import com.transsion.baseui.widget.GradientBorderView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class w0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BLConstraintLayout f62970a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BLView f62971b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GradientBorderView f62972c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatImageView f62973d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TnTextView f62974e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatImageView f62975f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TnTextView f62976g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TnTextView f62977h;

    private w0(BLConstraintLayout bLConstraintLayout, BLView bLView, GradientBorderView gradientBorderView, AppCompatImageView appCompatImageView, TnTextView tnTextView, AppCompatImageView appCompatImageView2, TnTextView tnTextView2, TnTextView tnTextView3) {
        this.f62970a = bLConstraintLayout;
        this.f62971b = bLView;
        this.f62972c = gradientBorderView;
        this.f62973d = appCompatImageView;
        this.f62974e = tnTextView;
        this.f62975f = appCompatImageView2;
        this.f62976g = tnTextView2;
        this.f62977h = tnTextView3;
    }

    public static w0 a(View view) {
        int i11 = R$id.scanButtonBackground;
        BLView bLView = (BLView) g4.b.a(view, i11);
        if (bLView != null) {
            i11 = R$id.scanButtonBorder;
            GradientBorderView gradientBorderView = (GradientBorderView) g4.b.a(view, i11);
            if (gradientBorderView != null) {
                i11 = R$id.scanButtonIcon;
                AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView != null) {
                    i11 = R$id.scanButtonText;
                    TnTextView tnTextView = (TnTextView) g4.b.a(view, i11);
                    if (tnTextView != null) {
                        i11 = R$id.scanIllustration;
                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) g4.b.a(view, i11);
                        if (appCompatImageView2 != null) {
                            i11 = R$id.scanSubtitle;
                            TnTextView tnTextView2 = (TnTextView) g4.b.a(view, i11);
                            if (tnTextView2 != null) {
                                i11 = R$id.scanTitle;
                                TnTextView tnTextView3 = (TnTextView) g4.b.a(view, i11);
                                if (tnTextView3 != null) {
                                    return new w0((BLConstraintLayout) view, bLView, gradientBorderView, appCompatImageView, tnTextView, appCompatImageView2, tnTextView2, tnTextView3);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static w0 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.item_device_management_pro_scan, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public BLConstraintLayout getRoot() {
        return this.f62970a;
    }
}
