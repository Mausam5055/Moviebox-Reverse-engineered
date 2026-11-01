package com.transsnet.downloader.ugc.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.blankj.utilcode.util.Utils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.baseui.widget.magicindicator.ORCommonNavigator;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.viewmodel.DownloadViewModel;
import com.transsnet.downloader.viewmodel.LocalFileViewModel;
import com.transsnet.downloader.viewmodel.TransferReceivedViewModel;
import com.transsnet.downloader.widget.UGCMyDownloadsTabTitleView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators.LinePagerIndicator;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 D2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001c B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u0019\u0010\u000b\u001a\u00020\u00052\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J!\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0015\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u001b\u0010$\u001a\u00020\u001f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u001b\u0010)\u001a\u00020%8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010!\u001a\u0004\b'\u0010(R\u001b\u0010.\u001a\u00020*8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b+\u0010!\u001a\u0004\b,\u0010-R\u0018\u00102\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u001c\u00106\u001a\b\u0018\u000103R\u00020\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0016\u0010:\u001a\u0002078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u001f\u0010?\u001a\r\u0012\t\u0012\u00070\u001b¢\u0006\u0002\b<0;8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010>R\u0016\u0010A\u001a\u0002078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u00109R\u0018\u0010C\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010\u001d¨\u0006E"}, d2 = {"Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lpy/r0;", "<init>", "()V", "", "f0", "initViewPager", "k0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "j0", "(Landroid/view/LayoutInflater;)Lpy/r0;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "initData", "initListener", "lazyLoadData", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "", "a", "Ljava/lang/String;", "TAG", "Lcom/transsnet/downloader/viewmodel/DownloadViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "g0", "()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;", "downloadViewModel", "Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;", "c", "i0", "()Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;", "transferViewModel", "Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "h0", "()Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;", "localFileViewModel", "Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;", "e", "Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;", "commonNavigator", "Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$b;", "f", "Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$b;", "commonNavigatorAdapter", "", "g", "I", "selectTabIndex", "", "Lkotlin/jvm/internal/EnhancedNullability;", "h", "Ljava/util/List;", "tabList", "i", "mainTabIndexArg", "j", "subTabTitleArg", CampaignEx.JSON_KEY_AD_K, "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCMyDownloadsFragment extends BaseFragment<py.r0> {

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private ORCommonNavigator commonNavigator;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private b commonNavigatorAdapter;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private int selectTabIndex;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private int mainTabIndexArg;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private String subTabTitleArg;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final String TAG = "MyDownloadsFragment";

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Lazy downloadViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(DownloadViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsnet.downloader.ugc.fragment.UGCMyDownloadsFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsnet.downloader.ugc.fragment.UGCMyDownloadsFragment$special$$inlined$activityViewModels$default$2
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
    private final Lazy transferViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(TransferReceivedViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsnet.downloader.ugc.fragment.UGCMyDownloadsFragment$special$$inlined$activityViewModels$default$3
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsnet.downloader.ugc.fragment.UGCMyDownloadsFragment$special$$inlined$activityViewModels$default$4
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
    private final Lazy localFileViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(LocalFileViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsnet.downloader.ugc.fragment.UGCMyDownloadsFragment$special$$inlined$activityViewModels$default$5
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsnet.downloader.ugc.fragment.UGCMyDownloadsFragment$special$$inlined$activityViewModels$default$6
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

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final List tabList = CollectionsKt.q(Utils.a().getString(R$string.str_downloading_title), Utils.a().getString(R$string.str_downloaded_title));

    /* JADX INFO: renamed from: com.transsnet.downloader.ugc.fragment.UGCMyDownloadsFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UGCMyDownloadsFragment a(int i11, String str) {
            UGCMyDownloadsFragment uGCMyDownloadsFragment = new UGCMyDownloadsFragment();
            uGCMyDownloadsFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("arg_main_tab_index", Integer.valueOf(i11)), TuplesKt.a("arg_sub_tab_title", str)));
            return uGCMyDownloadsFragment;
        }
    }

    public final class b extends ik.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ViewPager2 f59757b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final List f59758c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ UGCMyDownloadsFragment f59759d;

        public b(UGCMyDownloadsFragment uGCMyDownloadsFragment, ViewPager2 viewPager2, List tabList) {
            Intrinsics.h(tabList, "tabList");
            this.f59759d = uGCMyDownloadsFragment;
            this.f59757b = viewPager2;
            this.f59758c = tabList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void j(b bVar, int i11, View view) {
            ViewPager2 viewPager2 = bVar.f59757b;
            if (viewPager2 != null) {
                viewPager2.setCurrentItem(i11, true);
            }
        }

        @Override // j00.a
        public int a() {
            return this.f59758c.size();
        }

        @Override // j00.a
        public j00.c b(Context context) {
            Intrinsics.h(context, "context");
            LinePagerIndicator linePagerIndicator = new LinePagerIndicator(context);
            linePagerIndicator.setMode(2);
            linePagerIndicator.setLineHeight(dk.a.b(2));
            linePagerIndicator.setLineWidth(dk.a.b(98));
            linePagerIndicator.setStartInterpolator(new AccelerateInterpolator());
            linePagerIndicator.setEndInterpolator(new DecelerateInterpolator(2.0f));
            linePagerIndicator.setColors(Integer.valueOf(androidx.core.content.b.getColor(context, R$color.text_01)), Integer.valueOf(androidx.core.content.b.getColor(context, R$color.text_01)), Integer.valueOf(androidx.core.content.b.getColor(context, R$color.text_01)));
            return linePagerIndicator;
        }

        @Override // j00.a
        public j00.d c(Context context, final int i11) {
            Intrinsics.h(context, "context");
            UGCMyDownloadsTabTitleView uGCMyDownloadsTabTitleView = new UGCMyDownloadsTabTitleView(context);
            uGCMyDownloadsTabTitleView.setText((CharSequence) this.f59758c.get(i11));
            uGCMyDownloadsTabTitleView.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.ugc.fragment.o0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    UGCMyDownloadsFragment.b.j(this.f59818a, i11, view);
                }
            });
            return uGCMyDownloadsTabTitleView;
        }
    }

    public static final class c extends FragmentStateAdapter {
        c() {
            super(UGCMyDownloadsFragment.this);
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        public Fragment createFragment(int i11) {
            if (i11 != 0 && i11 == 1) {
                return ak.o.f646a.i() ? UGCDownloadedAppFragment.INSTANCE.a(UGCMyDownloadsFragment.this.subTabTitleArg) : UGCDownloadedTabFragment.INSTANCE.a(UGCMyDownloadsFragment.this.subTabTitleArg);
            }
            return UGCDownloadingListFragment.INSTANCE.a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return UGCMyDownloadsFragment.this.tabList.size();
        }
    }

    public static final class d extends ViewPager2.OnPageChangeCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ py.r0 f59761a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ UGCMyDownloadsFragment f59762b;

        d(py.r0 r0Var, UGCMyDownloadsFragment uGCMyDownloadsFragment) {
            this.f59761a = r0Var;
            this.f59762b = uGCMyDownloadsFragment;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrollStateChanged(int i11) {
            super.onPageScrollStateChanged(i11);
            this.f59761a.f72903b.onPageScrollStateChanged(i11);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrolled(int i11, float f11, int i12) {
            super.onPageScrolled(i11, f11, i12);
            this.f59761a.f72903b.onPageScrolled(i11, f11, i12);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i11) {
            super.onPageSelected(i11);
            this.f59761a.f72903b.onPageSelected(i11);
            this.f59762b.selectTabIndex = i11;
            lg.a.C0828a.f(lg.a.f68839a, this.f59762b.TAG, "onPageSelected: " + i11, false, 4, null);
        }
    }

    private final void f0() {
        g0().H();
        TransferReceivedViewModel.i(i0(), false, 1, null);
        LocalFileViewModel.k(h0(), false, 1, null);
    }

    private final DownloadViewModel g0() {
        return (DownloadViewModel) this.downloadViewModel.getValue();
    }

    private final LocalFileViewModel h0() {
        return (LocalFileViewModel) this.localFileViewModel.getValue();
    }

    private final TransferReceivedViewModel i0() {
        return (TransferReceivedViewModel) this.transferViewModel.getValue();
    }

    private final void initViewPager() {
        final py.r0 mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            mViewBinding.f72905d.setAdapter(new c());
            mViewBinding.f72905d.registerOnPageChangeCallback(new d(mViewBinding, this));
            mViewBinding.f72905d.setUserInputEnabled(true);
            mViewBinding.f72905d.setCurrentItem(this.selectTabIndex, false);
            mViewBinding.f72903b.post(new Runnable() { // from class: com.transsnet.downloader.ugc.fragment.n0
                @Override // java.lang.Runnable
                public final void run() {
                    UGCMyDownloadsFragment.l0(mViewBinding, this);
                }
            });
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private final void k0() {
        py.r0 mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            ORCommonNavigator oRCommonNavigator = new ORCommonNavigator(requireContext());
            oRCommonNavigator.setFollowTouch(true);
            lg.a.C0828a.f(lg.a.f68839a, this.TAG, "init tabList: " + this.tabList, false, 4, null);
            b bVar = new b(this, mViewBinding.f72905d, this.tabList);
            this.commonNavigatorAdapter = bVar;
            oRCommonNavigator.setAdapter(bVar);
            this.commonNavigator = oRCommonNavigator;
            mViewBinding.f72903b.setNavigator(oRCommonNavigator);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l0(py.r0 r0Var, UGCMyDownloadsFragment uGCMyDownloadsFragment) {
        r0Var.f72903b.onPageSelected(uGCMyDownloadsFragment.selectTabIndex);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initData(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        f0();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initListener() {
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        this.selectTabIndex = RangesKt.m(this.mainTabIndexArg, 0, this.tabList.size() - 1);
        initViewPager();
        k0();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: j0, reason: merged with bridge method [inline-methods] */
    public py.r0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        py.r0 r0VarC = py.r0.c(inflater);
        Intrinsics.g(r0VarC, "inflate(...)");
        return r0VarC;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public hj.b newLogViewConfig() {
        return new hj.b("/download/ugc_my_download", false, 2, null);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.mainTabIndexArg = arguments.getInt("arg_main_tab_index", 0);
            this.subTabTitleArg = arguments.getString("arg_sub_tab_title");
        }
    }
}
