package com.transsion.search.fragment.values;

import ak.k;
import ak.t;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.StateView;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.tn.lib.widget.R$string;
import com.transsion.baseui.fragment.LazyFragment;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.bean.AccurateSubject;
import com.transsion.search.bean.Count;
import com.transsion.search.bean.Pager;
import com.transsion.search.bean.SearchSubject;
import com.transsion.search.bean.SearchWorkEntity;
import com.transsion.search.bean.VerticalRank;
import com.transsion.search.fragment.values.SearchValuesTypeFragment;
import com.transsion.search.fragment.values.adapter.a;
import com.transsion.search.viewmodel.SearchViewModel;
import com.transsion.search.widget.AccurateSubjectView;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.AddToDownloadEvent;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.y0;
import nh.m;
import p6.d;
import r6.f;
import rq.l;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 b2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00018B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000e\u0010\u0004J+\u0010\u0014\u001a\u00020\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\b\b\u0002\u0010\u0013\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0016\u0010\u0004J\u0019\u0010\u0019\u001a\u00020\u00052\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0019\u0010\u001c\u001a\u00020\u00052\b\u0010\u001b\u001a\u0004\u0018\u00010\u0017H\u0002¢\u0006\u0004\b\u001c\u0010\u001aJ\u0019\u0010\u001f\u001a\u00020\u00052\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0002¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0005H\u0016¢\u0006\u0004\b!\u0010\u0004J\u0017\u0010$\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\nH\u0016¢\u0006\u0004\b&\u0010\fJ\u000f\u0010'\u001a\u00020\u0011H\u0016¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\u0007H\u0016¢\u0006\u0004\b)\u0010\tJ\u0017\u0010,\u001a\u00020+2\u0006\u0010*\u001a\u00020\u0007H\u0016¢\u0006\u0004\b,\u0010-J\u0011\u0010.\u001a\u0004\u0018\u00010+H\u0016¢\u0006\u0004\b.\u0010/J\u000f\u00100\u001a\u00020\u0005H\u0016¢\u0006\u0004\b0\u0010\u0004J\u000f\u00101\u001a\u00020\u0005H\u0016¢\u0006\u0004\b1\u0010\u0004J\u000f\u00102\u001a\u00020\u0005H\u0016¢\u0006\u0004\b2\u0010\u0004J\u000f\u00103\u001a\u00020\u0005H\u0016¢\u0006\u0004\b3\u0010\u0004J\u000f\u00104\u001a\u00020\u0005H\u0016¢\u0006\u0004\b4\u0010\u0004J\u000f\u00105\u001a\u00020\u0005H\u0016¢\u0006\u0004\b5\u0010\u0004J\u000f\u00106\u001a\u00020\u0005H\u0016¢\u0006\u0004\b6\u0010\u0004R\u0018\u0010:\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0016\u0010=\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\u0016\u0010?\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010<R\u0018\u0010C\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010BR\u0016\u0010F\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010ER\u0016\u0010H\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010<R\u0018\u0010L\u001a\u0004\u0018\u00010I8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR\u0018\u0010O\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010NR\u001a\u0010S\u001a\b\u0012\u0004\u0012\u00020\u000f0P8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bQ\u0010RR\u0018\u0010W\u001a\u0004\u0018\u00010T8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010VR\u0018\u0010Z\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010YR\u0016\u0010]\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010\\R\u0014\u0010a\u001a\u00020^8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b_\u0010`¨\u0006c"}, d2 = {"Lcom/transsion/search/fragment/values/SearchValuesTypeFragment;", "Lcom/transsion/baseui/fragment/LazyFragment;", "Lrq/l;", "<init>", "()V", "", "s0", "", "E0", "()Z", "", "v0", "()Ljava/lang/String;", "F0", "y0", "Lcom/transsion/search/bean/SearchSubject;", "subject", "", RequestParameters.POSITION, NativeComponentConstants.KEY_COMPONENT_TYPE, "H0", "(Lcom/transsion/search/bean/SearchSubject;II)V", "loadMore", "Lcom/transsion/moviedetailapi/bean/Subject;", "subjectEntity", "u0", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", WebConstants.FIELD_ITEM, "x0", "Lcom/transsion/search/bean/SearchWorkEntity;", "entity", "J0", "(Lcom/transsion/search/bean/SearchWorkEntity;)V", "receiveArguments", "Landroid/view/LayoutInflater;", "inflater", "w0", "(Landroid/view/LayoutInflater;)Lrq/l;", "getPageStateLayoutTitle", "getScreenType", "()I", "isShowPageStateLayoutTitle", "isShowTitleLayout", "Landroid/view/View;", "getEmptyView", "(Z)Landroid/view/View;", "getLoadingView", "()Landroid/view/View;", "initViewData", "initViewModel", "initListener", "retryLoadData", "lazyLoadData", "onResume", "onDestroy", "Lcom/transsion/search/viewmodel/SearchViewModel;", "a", "Lcom/transsion/search/viewmodel/SearchViewModel;", "mSearchViewModel", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "I", "page", "c", "perPage", "Lcom/transsion/search/fragment/values/adapter/a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/search/fragment/values/adapter/a;", "mSubjectAdapter", "e", "Ljava/lang/String;", "mKeyWord", "f", "mType", "Lcom/transsion/search/bean/Count;", "g", "Lcom/transsion/search/bean/Count;", "mCount", "h", "Lcom/transsion/search/bean/SearchWorkEntity;", "mEntity", "", "i", "Ljava/util/List;", "subjectList", "Lcom/transsion/search/bean/AccurateSubject;", "j", "Lcom/transsion/search/bean/AccurateSubject;", "accurateSubject", CampaignEx.JSON_KEY_AD_K, "Landroid/view/View;", "loadingView", "l", "Z", "isLoading", "Lkh/a;", "m", "Lkh/a;", "exposeUtil", "n", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SearchValuesTypeFragment extends LazyFragment<l> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private SearchViewModel mSearchViewModel;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private a mSubjectAdapter;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private Count mCount;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private SearchWorkEntity mEntity;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private AccurateSubject accurateSubject;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private View loadingView;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private boolean isLoading;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private int page = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private int perPage = 12;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String mKeyWord = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private int mType = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final List subjectList = new ArrayList();

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private final kh.a exposeUtil = new kh.a();

    public static final class b implements kh.a.b {
        b() {
        }

        @Override // kh.a.b
        public int a() {
            List<Object> data;
            a aVar = SearchValuesTypeFragment.this.mSubjectAdapter;
            if (aVar == null || (data = aVar.getData()) == null) {
                return 0;
            }
            return data.size();
        }

        @Override // kh.a.b
        public void onItemViewVisible(boolean z10, int i11) {
            List<Object> data;
            if (z10) {
                a aVar = SearchValuesTypeFragment.this.mSubjectAdapter;
                SearchSubject searchSubject = (aVar == null || (data = aVar.getData()) == null) ? null : (SearchSubject) CollectionsKt.l0(data, i11);
                SearchValuesFragment.INSTANCE.d("", searchSubject != null ? searchSubject.getSubjectId() : null, "", searchSubject != null ? searchSubject.getOps() : null, i11, 3);
            }
        }
    }

    static final class c implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f52178a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f52178a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f52178a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f52178a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A0(SearchValuesTypeFragment searchValuesTypeFragment, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        List<Object> data;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        a aVar = searchValuesTypeFragment.mSubjectAdapter;
        I0(searchValuesTypeFragment, (aVar == null || (data = aVar.getData()) == null) ? null : (SearchSubject) data.get(i11), i11, 0, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B0(SearchValuesTypeFragment searchValuesTypeFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (view.getId() != R$id.llDownload || com.transsion.baseui.util.c.f43504a.a(view.getId(), 2000L)) {
            return;
        }
        Object obj = adapter.getData().get(i11);
        searchValuesTypeFragment.u0(obj instanceof Subject ? (Subject) obj : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit C0(SearchValuesTypeFragment searchValuesTypeFragment, SearchWorkEntity searchWorkEntity) {
        f fVarH0;
        searchValuesTypeFragment.isLoading = false;
        searchValuesTypeFragment.showContentView();
        if (searchWorkEntity == null) {
            a aVar = searchValuesTypeFragment.mSubjectAdapter;
            if (aVar != null && (fVarH0 = aVar.h0()) != null) {
                fVarH0.v();
            }
        } else {
            Integer subjectType = searchWorkEntity.getSubjectType();
            Count count = searchValuesTypeFragment.mCount;
            if (Intrinsics.c(subjectType, count != null ? count.getSubjectType() : null)) {
                searchValuesTypeFragment.J0(searchWorkEntity);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D0(SearchValuesTypeFragment searchValuesTypeFragment) {
        f fVarH0;
        a aVar = searchValuesTypeFragment.mSubjectAdapter;
        if (aVar == null || (fVarH0 = aVar.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    private final boolean E0() {
        a aVar;
        List<Object> data;
        if (m.f70474a.e() || (aVar = this.mSubjectAdapter) == null || (data = aVar.getData()) == null || !data.isEmpty()) {
            return false;
        }
        PageStatusFragment.showNoNetworkView$default(this, false, 1, null);
        return true;
    }

    private final void F0() {
        Function1 function1 = new Function1() { // from class: xq.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SearchValuesTypeFragment.G0(this.f78408a, (AddToDownloadEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = AddToDownloadEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, y0.c().q(), false, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit G0(SearchValuesTypeFragment searchValuesTypeFragment, AddToDownloadEvent value) {
        a aVar;
        List<Object> data;
        Intrinsics.h(value, "value");
        try {
            a aVar2 = searchValuesTypeFragment.mSubjectAdapter;
            int i11 = -1;
            if (aVar2 != null && (data = aVar2.getData()) != null) {
                Iterator<Object> it = data.iterator();
                int i12 = 0;
                while (it.hasNext()) {
                    if (Intrinsics.c(((SearchSubject) it.next()).getSubjectId(), value.getSubjectId())) {
                        i11 = i12;
                        break;
                    }
                    i12++;
                }
            }
            if (i11 >= 0 && (aVar = searchValuesTypeFragment.mSubjectAdapter) != null) {
                aVar.notifyItemChanged(i11 + (aVar != null ? aVar.a0() : 0));
            }
        } catch (Exception unused) {
            lg.a.C0828a.f(lg.a.f68839a, "search", " callback change data fail", false, 4, null);
        }
        return Unit.f67061a;
    }

    private final void H0(SearchSubject subject, int position, int type) {
        String deeplink;
        Uri uriG;
        if (subject != null) {
            if (position >= 0) {
                SearchValuesFragment.Companion companion = SearchValuesFragment.INSTANCE;
                companion.b("", subject.getSubjectId(), "", subject.getOps(), position, type, companion.a(), (128 & 128) != 0 ? null : null);
            }
            if (subject.getViewType() != 1) {
                if (this.mType != 3) {
                    fp.a aVar = new fp.a();
                    aVar.o(3);
                    aVar.n(1);
                    aVar.s(subject);
                    FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
                    String name = fp.a.class.getName();
                    Intrinsics.g(name, "getName(...)");
                    flowEventBus.postEvent(name, aVar, 0L);
                    FragmentActivity activity = getActivity();
                    if (activity != null) {
                        activity.finish();
                        return;
                    }
                    return;
                }
                Integer subjectType = subject.getSubjectType();
                int value = SubjectType.SHORT_TV.getValue();
                if (subjectType == null || subjectType.intValue() != value) {
                    Navigator navigatorC = TheRouter.c("/movie/detail");
                    Integer subjectType2 = subject.getSubjectType();
                    Navigator.x(navigatorC.F("subject_type", subjectType2 != null ? subjectType2.intValue() : SubjectType.MOVIE.getValue()).K("id", subject.getSubjectId()).K("ops", subject.getOps()), requireContext(), null, 2, null);
                    return;
                } else {
                    DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f58398j.a();
                    Context context = getContext();
                    Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
                    FragmentActivity fragmentActivity = (FragmentActivity) context;
                    hj.b logViewConfig = getLogViewConfig();
                    downloadManagerApiA.d0(fragmentActivity, logViewConfig != null ? logViewConfig.f() : null, (384 & 4) != 0 ? "" : "", subject.getOps(), (384 & 16) != 0 ? null : "download_subject", (384 & 32) != 0 ? false : false, (384 & 64) != 0 ? null : subject, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? Boolean.FALSE : null);
                    return;
                }
            }
            VerticalRank verticalRank = subject.getVerticalRank();
            if (verticalRank != null && (deeplink = verticalRank.getDeeplink()) != null && (uriG = com.transsion.baselib.helper.b.f43264a.g(Uri.parse(deeplink))) != null) {
                k.o(uriG);
            }
        }
    }

    static /* synthetic */ void I0(SearchValuesTypeFragment searchValuesTypeFragment, SearchSubject searchSubject, int i11, int i12, int i13, Object obj) {
        if ((i13 & 4) != 0) {
            i12 = 3;
        }
        searchValuesTypeFragment.H0(searchSubject, i11, i12);
    }

    private final void J0(SearchWorkEntity entity) {
        a aVar;
        List<Object> data;
        f fVarH0;
        a aVar2;
        f fVarH1;
        a aVar3;
        f fVarH2;
        Pager pager;
        Pager pager2;
        Pager pager3;
        f fVarH3;
        a aVar4 = this.mSubjectAdapter;
        if (aVar4 != null && (fVarH3 = aVar4.h0()) != null) {
            fVarH3.s();
        }
        this.page = (entity == null || (pager3 = entity.getPager()) == null) ? 1 : pager3.getNextPage();
        this.perPage = (entity == null || (pager2 = entity.getPager()) == null) ? 10 : pager2.getPerPage();
        List<SearchSubject> items = entity != null ? entity.getItems() : null;
        boolean hasMore = (entity == null || (pager = entity.getPager()) == null) ? false : pager.getHasMore();
        List<SearchSubject> list = items;
        if ((list == null || list.isEmpty()) && (aVar = this.mSubjectAdapter) != null && (data = aVar.getData()) != null && data.isEmpty()) {
            PageStatusFragment.showEmptyView$default(this, false, 1, null);
        }
        if (list == null || list.isEmpty()) {
            a aVar5 = this.mSubjectAdapter;
            if (aVar5 != null && (fVarH0 = aVar5.h0()) != null) {
                fVarH0.t(false);
            }
        } else {
            a aVar6 = this.mSubjectAdapter;
            if (aVar6 != null) {
                aVar6.q(list);
            }
        }
        if (!hasMore && (aVar3 = this.mSubjectAdapter) != null && (fVarH2 = aVar3.h0()) != null) {
            fVarH2.t(false);
        }
        if (entity != null || (aVar2 = this.mSubjectAdapter) == null || (fVarH1 = aVar2.h0()) == null) {
            return;
        }
        fVarH1.v();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void loadMore() {
        RecyclerView recyclerView;
        Integer subjectType;
        if (!m.f70474a.e()) {
            uh.b.f76753a.d(R$string.no_network_toast);
            l lVar = (l) getMViewBinding();
            if (lVar == null || (recyclerView = lVar.f74673b) == null) {
                return;
            }
            recyclerView.postDelayed(new Runnable() { // from class: xq.g
                @Override // java.lang.Runnable
                public final void run() {
                    SearchValuesTypeFragment.D0(this.f78410a);
                }
            }, 300L);
            return;
        }
        SearchViewModel searchViewModel = this.mSearchViewModel;
        if (searchViewModel != null) {
            int i11 = this.page;
            int i12 = this.perPage;
            String strV0 = v0();
            Count count = this.mCount;
            searchViewModel.E(i11, i12, strV0, (count == null || (subjectType = count.getSubjectType()) == null) ? 0 : subjectType.intValue());
        }
    }

    private final void s0() {
        SearchWorkEntity searchWorkEntity = this.mEntity;
        final AccurateSubject accurateSubject = searchWorkEntity != null ? searchWorkEntity.getAccurateSubject() : null;
        if (accurateSubject != null) {
            Context context = getContext();
            AccurateSubjectView accurateSubjectView = context != null ? new AccurateSubjectView(context) : null;
            if (accurateSubjectView != null) {
                a aVar = this.mSubjectAdapter;
                if (aVar != null) {
                    BaseQuickAdapter.y(aVar, accurateSubjectView, 0, 0, 6, null);
                }
                accurateSubjectView.setData(accurateSubject);
                accurateSubjectView.setOnClickListener(new View.OnClickListener() { // from class: xq.k
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        SearchValuesTypeFragment.t0(this.f78414a, accurateSubject, view);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t0(SearchValuesTypeFragment searchValuesTypeFragment, AccurateSubject accurateSubject, View view) {
        searchValuesTypeFragment.H0(accurateSubject.getSubject(), 0, 4);
    }

    private final void u0(Subject subjectEntity) {
        String str;
        boolean z10;
        List<ResourceDetectors> resourceDetectors;
        String resourceLink;
        String subjectId;
        Context context;
        List<ResourceDetectors> resourceDetectors2;
        String resourceId;
        boolean z11;
        if (subjectEntity != null) {
            Integer subjectType = subjectEntity.getSubjectType();
            int value = SubjectType.SHORT_TV.getValue();
            if (subjectType != null && subjectType.intValue() == value) {
                DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f58398j.a();
                Context context2 = getContext();
                Intrinsics.f(context2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
                FragmentActivity fragmentActivity = (FragmentActivity) context2;
                hj.b logViewConfig = getLogViewConfig();
                downloadManagerApiA.d0(fragmentActivity, logViewConfig != null ? logViewConfig.f() : null, (384 & 4) != 0 ? "" : "", subjectEntity.getOps(), (384 & 16) != 0 ? null : "download_subject", (384 & 32) != 0 ? false : true, (384 & 64) != 0 ? null : subjectEntity, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? Boolean.FALSE : null);
                return;
            }
        }
        if (t.f652a.b()) {
            x0(subjectEntity);
            return;
        }
        String str2 = "";
        if (subjectEntity == null || (resourceDetectors2 = subjectEntity.getResourceDetectors()) == null) {
            str = "";
            z10 = false;
        } else {
            if (resourceDetectors2.isEmpty()) {
                resourceId = "";
            } else {
                resourceId = resourceDetectors2.get(0).getResourceId();
                if (resourceId == null) {
                    resourceId = "";
                }
                Integer type = resourceDetectors2.get(0).getType();
                z11 = true;
                if ((type == null || type.intValue() != 1) && !resourceDetectors2.get(0).isMultiResolution()) {
                }
                str = resourceId;
                z10 = z11;
            }
            z11 = false;
            str = resourceId;
            z10 = z11;
        }
        DownloadManagerApi.a aVar = DownloadManagerApi.f58398j;
        if (DownloadManagerApi.x0(aVar.a(), subjectEntity != null ? subjectEntity.getSubjectId() : null, str, z10, false, 8, null)) {
            if (subjectEntity == null || (subjectId = subjectEntity.getSubjectId()) == null || (context = getContext()) == null) {
                return;
            }
            DownloadManagerApi downloadManagerApiA2 = aVar.a();
            hj.b logViewConfig2 = getLogViewConfig();
            DownloadManagerApi.z0(downloadManagerApiA2, subjectId, context, logViewConfig2 != null ? logViewConfig2.f() : null, null, 8, null);
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            if (subjectEntity != null && (resourceDetectors = subjectEntity.getResourceDetectors()) != null && !resourceDetectors.isEmpty() && (resourceLink = resourceDetectors.get(0).getResourceLink()) != null) {
                str2 = resourceLink;
            }
            String str3 = str2;
            DownloadManagerApi downloadManagerApiA3 = aVar.a();
            Context context3 = getContext();
            Intrinsics.f(context3, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
            FragmentActivity fragmentActivity2 = (FragmentActivity) context3;
            hj.b logViewConfig3 = getLogViewConfig();
            downloadManagerApiA3.K(fragmentActivity2, subjectEntity, logViewConfig3 != null ? logViewConfig3.f() : null, (960 & 8) != 0 ? "" : "", subjectEntity != null ? subjectEntity.getOps() : null, str3, (960 & 64) != 0 ? "" : null, (960 & 128) != 0 ? null : "download_subject", (960 & 256) != 0 ? null : null, (960 & 512) != 0 ? false : false);
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    private final String v0() {
        String strO0;
        Fragment parentFragment = getParentFragment();
        SearchValuesFragment searchValuesFragment = parentFragment instanceof SearchValuesFragment ? (SearchValuesFragment) parentFragment : null;
        return (searchValuesFragment == null || (strO0 = searchValuesFragment.o0()) == null) ? "" : strO0;
    }

    private final void x0(Subject item) {
        if (item == null) {
            return;
        }
        Navigator navigatorC = TheRouter.c("/playvideo/detail");
        Integer subjectType = item.getSubjectType();
        Navigator.x(navigatorC.F("subject_type", subjectType != null ? subjectType.intValue() : SubjectType.MOVIE.getValue()).K("id", item.getSubjectId()).K("ops", item.getOps()), requireContext(), null, 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void y0() {
        RecyclerView recyclerView;
        l lVar = (l) getMViewBinding();
        if (lVar == null || (recyclerView = lVar.f74673b) == null) {
            return;
        }
        recyclerView.setItemAnimator(null);
        recyclerView.setLayoutManager(new NpaGridLayoutManager(recyclerView.getContext(), 3));
        Context context = recyclerView.getContext();
        Intrinsics.g(context, "getContext(...)");
        a aVar = new a(context);
        aVar.h0().D(new p6.f() { // from class: xq.h
            @Override // p6.f
            public final void a() {
                SearchValuesTypeFragment.z0(this.f78411a);
            }
        });
        aVar.w1(new d() { // from class: xq.i
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                SearchValuesTypeFragment.A0(this.f78412a, baseQuickAdapter, view, i11);
            }
        });
        aVar.l(R$id.llDownload);
        aVar.s1(new p6.b() { // from class: xq.j
            @Override // p6.b
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                SearchValuesTypeFragment.B0(this.f78413a, baseQuickAdapter, view, i11);
            }
        });
        this.mSubjectAdapter = aVar;
        recyclerView.setAdapter(aVar);
        recyclerView.addItemDecoration(new ig.b(a0.a(4.0f), a0.a(4.0f), a0.a(16.0f), a0.a(16.0f)));
        this.exposeUtil.n(recyclerView, new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z0(SearchValuesTypeFragment searchValuesTypeFragment) {
        searchValuesTypeFragment.loadMore();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public View getEmptyView(boolean isShowTitleLayout) {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        StateView stateView = new StateView(contextRequireContext);
        stateView.showData(2, getScreenType(), isShowPageStateLayoutTitle(), getPageStateLayoutTitle(), getEmptyDescText());
        return stateView;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public View getLoadingView() {
        if (this.loadingView == null) {
            this.loadingView = LayoutInflater.from(requireContext()).inflate(R$layout.loading_search_values_type_fragment_layout, (ViewGroup) getFlStateView(), false);
        }
        return this.loadingView;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public int getScreenType() {
        return 3;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        y0();
        F0();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        SearchViewModel searchViewModel = (SearchViewModel) new v0(this).a(SearchViewModel.class);
        searchViewModel.r().j(getViewLifecycleOwner(), new c(new Function1() { // from class: xq.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SearchValuesTypeFragment.C0(this.f78409a, (SearchWorkEntity) obj);
            }
        }));
        this.mSearchViewModel = searchViewModel;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isShowPageStateLayoutTitle() {
        return false;
    }

    @Override // com.transsion.baseui.fragment.LazyFragment
    public void lazyLoadData() {
        Integer subjectType;
        Integer subjectType2;
        Count count = this.mCount;
        if (count != null && (subjectType2 = count.getSubjectType()) != null && subjectType2.intValue() == 0) {
            this.page = 2;
            a aVar = this.mSubjectAdapter;
            if (aVar != null) {
                aVar.n1(this.subjectList);
            }
            s0();
            return;
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        int i11 = this.page;
        int i12 = this.perPage;
        String strV0 = v0();
        Count count2 = this.mCount;
        lg.a.C0828a.f(c0828a, "search", "SearchValuesTypeFragment --> loadDefaultData() -->  page = " + i11 + " -- perPage = " + i12 + " -- mKeyWord = " + strV0 + " -- mCount?.subjectType = " + (count2 != null ? count2.getSubjectType() : null), false, 4, null);
        if (E0()) {
            return;
        }
        showLoadingView();
        if (this.isLoading) {
            lg.a.C0828a.l(c0828a, "search", "SearchValuesTypeFragment --> loadDefaultData() --> isLoading == true", false, 4, null);
            return;
        }
        this.isLoading = true;
        SearchViewModel searchViewModel = this.mSearchViewModel;
        if (searchViewModel != null) {
            int i13 = this.page;
            int i14 = this.perPage;
            String strV1 = v0();
            Count count3 = this.mCount;
            searchViewModel.E(i13, i14, strV1, (count3 == null || (subjectType = count3.getSubjectType()) == null) ? 0 : subjectType.intValue());
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.exposeUtil.d();
        a aVar = this.mSubjectAdapter;
        if (aVar != null) {
            aVar.n1(null);
        }
        this.isLoading = false;
        this.page = 1;
    }

    @Override // com.transsion.baseui.fragment.LazyFragment, com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onResume() {
        a aVar;
        List<Object> data;
        super.onResume();
        if (E0() || (aVar = this.mSubjectAdapter) == null || (data = aVar.getData()) == null || !data.isEmpty() || this.page != 1) {
            return;
        }
        retryLoadData();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void receiveArguments() {
        Integer subjectType;
        super.receiveArguments();
        Bundle arguments = getArguments();
        if (arguments != null) {
            String string = arguments.getString("extend_value_keyword");
            if (string == null) {
                string = "";
            }
            this.mKeyWord = string;
            Serializable serializable = arguments.getSerializable("extend_value_count");
            this.mCount = serializable instanceof Count ? (Count) serializable : null;
            this.mType = arguments.getInt("extend_value_type");
        }
        SearchWorkEntity searchWorkEntity = this.mEntity;
        if (searchWorkEntity != null) {
            Count count = this.mCount;
            if (count != null && (subjectType = count.getSubjectType()) != null && subjectType.intValue() == 0) {
                List<SearchSubject> items = searchWorkEntity.getItems();
                if (!items.isEmpty()) {
                    Iterator<T> it = items.iterator();
                    while (it.hasNext()) {
                        this.subjectList.add((SearchSubject) it.next());
                    }
                }
            }
            this.accurateSubject = searchWorkEntity.getAccurateSubject();
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
        List<Object> data;
        a aVar = this.mSubjectAdapter;
        if (aVar == null || (data = aVar.getData()) == null || !data.isEmpty()) {
            loadMore();
        } else {
            lg.a.C0828a.f(lg.a.f68839a, "search", "SearchValuesTypeFragment --> retryLoadData() --> 重新连接网络的时候 加载数据", false, 4, null);
            lazyLoadData();
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: w0, reason: merged with bridge method [inline-methods] */
    public l getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        l lVarC = l.c(inflater);
        Intrinsics.g(lVarC, "inflate(...)");
        return lVarC;
    }
}
