package hp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageButton;
import com.transsion.publish.R$id;
import com.transsion.publish.R$layout;
import com.transsion.publish.view.clip.ClipImageView;
import com.transsion.publish.view.clip.ClipView;

/* JADX INFO: loaded from: classes6.dex */
public final class a implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RelativeLayout f64718a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageButton f64719b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RelativeLayout f64720c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ProgressBar f64721d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ClipView f64722e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ClipImageView f64723f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TextView f64724g;

    private a(RelativeLayout relativeLayout, AppCompatImageButton appCompatImageButton, RelativeLayout relativeLayout2, ProgressBar progressBar, ClipView clipView, ClipImageView clipImageView, TextView textView) {
        this.f64718a = relativeLayout;
        this.f64719b = appCompatImageButton;
        this.f64720c = relativeLayout2;
        this.f64721d = progressBar;
        this.f64722e = clipView;
        this.f64723f = clipImageView;
        this.f64724g = textView;
    }

    public static a a(View view) {
        int i11 = R$id.btn_back;
        AppCompatImageButton appCompatImageButton = (AppCompatImageButton) g4.b.a(view, i11);
        if (appCompatImageButton != null) {
            i11 = R$id.clTitle;
            RelativeLayout relativeLayout = (RelativeLayout) g4.b.a(view, i11);
            if (relativeLayout != null) {
                i11 = R$id.clip_loading;
                ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
                if (progressBar != null) {
                    i11 = R$id.clipview;
                    ClipView clipView = (ClipView) g4.b.a(view, i11);
                    if (clipView != null) {
                        i11 = R$id.src_pic;
                        ClipImageView clipImageView = (ClipImageView) g4.b.a(view, i11);
                        if (clipImageView != null) {
                            i11 = R$id.tvDone;
                            TextView textView = (TextView) g4.b.a(view, i11);
                            if (textView != null) {
                                return new a((RelativeLayout) view, appCompatImageButton, relativeLayout, progressBar, clipView, clipImageView, textView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static a c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static a d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_clip_image, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f64718a;
    }
}
