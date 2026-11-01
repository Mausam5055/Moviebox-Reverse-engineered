package com.transsnet.downloader.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.baseui.widget.magicindicator.ORCommonNavigator;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.viewmodel.DownloadViewModel;
import com.transsnet.downloader.viewmodel.HistoricalPlayRecordViewModel;
import com.transsnet.downloader.widget.FileManagerTabTitleView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import g4.a;
import java.util.ArrayList;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import net.lucode.hackware.magicindicator.MagicIndicator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators.LinePagerIndicator;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0001*B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u001d\u0010\u000b\u001a\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\r\u0010\u0005J\u001d\u0010\u000e\u001a\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0002¢\u0006\u0004\b\u000e\u0010\fJ\u0011\u0010\u0010\u001a\u0004\u0018\u00010\u000fH&¢\u0006\u0004\b\u0010\u0010\u0011J\u0011\u0010\u0013\u001a\u0004\u0018\u00010\u0012H&¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0015H&¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0015H&¢\u0006\u0004\b\u001a\u0010\u0018J\u0017\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0016\u001a\u00020\u0015H&¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bH&¢\u0006\u0004\b\u001e\u0010\u001fJ\u001f\u0010!\u001a\u00020\u00062\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bH&¢\u0006\u0004\b!\u0010\fJ!\u0010&\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\"2\b\u0010%\u001a\u0004\u0018\u00010$H\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u0006H\u0016¢\u0006\u0004\b(\u0010\u0005J!\u0010)\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\"2\b\u0010%\u001a\u0004\u0018\u00010$H\u0016¢\u0006\u0004\b)\u0010'R\u001a\u0010.\u001a\u00020\t8\u0004X\u0084\u0004¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-R\u001b\u00104\u001a\u00020/8DX\u0084\u0084\u0002¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103R\u001b\u00109\u001a\u0002058DX\u0084\u0084\u0002¢\u0006\f\n\u0004\b6\u00101\u001a\u0004\b7\u00108R&\u0010=\u001a\r\u0012\t\u0012\u00070\t¢\u0006\u0002\b:0\b8DX\u0084\u0084\u0002¢\u0006\f\n\u0004\b;\u00101\u001a\u0004\b<\u0010\u001fR\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010?R\u0018\u0010C\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010BR$\u0010K\u001a\u0004\u0018\u00010D8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bE\u0010F\u001a\u0004\bG\u0010H\"\u0004\bI\u0010JR.\u0010S\u001a\u000e\u0018\u00010LR\b\u0012\u0004\u0012\u00028\u00000\u00008\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bM\u0010N\u001a\u0004\bO\u0010P\"\u0004\bQ\u0010RR\"\u0010Y\u001a\u00020\u00158\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bT\u0010U\u001a\u0004\bV\u0010W\"\u0004\bX\u0010\u0018R$\u0010a\u001a\u0004\u0018\u00010Z8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b[\u0010\\\u001a\u0004\b]\u0010^\"\u0004\b_\u0010`¨\u0006b"}, d2 = {"Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;", "Lg4/a;", "T", "Lcom/transsion/baseui/fragment/BaseFragment;", "<init>", "()V", "", "initViewModel", "", "", "tabList", "q0", "(Ljava/util/List;)V", "c0", "n0", "Landroidx/viewpager2/widget/ViewPager2;", "z0", "()Landroidx/viewpager2/widget/ViewPager2;", "Lnet/lucode/hackware/magicindicator/MagicIndicator;", "r0", "()Lnet/lucode/hackware/magicindicator/MagicIndicator;", "", RequestParameters.POSITION, "t0", "(I)V", "state", "s0", "Landroidx/fragment/app/Fragment;", "d0", "(I)Landroidx/fragment/app/Fragment;", "f0", "()Ljava/util/List;", "list", "u0", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "o0", "initData", "a", "Ljava/lang/String;", "getTAG", "()Ljava/lang/String;", "TAG", "Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "k0", "()Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;", "outDataViewModel", "Lcom/transsnet/downloader/viewmodel/DownloadViewModel;", "c", "j0", "()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;", "downloadViewModel", "Lkotlin/jvm/internal/EnhancedNullability;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "i0", "defTabList", "e", "Ljava/util/List;", "Landroidx/viewpager2/adapter/FragmentStateAdapter;", "f", "Landroidx/viewpager2/adapter/FragmentStateAdapter;", "vpAdapter", "Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;", "g", "Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;", "g0", "()Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;", "v0", "(Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;)V", "commonNavigator", "Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;", "h", "Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;", "h0", "()Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;", "w0", "(Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;)V", "commonNavigatorAdapter", "i", "I", "m0", "()I", "y0", "selectTabIndex", "Lcom/transsnet/downloader/widget/FileManagerTabTitleView;", "j", "Lcom/transsnet/downloader/widget/FileManagerTabTitleView;", "l0", "()Lcom/transsnet/downloader/widget/FileManagerTabTitleView;", "x0", "(Lcom/transsnet/downloader/widget/FileManagerTabTitleView;)V", "receivedTabTitleView", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public abstract class DownloadTabBaseFragment<T extends g4.a> extends BaseFragment<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final String TAG = "DownloadTab_" + getClass().getSimpleName();

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Lazy outDataViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(HistoricalPlayRecordViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsnet.downloader.fragment.DownloadTabBaseFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsnet.downloader.fragment.DownloadTabBaseFragment$special$$inlined$activityViewModels$default$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.lifecycle.v0.c invoke() {
            androidx.lifecycle.v0.c defaultViewModelProviderFactory = this.requireActivity().getDefaultViewModelProviderFactory();
            Intrinsics.g(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
            return defaultViewModelProviderFactory;
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final Lazy downloadViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(DownloadViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsnet.downloader.fragment.DownloadTabBaseFragment$special$$inlined$activityViewModels$default$3
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsnet.downloader.fragment.DownloadTabBaseFragment$special$$inlined$activityViewModels$default$4
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.lifecycle.v0.c invoke() {
            androidx.lifecycle.v0.c defaultViewModelProviderFactory = this.requireActivity().getDefaultViewModelProviderFactory();
            Intrinsics.g(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
            return defaultViewModelProviderFactory;
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final Lazy defTabList = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.fragment.z4
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadTabBaseFragment.e0(this.f59378a);
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final List tabList = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private FragmentStateAdapter vpAdapter;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private ORCommonNavigator commonNavigator;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private a commonNavigatorAdapter;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private int selectTabIndex;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private FileManagerTabTitleView receivedTabTitleView;

    public final class a extends ik.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ViewPager2 f59018b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final List f59019c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final List f59020d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ DownloadTabBaseFragment f59021e;

        public a(DownloadTabBaseFragment downloadTabBaseFragment, ViewPager2 viewPager2, List defList) {
            Intrinsics.h(defList, "defList");
            this.f59021e = downloadTabBaseFragment;
            this.f59018b = viewPager2;
            this.f59019c = defList;
            ArrayList arrayList = new ArrayList();
            this.f59020d = arrayList;
            arrayList.addAll(defList);
        }

        private final LinearLayout.LayoutParams j(int i11, List list) {
            int i12;
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
            int iB = dk.a.b(4);
            int i13 = 0;
            if (i11 == 0) {
                i13 = iB * 2;
                i12 = 0;
            } else {
                i12 = i11 == list.size() + (-1) ? iB * 2 : 0;
            }
            layoutParams.setMarginStart(i13 + iB);
            layoutParams.setMarginEnd(iB + i12);
            return layoutParams;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void l(int i11, DownloadTabBaseFragment downloadTabBaseFragment, a aVar, View view) {
            FileManagerTabTitleView receivedTabTitleView;
            if (i11 == 2 && (receivedTabTitleView = downloadTabBaseFragment.getReceivedTabTitleView()) != null) {
                receivedTabTitleView.setDotVisibility(false);
            }
            ViewPager2 viewPager2 = aVar.f59018b;
            if (viewPager2 != null) {
                viewPager2.setCurrentItem(i11, true);
            }
        }

        @Override // j00.a
        public int a() {
            return this.f59020d.size();
        }

        @Override // j00.a
        public j00.c b(Context context) {
            Intrinsics.h(context, "context");
            LinePagerIndicator linePagerIndicator = new LinePagerIndicator(context);
            linePagerIndicator.setColors(0, 0, 0);
            return linePagerIndicator;
        }

        @Override // j00.a
        public j00.d c(Context context, final int i11) {
            Intrinsics.h(context, "context");
            FileManagerTabTitleView fileManagerTabTitleView = new FileManagerTabTitleView(context);
            final DownloadTabBaseFragment downloadTabBaseFragment = this.f59021e;
            if ((downloadTabBaseFragment instanceof FileManagerFragment) && i11 == 2) {
                ((FileManagerFragment) downloadTabBaseFragment).x0(fileManagerTabTitleView);
            }
            fileManagerTabTitleView.setTitle((String) this.f59020d.get(i11));
            fileManagerTabTitleView.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.fragment.b5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DownloadTabBaseFragment.a.l(i11, downloadTabBaseFragment, this, view);
                }
            });
            return fileManagerTabTitleView;
        }

        @Override // ik.a
        public LinearLayout.LayoutParams h(Context context, int i11) {
            Intrinsics.h(context, "context");
            return j(i11, this.f59020d);
        }

        public final List k() {
            return this.f59020d;
        }
    }

    public static final class b extends ViewPager2.OnPageChangeCallback {
        b() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrollStateChanged(int i11) {
            super.onPageScrollStateChanged(i11);
            DownloadTabBaseFragment.this.s0(i11);
            MagicIndicator magicIndicatorR0 = DownloadTabBaseFragment.this.r0();
            if (magicIndicatorR0 != null) {
                magicIndicatorR0.onPageScrollStateChanged(i11);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrolled(int i11, float f11, int i12) {
            super.onPageScrolled(i11, f11, i12);
            MagicIndicator magicIndicatorR0 = DownloadTabBaseFragment.this.r0();
            if (magicIndicatorR0 != null) {
                magicIndicatorR0.onPageScrolled(i11, f11, i12);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i11) {
            FileManagerTabTitleView receivedTabTitleView;
            super.onPageSelected(i11);
            MagicIndicator magicIndicatorR0 = DownloadTabBaseFragment.this.r0();
            if (magicIndicatorR0 != null) {
                magicIndicatorR0.onPageSelected(i11);
            }
            DownloadTabBaseFragment.this.y0(i11);
            DownloadTabBaseFragment.this.t0(i11);
            if (i11 != 2 || (receivedTabTitleView = DownloadTabBaseFragment.this.getReceivedTabTitleView()) == null) {
                return;
            }
            receivedTabTitleView.setDotVisibility(false);
        }
    }

    public static final class c extends FragmentStateAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f59024b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(List list) {
            super(DownloadTabBaseFragment.this);
            this.f59024b = list;
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        public Fragment createFragment(int i11) {
            return DownloadTabBaseFragment.this.d0(i11);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f59024b.size();
        }
    }

    static final class d implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f59025a;

        d(Function1 function) {
            Intrinsics.h(function, "function");
            this.f59025a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f59025a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f59025a.invoke(obj);
        }
    }

    private final void c0() {
        ViewPager2 viewPager2Z0 = z0();
        if (viewPager2Z0 != null) {
            viewPager2Z0.registerOnPageChangeCallback(new b());
        }
        ViewPager2 viewPager2Z1 = z0();
        if (viewPager2Z1 != null) {
            viewPager2Z1.setCurrentItem(this.selectTabIndex, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List e0(DownloadTabBaseFragment downloadTabBaseFragment) {
        return CollectionsKt.q(com.blankj.utilcode.util.c.c(), downloadTabBaseFragment.requireContext().getString(R$string.downloading_Local_files), downloadTabBaseFragment.requireContext().getString(R$string.download_transfer_tab_received));
    }

    private final void initViewModel() {
        if (this instanceof FileManagerFragment) {
            ((FileManagerFragment) this).j0().d0().j(this, new d(new Function1() { // from class: com.transsnet.downloader.fragment.a5
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return DownloadTabBaseFragment.p0(this.f59124a, (Boolean) obj);
                }
            }));
        }
    }

    private final void n0(List tabList) {
        ORCommonNavigator oRCommonNavigator = new ORCommonNavigator(requireContext());
        oRCommonNavigator.setFollowTouch(true);
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "init tabList：" + tabList, false, 4, null);
        a aVar = new a(this, z0(), tabList);
        this.commonNavigatorAdapter = aVar;
        oRCommonNavigator.setAdapter(aVar);
        this.commonNavigator = oRCommonNavigator;
        MagicIndicator magicIndicatorR0 = r0();
        if (magicIndicatorR0 != null) {
            magicIndicatorR0.setNavigator(this.commonNavigator);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit p0(DownloadTabBaseFragment downloadTabBaseFragment, Boolean bool) {
        FileManagerTabTitleView receivedTabTitleView;
        if (bool.booleanValue() && (receivedTabTitleView = ((FileManagerFragment) downloadTabBaseFragment).getReceivedTabTitleView()) != null) {
            receivedTabTitleView.setDotVisibility(true);
        }
        return Unit.f67061a;
    }

    private final void q0(List tabList) {
        this.vpAdapter = new c(tabList);
        ViewPager2 viewPager2Z0 = z0();
        if (viewPager2Z0 != null) {
            viewPager2Z0.setAdapter(this.vpAdapter);
        }
        c0();
    }

    public abstract Fragment d0(int position);

    public abstract List f0();

    /* JADX INFO: renamed from: g0, reason: from getter */
    protected final ORCommonNavigator getCommonNavigator() {
        return this.commonNavigator;
    }

    protected final String getTAG() {
        return this.TAG;
    }

    /* JADX INFO: renamed from: h0, reason: from getter */
    protected final a getCommonNavigatorAdapter() {
        return this.commonNavigatorAdapter;
    }

    protected final List i0() {
        return (List) this.defTabList.getValue();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initData(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.initData(view, savedInstanceState);
        initViewModel();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        o0();
    }

    protected final DownloadViewModel j0() {
        return (DownloadViewModel) this.downloadViewModel.getValue();
    }

    protected final HistoricalPlayRecordViewModel k0() {
        return (HistoricalPlayRecordViewModel) this.outDataViewModel.getValue();
    }

    /* JADX INFO: renamed from: l0, reason: from getter */
    protected final FileManagerTabTitleView getReceivedTabTitleView() {
        return this.receivedTabTitleView;
    }

    /* JADX INFO: renamed from: m0, reason: from getter */
    protected final int getSelectTabIndex() {
        return this.selectTabIndex;
    }

    public void o0() {
        List listI0;
        List listF0 = f0();
        if (listF0 == null || !(!listF0.isEmpty())) {
            u0(i0());
            listI0 = i0();
        } else {
            listI0 = f0();
            Intrinsics.e(listI0);
        }
        q0(listI0);
        n0(listI0);
    }

    public abstract MagicIndicator r0();

    public abstract void s0(int state);

    public abstract void t0(int position);

    public abstract void u0(List list);

    protected final void v0(ORCommonNavigator oRCommonNavigator) {
        this.commonNavigator = oRCommonNavigator;
    }

    protected final void w0(a aVar) {
        this.commonNavigatorAdapter = aVar;
    }

    protected final void x0(FileManagerTabTitleView fileManagerTabTitleView) {
        this.receivedTabTitleView = fileManagerTabTitleView;
    }

    protected final void y0(int i11) {
        this.selectTabIndex = i11;
    }

    public abstract ViewPager2 z0();
}
