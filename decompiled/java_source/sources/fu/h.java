package fu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Space;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.subtitle.R$id;
import com.transsion.subtitle.R$layout;
import com.transsion.subtitle.view.SubtitleSyncAdjustView;

/* JADX INFO: loaded from: classes7.dex */
public final class h implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f62517a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f62518b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Space f62519c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f62520d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SubtitleSyncAdjustView f62521e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SubtitleSyncAdjustView f62522f;

    private h(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, Space space, AppCompatTextView appCompatTextView, SubtitleSyncAdjustView subtitleSyncAdjustView, SubtitleSyncAdjustView subtitleSyncAdjustView2) {
        this.f62517a = constraintLayout;
        this.f62518b = appCompatImageView;
        this.f62519c = space;
        this.f62520d = appCompatTextView;
        this.f62521e = subtitleSyncAdjustView;
        this.f62522f = subtitleSyncAdjustView2;
    }

    public static h a(View view) {
        int i11 = R$id.ivBack;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null) {
            i11 = R$id.space;
            Space space = (Space) g4.b.a(view, i11);
            if (space != null) {
                i11 = R$id.tvStyle;
                AppCompatTextView appCompatTextView = (AppCompatTextView) g4.b.a(view, i11);
                if (appCompatTextView != null) {
                    i11 = R$id.viewSyncAdJustaND;
                    SubtitleSyncAdjustView subtitleSyncAdjustView = (SubtitleSyncAdjustView) g4.b.a(view, i11);
                    if (subtitleSyncAdjustView != null) {
                        i11 = R$id.viewSyncAdJustaST;
                        SubtitleSyncAdjustView subtitleSyncAdjustView2 = (SubtitleSyncAdjustView) g4.b.a(view, i11);
                        if (subtitleSyncAdjustView2 != null) {
                            return new h((ConstraintLayout) view, appCompatImageView, space, appCompatTextView, subtitleSyncAdjustView, subtitleSyncAdjustView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static h c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static h d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_subtitle_sync_adjust_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f62517a;
    }
}
