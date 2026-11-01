package bj;

import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.transsion.audio.R$id;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes5.dex */
public final class a implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f16548a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f16549b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f16550c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LinearLayoutCompat f16551d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MagicIndicator f16552e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextView f16553f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ViewPager2 f16554g;

    private a(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, View view, LinearLayoutCompat linearLayoutCompat, MagicIndicator magicIndicator, TextView textView, ViewPager2 viewPager2) {
        this.f16548a = constraintLayout;
        this.f16549b = appCompatImageView;
        this.f16550c = view;
        this.f16551d = linearLayoutCompat;
        this.f16552e = magicIndicator;
        this.f16553f = textView;
        this.f16554g = viewPager2;
    }

    public static a a(View view) {
        View viewA;
        int i11 = R$id.iv_clear;
        AppCompatImageView appCompatImageView = (AppCompatImageView) g4.b.a(view, i11);
        if (appCompatImageView != null && (viewA = g4.b.a(view, (i11 = R$id.line1))) != null) {
            i11 = R$id.ll_ctl;
            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) g4.b.a(view, i11);
            if (linearLayoutCompat != null) {
                i11 = R$id.magic_indicator;
                MagicIndicator magicIndicator = (MagicIndicator) g4.b.a(view, i11);
                if (magicIndicator != null) {
                    i11 = R$id.tv_close;
                    TextView textView = (TextView) g4.b.a(view, i11);
                    if (textView != null) {
                        i11 = R$id.view_pager;
                        ViewPager2 viewPager2 = (ViewPager2) g4.b.a(view, i11);
                        if (viewPager2 != null) {
                            return new a((ConstraintLayout) view, appCompatImageView, viewA, linearLayoutCompat, magicIndicator, textView, viewPager2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f16548a;
    }
}
