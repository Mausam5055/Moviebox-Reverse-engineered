package com.transsion.postdetail.ui.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.Lifecycle;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.widget.R$string;
import com.transsion.ad.bidding.nativead.BiddingListManager;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.baseui.fragment.BaseListFragment;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Group;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.PostSubjectBean;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.User;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.viewmodel.PostRecommendFragmentViewModel;
import com.transsion.postdetailapi.IPostDetailApi;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.AddToDownloadEvent;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 L2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001MB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u0004J\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\rJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0013\u0010\u0011J\u001b\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00150\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001a\u0010\u0004J\u000f\u0010\u001b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001b\u0010\u0004J\u000f\u0010\u001c\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001c\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001d\u0010\u0004J\u000f\u0010\u001e\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001e\u0010\u0004J\u000f\u0010\u001f\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001f\u0010\u0004J\u000f\u0010 \u001a\u00020\u0007H\u0016¢\u0006\u0004\b \u0010\u0004J\u000f\u0010!\u001a\u00020\u0007H\u0016¢\u0006\u0004\b!\u0010\u0004J\u000f\u0010\"\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\"\u0010\u0004J/\u0010(\u001a\u00020\u00072\u000e\u0010#\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00142\u0006\u0010%\u001a\u00020$2\u0006\u0010'\u001a\u00020&H\u0002¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\u000bH\u0002¢\u0006\u0004\b*\u0010\rJ\u000f\u0010+\u001a\u00020\u0007H\u0002¢\u0006\u0004\b+\u0010\u0004J\u0017\u0010-\u001a\u00020\u00072\u0006\u0010,\u001a\u00020\u0002H\u0002¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\u0007H\u0002¢\u0006\u0004\b/\u0010\u0004R\u0018\u00103\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0018\u00107\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0016\u0010:\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0016\u0010<\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u00109R\u0016\u0010>\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u00109R\u0016\u0010A\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u001b\u0010G\u001a\u00020B8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bC\u0010D\u001a\u0004\bE\u0010FR\u0018\u0010K\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010J¨\u0006N"}, d2 = {"Lcom/transsion/postdetail/ui/fragment/PostRecommendFragment;", "Lcom/transsion/baseui/fragment/BaseListFragment;", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "onPause", "", "s0", "()Ljava/lang/String;", "getPageStateLayoutTitle", "", "isAudioShowNoNetworkLayout", "()Z", "isMonitorNetworkState", "isShowPageStateLayoutTitle", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "m0", "()Lcom/chad/library/adapter/base/BaseQuickAdapter;", "initViewData", "initListener", "initViewModel", "x0", "G0", "lazyLoadData", "retryLoadData", "loadMore", "loadDefaultData", "onDestroy", "e1", "adapter", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", RequestParameters.POSITION, "W0", "(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V", "getPageName", "initExposureHelper", WebConstants.FIELD_ITEM, "g1", "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V", "initAd", "Lsj/b;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lsj/b;", "exposureHelper", "Lto/a;", "c", "Lto/a;", "postListReport", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", "mTabId", "e", "mNextPage", "f", "mPerPage", "g", "Ljava/lang/String;", "mPostId", "Lcom/transsion/postdetail/viewmodel/PostRecommendFragmentViewModel;", "h", "Lkotlin/Lazy;", "X0", "()Lcom/transsion/postdetail/viewmodel/PostRecommendFragmentViewModel;", "mViewModel", "Lcom/transsion/ad/bidding/nativead/BiddingListManager;", "i", "Lcom/transsion/ad/bidding/nativead/BiddingListManager;", "middleListManager", "j", "a", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class PostRecommendFragment extends BaseListFragment<PostSubjectItem> {

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private sj.b exposureHelper;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private to.a postListReport;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private int mTabId;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private int mNextPage = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private int mPerPage = 8;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private String mPostId = "";

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final Lazy mViewModel = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.ui.fragment.p3
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PostRecommendFragment.d1();
        }
    });

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private BiddingListManager middleListManager;

    /* JADX INFO: renamed from: com.transsion.postdetail.ui.fragment.PostRecommendFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final PostRecommendFragment a(String str) {
            PostRecommendFragment postRecommendFragment = new PostRecommendFragment();
            Bundle bundle = new Bundle();
            bundle.putString("post_subject_id", str);
            postRecommendFragment.setArguments(bundle);
            return postRecommendFragment;
        }
    }

    public static final class b implements sj.a {
        b() {
        }

        @Override // sj.a
        public void a(int i11, long j11, View view) {
            PostRecommendFragment postRecommendFragment = PostRecommendFragment.this;
            try {
                Result.Companion companion = Result.INSTANCE;
                if (postRecommendFragment.getMBaseAdapter() instanceof com.transsion.postdetail.ui.adapter.f) {
                    lg.a.C0828a.f(lg.a.f68839a, sj.b.f75362j.a(), "exposure position  " + i11, false, 4, null);
                    to.a aVar = postRecommendFragment.postListReport;
                    if (aVar != null) {
                        BaseQuickAdapter mBaseAdapter = postRecommendFragment.getMBaseAdapter();
                        Intrinsics.f(mBaseAdapter, "null cannot be cast to non-null type com.transsion.postdetail.ui.adapter.PostRecommendAdapter");
                        aVar.a((com.transsion.postdetail.ui.adapter.f) mBaseAdapter, i11, j11);
                    }
                }
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }
    }

    static final class c implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f49601a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f49601a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f49601a;
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
            this.f49601a.invoke(obj);
        }
    }

    private final void W0(BaseQuickAdapter adapter, View view, int position) {
        String resourceLink;
        User user;
        Subject subject;
        ResourceDetectors resourceDetector;
        Group group;
        Subject subject2;
        Subject subject3;
        String subjectId;
        Context context;
        Subject subject4;
        Subject subject5;
        ResourceDetectors resourceDetector2;
        Subject subject6;
        Object item = adapter.getItem(position);
        String nickname = null;
        PostSubjectItem postSubjectItem = item instanceof PostSubjectItem ? (PostSubjectItem) item : null;
        DownloadManagerApi.a aVar = DownloadManagerApi.f58398j;
        DownloadManagerApi downloadManagerApiA = aVar.a();
        String subjectId2 = (postSubjectItem == null || (subject6 = postSubjectItem.getSubject()) == null) ? null : subject6.getSubjectId();
        String resourceId = (postSubjectItem == null || (subject5 = postSubjectItem.getSubject()) == null || (resourceDetector2 = subject5.getResourceDetector()) == null) ? null : resourceDetector2.getResourceId();
        boolean z10 = false;
        if (postSubjectItem != null && (subject4 = postSubjectItem.getSubject()) != null && subject4.isSeries()) {
            z10 = true;
        }
        if (DownloadManagerApi.x0(downloadManagerApiA, subjectId2, resourceId, z10, false, 8, null)) {
            if (postSubjectItem == null || (subject3 = postSubjectItem.getSubject()) == null || (subjectId = subject3.getSubjectId()) == null || (context = getContext()) == null) {
                return;
            }
            DownloadManagerApi.z0(aVar.a(), subjectId, context, getPageName(), null, 8, null);
            return;
        }
        if (postSubjectItem != null && (subject2 = postSubjectItem.getSubject()) != null) {
            Integer subjectType = subject2.getSubjectType();
            int value = SubjectType.SHORT_TV.getValue();
            if (subjectType != null && subjectType.intValue() == value) {
                DownloadManagerApi downloadManagerApiA2 = aVar.a();
                Context context2 = getContext();
                Intrinsics.f(context2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
                FragmentActivity fragmentActivity = (FragmentActivity) context2;
                String pageName = getPageName();
                Group group2 = postSubjectItem.getGroup();
                downloadManagerApiA2.d0(fragmentActivity, pageName, (384 & 4) != 0 ? "" : group2 != null ? group2.getGroupId() : null, postSubjectItem.getOps(), (384 & 16) != 0 ? null : "download_subject", (384 & 32) != 0 ? false : true, (384 & 64) != 0 ? null : postSubjectItem.getSubject(), (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? Boolean.FALSE : null);
                return;
            }
        }
        DownloadManagerApi downloadManagerApiA3 = aVar.a();
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        Subject subject7 = postSubjectItem != null ? postSubjectItem.getSubject() : null;
        String pageName2 = getPageName();
        String groupId = (postSubjectItem == null || (group = postSubjectItem.getGroup()) == null) ? null : group.getGroupId();
        String ops = postSubjectItem != null ? postSubjectItem.getOps() : null;
        if (postSubjectItem == null || (subject = postSubjectItem.getSubject()) == null || (resourceDetector = subject.getResourceDetector()) == null || (resourceLink = resourceDetector.getResourceLink()) == null) {
            resourceLink = "";
        }
        String str = resourceLink;
        if (postSubjectItem != null && (user = postSubjectItem.getUser()) != null) {
            nickname = user.getNickname();
        }
        downloadManagerApiA3.K(fragmentActivityRequireActivity, subject7, pageName2, (960 & 8) != 0 ? "" : groupId, ops, str, (960 & 64) != 0 ? "" : null, (960 & 128) != 0 ? null : null, (960 & 256) != 0 ? null : nickname, (960 & 512) != 0 ? false : false);
    }

    private final PostRecommendFragmentViewModel X0() {
        return (PostRecommendFragmentViewModel) this.mViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Y0(PostRecommendFragment postRecommendFragment, int i11, BiddingNativeManager current) {
        List<Object> data;
        Intrinsics.h(current, "current");
        if (current != null) {
            PostSubjectItem postSubjectItem = new PostSubjectItem(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, null, false, null, false, null, false, false, false, false, null, -1, 1, null);
            postSubjectItem.setNonAdDelegate(current);
            BaseQuickAdapter mBaseAdapter = postRecommendFragment.getMBaseAdapter();
            int size = (mBaseAdapter == null || (data = mBaseAdapter.getData()) == null) ? 0 : data.size();
            if (i11 <= size) {
                BaseQuickAdapter mBaseAdapter2 = postRecommendFragment.getMBaseAdapter();
                if (mBaseAdapter2 != null) {
                    mBaseAdapter2.n(i11, postSubjectItem);
                }
            } else {
                BaseQuickAdapter mBaseAdapter3 = postRecommendFragment.getMBaseAdapter();
                if (mBaseAdapter3 != null) {
                    mBaseAdapter3.n(size, postSubjectItem);
                }
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z0(PostRecommendFragment postRecommendFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        lg.a.C0828a.f(lg.a.f68839a, sj.b.f75362j.a(), "position " + i11, false, 4, null);
        Object item = adapter.getItem(i11);
        if (item instanceof PostSubjectItem) {
            PostSubjectItem postSubjectItem = (PostSubjectItem) item;
            postRecommendFragment.g1(postSubjectItem);
            to.a aVar = postRecommendFragment.postListReport;
            if (aVar != null) {
                aVar.b(i11, postSubjectItem);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a1(PostRecommendFragment postRecommendFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (view.getId() == R$id.llDownload) {
            postRecommendFragment.W0(adapter, view, i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:30:0x0063  */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit b1(final PostRecommendFragment postRecommendFragment, PostSubjectBean postSubjectBean) {
        List<PostSubjectItem> items;
        ConstraintLayout root;
        Pager pager;
        Boolean boolValueOf = null;
        if ((postSubjectBean == null || (pager = postSubjectBean.getPager()) == null) ? false : Intrinsics.c(pager.getHasMore(), Boolean.FALSE)) {
            BaseListFragment.D0(postRecommendFragment, false, 1, null);
        }
        if (postSubjectBean == null || (items = postSubjectBean.getItems()) == null) {
            postRecommendFragment.N0();
            Unit unit = Unit.f67061a;
        } else {
            if (items.isEmpty()) {
                BaseListFragment.D0(postRecommendFragment, false, 1, null);
                if (postRecommendFragment.isEmpty()) {
                    PageStatusFragment.showEmptyView$default(postRecommendFragment, false, 1, null);
                }
                return Unit.f67061a;
            }
            BaseQuickAdapter mBaseAdapter = postRecommendFragment.getMBaseAdapter();
            if (mBaseAdapter != null) {
                mBaseAdapter.q(items);
            }
            bk.b bVar = (bk.b) postRecommendFragment.getMViewBinding();
            if (bVar != null && (root = bVar.getRoot()) != null) {
                boolValueOf = Boolean.valueOf(root.postDelayed(new Runnable() { // from class: com.transsion.postdetail.ui.fragment.t3
                    @Override // java.lang.Runnable
                    public final void run() {
                        PostRecommendFragment.c1(this.f49823a);
                    }
                }, 300L));
            }
            if (boolValueOf == null) {
                postRecommendFragment.N0();
                Unit unit2 = Unit.f67061a;
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c1(PostRecommendFragment postRecommendFragment) {
        postRecommendFragment.B0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PostRecommendFragmentViewModel d1() {
        return new PostRecommendFragmentViewModel();
    }

    private final void e1() {
        Context context = getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity != null) {
            Function1 function1 = new Function1() { // from class: com.transsion.postdetail.ui.fragment.o3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return PostRecommendFragment.f1(this.f49770a, (AddToDownloadEvent) obj);
                }
            };
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = AddToDownloadEvent.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.observeEvent(appCompatActivity, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().q(), false, function1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f1(PostRecommendFragment postRecommendFragment, AddToDownloadEvent value) {
        BaseQuickAdapter mBaseAdapter;
        List<Object> data;
        Intrinsics.h(value, "value");
        try {
            BaseQuickAdapter mBaseAdapter2 = postRecommendFragment.getMBaseAdapter();
            int i11 = -1;
            if (mBaseAdapter2 != null && (data = mBaseAdapter2.getData()) != null) {
                Iterator<Object> it = data.iterator();
                int i12 = 0;
                while (it.hasNext()) {
                    Subject subject = ((PostSubjectItem) it.next()).getSubject();
                    if (Intrinsics.c(subject != null ? subject.getSubjectId() : null, value.getSubjectId())) {
                        i11 = i12;
                        break;
                    }
                    i12++;
                }
            }
            if (i11 >= 0 && (mBaseAdapter = postRecommendFragment.getMBaseAdapter()) != null) {
                mBaseAdapter.notifyItemChanged(i11 + 1);
            }
        } catch (Exception unused) {
            lg.a.C0828a.g(lg.a.f68839a, " callback change data fail", false, 2, null);
        }
        return Unit.f67061a;
    }

    private final void g1(PostSubjectItem item) {
        if (!nh.m.f70474a.e()) {
            uh.b.f76753a.d(R$string.no_network_tips);
            return;
        }
        IPostDetailApi iPostDetailApi = (IPostDetailApi) TheRouter.d(IPostDetailApi.class, new Object[0]);
        if (iPostDetailApi != null) {
            iPostDetailApi.i(item);
        }
        Media media = item.getMedia();
        Navigator navigatorK = TheRouter.c(Intrinsics.c(media != null ? media.getMediaType() : null, MediaType.VIDEO.getValue()) ? "/post/detailVideo" : "/post/detail").K(WebConstants.PAGE_FROM, getPageName()).K("id", item.getPostId()).K("item_type", item.getItemType());
        Media media2 = item.getMedia();
        Navigator.x(navigatorK.K("media_type", media2 != null ? media2.getMediaType() : null).z("from_comment", false), requireContext(), null, 2, null);
    }

    private final String getPageName() {
        return "post_detail_recommend";
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initAd() {
        BiddingListManager biddingListManager = new BiddingListManager();
        this.middleListManager = biddingListManager;
        bk.b bVar = (bk.b) getMViewBinding();
        biddingListManager.F(bVar != null ? bVar.f16580d : null);
        BiddingListManager biddingListManager2 = this.middleListManager;
        if (biddingListManager2 != null) {
            biddingListManager2.A(androidx.p009lifecycle.v.a(this));
        }
        BiddingListManager biddingListManager3 = this.middleListManager;
        if (biddingListManager3 != null) {
            biddingListManager3.G("PostDetailRecommendScene");
        }
        BiddingListManager biddingListManager4 = this.middleListManager;
        if (biddingListManager4 != null) {
            biddingListManager4.z(new Function2() { // from class: com.transsion.postdetail.ui.fragment.q3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return PostRecommendFragment.Y0(this.f49801a, ((Integer) obj).intValue(), (BiddingNativeManager) obj2);
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initExposureHelper() {
        bk.b bVar;
        RecyclerView recyclerView;
        this.postListReport = new to.a("post_recommend", this.mPostId);
        sj.b bVar2 = new sj.b(0.6f, new b(), false, 4, null);
        this.exposureHelper = bVar2;
        bVar2.n(2);
        sj.b bVar3 = this.exposureHelper;
        if (bVar3 == null || (bVar = (bk.b) getMViewBinding()) == null || (recyclerView = bVar.f16580d) == null) {
            return;
        }
        recyclerView.addOnScrollListener(bVar3);
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment
    public void G0() {
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        super.initListener();
        e1();
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        super.initViewData();
        n0();
        u0();
        initAd();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        X0().h().j(this, new c(new Function1() { // from class: com.transsion.postdetail.ui.fragment.n3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PostRecommendFragment.b1(this.f49764a, (PostSubjectBean) obj);
            }
        }));
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isMonitorNetworkState() {
        return true;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isShowPageStateLayoutTitle() {
        return false;
    }

    @Override // com.transsion.baseui.fragment.LazyFragment
    public void lazyLoadData() {
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void loadDefaultData() {
        X0().g(this.mPostId, this.mTabId, this.mNextPage, this.mPerPage);
        this.mNextPage++;
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment
    public void loadMore() {
        loadDefaultData();
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment
    public BaseQuickAdapter m0() {
        return new com.transsion.postdetail.ui.adapter.f(new ArrayList(), this.exposureHelper);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        Object objM454constructorimpl;
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments != null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                String string = arguments.getString("post_subject_id");
                if (string == null) {
                    string = "";
                }
                this.mPostId = string;
                objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            Result.m453boximpl(objM454constructorimpl);
        }
        initExposureHelper();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        BiddingListManager biddingListManager = this.middleListManager;
        if (biddingListManager != null) {
            biddingListManager.o();
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        sj.b bVar = this.exposureHelper;
        if (bVar != null) {
            bVar.f();
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
        F0();
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment
    public String s0() {
        return "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.BaseListFragment
    public void x0() {
        RecyclerView recyclerView;
        super.x0();
        BaseQuickAdapter mBaseAdapter = getMBaseAdapter();
        if (mBaseAdapter != null) {
            View viewInflate = LayoutInflater.from(requireActivity()).inflate(R$layout.item_provider_post_recommend_for_you, (ViewGroup) null);
            Intrinsics.e(viewInflate);
            BaseQuickAdapter.y(mBaseAdapter, viewInflate, 0, 0, 6, null);
            mBaseAdapter.X0(R$layout.item_recommend_empty_layout);
            mBaseAdapter.w1(new p6.d() { // from class: com.transsion.postdetail.ui.fragment.r3
                @Override // p6.d
                public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                    PostRecommendFragment.Z0(this.f49808a, baseQuickAdapter, view, i11);
                }
            });
            mBaseAdapter.l(R$id.llDownload);
            mBaseAdapter.s1(new p6.b() { // from class: com.transsion.postdetail.ui.fragment.s3
                @Override // p6.b
                public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                    PostRecommendFragment.a1(this.f49816a, baseQuickAdapter, view, i11);
                }
            });
        }
        bk.b bVar = (bk.b) getMViewBinding();
        if (bVar == null || (recyclerView = bVar.f16580d) == null) {
            return;
        }
        recyclerView.addItemDecoration(new ig.i(com.blankj.utilcode.util.a0.a(16.0f), 0, 2, null));
    }
}
