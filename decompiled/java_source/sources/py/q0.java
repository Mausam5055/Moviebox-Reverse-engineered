package py;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes7.dex */
public final class q0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f72888a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MagicIndicator f72889b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ViewPager2 f72890c;

    private q0(LinearLayout linearLayout, MagicIndicator magicIndicator, ViewPager2 viewPager2) {
        this.f72888a = linearLayout;
        this.f72889b = magicIndicator;
        this.f72890c = viewPager2;
    }

    public static q0 a(View view) {
        int i11 = R$id.magic_indicator;
        MagicIndicator magicIndicator = (MagicIndicator) g4.b.a(view, i11);
        if (magicIndicator != null) {
            i11 = R$id.view_pager;
            ViewPager2 viewPager2 = (ViewPager2) g4.b.a(view, i11);
            if (viewPager2 != null) {
                return new q0((LinearLayout) view, magicIndicator, viewPager2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static q0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static q0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_ugc_my_downloaded_tab, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f72888a;
    }
}
