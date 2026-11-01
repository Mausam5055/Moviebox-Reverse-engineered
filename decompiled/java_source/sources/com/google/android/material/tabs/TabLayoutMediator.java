package com.google.android.material.tabs;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
public final class TabLayoutMediator {

    @Nullable
    private RecyclerView.Adapter adapter;
    private boolean attached;
    private final boolean autoRefresh;

    @Nullable
    private b onPageChangeCallback;

    @Nullable
    private TabLayout.OnTabSelectedListener onTabSelectedListener;

    @Nullable
    private RecyclerView.g pagerAdapterObserver;
    private final boolean smoothScroll;
    private final TabConfigurationStrategy tabConfigurationStrategy;

    @NonNull
    private final TabLayout tabLayout;

    @NonNull
    private final ViewPager2 viewPager;

    public interface TabConfigurationStrategy {
        void onConfigureTab(@NonNull TabLayout.Tab tab, int i11);
    }

    private class a extends RecyclerView.g {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public void onChanged() {
            TabLayoutMediator.this.populateTabsFromPagerAdapter();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public void onItemRangeChanged(int i11, int i12) {
            TabLayoutMediator.this.populateTabsFromPagerAdapter();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public void onItemRangeChanged(int i11, int i12, Object obj) {
            TabLayoutMediator.this.populateTabsFromPagerAdapter();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public void onItemRangeInserted(int i11, int i12) {
            TabLayoutMediator.this.populateTabsFromPagerAdapter();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public void onItemRangeMoved(int i11, int i12, int i13) {
            TabLayoutMediator.this.populateTabsFromPagerAdapter();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public void onItemRangeRemoved(int i11, int i12) {
            TabLayoutMediator.this.populateTabsFromPagerAdapter();
        }
    }

    private static class b extends ViewPager2.OnPageChangeCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WeakReference f29826a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f29827b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f29828c;

        b(TabLayout tabLayout) {
            this.f29826a = new WeakReference(tabLayout);
            a();
        }

        void a() {
            this.f29828c = 0;
            this.f29827b = 0;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrollStateChanged(int i11) {
            this.f29827b = this.f29828c;
            this.f29828c = i11;
            TabLayout tabLayout = (TabLayout) this.f29826a.get();
            if (tabLayout != null) {
                tabLayout.updateViewPagerScrollState(this.f29828c);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrolled(int i11, float f11, int i12) {
            TabLayout tabLayout = (TabLayout) this.f29826a.get();
            if (tabLayout != null) {
                int i13 = this.f29828c;
                tabLayout.setScrollPosition(i11, f11, i13 != 2 || this.f29827b == 1, (i13 == 2 && this.f29827b == 0) ? false : true, false);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i11) {
            TabLayout tabLayout = (TabLayout) this.f29826a.get();
            if (tabLayout == null || tabLayout.getSelectedTabPosition() == i11 || i11 >= tabLayout.getTabCount()) {
                return;
            }
            int i12 = this.f29828c;
            tabLayout.selectTab(tabLayout.getTabAt(i11), i12 == 0 || (i12 == 2 && this.f29827b == 0));
        }
    }

    private static class c implements TabLayout.OnTabSelectedListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ViewPager2 f29829a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f29830b;

        c(ViewPager2 viewPager2, boolean z10) {
            this.f29829a = viewPager2;
            this.f29830b = z10;
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabReselected(TabLayout.Tab tab) {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabSelected(TabLayout.Tab tab) {
            this.f29829a.setCurrentItem(tab.getPosition(), this.f29830b);
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(TabLayout.Tab tab) {
        }
    }

    public TabLayoutMediator(@NonNull TabLayout tabLayout, @NonNull ViewPager2 viewPager2, @NonNull TabConfigurationStrategy tabConfigurationStrategy) {
        this(tabLayout, viewPager2, true, tabConfigurationStrategy);
    }

    public TabLayoutMediator(@NonNull TabLayout tabLayout, @NonNull ViewPager2 viewPager2, boolean z10, @NonNull TabConfigurationStrategy tabConfigurationStrategy) {
        this(tabLayout, viewPager2, z10, true, tabConfigurationStrategy);
    }

    public TabLayoutMediator(@NonNull TabLayout tabLayout, @NonNull ViewPager2 viewPager2, boolean z10, boolean z11, @NonNull TabConfigurationStrategy tabConfigurationStrategy) {
        this.tabLayout = tabLayout;
        this.viewPager = viewPager2;
        this.autoRefresh = z10;
        this.smoothScroll = z11;
        this.tabConfigurationStrategy = tabConfigurationStrategy;
    }

    public void attach() {
        if (this.attached) {
            throw new IllegalStateException("TabLayoutMediator is already attached");
        }
        RecyclerView.Adapter adapter = this.viewPager.getAdapter();
        this.adapter = adapter;
        if (adapter == null) {
            throw new IllegalStateException("TabLayoutMediator attached before ViewPager2 has an adapter");
        }
        this.attached = true;
        b bVar = new b(this.tabLayout);
        this.onPageChangeCallback = bVar;
        this.viewPager.registerOnPageChangeCallback(bVar);
        c cVar = new c(this.viewPager, this.smoothScroll);
        this.onTabSelectedListener = cVar;
        this.tabLayout.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) cVar);
        if (this.autoRefresh) {
            a aVar = new a();
            this.pagerAdapterObserver = aVar;
            this.adapter.registerAdapterDataObserver(aVar);
        }
        populateTabsFromPagerAdapter();
        this.tabLayout.setScrollPosition(this.viewPager.getCurrentItem(), 0.0f, true);
    }

    public void detach() {
        RecyclerView.Adapter adapter;
        if (this.autoRefresh && (adapter = this.adapter) != null) {
            adapter.unregisterAdapterDataObserver(this.pagerAdapterObserver);
            this.pagerAdapterObserver = null;
        }
        this.tabLayout.removeOnTabSelectedListener(this.onTabSelectedListener);
        this.viewPager.unregisterOnPageChangeCallback(this.onPageChangeCallback);
        this.onTabSelectedListener = null;
        this.onPageChangeCallback = null;
        this.adapter = null;
        this.attached = false;
    }

    public boolean isAttached() {
        return this.attached;
    }

    void populateTabsFromPagerAdapter() {
        this.tabLayout.removeAllTabs();
        RecyclerView.Adapter adapter = this.adapter;
        if (adapter != null) {
            int itemCount = adapter.getItemCount();
            for (int i11 = 0; i11 < itemCount; i11++) {
                TabLayout.Tab tabNewTab = this.tabLayout.newTab();
                this.tabConfigurationStrategy.onConfigureTab(tabNewTab, i11);
                this.tabLayout.addTab(tabNewTab, false);
            }
            if (itemCount > 0) {
                int iMin = Math.min(this.viewPager.getCurrentItem(), this.tabLayout.getTabCount() - 1);
                if (iMin != this.tabLayout.getSelectedTabPosition()) {
                    TabLayout tabLayout = this.tabLayout;
                    tabLayout.selectTab(tabLayout.getTabAt(iMin));
                }
            }
        }
    }
}
