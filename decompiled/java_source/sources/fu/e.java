package fu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.widget.NestedScrollView;
import com.transsion.subtitle.R$id;
import com.transsion.subtitle.R$layout;
import com.transsion.subtitle.view.SubtitleOptionsView;

/* JADX INFO: loaded from: classes7.dex */
public final class e implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final NestedScrollView f62492a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SubtitleOptionsView f62493b;

    private e(NestedScrollView nestedScrollView, SubtitleOptionsView subtitleOptionsView) {
        this.f62492a = nestedScrollView;
        this.f62493b = subtitleOptionsView;
    }

    public static e a(View view) {
        int i11 = R$id.v_options;
        SubtitleOptionsView subtitleOptionsView = (SubtitleOptionsView) g4.b.a(view, i11);
        if (subtitleOptionsView != null) {
            return new e((NestedScrollView) view, subtitleOptionsView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static e c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static e d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_subtitle_options, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public NestedScrollView getRoot() {
        return this.f62492a;
    }
}
