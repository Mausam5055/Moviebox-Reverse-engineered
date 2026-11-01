package so;

import android.view.View;
import android.widget.ProgressBar;
import com.noober.background.view.BLImageView;
import com.noober.background.view.BLTextView;
import com.transsion.postdetail.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class t0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f75720a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BLImageView f75721b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ProgressBar f75722c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final BLTextView f75723d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final View f75724e;

    private t0(View view, BLImageView bLImageView, ProgressBar progressBar, BLTextView bLTextView, View view2) {
        this.f75720a = view;
        this.f75721b = bLImageView;
        this.f75722c = progressBar;
        this.f75723d = bLTextView;
        this.f75724e = view2;
    }

    public static t0 a(View view) {
        View viewA;
        int i11 = R$id.ivMute;
        BLImageView bLImageView = (BLImageView) g4.b.a(view, i11);
        if (bLImageView != null) {
            i11 = R$id.playerProgress;
            ProgressBar progressBar = (ProgressBar) g4.b.a(view, i11);
            if (progressBar != null) {
                i11 = R$id.tvVideoDuration;
                BLTextView bLTextView = (BLTextView) g4.b.a(view, i11);
                if (bLTextView != null && (viewA = g4.b.a(view, (i11 = R$id.vMuteHotZone))) != null) {
                    return new t0(view, bLImageView, progressBar, bLTextView, viewA);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    public View getRoot() {
        return this.f75720a;
    }
}
