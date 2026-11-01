package com.transsion.ugcvideodetail.fragment;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.play.detail.fragment.BaseBottomDialogFragment;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.hepler.UGCVideoPlayFrom;
import com.transsion.ugcvideodetail.viewmodel.UGCLocalVideoDetailViewModel;
import com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 ;2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001<B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\f\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\f\u0010\nJ\u000f\u0010\r\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\r\u0010\u0004J\u0017\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0019\u0010\u0004R\u001b\u0010\u001f\u001a\u00020\u001a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u001b\u0010$\u001a\u00020 8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\u001c\u001a\u0004\b\"\u0010#R\u0018\u0010(\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010+\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010/\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0016\u00101\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u0010.R\u0016\u00105\u001a\u0002028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u001e\u0010:\u001a\n\u0012\u0006\u0012\u0004\u0018\u000107068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109¨\u0006="}, d2 = {"Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogPlayListTabFragment;", "Lcom/transsion/play/detail/fragment/BaseBottomDialogFragment;", "Lqv/k;", "<init>", "()V", "", "B0", "", "totalCount", "I0", "(I)V", "tabIndex", "F0", "z0", "Landroid/view/LayoutInflater;", "inflater", "x0", "(Landroid/view/LayoutInflater;)Lqv/k;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "receiveArguments", "initViewData", "initViewModel", "initListener", "retryLoadData", "Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "y0", "()Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;", "viewModel", "Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;", "c", "w0", "()Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;", "localViewModel", "Lcom/transsion/ugcvideodetail/adapter/h;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/ugcvideodetail/adapter/h;", "tabAdapter", "e", "I", "selectedTabIndex", "", "f", "Z", "isTabsInitialized", "g", "hasScrolledToCurrentVideo", "Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;", "h", "Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;", "videoPlayFrom", "", "Lcom/transsion/baselib/db/download/DownloadBean;", "i", "Ljava/util/List;", "localPlayList", "j", "a", "UGCVideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCVideoDialogPlayListTabFragment extends BaseBottomDialogFragment<qv.k> {

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private com.transsion.ugcvideodetail.adapter.h tabAdapter;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private int selectedTabIndex;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private boolean isTabsInitialized;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private boolean hasScrolledToCurrentVideo;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Lazy viewModel = FragmentViewModelLazyKt.a(this, Reflection.b(UGCVideoDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.ugcvideodetail.fragment.UGCVideoDialogPlayListTabFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.ugcvideodetail.fragment.UGCVideoDialogPlayListTabFragment$special$$inlined$activityViewModels$default$2
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
    private final Lazy localViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(UGCLocalVideoDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.ugcvideodetail.fragment.UGCVideoDialogPlayListTabFragment$special$$inlined$activityViewModels$default$3
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.ugcvideodetail.fragment.UGCVideoDialogPlayListTabFragment$special$$inlined$activityViewModels$default$4
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
    private UGCVideoPlayFrom videoPlayFrom = UGCVideoPlayFrom.ON_LINE_VIDEO;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private List localPlayList = new ArrayList();

    /* JADX INFO: renamed from: com.transsion.ugcvideodetail.fragment.UGCVideoDialogPlayListTabFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UGCVideoDialogPlayListTabFragment a() {
            return new UGCVideoDialogPlayListTabFragment();
        }
    }

    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f56194a;

        static {
            int[] iArr = new int[UGCVideoPlayFrom.values().length];
            try {
                iArr[UGCVideoPlayFrom.ON_LINE_VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[UGCVideoPlayFrom.LOCAL_VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f56194a = iArr;
        }
    }

    public static final class c extends RecyclerView.l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f56195a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f56196b;

        c(int i11, int i12) {
            this.f56195a = i11;
            this.f56196b = i12;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.l
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.y state) {
            Intrinsics.h(outRect, "outRect");
            Intrinsics.h(view, "view");
            Intrinsics.h(parent, "parent");
            Intrinsics.h(state, "state");
            int childAdapterPosition = parent.getChildAdapterPosition(view);
            RecyclerView.Adapter adapter = parent.getAdapter();
            int itemCount = (adapter != null ? adapter.getItemCount() : 0) - 1;
            if (childAdapterPosition == 0) {
                outRect.left = this.f56195a;
                outRect.right = this.f56196b;
            } else if (childAdapterPosition == itemCount) {
                outRect.left = this.f56196b;
                outRect.right = this.f56195a;
            } else {
                int i11 = this.f56196b;
                outRect.left = i11;
                outRect.right = i11;
            }
        }
    }

    static final class d implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f56197a;

        d(Function1 function) {
            Intrinsics.h(function, "function");
            this.f56197a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f56197a;
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
            this.f56197a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A0(UGCVideoDialogPlayListTabFragment uGCVideoDialogPlayListTabFragment, View view) {
        BaseBottomDialogFragment.m0(uGCVideoDialogPlayListTabFragment, false, 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void B0() {
        RecyclerView recyclerView;
        com.transsion.ugcvideodetail.adapter.h hVar = new com.transsion.ugcvideodetail.adapter.h(null, 1, null);
        hVar.w1(new p6.d() { // from class: com.transsion.ugcvideodetail.fragment.q1
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                UGCVideoDialogPlayListTabFragment.C0(this.f56257a, baseQuickAdapter, view, i11);
            }
        });
        this.tabAdapter = hVar;
        qv.k kVar = (qv.k) getMViewBinding();
        if (kVar == null || (recyclerView = kVar.f73793e) == null) {
            return;
        }
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 0, false));
        recyclerView.setAdapter(this.tabAdapter);
        recyclerView.addItemDecoration(new c(dk.a.b(12), dk.a.b(8)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C0(UGCVideoDialogPlayListTabFragment uGCVideoDialogPlayListTabFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 2000L)) {
            return;
        }
        uGCVideoDialogPlayListTabFragment.selectedTabIndex = i11;
        com.transsion.ugcvideodetail.adapter.h hVar = uGCVideoDialogPlayListTabFragment.tabAdapter;
        if (hVar != null) {
            hVar.D1(i11);
        }
        uGCVideoDialogPlayListTabFragment.F0(i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit D0(UGCVideoDialogPlayListTabFragment uGCVideoDialogPlayListTabFragment, Integer num) {
        uGCVideoDialogPlayListTabFragment.I0(num != null ? num.intValue() : 0);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit E0(UGCVideoDialogPlayListTabFragment uGCVideoDialogPlayListTabFragment, List list) {
        List list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            uGCVideoDialogPlayListTabFragment.localPlayList = list;
            uGCVideoDialogPlayListTabFragment.I0(list.size());
        }
        return Unit.f67061a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, androidx.fragment.app.Fragment] */
    /* JADX WARN: Type inference failed for: r7v17, types: [T, com.transsion.ugcvideodetail.fragment.UGCVideoDialogPlayListFragment] */
    private final void F0(int tabIndex) {
        View view;
        int iIntValue;
        String str = "PlayListTabFragment_" + tabIndex;
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ?? K0 = getChildFragmentManager().k0(str);
        objectRef.element = K0;
        if (K0 == 0) {
            int i11 = b.f56194a[this.videoPlayFrom.ordinal()];
            if (i11 == 1) {
                Integer num = (Integer) y0().N().f();
                iIntValue = num != null ? num.intValue() : 0;
            } else {
                if (i11 != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                iIntValue = this.localPlayList.size();
            }
            objectRef.element = UGCVideoDialogPlayListFragment.INSTANCE.a(tabIndex, (tabIndex * 50) + 1, Math.min((tabIndex + 1) * 50, iIntValue), this.videoPlayFrom);
        }
        z0();
        if (((Fragment) objectRef.element).isAdded()) {
            getChildFragmentManager().p().y((Fragment) objectRef.element).l();
        } else {
            getChildFragmentManager().p().c(R$id.fragmentContainer, (Fragment) objectRef.element, str).l();
        }
        if (this.videoPlayFrom == UGCVideoPlayFrom.ON_LINE_VIDEO && (objectRef.element instanceof UGCVideoDialogPlayListFragment)) {
            View view2 = getView();
            if (view2 != null) {
                view2.post(new Runnable() { // from class: com.transsion.ugcvideodetail.fragment.v1
                    @Override // java.lang.Runnable
                    public final void run() {
                        UGCVideoDialogPlayListTabFragment.G0(objectRef);
                    }
                });
                return;
            }
            return;
        }
        if (!(objectRef.element instanceof UGCVideoDialogPlayListFragment) || (view = getView()) == null) {
            return;
        }
        view.post(new Runnable() { // from class: com.transsion.ugcvideodetail.fragment.w1
            @Override // java.lang.Runnable
            public final void run() {
                UGCVideoDialogPlayListTabFragment.H0(objectRef);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void G0(Ref.ObjectRef objectRef) {
        ((UGCVideoDialogPlayListFragment) objectRef.element).s0();
        ((UGCVideoDialogPlayListFragment) objectRef.element).K0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void H0(Ref.ObjectRef objectRef) {
        ((UGCVideoDialogPlayListFragment) objectRef.element).K0();
    }

    /* JADX WARN: Code duplicated, block: B:86:0x019a A[PHI: r0
  0x019a: PHI (r0v9 int) = (r0v5 int), (r0v16 int) binds: [B:114:0x0215, B:85:0x0198] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:87:0x019d  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v61, types: [T, com.transsion.ugcvideodetail.fragment.UGCVideoDialogPlayListFragment] */
    /* JADX WARN: Type inference failed for: r3v9, types: [T, androidx.fragment.app.Fragment] */
    private final void I0(int totalCount) {
        UGCVideo uGCVideo;
        int i11;
        int iS;
        Object next;
        Object next2;
        DownloadBean downloadBean;
        RecyclerView recyclerView;
        View view;
        RecyclerView recyclerView2;
        if (totalCount <= 0) {
            return;
        }
        if (totalCount <= 50) {
            qv.k kVar = (qv.k) getMViewBinding();
            if (kVar != null && (recyclerView2 = kVar.f73793e) != null) {
                jg.c.g(recyclerView2);
            }
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            ?? K0 = getChildFragmentManager().k0("PlayListTabFragment_0");
            objectRef.element = K0;
            if (K0 == 0) {
                objectRef.element = UGCVideoDialogPlayListFragment.INSTANCE.a(0, 1, totalCount, this.videoPlayFrom);
            }
            if (((Fragment) objectRef.element).isAdded()) {
                getChildFragmentManager().p().y((Fragment) objectRef.element).l();
            } else {
                getChildFragmentManager().p().c(R$id.fragmentContainer, (Fragment) objectRef.element, "PlayListTabFragment_0").l();
            }
            if (this.hasScrolledToCurrentVideo) {
                return;
            }
            if (this.videoPlayFrom == UGCVideoPlayFrom.ON_LINE_VIDEO && (objectRef.element instanceof UGCVideoDialogPlayListFragment)) {
                View view2 = getView();
                if (view2 != null) {
                    view2.post(new Runnable() { // from class: com.transsion.ugcvideodetail.fragment.t1
                        @Override // java.lang.Runnable
                        public final void run() {
                            UGCVideoDialogPlayListTabFragment.J0(objectRef);
                        }
                    });
                }
            } else if ((objectRef.element instanceof UGCVideoDialogPlayListFragment) && (view = getView()) != null) {
                view.post(new Runnable() { // from class: com.transsion.ugcvideodetail.fragment.u1
                    @Override // java.lang.Runnable
                    public final void run() {
                        UGCVideoDialogPlayListTabFragment.K0(objectRef);
                    }
                });
            }
            this.hasScrolledToCurrentVideo = true;
            return;
        }
        qv.k kVar2 = (qv.k) getMViewBinding();
        if (kVar2 != null && (recyclerView = kVar2.f73793e) != null) {
            jg.c.k(recyclerView);
        }
        IntRange intRangeT = RangesKt.t(0, (totalCount + 49) / 50);
        ArrayList arrayList = new ArrayList(CollectionsKt.v(intRangeT, 10));
        Iterator<Integer> it = intRangeT.iterator();
        while (it.hasNext()) {
            int iA = ((IntIterator) it).a();
            int i12 = (iA * 50) + 1;
            int iMin = Math.min((iA + 1) * 50, totalCount);
            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
            String str = String.format(Locale.US, "%d-%d", Arrays.copyOf(new Object[]{Integer.valueOf(i12), Integer.valueOf(iMin)}, 2));
            Intrinsics.g(str, "format(...)");
            arrayList.add(str);
        }
        com.transsion.ugcvideodetail.adapter.h hVar = this.tabAdapter;
        if (hVar != null) {
            hVar.n1(CollectionsKt.U0(arrayList));
        }
        if (this.isTabsInitialized) {
            int size = arrayList.size();
            int i13 = this.selectedTabIndex;
            if (i13 >= 0 && i13 < size) {
                com.transsion.ugcvideodetail.adapter.h hVar2 = this.tabAdapter;
                if (hVar2 != null) {
                    hVar2.D1(i13);
                    return;
                }
                return;
            }
        }
        int i14 = b.f56194a[this.videoPlayFrom.ordinal()];
        if (i14 == 1) {
            UGCVideo uGCVideo2 = (UGCVideo) y0().G().f();
            String ugcVideoId = uGCVideo2 != null ? uGCVideo2.getUgcVideoId() : null;
            List list = (List) y0().C().f();
            if (list != null) {
                Iterator it2 = list.iterator();
                do {
                    if (!it2.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it2.next();
                } while (!Intrinsics.c(((UGCVideo) next).getUgcVideoId(), ugcVideoId));
                uGCVideo = (UGCVideo) next;
            } else {
                uGCVideo = null;
            }
            if ((uGCVideo != null ? Integer.valueOf(uGCVideo.getPlayListPosition()) : null) != null) {
                iS = y0().S(uGCVideo.getPlayListPosition());
            } else {
                int size2 = arrayList.size();
                i11 = this.selectedTabIndex;
                if (i11 >= 0 && i11 < size2) {
                    iS = i11;
                } else {
                    iS = 0;
                }
            }
        } else {
            if (i14 != 2) {
                throw new NoWhenBranchMatchedException();
            }
            DownloadBean downloadBean2 = (DownloadBean) w0().i().f();
            String ugcVideoId2 = downloadBean2 != null ? downloadBean2.getUgcVideoId() : null;
            Iterator it3 = this.localPlayList.iterator();
            do {
                if (!it3.hasNext()) {
                    next2 = null;
                    break;
                } else {
                    next2 = it3.next();
                    downloadBean = (DownloadBean) next2;
                }
            } while (!(downloadBean != null ? Intrinsics.c(downloadBean.getUgcVideoId(), ugcVideoId2) : false));
            DownloadBean downloadBean3 = next2 instanceof DownloadBean ? (DownloadBean) next2 : null;
            if ((downloadBean3 != null ? downloadBean3.getUgcVideoPosition() : null) != null) {
                Integer ugcVideoPosition = downloadBean3.getUgcVideoPosition();
                Intrinsics.e(ugcVideoPosition);
                iS = (ugcVideoPosition.intValue() - 1) / 50;
            } else {
                int size3 = arrayList.size();
                i11 = this.selectedTabIndex;
                if (i11 >= 0 && i11 < size3) {
                    iS = i11;
                } else {
                    iS = 0;
                }
            }
        }
        int iM = RangesKt.m(iS, 0, arrayList.size() - 1);
        this.selectedTabIndex = iM;
        com.transsion.ugcvideodetail.adapter.h hVar3 = this.tabAdapter;
        if (hVar3 != null) {
            hVar3.D1(iM);
        }
        this.isTabsInitialized = true;
        F0(this.selectedTabIndex);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void J0(Ref.ObjectRef objectRef) {
        ((UGCVideoDialogPlayListFragment) objectRef.element).s0();
        ((UGCVideoDialogPlayListFragment) objectRef.element).K0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void K0(Ref.ObjectRef objectRef) {
        ((UGCVideoDialogPlayListFragment) objectRef.element).K0();
    }

    private final UGCLocalVideoDetailViewModel w0() {
        return (UGCLocalVideoDetailViewModel) this.localViewModel.getValue();
    }

    private final UGCVideoDetailViewModel y0() {
        return (UGCVideoDetailViewModel) this.viewModel.getValue();
    }

    private final void z0() {
        List<Fragment> listY0 = getChildFragmentManager().y0();
        Intrinsics.g(listY0, "getFragments(...)");
        for (Fragment fragment : listY0) {
            if (fragment instanceof UGCVideoDialogPlayListFragment) {
                getChildFragmentManager().p().p(fragment).l();
            }
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        AppCompatImageView appCompatImageView;
        qv.k kVar = (qv.k) getMViewBinding();
        if (kVar == null || (appCompatImageView = kVar.f73792d) == null) {
            return;
        }
        appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ugcvideodetail.fragment.p1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UGCVideoDialogPlayListTabFragment.A0(this.f56253a, view);
            }
        });
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        B0();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        int i11 = b.f56194a[this.videoPlayFrom.ordinal()];
        if (i11 == 1) {
            y0().N().j(this, new d(new Function1() { // from class: com.transsion.ugcvideodetail.fragment.r1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return UGCVideoDialogPlayListTabFragment.D0(this.f56260a, (Integer) obj);
                }
            }));
        } else {
            if (i11 != 2) {
                throw new NoWhenBranchMatchedException();
            }
            w0().k().j(this, new d(new Function1() { // from class: com.transsion.ugcvideodetail.fragment.s1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return UGCVideoDialogPlayListTabFragment.E0(this.f56263a, (List) obj);
                }
            }));
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void receiveArguments() {
        super.receiveArguments();
        Bundle arguments = getArguments();
        int i11 = arguments != null ? arguments.getInt("VIDEO_FROM") : UGCVideoPlayFrom.ON_LINE_VIDEO.getValue();
        UGCVideoPlayFrom uGCVideoPlayFrom = UGCVideoPlayFrom.ON_LINE_VIDEO;
        if (i11 != uGCVideoPlayFrom.getValue()) {
            uGCVideoPlayFrom = UGCVideoPlayFrom.LOCAL_VIDEO;
        }
        this.videoPlayFrom = uGCVideoPlayFrom;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: x0, reason: merged with bridge method [inline-methods] */
    public qv.k getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        qv.k kVarC = qv.k.c(inflater);
        Intrinsics.g(kVarC, "inflate(...)");
        return kVarC;
    }
}
