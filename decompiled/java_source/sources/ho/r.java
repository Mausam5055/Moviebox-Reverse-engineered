package ho;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.transsion.player.longvideo.R$id;
import com.transsion.player.longvideo.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class r implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f64701a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f64702b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinearLayout f64703c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LinearLayout f64704d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextView f64705e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextView f64706f;

    private r(FrameLayout frameLayout, AppCompatImageView appCompatImageView, LinearLayout linearLayout, LinearLayout linearLayout2, TextView textView, TextView textView2) {
        this.f64701a = frameLayout;
        this.f64702b = appCompatImageView;
        this.f64703c = linearLayout;
        this.f64704d = linearLayout2;
        this.f64705e = textView;
        this.f64706f = textView2;
    }

    public static r a(View view) {
        int i11 = R$id.ivRight;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.llPremiumNo;
            LinearLayout linearLayout = (LinearLayout) g4.b.a(view, i11);
            if (linearLayout != null) {
                i11 = R$id.llPremiumYes;
                LinearLayout linearLayout2 = (LinearLayout) g4.b.a(view, i11);
                if (linearLayout2 != null) {
                    i11 = R$id.tvEnterAd;
                    TextView textView = (TextView) g4.b.a(view, i11);
                    if (textView != null) {
                        i11 = R$id.tvGoAdFree;
                        TextView textView2 = (TextView) g4.b.a(view, i11);
                        if (textView2 != null) {
                            return new r((FrameLayout) view, appCompatImageView, linearLayout, linearLayout2, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static r c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.view_playback_premium_tip_layouyt, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f64701a;
    }
}
