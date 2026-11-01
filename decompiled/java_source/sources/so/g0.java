package so;

import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.cardview.widget.CardView;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLTextView;
import com.noober.background.view.BLView;
import com.transsion.postdetail.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class g0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CardView f75528a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f75529b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CardView f75530c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ShapeableImageView f75531d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f75532e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BLTextView f75533f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final BLView f75534g;

    private g0(CardView cardView, FrameLayout frameLayout, CardView cardView2, ShapeableImageView shapeableImageView, AppCompatImageView appCompatImageView, BLTextView bLTextView, BLView bLView) {
        this.f75528a = cardView;
        this.f75529b = frameLayout;
        this.f75530c = cardView2;
        this.f75531d = shapeableImageView;
        this.f75532e = appCompatImageView;
        this.f75533f = bLTextView;
        this.f75534g = bLView;
    }

    public static g0 a(View view) {
        int i11 = R$id.flPlayer;
        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
        if (frameLayout != null) {
            CardView cardView = (CardView) view;
            i11 = R$id.iv_cover;
            ShapeableImageView shapeableImageView = (ShapeableImageView) g4.b.a(view, i11);
            if (shapeableImageView != null) {
                i11 = R$id.iv_video_play;
                AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                if (appCompatImageView != null) {
                    i11 = R$id.tv_video_duration;
                    BLTextView bLTextView = (BLTextView) g4.b.a(view, i11);
                    if (bLTextView != null) {
                        return new g0(cardView, frameLayout, cardView, shapeableImageView, appCompatImageView, bLTextView, (BLView) g4.b.a(view, R$id.v_cover_stroke));
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public CardView getRoot() {
        return this.f75528a;
    }
}
