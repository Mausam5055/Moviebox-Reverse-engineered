package fw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.journeyapps.barcodescanner.DecoratedBarcodeView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class m implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f62775a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f62776b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConstraintLayout f62777c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ImageView f62778d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final DecoratedBarcodeView f62779e;

    private m(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, ConstraintLayout constraintLayout2, ImageView imageView, DecoratedBarcodeView decoratedBarcodeView) {
        this.f62775a = constraintLayout;
        this.f62776b = appCompatImageView;
        this.f62777c = constraintLayout2;
        this.f62778d = imageView;
        this.f62779e = decoratedBarcodeView;
    }

    public static m a(View view) {
        int i11 = R$id.ivClose;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            i11 = R$id.v_status_space;
            ImageView imageView = (ImageView) g4.b.a(view, i11);
            if (imageView != null) {
                i11 = R$id.zxing_barcode_scanner;
                DecoratedBarcodeView decoratedBarcodeView = (DecoratedBarcodeView) g4.b.a(view, i11);
                if (decoratedBarcodeView != null) {
                    return new m(constraintLayout, appCompatImageView, constraintLayout, imageView, decoratedBarcodeView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static m c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static m d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_profile_qr_code, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f62775a;
    }
}
