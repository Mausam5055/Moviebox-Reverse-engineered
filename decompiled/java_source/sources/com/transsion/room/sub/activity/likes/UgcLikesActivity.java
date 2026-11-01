package com.transsion.room.sub.activity.likes;

import ak.x;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.widget.m;
import androidx.viewpager2.widget.ViewPager2;
import bq.d;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$style;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;
import com.transsion.room.R$string;
import com.transsion.room.sub.activity.likes.UgcLikesActivity;
import com.transsion.room.sub.adapter.likes.b;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u0010\u001a\u00020\t2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0014\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lbq/d;", "<init>", "()V", "Lcom/google/android/material/tabs/TabLayout$Tab;", "tab", "", "isSelected", "", "k0", "(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V", "h0", "()Lbq/d;", "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/os/Bundle;)V", "isTranslucent", "()Z", "isStatusDark", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UgcLikesActivity extends BaseActivity<d> {

    public static final class a implements TabLayout.OnTabSelectedListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewPager2 f51637b;

        a(ViewPager2 viewPager2) {
            this.f51637b = viewPager2;
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabReselected(TabLayout.Tab tab) {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabSelected(TabLayout.Tab tab) {
            UgcLikesActivity ugcLikesActivity = UgcLikesActivity.this;
            Intrinsics.e(tab);
            ugcLikesActivity.k0(tab, true);
            this.f51637b.setCurrentItem(tab.getPosition(), true);
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(TabLayout.Tab tab) {
            UgcLikesActivity ugcLikesActivity = UgcLikesActivity.this;
            Intrinsics.e(tab);
            ugcLikesActivity.k0(tab, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i0(b bVar, UgcLikesActivity ugcLikesActivity, TabLayout.Tab tab, int i11) {
        Intrinsics.h(tab, "tab");
        tab.setText(bVar.h(i11));
        ugcLikesActivity.k0(tab, i11 == 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j0(UgcLikesActivity ugcLikesActivity, View view) {
        ugcLikesActivity.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k0(TabLayout.Tab tab, boolean isSelected) {
        View customView;
        TextView textView;
        if (tab.getCustomView() == null || (customView = tab.getCustomView()) == null || (textView = (TextView) customView.findViewById(R$id.tv_tab_title)) == null) {
            return;
        }
        textView.setTypeface(isSelected ? Typeface.create(Typeface.DEFAULT, 1) : Typeface.create(Typeface.DEFAULT, 0));
        m.q(textView, isSelected ? R$style.style_import_text : R$style.style_regular_text);
        textView.setTextSize(isSelected ? 16.0f : 14.0f);
        textView.setTextColor(androidx.core.content.b.getColor(this, isSelected ? R$color.white : R$color.white_80));
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: h0, reason: merged with bridge method [inline-methods] */
    public d getViewBinding() {
        d dVarC = d.c(getLayoutInflater());
        Intrinsics.g(dVarC, "inflate(...)");
        return dVarC;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseActivity
    public void initView(Bundle savedInstanceState) {
        if (savedInstanceState == null) {
            final b bVar = new b(this);
            ((d) getMViewBinding()).f16738h.setAdapter(bVar);
            TabLayout tabLayout = ((d) getMViewBinding()).f16736f;
            Intrinsics.g(tabLayout, "tabLayout");
            ViewPager2 viewPager2 = ((d) getMViewBinding()).f16738h;
            Intrinsics.g(viewPager2, "viewPager2");
            new TabLayoutMediator(tabLayout, viewPager2, new TabLayoutMediator.TabConfigurationStrategy() { // from class: gq.a
                @Override // com.google.android.material.tabs.TabLayoutMediator.TabConfigurationStrategy
                public final void onConfigureTab(TabLayout.Tab tab, int i11) {
                    UgcLikesActivity.i0(bVar, this, tab, i11);
                }
            }).attach();
            viewPager2.setCurrentItem(0, false);
            ((d) getMViewBinding()).f16734d.setOnClickListener(new View.OnClickListener() { // from class: gq.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    UgcLikesActivity.j0(this.f63934a, view);
                }
            });
            tabLayout.removeAllTabs();
            for (String str : CollectionsKt.o(getString(R$string.play_hub), getString(R$string.buzz_box))) {
                TabLayout.Tab tabNewTab = tabLayout.newTab();
                Intrinsics.g(tabNewTab, "newTab(...)");
                View viewInflate = LayoutInflater.from(this).inflate(R$layout.ugc_likes_item_tab_custom, (ViewGroup) tabLayout, false);
                ((TextView) viewInflate.findViewById(R$id.tv_tab_title)).setText(str);
                tabNewTab.setCustomView(viewInflate);
                tabLayout.addTab(tabNewTab);
            }
            TabLayout.Tab tabAt = tabLayout.getTabAt(0);
            if (tabAt != null) {
                tabAt.select();
                k0(tabAt, true);
            }
            ((d) getMViewBinding()).f16736f.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) new a(viewPager2));
        }
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isStatusDark() {
        return !x.f658a.a();
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isTranslucent() {
        return true;
    }
}
