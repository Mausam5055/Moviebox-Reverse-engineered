package py;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes7.dex */
public final class r0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f72902a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MagicIndicator f72903b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f72904c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ViewPager2 f72905d;

    private r0(ConstraintLayout constraintLayout, MagicIndicator magicIndicator, View view, ViewPager2 viewPager2) {
        this.f72902a = constraintLayout;
        this.f72903b = magicIndicator;
        this.f72904c = view;
        this.f72905d = viewPager2;
    }

    public static r0 a(View view) {
        View viewA;
        int i11 = R$id.magic_indicator;
        MagicIndicator magicIndicator = (MagicIndicator) g4.b.a(view, i11);
        if (magicIndicator != null && (viewA = g4.b.a(view, (i11 = R$id.view_divider))) != null) {
            i11 = R$id.view_pager;
            ViewPager2 viewPager2 = (ViewPager2) g4.b.a(view, i11);
            if (viewPager2 != null) {
                return new r0((ConstraintLayout) view, magicIndicator, viewA, viewPager2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static r0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static r0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_ugc_my_downloads, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f72902a;
    }
}
