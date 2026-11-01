package gv;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.journeyapps.barcodescanner.DecoratedBarcodeView;
import com.transsion.transfer.R$id;
import com.transsion.transfer.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class c implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f63972a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f63973b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConstraintLayout f63974c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final DecoratedBarcodeView f63975d;

    private c(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, ConstraintLayout constraintLayout2, DecoratedBarcodeView decoratedBarcodeView) {
        this.f63972a = constraintLayout;
        this.f63973b = appCompatImageView;
        this.f63974c = constraintLayout2;
        this.f63975d = decoratedBarcodeView;
    }

    public static c a(View view) {
        int i11 = R$id.ivClose;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            int i12 = R$id.zxing_barcode_scanner;
            DecoratedBarcodeView decoratedBarcodeView = (DecoratedBarcodeView) g4.b.a(view, i12);
            if (decoratedBarcodeView != null) {
                return new c(constraintLayout, appCompatImageView, constraintLayout, decoratedBarcodeView);
            }
            i11 = i12;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static c c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_wifi_connect, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f63972a;
    }
}
