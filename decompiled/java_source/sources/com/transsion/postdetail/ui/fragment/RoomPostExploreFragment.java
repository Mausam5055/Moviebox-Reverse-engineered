package com.transsion.postdetail.ui.fragment;

import android.content.Context;
import android.os.Bundle;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.widget.R$string;
import com.transsion.moviedetailapi.bean.Group;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.PostSubjectBean;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.Stat;
import com.transsion.moviedetailapi.bean.User;
import com.transsion.postdetail.bean.RoomCacheImage;
import com.transsion.postdetail.bean.RoomImageType;
import com.transsion.postdetail.ui.adapter.PostAdapterFrom;
import com.transsion.postdetail.viewmodel.RoomPostViewModel;
import com.transsion.room.api.RoomHomeCacheEvent;
import com.transsion.web.api.WebConstants;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 W2\u00020\u0001:\u0001XB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J%\u0010\u000b\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\r\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0014\u0010\u0003J\u0017\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0019\u0010\u001f\u001a\u00020\u00042\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010\"\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\"\u0010\u0018J\u000f\u0010#\u001a\u00020\u0004H\u0016¢\u0006\u0004\b#\u0010\u0003J\u000f\u0010$\u001a\u00020\u0004H\u0016¢\u0006\u0004\b$\u0010\u0003J\u000f\u0010%\u001a\u00020\u0004H\u0016¢\u0006\u0004\b%\u0010\u0003J\u000f\u0010&\u001a\u00020\u0004H\u0016¢\u0006\u0004\b&\u0010\u0003J\u000f\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\b(\u0010)J\u0019\u0010*\u001a\u00020\u00042\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b*\u0010+J\u000f\u0010-\u001a\u00020,H\u0016¢\u0006\u0004\b-\u0010.J\u001f\u00101\u001a\u00020\u00042\u0006\u0010/\u001a\u00020\u00152\u0006\u00100\u001a\u00020\u0015H\u0016¢\u0006\u0004\b1\u00102J\u0019\u00103\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b3\u00104J\u0015\u00105\u001a\u00020\u00042\u0006\u00100\u001a\u00020\u0015¢\u0006\u0004\b5\u0010\u0018J\u0015\u00106\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b6\u0010+J\r\u00107\u001a\u00020\u0004¢\u0006\u0004\b7\u0010\u0003J\r\u00108\u001a\u00020\u0004¢\u0006\u0004\b8\u0010\u0003J\r\u00109\u001a\u00020\u0015¢\u0006\u0004\b9\u0010:J\u000f\u0010;\u001a\u00020\u0004H\u0016¢\u0006\u0004\b;\u0010\u0003J\u000f\u0010<\u001a\u00020\u0004H\u0016¢\u0006\u0004\b<\u0010\u0003J\u0017\u0010>\u001a\u00020\u00042\u0006\u0010=\u001a\u00020\u001dH\u0016¢\u0006\u0004\b>\u0010 J\u000f\u0010?\u001a\u00020,H\u0016¢\u0006\u0004\b?\u0010.J\u000f\u0010@\u001a\u00020,H\u0016¢\u0006\u0004\b@\u0010.J\u000f\u0010A\u001a\u00020\u0015H\u0016¢\u0006\u0004\bA\u0010:J\u000f\u0010B\u001a\u00020\u0015H\u0016¢\u0006\u0004\bB\u0010:J\u000f\u0010C\u001a\u00020\u0010H\u0016¢\u0006\u0004\bC\u0010\u0012J\u000f\u0010D\u001a\u00020\u0015H\u0016¢\u0006\u0004\bD\u0010:R\u001b\u0010J\u001a\u00020E8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bF\u0010G\u001a\u0004\bH\u0010IR\u0018\u0010K\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u0018\u0010M\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010LR\u0018\u0010N\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010OR\u0016\u0010P\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010QR\u0018\u0010R\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010LR\u0018\u0010T\u001a\u0004\u0018\u00010S8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010UR\u0014\u0010V\u001a\u00020\u00158BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bV\u0010:¨\u0006Y"}, d2 = {"Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment;", "Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;", "<init>", "()V", "", "initRoomCacheData", "", "Lcom/transsion/postdetail/bean/RoomCacheImage;", "imageList", "Lcom/transsion/moviedetailapi/bean/PostSubjectBean;", "data", "preloadImage", "(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)V", "bean", "getPreloadImages", "(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)Ljava/util/List;", "", "getCacheFirstIndex", "()I", "getLastVisiblePosition", "saveExposedDataCache", "", "isSaveInstance", "trySaveDataCache", "(Z)V", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", WebConstants.FIELD_ITEM, "isLowInteractiveItem", "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)Z", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "hidden", "onHiddenChanged", "onResume", "initViewModel", "lazyLoadData", "lazyLoadWithoutNet", "Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;", "postAdapterFrom", "()Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;", "onItemHeaderClick", "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V", "", "onItemHeaderModuleName", "()Ljava/lang/String;", "isFirstLoad", "isRefresh", "loadData", "(ZZ)V", "updateData", "(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)V", "loadMoreCacheData", "deleteCacheRoom", "insertRoomCacheData", "updateCacheData", "hasInsertRoomCache", "()Z", "onDestroyView", "onStop", "outState", "onSaveInstanceState", "pageName", "subpageName", "isSwipeRefreshEnable", "isNeedInsertPublishPost", "tabIndex", "isStaggeredPost", "Laq/i;", "trendingRoomsViewModel$delegate", "Lkotlin/Lazy;", "getTrendingRoomsViewModel", "()Laq/i;", "trendingRoomsViewModel", "insertPostId", "Ljava/lang/String;", "insertPostOps", "roomCacheData", "Lcom/transsion/moviedetailapi/bean/PostSubjectBean;", "curExposurePosition", "I", "pageFrom", "Lkotlinx/coroutines/t1;", "saveExposedCacheJob", "Lkotlinx/coroutines/t1;", "isNewCacheStrategy", "Companion", "a", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class RoomPostExploreFragment extends RoomPostBaseFragment {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String SUBPAGE_NAME = "room_home_explore";
    private int curExposurePosition;
    private String insertPostId;
    private String insertPostOps;
    private String pageFrom;
    private PostSubjectBean roomCacheData;
    private kotlinx.coroutines.t1 saveExposedCacheJob;

    /* JADX INFO: renamed from: trendingRoomsViewModel$delegate, reason: from kotlin metadata */
    private final Lazy trendingRoomsViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(aq.i.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.postdetail.ui.fragment.RoomPostExploreFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.postdetail.ui.fragment.RoomPostExploreFragment$special$$inlined$activityViewModels$default$2
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

    /* JADX INFO: renamed from: com.transsion.postdetail.ui.fragment.RoomPostExploreFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final RoomPostExploreFragment a(String str, String str2, String str3) {
            RoomPostExploreFragment roomPostExploreFragment = new RoomPostExploreFragment();
            roomPostExploreFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("post_id", str2), TuplesKt.a("ops", str3), TuplesKt.a("parent_type", str)));
            return roomPostExploreFragment;
        }
    }

    public static final class b implements ak.q {
        b() {
        }

        @Override // ak.q
        public void a(int i11) {
            if (RoomPostExploreFragment.this.curExposurePosition < i11) {
                RoomPostExploreFragment.this.curExposurePosition = i11;
            }
        }
    }

    static final class c implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f49608a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f49608a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f49608a;
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
            this.f49608a.invoke(obj);
        }
    }

    /* JADX INFO: renamed from: com.transsion.postdetail.ui.fragment.RoomPostExploreFragment$saveExposedDataCache$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.postdetail.ui.fragment.RoomPostExploreFragment$saveExposedDataCache$1", f = "RoomPostExploreFragment.kt", l = {}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ List<PostSubjectItem> $data;
        final /* synthetic */ int $maxCount;
        int label;
        final /* synthetic */ RoomPostExploreFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(List<PostSubjectItem> list, RoomPostExploreFragment roomPostExploreFragment, int i11, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$data = list;
            this.this$0 = roomPostExploreFragment;
            this.$maxCount = i11;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$data, this.this$0, this.$maxCount, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            List listL0;
            int i11;
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            List<PostSubjectItem> list = this.$data;
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : list) {
                PostSubjectItem postSubjectItem = (PostSubjectItem) obj2;
                if (!postSubjectItem.getBuiltIn() && !postSubjectItem.isRoomCache()) {
                    arrayList.add(obj2);
                }
            }
            int i12 = 0;
            if (this.this$0.isNewCacheStrategy()) {
                int size = arrayList.size() - (arrayList.size() <= 8 ? arrayList.size() : 8);
                listL0 = size <= 0 ? CollectionsKt.l() : arrayList.subList(RangesKt.f(size - this.$maxCount, 0), size);
            } else {
                listL0 = CollectionsKt.L0(arrayList, this.$maxCount);
            }
            lg.a.C0828a c0828a = lg.a.f68839a;
            String tag = this.this$0.getTAG();
            int size2 = this.$data.size();
            int size3 = arrayList.size();
            int size4 = listL0.size();
            List<PostSubjectItem> list2 = this.$data;
            if ((list2 instanceof Collection) && list2.isEmpty()) {
                i11 = 0;
            } else {
                Iterator<T> it = list2.iterator();
                i11 = 0;
                while (it.hasNext()) {
                    if (((PostSubjectItem) it.next()).getBuiltIn() && (i11 = i11 + 1) < 0) {
                        CollectionsKt.t();
                    }
                }
            }
            List<PostSubjectItem> list3 = this.$data;
            if (!(list3 instanceof Collection) || !list3.isEmpty()) {
                Iterator<T> it2 = list3.iterator();
                while (it2.hasNext()) {
                    if (((PostSubjectItem) it2.next()).isRoomCache() && (i12 = i12 + 1) < 0) {
                        CollectionsKt.t();
                    }
                }
            }
            lg.a.C0828a.f(c0828a, tag, "saveExposedDataCache, 总条数:" + size2 + ", 过滤后:" + size3 + ", 实际保存:" + size4 + " (builtIn:" + i11 + ", isRoomCache:" + i12 + ")", false, 4, null);
            if (listL0.isEmpty()) {
                com.transsion.baselib.report.launch.b.f43370a.b().M("post_explore_exposed_cache");
                return Unit.f67061a;
            }
            com.transsion.baselib.report.launch.b.f43370a.b().putString("post_explore_exposed_cache", com.blankj.utilcode.util.o.j(new PostSubjectBean(CollectionsKt.U0(listL0), null, null, null)));
            return Unit.f67061a;
        }
    }

    private final int getCacheFirstIndex() {
        List<Object> data;
        com.transsion.postdetail.ui.adapter.i mAdapter = getMAdapter();
        if (mAdapter == null || (data = mAdapter.getData()) == null) {
            return -1;
        }
        Iterator<Object> it = data.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            if (((PostSubjectItem) it.next()).isRoomCacheListStart()) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final int getLastVisiblePosition() {
        RecyclerView recyclerView;
        so.s sVar = (so.s) getMViewBinding();
        RecyclerView.m layoutManager = (sVar == null || (recyclerView = sVar.f75704b) == null) ? null : recyclerView.getLayoutManager();
        LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
        if (linearLayoutManager == null) {
            return -1;
        }
        return linearLayoutManager.findLastVisibleItemPosition();
    }

    private final List<RoomCacheImage> getPreloadImages(PostSubjectBean bean) {
        List<Image> image;
        List<Image> image2;
        String avatar;
        String avatar2;
        ArrayList arrayList = new ArrayList();
        List<PostSubjectItem> items = bean.getItems();
        if (items != null) {
            for (PostSubjectItem postSubjectItem : items) {
                Group group = postSubjectItem.getGroup();
                if (group != null && (avatar2 = group.getAvatar()) != null) {
                    arrayList.add(new RoomCacheImage(avatar2, RoomImageType.ROOM_IMAGE.getValue(), 0));
                }
                User user = postSubjectItem.getUser();
                if (user != null && (avatar = user.getAvatar()) != null) {
                    arrayList.add(new RoomCacheImage(avatar, RoomImageType.AUTHOR_IMAGE.getValue(), 0));
                }
                Media media = postSubjectItem.getMedia();
                if (media != null && (image = media.getImage()) != null) {
                    for (Image image3 : image) {
                        Media media2 = postSubjectItem.getMedia();
                        if (media2 != null && (image2 = media2.getImage()) != null) {
                            if (image2.size() > 1) {
                                String url = image3.getUrl();
                                if (url != null) {
                                    arrayList.add(new RoomCacheImage(url, RoomImageType.POST_MORE.getValue(), image3.getWidth()));
                                }
                            } else {
                                String url2 = image3.getUrl();
                                if (url2 != null) {
                                    arrayList.add(new RoomCacheImage(url2, RoomImageType.POST_SINGLE.getValue(), image3.getWidth()));
                                }
                            }
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    private final aq.i getTrendingRoomsViewModel() {
        return (aq.i) this.trendingRoomsViewModel.getValue();
    }

    private final void initRoomCacheData() {
        String string = com.transsion.baselib.report.launch.b.f43370a.b().getString("room_cache_data", "");
        if (string == null || string.length() == 0) {
            return;
        }
        this.roomCacheData = (PostSubjectBean) com.blankj.utilcode.util.o.d(string, PostSubjectBean.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initViewModel$lambda$1(RoomPostExploreFragment roomPostExploreFragment, PostSubjectBean postSubjectBean) {
        String str;
        List<PostSubjectItem> items;
        PostSubjectItem postSubjectItem;
        String ops;
        if (postSubjectBean != null && postSubjectBean.getIsRefresh() && (str = roomPostExploreFragment.insertPostOps) != null && str.length() != 0 && (items = postSubjectBean.getItems()) != null && (postSubjectItem = (PostSubjectItem) CollectionsKt.k0(items)) != null && Intrinsics.c(postSubjectItem.getPostId(), roomPostExploreFragment.insertPostId) && ((ops = postSubjectItem.getOps()) == null || ops.length() == 0)) {
            postSubjectItem.setOps(roomPostExploreFragment.insertPostOps);
        }
        roomPostExploreFragment.updateData(postSubjectBean);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initViewModel$lambda$5(RoomPostExploreFragment roomPostExploreFragment, PostSubjectBean postSubjectBean) {
        String str;
        List<PostSubjectItem> items;
        PostSubjectItem postSubjectItem;
        String ops;
        if (postSubjectBean != null && postSubjectBean.getIsRefresh() && (str = roomPostExploreFragment.insertPostOps) != null && str.length() != 0 && (items = postSubjectBean.getItems()) != null && (postSubjectItem = (PostSubjectItem) CollectionsKt.k0(items)) != null && Intrinsics.c(postSubjectItem.getPostId(), roomPostExploreFragment.insertPostId) && ((ops = postSubjectItem.getOps()) == null || ops.length() == 0)) {
            postSubjectItem.setOps(roomPostExploreFragment.insertPostOps);
        }
        if (postSubjectBean == null) {
            return Unit.f67061a;
        }
        List<PostSubjectItem> items2 = postSubjectBean.getItems();
        Iterator<PostSubjectItem> it = items2 != null ? items2.iterator() : null;
        if (it != null) {
            while (it.hasNext()) {
                if (it.next().isVideo()) {
                    it.remove();
                }
            }
        }
        PostSubjectItem postSubjectItem2 = new PostSubjectItem(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, null, false, null, false, null, false, false, false, false, null, -1, 1, null);
        postSubjectItem2.setRoomCacheListStart(true);
        PostSubjectItem postSubjectItem3 = new PostSubjectItem(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, null, false, null, false, null, false, false, false, false, null, -1, 1, null);
        postSubjectItem3.setRoomCacheListEnd(true);
        List<PostSubjectItem> items3 = postSubjectBean.getItems();
        if (items3 != null) {
            items3.add(0, postSubjectItem2);
        }
        List<PostSubjectItem> items4 = postSubjectBean.getItems();
        if (items4 != null) {
            items4.add(postSubjectItem3);
        }
        List<PostSubjectItem> items5 = postSubjectBean.getItems();
        if (items5 != null) {
            Iterator<T> it2 = items5.iterator();
            while (it2.hasNext()) {
                ((PostSubjectItem) it2.next()).setRoomCache(true);
            }
        }
        if (roomPostExploreFragment.isNewCacheStrategy()) {
            roomPostExploreFragment.roomCacheData = postSubjectBean;
            kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(roomPostExploreFragment), kotlinx.coroutines.y0.b(), null, new RoomPostExploreFragment$initViewModel$2$4(postSubjectBean, roomPostExploreFragment.getViewLifecycleOwner().getLifecycle(), null), 2, null);
        }
        roomPostExploreFragment.preloadImage(roomPostExploreFragment.getPreloadImages(postSubjectBean), postSubjectBean);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit initViewModel$lambda$7(RoomPostExploreFragment roomPostExploreFragment, Pair pair) {
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
            roomPostExploreFragment.pageFrom = hVar.g();
            hVar.r(null);
        }
        if (roomPostExploreFragment.pageFrom != null && (logViewConfig = roomPostExploreFragment.getLogViewConfig()) != null && (mapG = logViewConfig.g()) != null) {
        }
        androidx.p010savedstate.e parentFragment = roomPostExploreFragment.getParentFragment();
        aq.d dVar = parentFragment instanceof aq.d ? (aq.d) parentFragment : null;
        if (dVar != null) {
            dVar.y(roomPostExploreFragment.pageFrom);
        }
        roomPostExploreFragment.insertPostOps = (String) pair.getSecond();
        roomPostExploreFragment.insertPostId = str;
        RoomPostBaseFragment.loadData$default(roomPostExploreFragment, false, true, 1, null);
        so.s sVar = (so.s) roomPostExploreFragment.getMViewBinding();
        if (sVar != null && (recyclerView = sVar.f75704b) != null) {
            recyclerView.scrollToPosition(0);
        }
        roomPostExploreFragment.insertPostId = null;
        return Unit.f67061a;
    }

    private final boolean isLowInteractiveItem(PostSubjectItem item) {
        Long shareCount;
        Long commentCount;
        Long likeCount;
        Stat stat = item.getStat();
        long jLongValue = 0;
        long jLongValue2 = (stat == null || (likeCount = stat.getLikeCount()) == null) ? 0L : likeCount.longValue();
        Stat stat2 = item.getStat();
        long jLongValue3 = jLongValue2 + ((stat2 == null || (commentCount = stat2.getCommentCount()) == null) ? 0L : commentCount.longValue());
        Stat stat3 = item.getStat();
        if (stat3 != null && (shareCount = stat3.getShareCount()) != null) {
            jLongValue = shareCount.longValue();
        }
        return jLongValue3 + jLongValue < 10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isNewCacheStrategy() {
        RoomPostViewModel mViewModel = getMViewModel();
        return mViewModel != null && mViewModel.X();
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0102  */
    /* JADX WARN: Code duplicated, block: B:55:0x0130 A[Catch: all -> 0x0047, TryCatch #0 {all -> 0x0047, blocks: (B:2:0x0000, B:3:0x000f, B:5:0x0015, B:7:0x0030, B:28:0x00ca, B:30:0x00d4, B:53:0x0126, B:55:0x0130, B:56:0x0178, B:58:0x0184, B:60:0x018a, B:62:0x0190, B:63:0x01d9, B:64:0x0200, B:32:0x00da, B:34:0x00e2, B:35:0x00e7, B:37:0x00ef, B:39:0x00f5, B:42:0x00fd, B:44:0x0104, B:46:0x010c, B:48:0x0112, B:51:0x011a, B:52:0x011f, B:11:0x004a, B:13:0x0052, B:14:0x0067, B:16:0x006f, B:18:0x007b, B:21:0x0083, B:23:0x008a, B:24:0x0095, B:26:0x009d, B:27:0x00b4, B:65:0x0238), top: B:69:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x0184 A[Catch: all -> 0x0047, TryCatch #0 {all -> 0x0047, blocks: (B:2:0x0000, B:3:0x000f, B:5:0x0015, B:7:0x0030, B:28:0x00ca, B:30:0x00d4, B:53:0x0126, B:55:0x0130, B:56:0x0178, B:58:0x0184, B:60:0x018a, B:62:0x0190, B:63:0x01d9, B:64:0x0200, B:32:0x00da, B:34:0x00e2, B:35:0x00e7, B:37:0x00ef, B:39:0x00f5, B:42:0x00fd, B:44:0x0104, B:46:0x010c, B:48:0x0112, B:51:0x011a, B:52:0x011f, B:11:0x004a, B:13:0x0052, B:14:0x0067, B:16:0x006f, B:18:0x007b, B:21:0x0083, B:23:0x008a, B:24:0x0095, B:26:0x009d, B:27:0x00b4, B:65:0x0238), top: B:69:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x018a A[Catch: all -> 0x0047, TryCatch #0 {all -> 0x0047, blocks: (B:2:0x0000, B:3:0x000f, B:5:0x0015, B:7:0x0030, B:28:0x00ca, B:30:0x00d4, B:53:0x0126, B:55:0x0130, B:56:0x0178, B:58:0x0184, B:60:0x018a, B:62:0x0190, B:63:0x01d9, B:64:0x0200, B:32:0x00da, B:34:0x00e2, B:35:0x00e7, B:37:0x00ef, B:39:0x00f5, B:42:0x00fd, B:44:0x0104, B:46:0x010c, B:48:0x0112, B:51:0x011a, B:52:0x011f, B:11:0x004a, B:13:0x0052, B:14:0x0067, B:16:0x006f, B:18:0x007b, B:21:0x0083, B:23:0x008a, B:24:0x0095, B:26:0x009d, B:27:0x00b4, B:65:0x0238), top: B:69:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x0190 A[Catch: all -> 0x0047, TryCatch #0 {all -> 0x0047, blocks: (B:2:0x0000, B:3:0x000f, B:5:0x0015, B:7:0x0030, B:28:0x00ca, B:30:0x00d4, B:53:0x0126, B:55:0x0130, B:56:0x0178, B:58:0x0184, B:60:0x018a, B:62:0x0190, B:63:0x01d9, B:64:0x0200, B:32:0x00da, B:34:0x00e2, B:35:0x00e7, B:37:0x00ef, B:39:0x00f5, B:42:0x00fd, B:44:0x0104, B:46:0x010c, B:48:0x0112, B:51:0x011a, B:52:0x011f, B:11:0x004a, B:13:0x0052, B:14:0x0067, B:16:0x006f, B:18:0x007b, B:21:0x0083, B:23:0x008a, B:24:0x0095, B:26:0x009d, B:27:0x00b4, B:65:0x0238), top: B:69:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x01d9 A[Catch: all -> 0x0047, TryCatch #0 {all -> 0x0047, blocks: (B:2:0x0000, B:3:0x000f, B:5:0x0015, B:7:0x0030, B:28:0x00ca, B:30:0x00d4, B:53:0x0126, B:55:0x0130, B:56:0x0178, B:58:0x0184, B:60:0x018a, B:62:0x0190, B:63:0x01d9, B:64:0x0200, B:32:0x00da, B:34:0x00e2, B:35:0x00e7, B:37:0x00ef, B:39:0x00f5, B:42:0x00fd, B:44:0x0104, B:46:0x010c, B:48:0x0112, B:51:0x011a, B:52:0x011f, B:11:0x004a, B:13:0x0052, B:14:0x0067, B:16:0x006f, B:18:0x007b, B:21:0x0083, B:23:0x008a, B:24:0x0095, B:26:0x009d, B:27:0x00b4, B:65:0x0238), top: B:69:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x0200 A[SYNTHETIC] */
    private final void preloadImage(final List<RoomCacheImage> imageList, final PostSubjectBean data) {
        String strE;
        int iC;
        int i11;
        Integer width;
        try {
            Result.Companion companion = Result.INSTANCE;
            final Ref.IntRef intRef = new Ref.IntRef();
            for (RoomCacheImage roomCacheImage : imageList) {
                int type = roomCacheImage.getType();
                RoomImageType roomImageType = RoomImageType.ROOM_IMAGE;
                if (type == roomImageType.getValue()) {
                    strE = ej.f.a.e(ej.f.f61882a, roomCacheImage.getUrl(), com.transsion.usercenter.setting.labelsfeedback.a.b(36), false, true, 4, null);
                } else if (type == RoomImageType.AUTHOR_IMAGE.getValue()) {
                    strE = ej.f.a.e(ej.f.f61882a, roomCacheImage.getUrl(), com.transsion.usercenter.setting.labelsfeedback.a.b(16), false, true, 4, null);
                } else if (type == RoomImageType.POST_SINGLE.getValue()) {
                    ej.f.a aVar = ej.f.f61882a;
                    String url = roomCacheImage.getUrl();
                    Integer width2 = roomCacheImage.getWidth();
                    strE = ej.f.a.e(aVar, url, (width2 != null ? width2.intValue() : 0) > 540 ? com.transsion.usercenter.setting.labelsfeedback.a.b(240) : 540, false, true, 4, null);
                } else {
                    strE = type == RoomImageType.POST_MORE.getValue() ? ej.f.a.e(ej.f.f61882a, roomCacheImage.getUrl(), com.transsion.usercenter.setting.labelsfeedback.a.b(180), false, true, 4, null) : ej.f.a.e(ej.f.f61882a, roomCacheImage.getUrl(), com.transsion.usercenter.setting.labelsfeedback.a.b(240), false, true, 4, null);
                }
                final String str = strE;
                int type2 = roomCacheImage.getType();
                if (type2 == roomImageType.getValue()) {
                    iC = com.transsion.usercenter.setting.labelsfeedback.a.b(36);
                } else if (type2 == RoomImageType.AUTHOR_IMAGE.getValue()) {
                    iC = com.transsion.usercenter.setting.labelsfeedback.a.b(16);
                } else {
                    if (type2 == RoomImageType.POST_SINGLE.getValue()) {
                        Integer width3 = roomCacheImage.getWidth();
                        if ((width3 != null ? width3.intValue() : 0) > 540) {
                            iC = com.transsion.usercenter.setting.labelsfeedback.a.b(240);
                        } else {
                            i11 = 540;
                        }
                    } else if (type2 == RoomImageType.POST_MORE.getValue()) {
                        Integer width4 = roomCacheImage.getWidth();
                        if ((width4 != null ? width4.intValue() : 0) > 540) {
                            iC = com.transsion.usercenter.setting.labelsfeedback.a.b(240);
                        } else {
                            i11 = 540;
                        }
                    } else {
                        iC = ej.f.f61882a.c();
                    }
                    if (roomCacheImage.getType() == roomImageType.getValue()) {
                        ej.f.a aVar2 = ej.f.f61882a;
                        ej.f.a.j(aVar2, ej.f.a.e(aVar2, roomCacheImage.getUrl(), 180, false, true, 4, null), roomCacheImage.getUrl(), 180, null, 8, null);
                        ej.f.a.j(aVar2, ej.f.a.e(aVar2, roomCacheImage.getUrl(), 120, false, true, 4, null), roomCacheImage.getUrl(), 120, null, 8, null);
                    }
                    if (roomCacheImage.getType() != RoomImageType.POST_SINGLE.getValue()) {
                        width = roomCacheImage.getWidth();
                        if ((width != null ? width.intValue() : 0) > 540) {
                            ej.f.a aVar3 = ej.f.f61882a;
                            ej.f.a.j(aVar3, ej.f.a.e(aVar3, roomCacheImage.getUrl(), 540, false, true, 4, null), roomCacheImage.getUrl(), 540, null, 8, null);
                            ej.f.a.j(aVar3, ej.f.a.e(aVar3, roomCacheImage.getUrl(), 360, false, true, 4, null), roomCacheImage.getUrl(), 360, null, 8, null);
                        } else {
                            ej.f.a aVar4 = ej.f.f61882a;
                            ej.f.a.j(aVar4, ej.f.a.e(aVar4, roomCacheImage.getUrl(), 720, false, true, 4, null), roomCacheImage.getUrl(), 720, null, 8, null);
                        }
                    }
                    lg.a.C0828a.f(lg.a.f68839a, "ImageHelper", "preload url=" + str, false, 4, null);
                    final long jCurrentTimeMillis = System.currentTimeMillis();
                    ej.f.f61882a.i(str, roomCacheImage.getUrl(), i11, new Function1() { // from class: com.transsion.postdetail.ui.fragment.p4
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return RoomPostExploreFragment.preloadImage$lambda$10$lambda$9$lambda$8(intRef, imageList, data, this, jCurrentTimeMillis, str, ((Boolean) obj).booleanValue());
                        }
                    });
                }
                i11 = iC;
                if (roomCacheImage.getType() == roomImageType.getValue()) {
                    ej.f.a aVar5 = ej.f.f61882a;
                    ej.f.a.j(aVar5, ej.f.a.e(aVar5, roomCacheImage.getUrl(), 180, false, true, 4, null), roomCacheImage.getUrl(), 180, null, 8, null);
                    ej.f.a.j(aVar5, ej.f.a.e(aVar5, roomCacheImage.getUrl(), 120, false, true, 4, null), roomCacheImage.getUrl(), 120, null, 8, null);
                }
                if (roomCacheImage.getType() != RoomImageType.POST_SINGLE.getValue()) {
                    width = roomCacheImage.getWidth();
                    if ((width != null ? width.intValue() : 0) > 540) {
                        ej.f.a aVar6 = ej.f.f61882a;
                        ej.f.a.j(aVar6, ej.f.a.e(aVar6, roomCacheImage.getUrl(), 540, false, true, 4, null), roomCacheImage.getUrl(), 540, null, 8, null);
                        ej.f.a.j(aVar6, ej.f.a.e(aVar6, roomCacheImage.getUrl(), 360, false, true, 4, null), roomCacheImage.getUrl(), 360, null, 8, null);
                    } else {
                        ej.f.a aVar7 = ej.f.f61882a;
                        ej.f.a.j(aVar7, ej.f.a.e(aVar7, roomCacheImage.getUrl(), 720, false, true, 4, null), roomCacheImage.getUrl(), 720, null, 8, null);
                    }
                }
                lg.a.C0828a.f(lg.a.f68839a, "ImageHelper", "preload url=" + str, false, 4, null);
                final long jCurrentTimeMillis2 = System.currentTimeMillis();
                ej.f.f61882a.i(str, roomCacheImage.getUrl(), i11, new Function1() { // from class: com.transsion.postdetail.ui.fragment.p4
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return RoomPostExploreFragment.preloadImage$lambda$10$lambda$9$lambda$8(intRef, imageList, data, this, jCurrentTimeMillis2, str, ((Boolean) obj).booleanValue());
                    }
                });
            }
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit preloadImage$lambda$10$lambda$9$lambda$8(Ref.IntRef intRef, List list, PostSubjectBean postSubjectBean, RoomPostExploreFragment roomPostExploreFragment, long j11, String str, boolean z10) {
        if (z10) {
            int i11 = intRef.element + 1;
            intRef.element = i11;
            if (i11 == list.size()) {
                lg.a.C0828a.f(lg.a.f68839a, "ImageHelper", "count  =" + intRef.element, false, 4, null);
                com.transsion.baselib.report.launch.b.f43370a.b().putString("room_cache_data", com.blankj.utilcode.util.o.j(postSubjectBean));
                RoomHomeCacheEvent roomHomeCacheEvent = new RoomHomeCacheEvent(true);
                FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
                String name = RoomHomeCacheEvent.class.getName();
                Intrinsics.g(name, "getName(...)");
                flowEventBus.postEvent(name, roomHomeCacheEvent, 0L);
                roomPostExploreFragment.roomCacheData = postSubjectBean;
                roomPostExploreFragment.updateRoomCacheData(roomPostExploreFragment.getLastVisiblePosition(), postSubjectBean);
            }
            long jCurrentTimeMillis = System.currentTimeMillis() - j11;
            lg.a.C0828a.f(lg.a.f68839a, "ImageHelper", "预加载成功  url=" + str + " duration=" + jCurrentTimeMillis, false, 4, null);
        } else {
            intRef.element++;
            lg.a.C0828a.f(lg.a.f68839a, "ImageHelper", str + " 预加载失败", false, 4, null);
        }
        return Unit.f67061a;
    }

    private final void saveExposedDataCache() {
        List<Object> data;
        List listR0;
        com.transsion.postdetail.ui.adapter.i mAdapter = getMAdapter();
        if (mAdapter == null || (data = mAdapter.getData()) == null || (listR0 = CollectionsKt.R0(data)) == null) {
            return;
        }
        RoomPostViewModel mViewModel = getMViewModel();
        int iF = mViewModel != null ? mViewModel.F() : 24;
        kotlinx.coroutines.t1 t1Var = this.saveExposedCacheJob;
        if (t1Var != null) {
            kotlinx.coroutines.t1.a.b(t1Var, null, 1, null);
        }
        this.saveExposedCacheJob = kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), kotlinx.coroutines.y0.b(), null, new AnonymousClass1(listR0, this, iF, null), 2, null);
    }

    private final void trySaveDataCache(boolean isSaveInstance) {
        List<Object> data;
        int i11;
        List<Object> data2;
        List<Object> listSubList;
        String content;
        Group group;
        List<Object> data3;
        List<Object> data4;
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = getTAG();
        com.transsion.postdetail.ui.adapter.i mAdapter = getMAdapter();
        Integer numValueOf = (mAdapter == null || (data4 = mAdapter.getData()) == null) ? null : Integer.valueOf(data4.size());
        lg.a.C0828a.f(c0828a, tag, "trySaveDataCache," + isSaveInstance + ", size:" + numValueOf + ", curExposurePosition:" + this.curExposurePosition, false, 4, null);
        com.transsion.postdetail.ui.adapter.i mAdapter2 = getMAdapter();
        if (mAdapter2 == null || (data = mAdapter2.getData()) == null) {
            return;
        }
        int size = data.size();
        if (isNewCacheStrategy()) {
            i11 = 8;
            if (size < 8) {
                i11 = size;
            }
        } else {
            int i12 = this.curExposurePosition;
            i11 = size - i12 < 9 ? size - i12 : 9;
        }
        if (i11 <= 0) {
            return;
        }
        if (isNewCacheStrategy()) {
            if (size < i11) {
                return;
            }
        } else if (size <= i11) {
            return;
        }
        String tag2 = getTAG();
        int i13 = size - i11;
        com.transsion.postdetail.ui.adapter.i mAdapter3 = getMAdapter();
        lg.a.C0828a.f(c0828a, tag2, "explore-trySaveDataCache, " + i13 + "， " + i11 + ", size:" + ((mAdapter3 == null || (data3 = mAdapter3.getData()) == null) ? null : Integer.valueOf(data3.size())), false, 4, null);
        com.transsion.postdetail.ui.adapter.i mAdapter4 = getMAdapter();
        if (mAdapter4 == null || (data2 = mAdapter4.getData()) == null || (listSubList = data2.subList(i13, size)) == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = listSubList.iterator();
        while (it.hasNext()) {
            PostSubjectItem postSubjectItem = (PostSubjectItem) it.next();
            if (!postSubjectItem.getBuiltIn() && !postSubjectItem.isRoomCache() && (isNewCacheStrategy() || !isLowInteractiveItem(postSubjectItem))) {
                arrayList.add(postSubjectItem);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        lg.a.C0828a c0828a2 = lg.a.f68839a;
        String tag3 = getTAG();
        int size2 = arrayList.size();
        PostSubjectItem postSubjectItem2 = (PostSubjectItem) CollectionsKt.k0(arrayList);
        String name = (postSubjectItem2 == null || (group = postSubjectItem2.getGroup()) == null) ? null : group.getName();
        PostSubjectItem postSubjectItem3 = (PostSubjectItem) CollectionsKt.k0(arrayList);
        if (postSubjectItem3 != null) {
            String title = postSubjectItem3.getTitle();
            content = (title == null || title.length() == 0) ? postSubjectItem3.getContent() : postSubjectItem3.getTitle();
        } else {
            content = null;
        }
        lg.a.C0828a.f(c0828a2, tag3, "explore-trySaveDataCache, " + size2 + "，name:" + name + "，content:" + content, false, 4, null);
        String strJ = com.blankj.utilcode.util.o.j(new PostSubjectBean(arrayList, new Pager(Boolean.TRUE, "1", "", 0, 0), null, null));
        String str = isNewCacheStrategy() ? "post_explore_net_cache_exp_code" : "post_explore_net_cache_code";
        String str2 = isNewCacheStrategy() ? "post_explore_net_cache_exp" : "post_explore_net_cache";
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
        int i14 = bVar.b().getInt(str, 0);
        int iHashCode = strJ.hashCode();
        if (i14 == iHashCode) {
            lg.a.C0828a.f(c0828a2, getTAG(), "explore-trySaveDataCache, HashCode same:" + iHashCode, false, 4, null);
            return;
        }
        lg.a.C0828a.f(c0828a2, getTAG(), "explore-SaveDataCache, oldCode:" + i14 + "，newCode:" + iHashCode, false, 4, null);
        bVar.b().putInt(str, iHashCode);
        bVar.b().putString(str2, strJ);
    }

    public final void deleteCacheRoom(PostSubjectItem item) {
        List<PostSubjectItem> items;
        PostSubjectBean postSubjectBean;
        List<PostSubjectItem> items2;
        List<PostSubjectItem> items3;
        List<PostSubjectItem> items4;
        List<PostSubjectItem> items5;
        List<PostSubjectItem> items6;
        Intrinsics.h(item, "item");
        PostSubjectBean postSubjectBean2 = this.roomCacheData;
        if (postSubjectBean2 == null || postSubjectBean2 == null || (items = postSubjectBean2.getItems()) == null || items.isEmpty() || (postSubjectBean = this.roomCacheData) == null || (items2 = postSubjectBean.getItems()) == null || !items2.contains(item) || item.isRoomCacheListStart() || item.isRoomCacheListEnd()) {
            return;
        }
        PostSubjectBean postSubjectBean3 = this.roomCacheData;
        if (postSubjectBean3 != null && (items6 = postSubjectBean3.getItems()) != null) {
            items6.remove(item);
        }
        PostSubjectBean postSubjectBean4 = this.roomCacheData;
        if (postSubjectBean4 == null || (items3 = postSubjectBean4.getItems()) == null) {
            return;
        }
        if (items3.size() < 4) {
            lg.a.C0828a.f(lg.a.f68839a, getTAG(), "手动缓存已全部曝光，清除本地手动缓存", false, 4, null);
            com.transsion.baselib.report.launch.b.f43370a.b().putString("room_cache_data", "");
            PostSubjectBean postSubjectBean5 = this.roomCacheData;
            if (postSubjectBean5 == null || (items5 = postSubjectBean5.getItems()) == null) {
                return;
            }
            items5.clear();
            return;
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = getTAG();
        PostSubjectBean postSubjectBean6 = this.roomCacheData;
        lg.a.C0828a.f(c0828a, tag, "手动缓存已曝光部分，更改手动缓存 剩余：" + ((postSubjectBean6 == null || (items4 = postSubjectBean6.getItems()) == null) ? null : Integer.valueOf(items4.size())), false, 4, null);
        com.transsion.baselib.report.launch.b.f43370a.b().putString("room_cache_data", com.blankj.utilcode.util.o.j(this.roomCacheData));
    }

    public final boolean hasInsertRoomCache() {
        com.transsion.postdetail.ui.adapter.i mAdapter;
        List<Object> data;
        com.transsion.postdetail.ui.adapter.i mAdapter2 = getMAdapter();
        List<Object> data2 = mAdapter2 != null ? mAdapter2.getData() : null;
        if (data2 == null || data2.isEmpty() || (mAdapter = getMAdapter()) == null || (data = mAdapter.getData()) == null) {
            return false;
        }
        Iterator<T> it = data.iterator();
        while (it.hasNext()) {
            if (((PostSubjectItem) it.next()).isRoomCacheListStart()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        androidx.p009lifecycle.b0 b0VarE;
        androidx.p009lifecycle.b0 b0VarD;
        RoomPostViewModel mViewModel = getMViewModel();
        if (mViewModel != null && (b0VarD = mViewModel.D()) != null) {
            b0VarD.j(this, new c(new Function1() { // from class: com.transsion.postdetail.ui.fragment.m4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return RoomPostExploreFragment.initViewModel$lambda$1(this.f49760a, (PostSubjectBean) obj);
                }
            }));
        }
        RoomPostViewModel mViewModel2 = getMViewModel();
        if (mViewModel2 != null && (b0VarE = mViewModel2.E()) != null) {
            b0VarE.j(this, new c(new Function1() { // from class: com.transsion.postdetail.ui.fragment.n4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return RoomPostExploreFragment.initViewModel$lambda$5(this.f49765a, (PostSubjectBean) obj);
                }
            }));
        }
        getTrendingRoomsViewModel().b().j(this, new c(new Function1() { // from class: com.transsion.postdetail.ui.fragment.o4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RoomPostExploreFragment.initViewModel$lambda$7(this.f49771a, (Pair) obj);
            }
        }));
        setOnNumNotExposureListener(new b());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void insertRoomCacheData() {
        int cacheFirstIndex;
        RecyclerView recyclerView;
        com.transsion.postdetail.ui.adapter.i mAdapter = getMAdapter();
        RecyclerView.m layoutManager = null;
        List<Object> data = mAdapter != null ? mAdapter.getData() : null;
        if (data != null && !data.isEmpty() && !hasInsertRoomCache()) {
            updateCacheData();
            return;
        }
        if (!hasInsertRoomCache() || (cacheFirstIndex = getCacheFirstIndex()) <= 0) {
            return;
        }
        so.s sVar = (so.s) getMViewBinding();
        if (sVar != null && (recyclerView = sVar.f75704b) != null) {
            layoutManager = recyclerView.getLayoutManager();
        }
        if (layoutManager instanceof LinearLayoutManager) {
            ((LinearLayoutManager) layoutManager).scrollToPositionWithOffset(cacheFirstIndex, 0);
        }
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    public boolean isNeedInsertPublishPost() {
        return true;
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    public boolean isStaggeredPost() {
        return false;
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    public boolean isSwipeRefreshEnable() {
        return false;
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment, com.transsion.baseui.fragment.LazyFragment
    public void lazyLoadData() {
        lg.a.C0828a.f(lg.a.f68839a, getTAG(), "lazyLoadData parentTypeName:" + getMParentTypeName(), false, 4, null);
        super.lazyLoadData();
    }

    @Override // com.transsion.baseui.fragment.LazyFragment
    public void lazyLoadWithoutNet() {
        super.lazyLoadWithoutNet();
        lg.a.C0828a.f(lg.a.f68839a, getTAG(), "lazyLoadWithoutNet [AB:" + (isNewCacheStrategy() ? "实验组-新缓存策略" : "对照组-旧缓存策略") + "]", false, 4, null);
        if (isNewCacheStrategy()) {
            RoomPostViewModel mViewModel = getMViewModel();
            if (mViewModel != null) {
                mViewModel.g0();
            }
        } else {
            RoomPostViewModel mViewModel2 = getMViewModel();
            if (mViewModel2 != null) {
                mViewModel2.e0();
            }
            RoomPostViewModel mViewModel3 = getMViewModel();
            if (mViewModel3 != null) {
                mViewModel3.h0();
            }
        }
        RoomPostViewModel mViewModel4 = getMViewModel();
        if (mViewModel4 != null) {
            mViewModel4.f0();
        }
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    public void loadData(boolean isFirstLoad, boolean isRefresh) {
        Context context = getContext();
        if (context != null) {
            if (isRefresh) {
                androidx.p010savedstate.e parentFragment = getParentFragment();
                if (parentFragment instanceof aq.d) {
                    ((aq.d) parentFragment).F();
                }
            }
            RoomPostViewModel mViewModel = getMViewModel();
            if (mViewModel != null) {
                mViewModel.J(context, isFirstLoad, isRefresh, getMPage(), 8, this.insertPostId);
            }
        }
    }

    public final void loadMoreCacheData(boolean isRefresh) {
        String string = com.transsion.baselib.report.launch.b.f43370a.b().getString("room_cache_data", "");
        if (string == null || string.length() == 0 || isRefresh) {
            if (!nh.m.f70474a.e()) {
                uh.b.f76753a.d(R$string.no_network_toast);
                return;
            }
            RoomPostViewModel mViewModel = getMViewModel();
            if (mViewModel != null) {
                mViewModel.K(false, getMPage(), 30, "");
            }
        }
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment, com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        this.insertPostId = arguments != null ? arguments.getString("post_id") : null;
        Bundle arguments2 = getArguments();
        this.insertPostOps = arguments2 != null ? arguments2.getString("ops") : null;
        Bundle arguments3 = getArguments();
        setMParentTypeName(arguments3 != null ? arguments3.getString("parent_type") : null);
        lg.a.C0828a.f(lg.a.f68839a, getTAG(), "Explore onCreate mParentTypeName:" + getMParentTypeName(), false, 4, null);
        initRoomCacheData();
    }

    @Override // com.transsion.baseui.fragment.LazyFragment, com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        kotlinx.coroutines.t1 t1Var = this.saveExposedCacheJob;
        if (t1Var != null) {
            kotlinx.coroutines.t1.a.b(t1Var, null, 1, null);
        }
        super.onDestroyView();
        if (isNewCacheStrategy()) {
            return;
        }
        trySaveDataCache(false);
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment, com.transsion.baseui.fragment.LazyFragment, androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        aq.h hVar;
        String strD;
        super.onHiddenChanged(hidden);
        if (hidden || (strD = (hVar = aq.h.f16093a).d()) == null || strD.length() == 0) {
            return;
        }
        androidx.p009lifecycle.b0 b0VarB = getTrendingRoomsViewModel().b();
        String strD2 = hVar.d();
        Intrinsics.e(strD2);
        b0VarB.q(new Pair(strD2, hVar.e()));
        String strG = hVar.g();
        if (strG != null && strG.length() != 0) {
            this.pageFrom = hVar.g();
            hVar.r(null);
        }
        hVar.o(null);
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
        String strD = hVar.d();
        if (strD == null || strD.length() == 0) {
            return;
        }
        androidx.p009lifecycle.b0 b0VarB = getTrendingRoomsViewModel().b();
        String strD2 = hVar.d();
        Intrinsics.e(strD2);
        b0VarB.q(new Pair(strD2, hVar.e()));
        String strG = hVar.g();
        if (strG != null && strG.length() != 0) {
            this.pageFrom = hVar.g();
            hVar.r(null);
        }
        hVar.o(null);
        hVar.p(null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.h(outState, "outState");
        super.onSaveInstanceState(outState);
        if (isNewCacheStrategy()) {
            return;
        }
        trySaveDataCache(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        if (isNewCacheStrategy()) {
            saveExposedDataCache();
            trySaveDataCache(false);
        }
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    public String pageName() {
        return "room_home";
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    public PostAdapterFrom postAdapterFrom() {
        return PostAdapterFrom.DEFAULT;
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    public String subpageName() {
        return SUBPAGE_NAME;
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    /* JADX INFO: renamed from: tabIndex */
    public int getMTabIndex() {
        return 0;
    }

    public final void updateCacheData() {
        PostSubjectBean postSubjectBean;
        List<PostSubjectItem> items;
        int lastVisiblePosition = getLastVisiblePosition();
        if (lastVisiblePosition <= 0 || (postSubjectBean = this.roomCacheData) == null || (items = postSubjectBean.getItems()) == null) {
            return;
        }
        int i11 = lastVisiblePosition + 1;
        com.transsion.postdetail.ui.adapter.i mAdapter = getMAdapter();
        if (i11 < (mAdapter != null ? mAdapter.getItemCount() : 0)) {
            com.transsion.postdetail.ui.adapter.i mAdapter2 = getMAdapter();
            if (mAdapter2 != null) {
                mAdapter2.o(i11, items);
                return;
            }
            return;
        }
        com.transsion.postdetail.ui.adapter.i mAdapter3 = getMAdapter();
        if (mAdapter3 != null) {
            mAdapter3.o(lastVisiblePosition, items);
        }
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    public void updateData(PostSubjectBean bean) {
        super.updateData(bean);
        if (isNewCacheStrategy()) {
            saveExposedDataCache();
        }
    }
}
