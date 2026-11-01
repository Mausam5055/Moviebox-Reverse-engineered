package com.transsion.postdetail.ui.fragment;

import android.os.Bundle;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.moviedetailapi.bean.Group;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.PostSubjectBean;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.RoomTabItem;
import com.transsion.postdetail.ui.adapter.PostAdapterFrom;
import com.transsion.postdetail.viewmodel.RoomPostViewModel;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0016\u0018\u0000 :2\u00020\u0001:\u0001;B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000e\u0010\u0003J\u0017\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0010\u0010\fJ\u000f\u0010\u0011\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0011\u0010\u0003J\u000f\u0010\u0012\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0012\u0010\u0003J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0018\u001a\u00020\u00062\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001e\u0010\bJ\u000f\u0010\u001f\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001f\u0010\u0003J\u001f\u0010\"\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u001aH\u0016¢\u0006\u0004\b$\u0010\u001cJ\u000f\u0010%\u001a\u00020\u001aH\u0016¢\u0006\u0004\b%\u0010\u001cJ\u000f\u0010&\u001a\u00020\u0004H\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u0004H\u0016¢\u0006\u0004\b(\u0010'J\u000f\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b*\u0010+J\u000f\u0010,\u001a\u00020\u0004H\u0016¢\u0006\u0004\b,\u0010'R\u001b\u00102\u001a\u00020-8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101R\u0016\u00103\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0016\u00105\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00104R\u0018\u00106\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0018\u00108\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00107R\u0018\u00109\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u00107¨\u0006<"}, d2 = {"Lcom/transsion/postdetail/ui/fragment/RoomPostStaggeredFragment;", "Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;", "<init>", "()V", "", "isSaveInstance", "", "trySaveDataCache", "(Z)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "initViewData", "initViewModel", "outState", "onSaveInstanceState", "onDestroyView", "lazyLoadWithoutNet", "Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;", "postAdapterFrom", "()Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", WebConstants.FIELD_ITEM, "onItemHeaderClick", "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V", "", "onItemHeaderModuleName", "()Ljava/lang/String;", "hidden", "onHiddenChanged", "onResume", "isFirstLoad", "isRefresh", "loadData", "(ZZ)V", "pageName", "subpageName", "isSwipeRefreshEnable", "()Z", "isNeedInsertPublishPost", "", "tabIndex", "()I", "isStaggeredPost", "Laq/g;", "trendingImageRoomsViewModel$delegate", "Lkotlin/Lazy;", "getTrendingImageRoomsViewModel", "()Laq/g;", "trendingImageRoomsViewModel", "mTabIndex", "I", "curExposurePosition", "pageFrom", "Ljava/lang/String;", "insertPostId", "insertPostOps", "Companion", "a", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public class RoomPostStaggeredFragment extends RoomPostBaseFragment {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String SUBPAGE_NAME = "room_home_discover";
    private static final String TAB_INDEX = "index";
    private static final String TAB_ITEM = "tab";
    private int curExposurePosition;
    private String insertPostId;
    private String insertPostOps;
    private int mTabIndex;
    private String pageFrom;

    /* JADX INFO: renamed from: trendingImageRoomsViewModel$delegate, reason: from kotlin metadata */
    private final Lazy trendingImageRoomsViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(aq.g.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.postdetail.ui.fragment.RoomPostStaggeredFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.postdetail.ui.fragment.RoomPostStaggeredFragment$special$$inlined$activityViewModels$default$2
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

    /* JADX INFO: renamed from: com.transsion.postdetail.ui.fragment.RoomPostStaggeredFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final RoomPostStaggeredFragment a(String str, RoomTabItem item, int i11) {
            Intrinsics.h(item, "item");
            RoomPostStaggeredFragment roomPostStaggeredFragment = new RoomPostStaggeredFragment();
            roomPostStaggeredFragment.setArguments(androidx.core.os.d.b(TuplesKt.a(RoomPostStaggeredFragment.TAB_ITEM, item), TuplesKt.a(RoomPostStaggeredFragment.TAB_INDEX, Integer.valueOf(i11)), TuplesKt.a("parent_type", str)));
            return roomPostStaggeredFragment;
        }
    }

    public static final class b implements ak.q {
        b() {
        }

        @Override // ak.q
        public void a(int i11) {
            if (RoomPostStaggeredFragment.this.curExposurePosition < i11) {
                RoomPostStaggeredFragment.this.curExposurePosition = i11;
            }
        }
    }

    static final class c implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f49613a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f49613a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f49613a;
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
            this.f49613a.invoke(obj);
        }
    }

    private final aq.g getTrendingImageRoomsViewModel() {
        return (aq.g) this.trendingImageRoomsViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initViewModel$lambda$1(RoomPostStaggeredFragment roomPostStaggeredFragment, PostSubjectBean postSubjectBean) {
        String str;
        List<PostSubjectItem> items;
        PostSubjectItem postSubjectItem;
        String ops;
        if (postSubjectBean != null && postSubjectBean.getIsRefresh() && (str = roomPostStaggeredFragment.insertPostOps) != null && str.length() != 0 && (items = postSubjectBean.getItems()) != null && (postSubjectItem = (PostSubjectItem) CollectionsKt.k0(items)) != null && Intrinsics.c(postSubjectItem.getPostId(), roomPostStaggeredFragment.insertPostId) && ((ops = postSubjectItem.getOps()) == null || ops.length() == 0)) {
            postSubjectItem.setOps(roomPostStaggeredFragment.insertPostOps);
        }
        roomPostStaggeredFragment.updateData(postSubjectBean);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit initViewModel$lambda$3(RoomPostStaggeredFragment roomPostStaggeredFragment, Pair pair) {
        RecyclerView recyclerView;
        hj.b logViewConfig;
        HashMap mapG;
        String str = pair != null ? (String) pair.getFirst() : null;
        if (str == null || str.length() == 0) {
            return Unit.f67061a;
        }
        aq.h hVar = aq.h.f16093a;
        String strG = hVar.g();
        if (strG != null && strG.length() != 0) {
            roomPostStaggeredFragment.pageFrom = hVar.g();
            hVar.r(null);
        }
        if (roomPostStaggeredFragment.pageFrom != null && (logViewConfig = roomPostStaggeredFragment.getLogViewConfig()) != null && (mapG = logViewConfig.g()) != null) {
        }
        roomPostStaggeredFragment.insertPostOps = (String) pair.getSecond();
        roomPostStaggeredFragment.insertPostId = str;
        RoomPostBaseFragment.loadData$default(roomPostStaggeredFragment, false, true, 1, null);
        so.s sVar = (so.s) roomPostStaggeredFragment.getMViewBinding();
        if (sVar != null && (recyclerView = sVar.f75704b) != null) {
            recyclerView.scrollToPosition(0);
        }
        roomPostStaggeredFragment.insertPostId = null;
        return Unit.f67061a;
    }

    private final void trySaveDataCache(boolean isSaveInstance) {
        String tabId;
        com.transsion.postdetail.ui.adapter.i mAdapter;
        List<Object> data;
        List<Object> data2;
        List<Object> listSubList;
        String content;
        Group group;
        List<Object> data3;
        List<Object> data4;
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = getTAG();
        RoomTabItem mTopTab = getMTopTab();
        String tabId2 = mTopTab != null ? mTopTab.getTabId() : null;
        com.transsion.postdetail.ui.adapter.i mAdapter2 = getMAdapter();
        Integer numValueOf = (mAdapter2 == null || (data4 = mAdapter2.getData()) == null) ? null : Integer.valueOf(data4.size());
        lg.a.C0828a.f(c0828a, tag, "trySaveDataCache," + isSaveInstance + " tabId:" + tabId2 + ", size:" + numValueOf + ", curExposurePosition:" + this.curExposurePosition, false, 4, null);
        RoomTabItem mTopTab2 = getMTopTab();
        if (mTopTab2 == null || (tabId = mTopTab2.getTabId()) == null || (mAdapter = getMAdapter()) == null || (data = mAdapter.getData()) == null) {
            return;
        }
        int size = data.size();
        int i11 = this.curExposurePosition;
        int i12 = size - i11 < 9 ? size - i11 : 9;
        if (i12 > 0 && size > i12) {
            String tag2 = getTAG();
            int i13 = size - i12;
            com.transsion.postdetail.ui.adapter.i mAdapter3 = getMAdapter();
            lg.a.C0828a.f(c0828a, tag2, "trySaveDataCache, " + i13 + "， " + i12 + ", size:" + ((mAdapter3 == null || (data3 = mAdapter3.getData()) == null) ? null : Integer.valueOf(data3.size())), false, 4, null);
            com.transsion.postdetail.ui.adapter.i mAdapter4 = getMAdapter();
            if (mAdapter4 == null || (data2 = mAdapter4.getData()) == null || (listSubList = data2.subList(i13, size)) == null) {
                return;
            }
            String tag3 = getTAG();
            int size2 = listSubList.size();
            PostSubjectItem postSubjectItem = (PostSubjectItem) CollectionsKt.k0(listSubList);
            String name = (postSubjectItem == null || (group = postSubjectItem.getGroup()) == null) ? null : group.getName();
            PostSubjectItem postSubjectItem2 = (PostSubjectItem) CollectionsKt.k0(listSubList);
            if (postSubjectItem2 != null) {
                String title = postSubjectItem2.getTitle();
                content = (title == null || title.length() == 0) ? postSubjectItem2.getContent() : postSubjectItem2.getTitle();
            } else {
                content = null;
            }
            lg.a.C0828a.f(c0828a, tag3, "trySaveDataCache, " + size2 + "，name:" + name + "，content:" + content, false, 4, null);
            String strJ = com.blankj.utilcode.util.o.j(new PostSubjectBean(listSubList, new Pager(Boolean.TRUE, "1", "", 0, 0), null, null));
            com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
            int i14 = bVar.b().getInt("post_staggered_page_cache_code", 0);
            int iHashCode = strJ.hashCode();
            if (i14 == iHashCode) {
                lg.a.C0828a.f(c0828a, getTAG(), "trySaveDataCache, HashCode same:" + iHashCode, false, 4, null);
                return;
            }
            lg.a.C0828a.f(c0828a, getTAG(), "SaveDataCache, oldCode:" + i14 + "，newCode:" + iHashCode, false, 4, null);
            bVar.b().putInt("post_staggered_page_cache_code", iHashCode);
            bVar.b().putString("post_staggered_page_cache_" + tabId, strJ);
        }
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        super.initViewData();
        setOnNumNotExposureListener(new b());
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        androidx.p009lifecycle.b0 b0VarT;
        RoomPostViewModel mViewModel = getMViewModel();
        if (mViewModel != null && (b0VarT = mViewModel.T()) != null) {
            b0VarT.j(this, new c(new Function1() { // from class: com.transsion.postdetail.ui.fragment.d5
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return RoomPostStaggeredFragment.initViewModel$lambda$1(this.f49671a, (PostSubjectBean) obj);
                }
            }));
        }
        getTrendingImageRoomsViewModel().b().j(this, new c(new Function1() { // from class: com.transsion.postdetail.ui.fragment.e5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RoomPostStaggeredFragment.initViewModel$lambda$3(this.f49682a, (Pair) obj);
            }
        }));
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    public boolean isNeedInsertPublishPost() {
        return false;
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    public boolean isStaggeredPost() {
        return true;
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    public boolean isSwipeRefreshEnable() {
        return false;
    }

    @Override // com.transsion.baseui.fragment.LazyFragment
    public void lazyLoadWithoutNet() {
        RoomPostViewModel mViewModel;
        showLoadingView();
        RoomTabItem mTopTab = getMTopTab();
        if (mTopTab == null || (mViewModel = getMViewModel()) == null) {
            return;
        }
        mViewModel.j0(mTopTab.getTabId());
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    public void loadData(boolean isFirstLoad, boolean isRefresh) {
        RoomPostViewModel mViewModel;
        lg.a.C0828a.f(lg.a.f68839a, getTAG(), "loadData isRefresh:" + isRefresh, false, 4, null);
        RoomTabItem mTopTab = getMTopTab();
        if (mTopTab == null || (mViewModel = getMViewModel()) == null) {
            return;
        }
        RoomPostViewModel.V(mViewModel, isFirstLoad, isRefresh, mTopTab.getTabId(), getMPage(), this.insertPostId, 0, 32, null);
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment, com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        Bundle arguments = getArguments();
        Serializable serializable = arguments != null ? arguments.getSerializable(TAB_ITEM) : null;
        setMTopTab(serializable instanceof RoomTabItem ? (RoomTabItem) serializable : null);
        Bundle arguments2 = getArguments();
        this.mTabIndex = arguments2 != null ? arguments2.getInt(TAB_INDEX) : 0;
        Bundle arguments3 = getArguments();
        setMParentTypeName(arguments3 != null ? arguments3.getString("parent_type") : null);
        super.onCreate(savedInstanceState);
    }

    @Override // com.transsion.baseui.fragment.LazyFragment, com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        trySaveDataCache(false);
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment, com.transsion.baseui.fragment.LazyFragment, androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        aq.h hVar;
        String strC;
        super.onHiddenChanged(hidden);
        if (hidden || (strC = (hVar = aq.h.f16093a).c()) == null || strC.length() == 0) {
            return;
        }
        androidx.p009lifecycle.b0 b0VarB = getTrendingImageRoomsViewModel().b();
        String strC2 = hVar.c();
        Intrinsics.e(strC2);
        b0VarB.q(new Pair(strC2, hVar.e()));
        String strG = hVar.g();
        if (strG != null && strG.length() != 0) {
            this.pageFrom = hVar.g();
            hVar.r(null);
        }
        hVar.n(null);
        hVar.p(null);
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    public void onItemHeaderClick(PostSubjectItem item) {
        openUserCenter(item);
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    public String onItemHeaderModuleName() {
        return "group";
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment, com.transsion.baseui.fragment.LazyFragment, com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        aq.h hVar = aq.h.f16093a;
        String strC = hVar.c();
        if (strC == null || strC.length() == 0) {
            return;
        }
        androidx.p009lifecycle.b0 b0VarB = getTrendingImageRoomsViewModel().b();
        String strC2 = hVar.c();
        Intrinsics.e(strC2);
        b0VarB.q(new Pair(strC2, hVar.e()));
        String strG = hVar.g();
        if (strG != null && strG.length() != 0) {
            this.pageFrom = hVar.g();
            hVar.r(null);
        }
        hVar.n(null);
        hVar.p(null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.h(outState, "outState");
        super.onSaveInstanceState(outState);
        trySaveDataCache(true);
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    public String pageName() {
        return "room_home";
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    public PostAdapterFrom postAdapterFrom() {
        return PostAdapterFrom.STAGGERED;
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    public String subpageName() {
        return SUBPAGE_NAME;
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    /* JADX INFO: renamed from: tabIndex, reason: from getter */
    public int getMTabIndex() {
        return this.mTabIndex;
    }
}
