package com.transsnet.downloader.ugc.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.baseui.widget.magicindicator.ORCommonNavigator;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.fragment.DownloadTabBaseFragment;
import com.transsnet.downloader.ugc.activity.UGCMyDownloadsActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u0000 72\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00018B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u001d\u0010\n\u001a\u00020\u00052\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\u000e\u001a\u00020\u00052\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\u0004J\u0011\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0011\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010 \u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u001bH\u0016¢\u0006\u0004\b \u0010\u001eJ\u0017\u0010\"\u001a\u00020!2\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\"\u0010#J\u0017\u0010$\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007H\u0016¢\u0006\u0004\b$\u0010%J\u001f\u0010'\u001a\u00020\u00052\u000e\u0010&\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007H\u0016¢\u0006\u0004\b'\u0010\u000bJ!\u0010*\u001a\u00020\u00052\u0006\u0010)\u001a\u00020(2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b*\u0010+J\u000f\u0010,\u001a\u00020\u0005H\u0016¢\u0006\u0004\b,\u0010\u0004J\u000f\u0010-\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b-\u0010.R\u001a\u00101\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R\u0018\u00104\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0016\u00106\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00103¨\u00069"}, d2 = {"Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedTabFragment;", "Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;", "Lpy/q0;", "<init>", "()V", "", "F0", "", "", "tabList", "n0", "(Ljava/util/List;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "E0", "(Landroid/view/LayoutInflater;)Lpy/q0;", "lazyLoadData", "Landroidx/viewpager2/widget/ViewPager2;", "z0", "()Landroidx/viewpager2/widget/ViewPager2;", "Lnet/lucode/hackware/magicindicator/MagicIndicator;", "r0", "()Lnet/lucode/hackware/magicindicator/MagicIndicator;", "", RequestParameters.POSITION, "t0", "(I)V", "state", "s0", "Landroidx/fragment/app/Fragment;", "d0", "(I)Landroidx/fragment/app/Fragment;", "f0", "()Ljava/util/List;", "list", "u0", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "o0", "D0", "()Ljava/lang/String;", CampaignEx.JSON_KEY_AD_K, "Ljava/util/List;", "mainTabList", "l", "Ljava/lang/String;", "subTabTitleArg", "m", "modeArg", "n", "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class UGCDownloadedTabFragment extends DownloadTabBaseFragment<py.q0> {

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private String subTabTitleArg;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private final List mainTabList = new ArrayList();

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private String modeArg = "ugc_home";

    /* JADX INFO: renamed from: com.transsnet.downloader.ugc.fragment.UGCDownloadedTabFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UGCDownloadedTabFragment a(String str) {
            UGCDownloadedTabFragment uGCDownloadedTabFragment = new UGCDownloadedTabFragment();
            uGCDownloadedTabFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("arg_sub_tab_title", str)));
            return uGCDownloadedTabFragment;
        }
    }

    public static final class b extends ViewPager2.OnPageChangeCallback {
        b() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrollStateChanged(int i11) {
            super.onPageScrollStateChanged(i11);
            UGCDownloadedTabFragment.this.s0(i11);
            MagicIndicator magicIndicatorR0 = UGCDownloadedTabFragment.this.r0();
            if (magicIndicatorR0 != null) {
                magicIndicatorR0.onPageScrollStateChanged(i11);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrolled(int i11, float f11, int i12) {
            super.onPageScrolled(i11, f11, i12);
            MagicIndicator magicIndicatorR0 = UGCDownloadedTabFragment.this.r0();
            if (magicIndicatorR0 != null) {
                magicIndicatorR0.onPageScrolled(i11, f11, i12);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i11) {
            super.onPageSelected(i11);
            MagicIndicator magicIndicatorR0 = UGCDownloadedTabFragment.this.r0();
            if (magicIndicatorR0 != null) {
                magicIndicatorR0.onPageSelected(i11);
            }
            UGCDownloadedTabFragment.this.y0(i11);
            UGCDownloadedTabFragment.this.t0(i11);
        }
    }

    public static final class c extends FragmentStateAdapter {
        c() {
            super(UGCDownloadedTabFragment.this);
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        public Fragment createFragment(int i11) {
            return UGCDownloadedTabFragment.this.d0(i11);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return UGCDownloadedTabFragment.this.mainTabList.size();
        }
    }

    private final void F0() {
        lg.a.C0828a.f(lg.a.f68839a, getTAG(), "updateTabs - selectTabIndex:" + getSelectTabIndex() + ", mainTabList: " + this.mainTabList, false, 4, null);
        u0(this.mainTabList);
        c cVar = new c();
        ViewPager2 viewPager2Z0 = z0();
        if (viewPager2Z0 != null) {
            viewPager2Z0.setAdapter(cVar);
            int iM = RangesKt.m(getSelectTabIndex(), 0, this.mainTabList.size() - 1);
            if (iM != getSelectTabIndex()) {
                y0(iM);
            }
            viewPager2Z0.registerOnPageChangeCallback(new b());
            viewPager2Z0.setCurrentItem(getSelectTabIndex(), false);
        }
        MagicIndicator magicIndicatorR0 = r0();
        if (magicIndicatorR0 != null) {
            magicIndicatorR0.post(new Runnable() { // from class: com.transsnet.downloader.ugc.fragment.z
                @Override // java.lang.Runnable
                public final void run() {
                    UGCDownloadedTabFragment.G0(this.f59840a);
                }
            });
        }
        n0(this.mainTabList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G0(UGCDownloadedTabFragment uGCDownloadedTabFragment) {
        MagicIndicator magicIndicatorR0 = uGCDownloadedTabFragment.r0();
        if (magicIndicatorR0 != null) {
            magicIndicatorR0.onPageSelected(uGCDownloadedTabFragment.getSelectTabIndex());
        }
    }

    private final void n0(List tabList) {
        ORCommonNavigator oRCommonNavigator = new ORCommonNavigator(requireContext());
        oRCommonNavigator.setFollowTouch(true);
        lg.a.C0828a.f(lg.a.f68839a, getTAG(), "init tabList：" + tabList, false, 4, null);
        w0(new DownloadTabBaseFragment.a(this, z0(), tabList));
        oRCommonNavigator.setAdapter(getCommonNavigatorAdapter());
        v0(oRCommonNavigator);
        MagicIndicator magicIndicatorR0 = r0();
        if (magicIndicatorR0 != null) {
            magicIndicatorR0.setNavigator(getCommonNavigator());
        }
    }

    public final String D0() {
        return (String) CollectionsKt.l0(this.mainTabList, getSelectTabIndex());
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: E0, reason: merged with bridge method [inline-methods] */
    public py.q0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        py.q0 q0VarC = py.q0.c(inflater);
        Intrinsics.g(q0VarC, "inflate(...)");
        return q0VarC;
    }

    @Override // com.transsnet.downloader.fragment.DownloadTabBaseFragment
    public Fragment d0(int position) {
        if (position != 1) {
            return position != 2 ? UGCDownloadedAppFragment.INSTANCE.a(this.subTabTitleArg) : UGCTransferReceivedFragment.INSTANCE.a();
        }
        return UGCLocalFileListFragment.INSTANCE.a();
    }

    @Override // com.transsnet.downloader.fragment.DownloadTabBaseFragment
    public List f0() {
        return (List) j0().K().f();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsnet.downloader.fragment.DownloadTabBaseFragment, com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        MagicIndicator magicIndicator;
        Intrinsics.h(view, "view");
        super.initView(view, savedInstanceState);
        py.q0 q0Var = (py.q0) getMViewBinding();
        if (q0Var == null || (magicIndicator = q0Var.f72889b) == null) {
            return;
        }
        int iB = Intrinsics.c(this.modeArg, "ugc_sub") ? dk.a.b(12) : dk.a.b(8);
        ViewGroup.LayoutParams layoutParams = magicIndicator.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null) {
            marginLayoutParams.topMargin = iB;
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
    }

    @Override // com.transsnet.downloader.fragment.DownloadTabBaseFragment
    public void o0() {
        this.mainTabList.clear();
        List list = this.mainTabList;
        String strC = com.blankj.utilcode.util.c.c();
        Intrinsics.g(strC, "getAppName(...)");
        list.add(strC);
        List list2 = this.mainTabList;
        String string = Utils.a().getString(R$string.downloading_Local_files);
        Intrinsics.g(string, "getString(...)");
        list2.add(string);
        List list3 = this.mainTabList;
        String string2 = Utils.a().getString(R$string.download_transfer_tab_received);
        Intrinsics.g(string2, "getString(...)");
        list3.add(string2);
        F0();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.subTabTitleArg = arguments.getString("arg_sub_tab_title");
        }
        this.modeArg = getActivity() instanceof UGCMyDownloadsActivity ? "ugc_sub" : "ugc_home";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsnet.downloader.fragment.DownloadTabBaseFragment
    public MagicIndicator r0() {
        py.q0 q0Var = (py.q0) getMViewBinding();
        if (q0Var != null) {
            return q0Var.f72889b;
        }
        return null;
    }

    @Override // com.transsnet.downloader.fragment.DownloadTabBaseFragment
    public void s0(int state) {
    }

    @Override // com.transsnet.downloader.fragment.DownloadTabBaseFragment
    public void t0(int position) {
        lg.a.C0828a.f(lg.a.f68839a, getTAG(), "onViewPageSelected: " + position, false, 4, null);
    }

    @Override // com.transsnet.downloader.fragment.DownloadTabBaseFragment
    public void u0(List list) {
        j0().K().q(list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsnet.downloader.fragment.DownloadTabBaseFragment
    public ViewPager2 z0() {
        py.q0 q0Var = (py.q0) getMViewBinding();
        if (q0Var != null) {
            return q0Var.f72890c;
        }
        return null;
    }
}
