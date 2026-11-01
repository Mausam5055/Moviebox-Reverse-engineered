package gl;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.tn.lib.view.TitleLayout;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes6.dex */
public final class c implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f63646a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MagicIndicator f63647b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TitleLayout f63648c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ViewPager2 f63649d;

    private c(ConstraintLayout constraintLayout, MagicIndicator magicIndicator, TitleLayout titleLayout, ViewPager2 viewPager2) {
        this.f63646a = constraintLayout;
        this.f63647b = magicIndicator;
        this.f63648c = titleLayout;
        this.f63649d = viewPager2;
    }

    public static c a(View view) {
        int i11 = R$id.magic_indicator;
        MagicIndicator magicIndicator = (MagicIndicator) g4.b.a(view, i11);
        if (magicIndicator != null) {
            i11 = R$id.tool_bar;
            TitleLayout titleLayout = (TitleLayout) g4.b.a(view, i11);
            if (titleLayout != null) {
                i11 = R$id.view_pager;
                ViewPager2 viewPager2 = (ViewPager2) g4.b.a(view, i11);
                if (viewPager2 != null) {
                    return new c((ConstraintLayout) view, magicIndicator, titleLayout, viewPager2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static c c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_movie_filter, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f63646a;
    }
}
