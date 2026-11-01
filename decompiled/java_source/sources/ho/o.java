package ho;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.player.longvideo.R$id;
import com.transsion.player.longvideo.R$layout;
import com.transsion.player.longvideo.ui.LongVodPlayerView;

/* JADX INFO: loaded from: classes6.dex */
public final class o implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f64687a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f64688b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FrameLayout f64689c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final h f64690d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LongVodPlayerView f64691e;

    private o(ConstraintLayout constraintLayout, FrameLayout frameLayout, FrameLayout frameLayout2, h hVar, LongVodPlayerView longVodPlayerView) {
        this.f64687a = constraintLayout;
        this.f64688b = frameLayout;
        this.f64689c = frameLayout2;
        this.f64690d = hVar;
        this.f64691e = longVodPlayerView;
    }

    public static o a(View view) {
        View viewA;
        int i11 = R$id.fl_full_player_container;
        FrameLayout frameLayout = (FrameLayout) g4.b.a(view, i11);
        if (frameLayout != null) {
            i11 = R$id.fl_player_container;
            FrameLayout frameLayout2 = (FrameLayout) g4.b.a(view, i11);
            if (frameLayout2 != null && (viewA = g4.b.a(view, (i11 = R$id.layout_sync_adjust))) != null) {
                h hVarA = h.a(viewA);
                i11 = R$id.player_view;
                LongVodPlayerView longVodPlayerView = (LongVodPlayerView) g4.b.a(view, i11);
                if (longVodPlayerView != null) {
                    return new o((ConstraintLayout) view, frameLayout, frameLayout2, hVarA, longVodPlayerView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static o c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static o d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.test_fragment_long_vod, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f64687a;
    }
}
