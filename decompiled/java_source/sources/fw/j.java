package fw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tn.lib.view.TitleLayout;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class j implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f62705a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImageView f62706b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TitleLayout f62707c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TextView f62708d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextView f62709e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextView f62710f;

    private j(ConstraintLayout constraintLayout, ImageView imageView, TitleLayout titleLayout, TextView textView, TextView textView2, TextView textView3) {
        this.f62705a = constraintLayout;
        this.f62706b = imageView;
        this.f62707c = titleLayout;
        this.f62708d = textView;
        this.f62709e = textView2;
        this.f62710f = textView3;
    }

    public static j a(View view) {
        int i11 = R$id.ivLogo;
        ImageView imageView = (ImageView) g4.b.a(view, i11);
        if (imageView != null) {
            i11 = R$id.titleLayout;
            TitleLayout titleLayout = (TitleLayout) g4.b.a(view, i11);
            if (titleLayout != null) {
                i11 = R$id.tvAgreement;
                TextView textView = (TextView) g4.b.a(view, i11);
                if (textView != null) {
                    i11 = R$id.tvAppName;
                    TextView textView2 = (TextView) g4.b.a(view, i11);
                    if (textView2 != null) {
                        i11 = R$id.tvAppVersion;
                        TextView textView3 = (TextView) g4.b.a(view, i11);
                        if (textView3 != null) {
                            return new j((ConstraintLayout) view, imageView, titleLayout, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static j c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static j d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_pro_file_setting_about_us, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f62705a;
    }
}
