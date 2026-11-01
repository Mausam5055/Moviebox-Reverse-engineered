package py;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.transsion.baseui.widget.NestedScrollableHost;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.widget.TransferBottomToolsView;
import com.transsnet.downloader.widget.TransferSelectSeriesListView;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes7.dex */
public final class l0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f72828a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MagicIndicator f72829b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final NestedScrollableHost f72830c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TransferBottomToolsView f72831d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TransferSelectSeriesListView f72832e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppCompatImageView f72833f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ViewPager2 f72834g;

    private l0(ConstraintLayout constraintLayout, MagicIndicator magicIndicator, NestedScrollableHost nestedScrollableHost, TransferBottomToolsView transferBottomToolsView, TransferSelectSeriesListView transferSelectSeriesListView, AppCompatImageView appCompatImageView, ViewPager2 viewPager2) {
        this.f72828a = constraintLayout;
        this.f72829b = magicIndicator;
        this.f72830c = nestedScrollableHost;
        this.f72831d = transferBottomToolsView;
        this.f72832e = transferSelectSeriesListView;
        this.f72833f = appCompatImageView;
        this.f72834g = viewPager2;
    }

    public static l0 a(View view) {
        int i11 = R$id.magic_indicator;
        MagicIndicator magicIndicator = (MagicIndicator) g4.b.a(view, i11);
        if (magicIndicator != null) {
            i11 = R$id.nsh_view_pager;
            NestedScrollableHost nestedScrollableHost = (NestedScrollableHost) g4.b.a(view, i11);
            if (nestedScrollableHost != null) {
                i11 = R$id.v_bottom_tools;
                TransferBottomToolsView transferBottomToolsView = (TransferBottomToolsView) g4.b.a(view, i11);
                if (transferBottomToolsView != null) {
                    i11 = R$id.v_series_list;
                    TransferSelectSeriesListView transferSelectSeriesListView = (TransferSelectSeriesListView) g4.b.a(view, i11);
                    if (transferSelectSeriesListView != null) {
                        i11 = R$id.v_top_bg;
                        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
                        if (appCompatImageView != null) {
                            i11 = R$id.view_pager;
                            ViewPager2 viewPager2 = (ViewPager2) g4.b.a(view, i11);
                            if (viewPager2 != null) {
                                return new l0((ConstraintLayout) view, magicIndicator, nestedScrollableHost, transferBottomToolsView, transferSelectSeriesListView, appCompatImageView, viewPager2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static l0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static l0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_transfer_main, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f72828a;
    }
}
