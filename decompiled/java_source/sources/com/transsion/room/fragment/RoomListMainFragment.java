package com.transsion.room.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.baseui.widget.magicindicator.ORCommonNavigator;
import com.transsion.room.R$string;
import com.transsion.room.view.RoomListMainTabTitleView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import net.lucode.hackware.magicindicator.MagicIndicator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators.WrapPagerIndicator;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0005\u0018\u0000 )2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0016B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u0017\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\u000e\u001a\u00020\u00052\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\u0004R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010 \u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u001a\u0010(\u001a\b\u0012\u0004\u0012\u00020\u001d0%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006*"}, d2 = {"Lcom/transsion/room/fragment/RoomListMainFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lbq/s;", "<init>", "()V", "", "initViewPager", "e0", "Landroid/view/LayoutInflater;", "inflater", "f0", "(Landroid/view/LayoutInflater;)Lbq/s;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "Landroidx/viewpager2/adapter/FragmentStateAdapter;", "a", "Landroidx/viewpager2/adapter/FragmentStateAdapter;", "vpAdapter", "Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;", "commonNavigator", "", "c", "I", "selectTabIndex", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "isSelectRoom", "", "e", "[Ljava/lang/Integer;", "tabs", "f", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RoomListMainFragment extends BaseFragment<bq.s> {

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private FragmentStateAdapter vpAdapter;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private ORCommonNavigator commonNavigator;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private int selectTabIndex;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private boolean isSelectRoom;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final Integer[] tabs = {Integer.valueOf(R$string.Your_rooms), Integer.valueOf(R$string.Room_list)};

    /* JADX INFO: renamed from: com.transsion.room.fragment.RoomListMainFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final RoomListMainFragment a(boolean z10, int i11) {
            RoomListMainFragment roomListMainFragment = new RoomListMainFragment();
            roomListMainFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("is_select_room", Boolean.valueOf(z10)), TuplesKt.a("index", Integer.valueOf(i11))));
            return roomListMainFragment;
        }
    }

    public static final class b extends ik.a {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void j(RoomListMainFragment roomListMainFragment, int i11, View view) {
            ViewPager2 viewPager2;
            bq.s mViewBinding = roomListMainFragment.getMViewBinding();
            if (mViewBinding == null || (viewPager2 = mViewBinding.f16863f) == null) {
                return;
            }
            viewPager2.setCurrentItem(i11, true);
        }

        @Override // j00.a
        public int a() {
            return RoomListMainFragment.this.tabs.length;
        }

        @Override // j00.a
        public j00.c b(Context context) {
            Intrinsics.h(context, "context");
            WrapPagerIndicator wrapPagerIndicator = new WrapPagerIndicator(context);
            int iA = com.blankj.utilcode.util.a0.a(3.0f);
            wrapPagerIndicator.setRoundRadius(iA * 2.0f);
            int i11 = -iA;
            wrapPagerIndicator.setVerticalPadding(i11);
            wrapPagerIndicator.setHorizontalPadding(i11);
            wrapPagerIndicator.setFillColor(androidx.core.content.b.getColor(context, R$color.bg_01));
            return wrapPagerIndicator;
        }

        @Override // j00.a
        public j00.d c(Context context, final int i11) {
            Intrinsics.h(context, "context");
            RoomListMainTabTitleView roomListMainTabTitleView = new RoomListMainTabTitleView(context);
            final RoomListMainFragment roomListMainFragment = RoomListMainFragment.this;
            roomListMainTabTitleView.setTextById(roomListMainFragment.tabs[i11].intValue());
            roomListMainTabTitleView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.room.fragment.x1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RoomListMainFragment.b.j(roomListMainFragment, i11, view);
                }
            });
            return roomListMainTabTitleView;
        }
    }

    public static final class c extends ViewPager2.OnPageChangeCallback {
        c() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrollStateChanged(int i11) {
            MagicIndicator magicIndicator;
            super.onPageScrollStateChanged(i11);
            bq.s mViewBinding = RoomListMainFragment.this.getMViewBinding();
            if (mViewBinding == null || (magicIndicator = mViewBinding.f16862e) == null) {
                return;
            }
            magicIndicator.onPageScrollStateChanged(i11);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrolled(int i11, float f11, int i12) {
            MagicIndicator magicIndicator;
            super.onPageScrolled(i11, f11, i12);
            bq.s mViewBinding = RoomListMainFragment.this.getMViewBinding();
            if (mViewBinding == null || (magicIndicator = mViewBinding.f16862e) == null) {
                return;
            }
            magicIndicator.onPageScrolled(i11, f11, i12);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i11) {
            MagicIndicator magicIndicator;
            super.onPageSelected(i11);
            bq.s mViewBinding = RoomListMainFragment.this.getMViewBinding();
            if (mViewBinding != null && (magicIndicator = mViewBinding.f16862e) != null) {
                magicIndicator.onPageSelected(i11);
            }
            RoomListMainFragment.this.selectTabIndex = i11;
        }
    }

    public static final class d extends FragmentStateAdapter {
        d() {
            super(RoomListMainFragment.this);
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        public Fragment createFragment(int i11) {
            return i11 == 0 ? RoomMyListFragment.INSTANCE.a(RoomListMainFragment.this.isSelectRoom, null) : RoomFilterListFragment.INSTANCE.a(RoomListMainFragment.this.isSelectRoom);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return RoomListMainFragment.this.tabs.length;
        }
    }

    private final void e0() {
        ViewPager2 viewPager2;
        ViewPager2 viewPager3;
        MagicIndicator magicIndicator;
        ORCommonNavigator oRCommonNavigator = new ORCommonNavigator(requireContext());
        oRCommonNavigator.setAdapter(new b());
        this.commonNavigator = oRCommonNavigator;
        bq.s mViewBinding = getMViewBinding();
        if (mViewBinding != null && (magicIndicator = mViewBinding.f16862e) != null) {
            magicIndicator.setNavigator(this.commonNavigator);
        }
        bq.s mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (viewPager3 = mViewBinding2.f16863f) != null) {
            viewPager3.registerOnPageChangeCallback(new c());
        }
        bq.s mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (viewPager2 = mViewBinding3.f16863f) == null) {
            return;
        }
        viewPager2.setCurrentItem(this.selectTabIndex, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g0(RoomListMainFragment roomListMainFragment, View view) {
        FragmentActivity activity = roomListMainFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    private final void initViewPager() {
        ViewPager2 viewPager2;
        this.vpAdapter = new d();
        bq.s mViewBinding = getMViewBinding();
        if (mViewBinding != null && (viewPager2 = mViewBinding.f16863f) != null) {
            viewPager2.setAdapter(this.vpAdapter);
        }
        e0();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: f0, reason: merged with bridge method [inline-methods] */
    public bq.s getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        bq.s sVarC = bq.s.c(inflater);
        Intrinsics.g(sVarC, "inflate(...)");
        return sVarC;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        AppCompatImageView appCompatImageView;
        ImageView imageView;
        Intrinsics.h(view, "view");
        bq.s mViewBinding = getMViewBinding();
        if (mViewBinding != null && (imageView = mViewBinding.f16861d) != null) {
            jg.c.e(imageView);
        }
        bq.s mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (appCompatImageView = mViewBinding2.f16860c) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.room.fragment.w1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    RoomListMainFragment.g0(this.f51600a, view2);
                }
            });
        }
        initViewPager();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        this.selectTabIndex = arguments != null ? arguments.getInt("index") : 0;
        Bundle arguments2 = getArguments();
        this.isSelectRoom = arguments2 != null ? arguments2.getBoolean("is_select_room") : false;
        ImmersionBar.with(this).statusBarDarkFont(!ak.x.f658a.a()).init();
    }
}
