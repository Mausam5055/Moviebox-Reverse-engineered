package com.transsion.ugcvideodetail.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.router.Navigator;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import com.transsion.ugcvideodetail.api.bean.UGCContentList;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoDetailParams;
import com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
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
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010!\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\t\n\u0002\b\u0007\u0018\u0000 T2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u00014B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u001f\u0010\f\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000e\u0010\u0005J\u000f\u0010\u000f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000f\u0010\u0005J%\u0010\u0014\u001a\u00020\u00062\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\b0\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0016\u0010\u0005J\u001d\u0010\u0017\u001a\u00020\u00062\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\b0\u0010H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u001d\u0010\u0019\u001a\u00020\u00062\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\b0\u0010H\u0002¢\u0006\u0004\b\u0019\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001c\u0010\u0005J\u0017\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u0012H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u0006H\u0016¢\u0006\u0004\b&\u0010\u0005J\u000f\u0010'\u001a\u00020\u0006H\u0016¢\u0006\u0004\b'\u0010\u0005J\u000f\u0010(\u001a\u00020\u0006H\u0016¢\u0006\u0004\b(\u0010\u0005J\u000f\u0010)\u001a\u00020\u0006H\u0016¢\u0006\u0004\b)\u0010\u0005J\u000f\u0010*\u001a\u00020\u0006H\u0016¢\u0006\u0004\b*\u0010\u0005J\u000f\u0010+\u001a\u00020\u0006H\u0016¢\u0006\u0004\b+\u0010\u0005J\u0017\u0010-\u001a\u00020\u00062\u0006\u0010,\u001a\u00020\u0012H\u0016¢\u0006\u0004\b-\u0010\u001bJ\u0017\u0010/\u001a\u00020\u00062\u0006\u0010.\u001a\u00020\u0012H\u0016¢\u0006\u0004\b/\u0010\u001bJ\u000f\u00101\u001a\u000200H\u0016¢\u0006\u0004\b1\u00102R\u001b\u00108\u001a\u0002038BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b4\u00105\u001a\u0004\b6\u00107R\u0018\u0010<\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0018\u0010@\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R\u0018\u0010D\u001a\u0004\u0018\u00010A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0018\u0010G\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR\u0018\u0010I\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010FR\u0018\u0010K\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010FR\u0018\u0010M\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010FR\u0016\u0010Q\u001a\u00020N8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010PR\u0016\u0010S\u001a\u0004\u0018\u00010!8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bR\u0010#¨\u0006U"}, d2 = {"Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailForYouFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lqv/e;", "Lix/a;", "<init>", "()V", "", "initExposureHelper", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", WebConstants.FIELD_ITEM, "", RequestParameters.POSITION, "A0", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V", "z0", "C0", "", "items", "", "hasMore", "D0", "(Ljava/util/List;Z)V", "v0", "E0", "(Ljava/util/List;)V", "q0", "F0", "(Z)V", "r0", "Landroid/view/LayoutInflater;", "inflater", "u0", "(Landroid/view/LayoutInflater;)Lqv/e;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "isShowPageStateLayoutTitle", "()Z", "receiveArguments", "initViewData", "initViewModel", "initListener", "retryLoadData", "onPause", "hidden", "onHiddenChanged", "fullscreen", "onScreenChange", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;", "a", "Lkotlin/Lazy;", "s0", "()Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;", "mViewModel", "Lcom/transsion/ugcvideodetail/adapter/f;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/ugcvideodetail/adapter/f;", "forYouAdapter", "Lsj/b;", "c", "Lsj/b;", "exposureHelper", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDetailParams;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDetailParams;", "videoParams", "e", "Ljava/lang/String;", "pageName", "f", "playFromType", "g", "outSideVideoName", "h", "fromOptId", "", "i", "J", "pageLoadStartTime", "t0", "ugcVideoId", "j", "UGCVideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCVideoDetailForYouFragment extends PageStatusFragment<qv.e> implements ix.a {

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final Lazy mViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(UGCVideoDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.ugcvideodetail.fragment.UGCVideoDetailForYouFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.ugcvideodetail.fragment.UGCVideoDetailForYouFragment$special$$inlined$activityViewModels$default$2
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

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private com.transsion.ugcvideodetail.adapter.f forYouAdapter;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private sj.b exposureHelper;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private UGCVideoDetailParams videoParams;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String pageName;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private String playFromType;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private String outSideVideoName;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private String fromOptId;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private long pageLoadStartTime;

    /* JADX INFO: renamed from: com.transsion.ugcvideodetail.fragment.UGCVideoDetailForYouFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UGCVideoDetailForYouFragment a() {
            return new UGCVideoDetailForYouFragment();
        }
    }

    public static final class b implements sj.a {
        b() {
        }

        @Override // sj.a
        public void a(int i11, long j11, View view) {
            UGCVideo uGCVideo;
            String str;
            UGCVideoDetailForYouFragment uGCVideoDetailForYouFragment = UGCVideoDetailForYouFragment.this;
            try {
                Result.Companion companion = Result.INSTANCE;
                com.transsion.ugcvideodetail.adapter.f fVar = uGCVideoDetailForYouFragment.forYouAdapter;
                if (fVar != null && (uGCVideo = (UGCVideo) fVar.getItem(i11)) != null && (str = uGCVideoDetailForYouFragment.pageName) != null) {
                    Fragment parentFragment = uGCVideoDetailForYouFragment.getParentFragment();
                    UGCVideoDetailBaseFragment uGCVideoDetailBaseFragment = parentFragment instanceof UGCVideoDetailBaseFragment ? (UGCVideoDetailBaseFragment) parentFragment : null;
                    com.transsion.ugcvideodetail.hepler.h.f56367a.d(str, uGCVideo, i11, j11, uGCVideoDetailForYouFragment.t0(), uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getTrackId() : null, uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousTrackId() : null, uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousPageVideoId() : null);
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
        private final /* synthetic */ Function1 f56152a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f56152a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f56152a;
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
            this.f56152a.invoke(obj);
        }
    }

    private final void A0(UGCVideo item, int position) {
        Fragment parentFragment = getParentFragment();
        UGCVideoDetailBaseFragment uGCVideoDetailBaseFragment = parentFragment instanceof UGCVideoDetailBaseFragment ? (UGCVideoDetailBaseFragment) parentFragment : null;
        final String trackId = uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getTrackId() : null;
        pv.b.a(item, new Function1() { // from class: com.transsion.ugcvideodetail.fragment.q0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UGCVideoDetailForYouFragment.B0(this.f56255a, trackId, (Navigator) obj);
            }
        });
        String str = this.pageName;
        if (str != null) {
            com.transsion.ugcvideodetail.hepler.h.f56367a.c(str, item, position, t0(), uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getTrackId() : null, uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousTrackId() : null, uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousPageVideoId() : null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Navigator B0(UGCVideoDetailForYouFragment uGCVideoDetailForYouFragment, String str, Navigator navigator) {
        Intrinsics.h(navigator, "navigator");
        return navigator.K("parent_video_id", uGCVideoDetailForYouFragment.t0()).K("parent_track_id", str);
    }

    private final void C0() {
        s0().U(true, t0(), this.outSideVideoName);
    }

    private final void D0(List items, boolean hasMore) {
        List<Object> data;
        if (items.isEmpty()) {
            v0();
            return;
        }
        com.transsion.ugcvideodetail.adapter.f fVar = this.forYouAdapter;
        if (fVar == null || (data = fVar.getData()) == null || !data.isEmpty()) {
            q0(items);
        } else {
            E0(items);
        }
        F0(hasMore);
    }

    private final void E0(List items) {
        com.transsion.ugcvideodetail.adapter.f fVar = this.forYouAdapter;
        if (fVar != null) {
            fVar.n1(items);
        }
        showContentView();
    }

    private final void F0(boolean hasMore) {
        r6.f fVarH0;
        r6.f fVarH1;
        if (hasMore) {
            com.transsion.ugcvideodetail.adapter.f fVar = this.forYouAdapter;
            if (fVar == null || (fVarH1 = fVar.h0()) == null) {
                return;
            }
            fVarH1.s();
            return;
        }
        com.transsion.ugcvideodetail.adapter.f fVar2 = this.forYouAdapter;
        if (fVar2 == null || (fVarH0 = fVar2.h0()) == null) {
            return;
        }
        fVarH0.t(false);
    }

    private final void initExposureHelper() {
        RecyclerView recyclerView;
        sj.b bVar = new sj.b(0.6f, new b(), false, 4, null);
        bVar.n(2);
        qv.e mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView = mViewBinding.f73724b) != null) {
            recyclerView.addOnScrollListener(bVar);
        }
        this.exposureHelper = bVar;
    }

    private final void q0(List items) {
        com.transsion.ugcvideodetail.adapter.f fVar = this.forYouAdapter;
        if (fVar != null) {
            fVar.q(items);
        }
    }

    private final void r0() {
        HashMap mapG;
        if (this.pageLoadStartTime > 0) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.pageLoadStartTime;
            hj.b logViewConfig = getLogViewConfig();
            if (logViewConfig == null || (mapG = logViewConfig.g()) == null) {
                return;
            }
        }
    }

    private final UGCVideoDetailViewModel s0() {
        return (UGCVideoDetailViewModel) this.mViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String t0() {
        UGCVideoDetailParams uGCVideoDetailParams = this.videoParams;
        if (uGCVideoDetailParams != null) {
            return uGCVideoDetailParams.getUgcVideoId();
        }
        return null;
    }

    private final void v0() {
        r6.f fVarH0;
        List<Object> data;
        com.transsion.ugcvideodetail.adapter.f fVar = this.forYouAdapter;
        if (fVar != null && (data = fVar.getData()) != null && data.isEmpty()) {
            showContentView();
            com.transsion.ugcvideodetail.adapter.f fVar2 = this.forYouAdapter;
            if (fVar2 != null) {
                fVar2.Y0(getEmptyView(false));
            }
        }
        com.transsion.ugcvideodetail.adapter.f fVar3 = this.forYouAdapter;
        if (fVar3 == null || (fVarH0 = fVar3.h0()) == null) {
            return;
        }
        fVarH0.t(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w0(UGCVideoDetailForYouFragment uGCVideoDetailForYouFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 2000L)) {
            return;
        }
        Object item = adapter.getItem(i11);
        UGCVideo uGCVideo = item instanceof UGCVideo ? (UGCVideo) item : null;
        if (uGCVideo == null) {
            return;
        }
        uGCVideoDetailForYouFragment.A0(uGCVideo, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x0(UGCVideoDetailForYouFragment uGCVideoDetailForYouFragment) {
        uGCVideoDetailForYouFragment.z0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit y0(UGCVideoDetailForYouFragment uGCVideoDetailForYouFragment, UGCContentList uGCContentList) {
        ArrayList arrayList;
        Pager pager;
        List<UGCContent> items;
        uGCVideoDetailForYouFragment.r0();
        hj.b logViewConfig = uGCVideoDetailForYouFragment.getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        if (uGCContentList == null || (items = uGCContentList.getItems()) == null) {
            arrayList = new ArrayList();
        } else {
            arrayList = new ArrayList();
            Iterator<T> it = items.iterator();
            while (it.hasNext()) {
                UGCVideo video = ((UGCContent) it.next()).getVideo();
                if (video != null) {
                    arrayList.add(video);
                }
            }
        }
        List listU0 = CollectionsKt.U0(arrayList);
        String nextPage = (uGCContentList == null || (pager = uGCContentList.getPager()) == null) ? null : pager.getNextPage();
        uGCVideoDetailForYouFragment.D0(listU0, !(nextPage == null || nextPage.length() == 0));
        return Unit.f67061a;
    }

    private final void z0() {
        s0().U(false, t0(), this.outSideVideoName);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        hj.b logViewConfig;
        HashMap mapG;
        hj.b logViewConfig2;
        HashMap mapG2;
        HashMap mapG3;
        hj.b logViewConfig3;
        HashMap mapG4;
        HashMap mapG5;
        HashMap mapG6;
        String subjectId;
        HashMap mapG7;
        String collectionId;
        HashMap mapG8;
        HashMap mapG9;
        HashMap mapG10;
        RecyclerView recyclerView;
        initExposureHelper();
        com.transsion.ugcvideodetail.adapter.f fVar = new com.transsion.ugcvideodetail.adapter.f();
        fVar.w1(new p6.d() { // from class: com.transsion.ugcvideodetail.fragment.o0
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                UGCVideoDetailForYouFragment.w0(this.f56248a, baseQuickAdapter, view, i11);
            }
        });
        fVar.h0().z(true);
        fVar.h0().y(true);
        fVar.h0().E(2);
        fVar.h0().D(new p6.f() { // from class: com.transsion.ugcvideodetail.fragment.p0
            @Override // p6.f
            public final void a() {
                UGCVideoDetailForYouFragment.x0(this.f56252a);
            }
        });
        this.forYouAdapter = fVar;
        qv.e mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView = mViewBinding.f73724b) != null) {
            recyclerView.setLayoutManager(new NpaLinearLayoutManager(recyclerView.getContext()));
            recyclerView.setAdapter(this.forYouAdapter);
        }
        hj.b logViewConfig4 = getLogViewConfig();
        if (logViewConfig4 != null && (mapG10 = logViewConfig4.g()) != null) {
        }
        hj.b logViewConfig5 = getLogViewConfig();
        if (logViewConfig5 != null && (mapG9 = logViewConfig5.g()) != null) {
            UGCVideoDetailParams uGCVideoDetailParams = this.videoParams;
        }
        hj.b logViewConfig6 = getLogViewConfig();
        String str = "";
        if (logViewConfig6 != null && (mapG8 = logViewConfig6.g()) != null) {
            String strT0 = t0();
            if (strT0 == null) {
                strT0 = "";
            }
        }
        hj.b logViewConfig7 = getLogViewConfig();
        if (logViewConfig7 != null && (mapG7 = logViewConfig7.g()) != null) {
            UGCVideoDetailParams uGCVideoDetailParams2 = this.videoParams;
            if (uGCVideoDetailParams2 == null || (collectionId = uGCVideoDetailParams2.getCollectionId()) == null) {
                collectionId = "";
            }
        }
        hj.b logViewConfig8 = getLogViewConfig();
        if (logViewConfig8 != null && (mapG6 = logViewConfig8.g()) != null) {
            UGCVideoDetailParams uGCVideoDetailParams3 = this.videoParams;
            if (uGCVideoDetailParams3 != null && (subjectId = uGCVideoDetailParams3.getSubjectId()) != null) {
                str = subjectId;
            }
        }
        hj.b logViewConfig9 = getLogViewConfig();
        if (logViewConfig9 != null && (mapG5 = logViewConfig9.g()) != null) {
        }
        String str2 = this.fromOptId;
        if (str2 != null && (logViewConfig3 = getLogViewConfig()) != null && (mapG4 = logViewConfig3.g()) != null) {
        }
        Fragment parentFragment = getParentFragment();
        UGCVideoDetailBaseFragment uGCVideoDetailBaseFragment = parentFragment instanceof UGCVideoDetailBaseFragment ? (UGCVideoDetailBaseFragment) parentFragment : null;
        if (uGCVideoDetailBaseFragment != null) {
            hj.b logViewConfig10 = getLogViewConfig();
            if (logViewConfig10 != null && (mapG3 = logViewConfig10.g()) != null) {
            }
            String previousTrackId = uGCVideoDetailBaseFragment.getPreviousTrackId();
            if (previousTrackId != null && (logViewConfig2 = getLogViewConfig()) != null && (mapG2 = logViewConfig2.g()) != null) {
            }
            String previousPageVideoId = uGCVideoDetailBaseFragment.getPreviousPageVideoId();
            if (previousPageVideoId != null && (logViewConfig = getLogViewConfig()) != null && (mapG = logViewConfig.g()) != null) {
            }
        }
        C0();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        s0().I().j(getViewLifecycleOwner(), new c(new Function1() { // from class: com.transsion.ugcvideodetail.fragment.n0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UGCVideoDetailForYouFragment.y0(this.f56245a, (UGCContentList) obj);
            }
        }));
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isShowPageStateLayoutTitle() {
        return false;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public hj.b newLogViewConfig() {
        String str = this.pageName;
        if (str == null) {
            str = "/ugc_video/detail";
        }
        return new hj.b(str, false, 2, null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (isResumed()) {
            if (hidden) {
                sj.b bVar = this.exposureHelper;
                if (bVar != null) {
                    bVar.f();
                }
                logPause();
            } else {
                logResume();
            }
        }
        com.transsion.baseui.activity.k.h(null, this, hidden, null, 9, null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        sj.b bVar = this.exposureHelper;
        if (bVar != null) {
            bVar.f();
        }
    }

    @Override // ix.a
    public void onScreenChange(boolean fullscreen) {
        r6.f fVarH0;
        com.transsion.ugcvideodetail.adapter.f fVar = this.forYouAdapter;
        if (fVar == null || (fVarH0 = fVar.h0()) == null) {
            return;
        }
        fVarH0.y(!fullscreen);
        lg.a.C0828a c0828a = lg.a.f68839a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onScreenChange: fullscreen=");
        sb2.append(fullscreen);
        sb2.append(", isAutoLoadMore=");
        sb2.append(!fullscreen);
        lg.a.C0828a.f(c0828a, "UGCVideoDetailForYouFragment", sb2.toString(), false, 4, null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void receiveArguments() {
        String string;
        this.pageLoadStartTime = System.currentTimeMillis();
        Bundle arguments = getArguments();
        Serializable serializable = arguments != null ? arguments.getSerializable("video_params") : null;
        this.videoParams = serializable instanceof UGCVideoDetailParams ? (UGCVideoDetailParams) serializable : null;
        Bundle arguments2 = getArguments();
        this.pageName = arguments2 != null ? arguments2.getString("page_name") : null;
        Bundle arguments3 = getArguments();
        if (arguments3 == null || (string = arguments3.getString(NativeComponentConstants.KEY_COMPONENT_TYPE)) == null) {
            string = "TYPE_ONLINE";
        }
        this.playFromType = string;
        Bundle arguments4 = getArguments();
        this.fromOptId = arguments4 != null ? arguments4.getString("from_opt_id") : null;
        if (Intrinsics.c(this.playFromType, "TYPE_LOCAL_OUT")) {
            Bundle arguments5 = getArguments();
            this.outSideVideoName = arguments5 != null ? arguments5.getString("content_name") : null;
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: u0, reason: merged with bridge method [inline-methods] */
    public qv.e getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        qv.e eVarC = qv.e.c(inflater);
        Intrinsics.g(eVarC, "inflate(...)");
        return eVarC;
    }
}
