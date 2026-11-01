package com.transsion.home.adapter;

import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.videodetail.music.ui.MusicTabLikedFragment;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class c extends FragmentStateAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ViewPager2 f44262a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f44263b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f44264c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(ViewPager2 viewPager2, int i11, String str, Fragment fragment) {
        super(fragment);
        Intrinsics.h(fragment, "fragment");
        this.f44262a = viewPager2;
        this.f44263b = i11;
        this.f44264c = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h(c cVar) {
        ViewPager2 viewPager2 = cVar.f44262a;
        if (viewPager2 != null) {
            viewPager2.setCurrentItem(0);
        }
        return Unit.f67061a;
    }

    @Override // androidx.viewpager2.adapter.FragmentStateAdapter
    public Fragment createFragment(int i11) {
        if (i11 == 0) {
            return SubTabFragment.INSTANCE.b(this.f44263b, this.f44264c);
        }
        if (i11 != 1) {
            return new MusicTabLikedFragment();
        }
        MusicTabLikedFragment musicTabLikedFragment = new MusicTabLikedFragment();
        musicTabLikedFragment.m1(new Function0() { // from class: com.transsion.home.adapter.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return c.h(this.f44261a);
            }
        });
        return musicTabLikedFragment;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return 2;
    }
}
