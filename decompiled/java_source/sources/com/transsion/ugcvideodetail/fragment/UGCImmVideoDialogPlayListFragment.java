package com.transsion.ugcvideodetail.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ProgressBar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.router.Navigator;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.ugcvideodetail.api.UGCPageStyle;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideo;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideoContent;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
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
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 W2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001/B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J%\u0010\u000b\u001a\u00020\u00052\b\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000e\u0010\u0004J\u0019\u0010\u0010\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J-\u0010\u0018\u001a\u00020\u00052\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001a\u0010\u0004J\u0017\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0015H\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0005H\u0016¢\u0006\u0004\b#\u0010\u0004J\u000f\u0010$\u001a\u00020\u0005H\u0016¢\u0006\u0004\b$\u0010\u0004J\r\u0010%\u001a\u00020\u0005¢\u0006\u0004\b%\u0010\u0004J\r\u0010&\u001a\u00020\u0005¢\u0006\u0004\b&\u0010\u0004J\u000f\u0010'\u001a\u00020\u0005H\u0016¢\u0006\u0004\b'\u0010\u0004J\u000f\u0010(\u001a\u00020\u0005H\u0016¢\u0006\u0004\b(\u0010\u0004J\u000f\u0010)\u001a\u00020\u0005H\u0016¢\u0006\u0004\b)\u0010\u0004J\u000f\u0010*\u001a\u00020\u0005H\u0016¢\u0006\u0004\b*\u0010\u0004J\u0017\u0010,\u001a\u00020\u00052\u0006\u0010+\u001a\u00020\u0015H\u0016¢\u0006\u0004\b,\u0010-R\u001b\u00103\u001a\u00020.8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b1\u00102R\u001b\u00106\u001a\u00020.8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b4\u00100\u001a\u0004\b5\u00102R\u0018\u0010:\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0018\u0010>\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u0018\u0010A\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u0016\u0010D\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0018\u0010G\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR\u0016\u0010K\u001a\u00020H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010JR\u0016\u0010M\u001a\u00020H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010JR\u0016\u0010O\u001a\u00020H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010JR\u0014\u0010Q\u001a\u00020H8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bP\u0010JR\u001c\u0010V\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010S0R8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bT\u0010U¨\u0006X"}, d2 = {"Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDialogPlayListFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lqv/l;", "<init>", "()V", "", "showLoading", "hideLoading", "", "videoId", "previousVideoId", "I0", "(Ljava/lang/String;Ljava/lang/String;)V", "E0", "H0", "ugcVideoId", "C0", "(Ljava/lang/String;)V", "", "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;", "newList", "", "isLoadDown", "hasMore", "B0", "(Ljava/util/List;ZZ)V", "initExposureHelper", "Landroid/view/LayoutInflater;", "inflater", "t0", "(Landroid/view/LayoutInflater;)Lqv/l;", "getPageStateLayoutTitle", "()Ljava/lang/String;", "isAudioShowNoNetworkLayout", "()Z", "receiveArguments", "initViewData", "r0", "G0", "initViewModel", "initListener", "retryLoadData", "onPause", "hidden", "onHiddenChanged", "(Z)V", "Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;", "a", "Lkotlin/Lazy;", "u0", "()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;", "viewModel", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "s0", "recVideoViewModel", "Lcom/transsion/ugcvideodetail/adapter/b;", "c", "Lcom/transsion/ugcvideodetail/adapter/b;", "playListAdapter", "Lsj/b;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lsj/b;", "exposureHelper", "e", "Ljava/lang/String;", "currentPlayingId", "f", "Z", "isCollectionList", "g", "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;", "curVideo", "", "h", "I", "tabIndex", "i", "tabStartPosition", "j", "tabEndPosition", CampaignEx.JSON_KEY_AD_K, "scrollOffset", "Landroidx/lifecycle/c0;", "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;", "l", "Landroidx/lifecycle/c0;", "playListObserver", "m", "UGCVideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCImmVideoDialogPlayListFragment extends PageStatusFragment<qv.l> {

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final Lazy viewModel = FragmentViewModelLazyKt.a(this, Reflection.b(UGCImmVideoDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.ugcvideodetail.fragment.UGCImmVideoDialogPlayListFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.ugcvideodetail.fragment.UGCImmVideoDialogPlayListFragment$special$$inlined$activityViewModels$default$2
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
    private final Lazy recVideoViewModel;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private com.transsion.ugcvideodetail.adapter.b playListAdapter;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private sj.b exposureHelper;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String currentPlayingId;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private boolean isCollectionList;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private UGCImmVideo curVideo;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private int tabIndex;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private int tabStartPosition;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private int tabEndPosition;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private final int scrollOffset;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private final androidx.p009lifecycle.c0 playListObserver;

    /* JADX INFO: renamed from: com.transsion.ugcvideodetail.fragment.UGCImmVideoDialogPlayListFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UGCImmVideoDialogPlayListFragment a(boolean z10, int i11, int i12, int i13) {
            UGCImmVideoDialogPlayListFragment uGCImmVideoDialogPlayListFragment = new UGCImmVideoDialogPlayListFragment();
            Bundle bundle = new Bundle();
            bundle.putBoolean("ISC_COLLECTION_LIST", z10);
            bundle.putInt("tab_index", i11);
            bundle.putInt("tab_start_position", i12);
            bundle.putInt("tab_end_position", i13);
            uGCImmVideoDialogPlayListFragment.setArguments(bundle);
            return uGCImmVideoDialogPlayListFragment;
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f56091a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f56091a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f56091a;
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
            this.f56091a.invoke(obj);
        }
    }

    public UGCImmVideoDialogPlayListFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.transsion.ugcvideodetail.fragment.UGCImmVideoDialogPlayListFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return this;
            }
        };
        this.recVideoViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(UGCImmVideoDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.ugcvideodetail.fragment.UGCImmVideoDialogPlayListFragment$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final androidx.p009lifecycle.x0 invoke() {
                androidx.p009lifecycle.x0 viewModelStore = ((androidx.p009lifecycle.y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.ugcvideodetail.fragment.UGCImmVideoDialogPlayListFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final androidx.lifecycle.v0.c invoke() {
                Object objInvoke = function0.invoke();
                androidx.p009lifecycle.m mVar = objInvoke instanceof androidx.p009lifecycle.m ? (androidx.p009lifecycle.m) objInvoke : null;
                androidx.lifecycle.v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = this.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
        this.isCollectionList = true;
        this.tabStartPosition = 1;
        this.tabEndPosition = 50;
        this.scrollOffset = (com.blankj.utilcode.util.y.e() / 2) - dk.a.b(80);
        this.playListObserver = new androidx.p009lifecycle.c0() { // from class: com.transsion.ugcvideodetail.fragment.m
            @Override // androidx.p009lifecycle.c0
            public final void onChanged(Object obj) {
                UGCImmVideoDialogPlayListFragment.F0(this.f56241a, (UGCImmVideoContent) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit A0(UGCImmVideoDialogPlayListFragment uGCImmVideoDialogPlayListFragment, String str) {
        if (str != null && str.length() != 0) {
            J0(uGCImmVideoDialogPlayListFragment, str, null, 2, null);
        }
        return Unit.f67061a;
    }

    private final void B0(List newList, boolean isLoadDown, boolean hasMore) {
        int iVideoUGCPosition;
        UGCVideo ugcVideo;
        com.transsion.ugcvideodetail.adapter.b bVar = this.playListAdapter;
        if (bVar == null) {
            return;
        }
        List<Object> data = bVar.getData();
        if (data.isEmpty()) {
            bVar.n1(CollectionsKt.U0(newList));
            if (!isLoadDown) {
                bVar.o0().e(false);
                return;
            } else if (hasMore) {
                bVar.h0().s();
                return;
            } else {
                r6.f.u(bVar.h0(), false, 1, null);
                bVar.h0().z(false);
                return;
            }
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = data.iterator();
        while (it.hasNext()) {
            UGCVideo ugcVideo2 = ((UGCImmVideo) it.next()).getUgcVideo();
            Integer numValueOf = ugcVideo2 != null ? Integer.valueOf(ugcVideo2.videoUGCPosition()) : null;
            if (numValueOf != null) {
                arrayList.add(numValueOf);
            }
        }
        Set setW0 = CollectionsKt.W0(arrayList);
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = newList.iterator();
        while (true) {
            iVideoUGCPosition = -1;
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            UGCVideo ugcVideo3 = ((UGCImmVideo) next).getUgcVideo();
            iVideoUGCPosition = ugcVideo3 != null ? ugcVideo3.videoUGCPosition() : -1;
            if (iVideoUGCPosition > 0 && !setW0.contains(Integer.valueOf(iVideoUGCPosition))) {
                arrayList2.add(next);
            }
        }
        if (arrayList2.isEmpty()) {
            if (!isLoadDown) {
                bVar.o0().e(false);
                return;
            } else if (hasMore) {
                bVar.h0().s();
                return;
            } else {
                r6.f.u(bVar.h0(), false, 1, null);
                bVar.h0().z(false);
                return;
            }
        }
        if (isLoadDown) {
            bVar.q(arrayList2);
        } else {
            bVar.o(0, arrayList2);
        }
        if (!isLoadDown) {
            bVar.o0().e(false);
        } else if (hasMore) {
            bVar.h0().s();
        } else {
            r6.f.u(bVar.h0(), false, 1, null);
            bVar.h0().z(false);
        }
        UGCImmVideo uGCImmVideo = (UGCImmVideo) CollectionsKt.k0(bVar.getData());
        if (uGCImmVideo != null && (ugcVideo = uGCImmVideo.getUgcVideo()) != null) {
            iVideoUGCPosition = ugcVideo.videoUGCPosition();
        }
        if (iVideoUGCPosition > 1) {
            bVar.o0().d(true);
        }
        lg.a.C0828a.f(lg.a.f68839a, "UGCImmVideoDialogPlayListFragment", "insertCollectionList: isLoadDown=" + isLoadDown + ", inserted=" + arrayList2.size() + ", adapterSize=" + bVar.getData().size() + ", firstPosition=" + iVideoUGCPosition, false, 4, null);
    }

    private final void C0(final String ugcVideoId) {
        qv.l mViewBinding;
        RecyclerView recyclerView;
        if (ugcVideoId == null || ugcVideoId.length() == 0 || getMViewBinding() == null || this.playListAdapter == null || (mViewBinding = getMViewBinding()) == null || (recyclerView = mViewBinding.f73798c) == null) {
            return;
        }
        recyclerView.postDelayed(new Runnable() { // from class: com.transsion.ugcvideodetail.fragment.t
            @Override // java.lang.Runnable
            public final void run() {
                UGCImmVideoDialogPlayListFragment.D0(this.f56264a, ugcVideoId);
            }
        }, 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D0(UGCImmVideoDialogPlayListFragment uGCImmVideoDialogPlayListFragment, String str) {
        RecyclerView recyclerView;
        List<Object> data;
        List<Object> data2;
        com.transsion.ugcvideodetail.adapter.b bVar = uGCImmVideoDialogPlayListFragment.playListAdapter;
        int i11 = -1;
        Unit unit = null;
        if (bVar != null && (data2 = bVar.getData()) != null) {
            Iterator<Object> it = data2.iterator();
            int i12 = 0;
            while (it.hasNext()) {
                UGCVideo ugcVideo = ((UGCImmVideo) it.next()).getUgcVideo();
                if (Intrinsics.c(ugcVideo != null ? ugcVideo.videoUGCId() : null, str)) {
                    i11 = i12;
                    break;
                }
                i12++;
            }
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        com.transsion.ugcvideodetail.adapter.b bVar2 = uGCImmVideoDialogPlayListFragment.playListAdapter;
        lg.a.C0828a.f(c0828a, "UGCImmVideoDialogPlayListFragment", "listScrollToPosition id:" + str + ", position:" + i11 + ", dataSize:" + ((bVar2 == null || (data = bVar2.getData()) == null) ? 0 : data.size()), false, 4, null);
        if (i11 < 0) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            qv.l mViewBinding = uGCImmVideoDialogPlayListFragment.getMViewBinding();
            RecyclerView.m layoutManager = (mViewBinding == null || (recyclerView = mViewBinding.f73798c) == null) ? null : recyclerView.getLayoutManager();
            LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
            if (linearLayoutManager != null) {
                int i13 = uGCImmVideoDialogPlayListFragment.scrollOffset;
                linearLayoutManager.scrollToPositionWithOffset(i11, i13 > 0 ? i13 : 0);
                unit = Unit.f67061a;
            }
            Result.m454constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    private final void E0() {
        UGCVideo ugcVideo;
        UGCVideoBelongToCollection belongToCollection;
        String collectionId;
        List<Object> listL;
        r6.f fVarH0;
        r6.f fVarH1;
        UGCVideo ugcVideo2;
        UGCImmVideo uGCImmVideo = this.curVideo;
        if (uGCImmVideo == null || (ugcVideo = uGCImmVideo.getUgcVideo()) == null || (belongToCollection = ugcVideo.getBelongToCollection()) == null || (collectionId = belongToCollection.getCollectionId()) == null) {
            return;
        }
        com.transsion.ugcvideodetail.adapter.b bVar = this.playListAdapter;
        if (bVar == null || (listL = bVar.getData()) == null) {
            listL = CollectionsKt.l();
        }
        UGCImmVideo uGCImmVideo2 = (UGCImmVideo) CollectionsKt.v0(listL);
        int iVideoUGCPosition = (uGCImmVideo2 == null || (ugcVideo2 = uGCImmVideo2.getUgcVideo()) == null) ? this.tabStartPosition - 1 : ugcVideo2.videoUGCPosition();
        int i11 = this.tabEndPosition;
        if (iVideoUGCPosition >= i11) {
            com.transsion.ugcvideodetail.adapter.b bVar2 = this.playListAdapter;
            if (bVar2 != null && (fVarH1 = bVar2.h0()) != null) {
                r6.f.u(fVarH1, false, 1, null);
            }
            com.transsion.ugcvideodetail.adapter.b bVar3 = this.playListAdapter;
            if (bVar3 != null && (fVarH0 = bVar3.h0()) != null) {
                fVarH0.z(false);
            }
            lg.a.C0828a.f(lg.a.f68839a, "UGCImmVideoDialogPlayListFragment", "loadMoreData: reached tab end position " + this.tabEndPosition + ", stop loading", false, 4, null);
            return;
        }
        int i12 = iVideoUGCPosition + 1;
        int iMin = Math.min(iVideoUGCPosition + 9, i11);
        lg.a.C0828a.f(lg.a.f68839a, "UGCImmVideoDialogPlayListFragment", "loadMoreData: tabIndex=" + this.tabIndex + ", startPosition=" + i12 + ", endPosition=" + iMin + ", tabRange=[" + this.tabStartPosition + "-" + this.tabEndPosition + "]", false, 4, null);
        if (this.isCollectionList) {
            UGCImmVideoDetailViewModel.Q0(u0(), collectionId, this.tabStartPosition, iMin, true, false, 16, null);
        } else {
            s0().P0(collectionId, this.tabStartPosition, iMin, true, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:23:0x0040  */
    public static final void F0(UGCImmVideoDialogPlayListFragment uGCImmVideoDialogPlayListFragment, UGCImmVideoContent uGCImmVideoContent) {
        boolean z10;
        UGCVideo ugcVideo;
        uGCImmVideoDialogPlayListFragment.hideLoading();
        List<UGCImmVideo> list = uGCImmVideoContent != null ? uGCImmVideoContent.getList() : null;
        List<UGCImmVideo> list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        UGCImmVideo uGCImmVideo = (UGCImmVideo) CollectionsKt.k0(list);
        if (uGCImmVideo == null || !uGCImmVideo.getIsCollectionList()) {
            UGCImmVideo uGCImmVideo2 = (UGCImmVideo) CollectionsKt.k0(list);
            if (((uGCImmVideo2 == null || (ugcVideo = uGCImmVideo2.getUgcVideo()) == null) ? -1 : ugcVideo.videoUGCPosition()) != -1) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = true;
        }
        if (z10) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                UGCVideo ugcVideo2 = ((UGCImmVideo) obj).getUgcVideo();
                int iVideoUGCPosition = ugcVideo2 != null ? ugcVideo2.videoUGCPosition() : -1;
                if (iVideoUGCPosition <= uGCImmVideoDialogPlayListFragment.tabEndPosition && uGCImmVideoDialogPlayListFragment.tabStartPosition <= iVideoUGCPosition) {
                    arrayList.add(obj);
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            boolean zIsLoadDown = uGCImmVideoContent.isLoadDown();
            Pager pager = uGCImmVideoContent.getPager();
            uGCImmVideoDialogPlayListFragment.B0(arrayList, zIsLoadDown, pager != null ? Intrinsics.c(pager.getHasMore(), Boolean.TRUE) : false);
        }
    }

    private final void H0() {
        UGCVideo ugcVideo;
        UGCVideoBelongToCollection belongToCollection;
        String collectionId;
        List<Object> listL;
        r6.g gVarO0;
        r6.g gVarO1;
        r6.g gVarO2;
        UGCVideo ugcVideo2;
        UGCImmVideo uGCImmVideo = this.curVideo;
        if (uGCImmVideo == null || (ugcVideo = uGCImmVideo.getUgcVideo()) == null || (belongToCollection = ugcVideo.getBelongToCollection()) == null || (collectionId = belongToCollection.getCollectionId()) == null) {
            return;
        }
        com.transsion.ugcvideodetail.adapter.b bVar = this.playListAdapter;
        if (bVar == null || (listL = bVar.getData()) == null) {
            listL = CollectionsKt.l();
        }
        UGCImmVideo uGCImmVideo2 = (UGCImmVideo) CollectionsKt.k0(listL);
        int iVideoUGCPosition = (uGCImmVideo2 == null || (ugcVideo2 = uGCImmVideo2.getUgcVideo()) == null) ? this.tabStartPosition : ugcVideo2.videoUGCPosition();
        if (iVideoUGCPosition <= this.tabStartPosition) {
            com.transsion.ugcvideodetail.adapter.b bVar2 = this.playListAdapter;
            if (bVar2 != null && (gVarO2 = bVar2.o0()) != null) {
                gVarO2.d(false);
            }
            lg.a.C0828a.f(lg.a.f68839a, "UGCImmVideoDialogPlayListFragment", "upFetchData: reached tab start position " + this.tabStartPosition + ", stop loading", false, 4, null);
            return;
        }
        if (iVideoUGCPosition <= 1) {
            com.transsion.ugcvideodetail.adapter.b bVar3 = this.playListAdapter;
            if (bVar3 == null || (gVarO1 = bVar3.o0()) == null) {
                return;
            }
            gVarO1.d(false);
            return;
        }
        com.transsion.ugcvideodetail.adapter.b bVar4 = this.playListAdapter;
        if (bVar4 != null && (gVarO0 = bVar4.o0()) != null) {
            gVarO0.e(true);
        }
        int i11 = iVideoUGCPosition - 1;
        int iMax = Math.max(iVideoUGCPosition - 9, this.tabStartPosition);
        lg.a.C0828a.f(lg.a.f68839a, "UGCImmVideoDialogPlayListFragment", "upFetchData: tabIndex=" + this.tabIndex + ", startPosition=" + iMax + ", endPosition=" + i11 + ", tabRange=[" + this.tabStartPosition + "-" + this.tabEndPosition + "]", false, 4, null);
        if (this.isCollectionList) {
            UGCImmVideoDetailViewModel.Q0(u0(), collectionId, this.tabStartPosition, i11, true, false, 16, null);
        } else {
            s0().P0(collectionId, this.tabStartPosition, i11, true, true);
        }
    }

    private final void I0(String videoId, String previousVideoId) {
        this.currentPlayingId = videoId;
        com.transsion.ugcvideodetail.adapter.b bVar = this.playListAdapter;
        if (bVar != null) {
            if (previousVideoId == null) {
                previousVideoId = videoId;
            }
            bVar.E1(videoId, previousVideoId);
        }
    }

    static /* synthetic */ void J0(UGCImmVideoDialogPlayListFragment uGCImmVideoDialogPlayListFragment, String str, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str2 = null;
        }
        uGCImmVideoDialogPlayListFragment.I0(str, str2);
    }

    private final void hideLoading() {
        ProgressBar progressBar;
        qv.l mViewBinding = getMViewBinding();
        if (mViewBinding == null || (progressBar = mViewBinding.f73797b) == null) {
            return;
        }
        jg.c.g(progressBar);
    }

    private final void initExposureHelper() {
        com.transsion.ugcvideodetail.hepler.g gVar = com.transsion.ugcvideodetail.hepler.g.f56359a;
        qv.l mViewBinding = getMViewBinding();
        Intrinsics.e(mViewBinding);
        RecyclerView recyclerView = mViewBinding.f73798c;
        Intrinsics.g(recyclerView, "recyclerView");
        this.exposureHelper = gVar.a(recyclerView, u0(), "/ugc_video/immersive_detail", new Function1() { // from class: com.transsion.ugcvideodetail.fragment.r
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UGCImmVideoDialogPlayListFragment.v0(this.f56258a, ((Integer) obj).intValue());
            }
        }, u0().T(), u0().P(), u0().O(), Boolean.valueOf(u0().Y0()));
    }

    private final UGCImmVideoDetailViewModel s0() {
        return (UGCImmVideoDetailViewModel) this.recVideoViewModel.getValue();
    }

    private final void showLoading() {
        ProgressBar progressBar;
        qv.l mViewBinding = getMViewBinding();
        if (mViewBinding == null || (progressBar = mViewBinding.f73797b) == null) {
            return;
        }
        jg.c.k(progressBar);
    }

    private final UGCImmVideoDetailViewModel u0() {
        return (UGCImmVideoDetailViewModel) this.viewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UGCVideo v0(UGCImmVideoDialogPlayListFragment uGCImmVideoDialogPlayListFragment, int i11) {
        List<Object> data;
        UGCImmVideo uGCImmVideo;
        com.transsion.ugcvideodetail.adapter.b bVar = uGCImmVideoDialogPlayListFragment.playListAdapter;
        if (bVar == null || (data = bVar.getData()) == null || (uGCImmVideo = (UGCImmVideo) CollectionsKt.l0(data, i11)) == null) {
            return null;
        }
        return uGCImmVideo.getUgcVideo();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w0(final UGCImmVideoDialogPlayListFragment uGCImmVideoDialogPlayListFragment, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        com.transsion.ugcvideodetail.adapter.b bVar;
        List<Object> data;
        UGCImmVideo uGCImmVideo;
        UGCVideo ugcVideo;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "view");
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 2000L) || (bVar = uGCImmVideoDialogPlayListFragment.playListAdapter) == null || (data = bVar.getData()) == null || (uGCImmVideo = (UGCImmVideo) CollectionsKt.l0(data, i11)) == null) {
            return;
        }
        UGCVideo ugcVideo2 = uGCImmVideo.getUgcVideo();
        String strVideoUGCId = ugcVideo2 != null ? ugcVideo2.videoUGCId() : null;
        UGCImmVideo uGCImmVideo2 = uGCImmVideoDialogPlayListFragment.curVideo;
        if (!Intrinsics.c(strVideoUGCId, (uGCImmVideo2 == null || (ugcVideo = uGCImmVideo2.getUgcVideo()) == null) ? null : ugcVideo.getUgcVideoId()) || strVideoUGCId == null || strVideoUGCId.length() == 0) {
            UGCVideo ugcVideo3 = uGCImmVideo.getUgcVideo();
            if (ugcVideo3 != null) {
                com.transsion.ugcvideodetail.hepler.g.f56359a.c(ugcVideo3, i11, "/ugc_video/immersive_detail", uGCImmVideoDialogPlayListFragment.u0().T(), uGCImmVideoDialogPlayListFragment.u0().P(), uGCImmVideoDialogPlayListFragment.u0().O());
            }
            if (uGCImmVideoDialogPlayListFragment.isCollectionList) {
                androidx.p009lifecycle.b0 b0VarO0 = uGCImmVideoDialogPlayListFragment.u0().O0();
                UGCVideo ugcVideo4 = uGCImmVideo.getUgcVideo();
                b0VarO0.q(ugcVideo4 != null ? Integer.valueOf(ugcVideo4.videoUGCPosition()) : null);
            } else {
                UGCVideo ugcVideo5 = uGCImmVideo.getUgcVideo();
                if (ugcVideo5 != null) {
                    pv.b.a(ugcVideo5, new Function1() { // from class: com.transsion.ugcvideodetail.fragment.s
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return UGCImmVideoDialogPlayListFragment.x0(this.f56261a, (Navigator) obj);
                        }
                    });
                }
            }
            if (strVideoUGCId != null) {
                uGCImmVideoDialogPlayListFragment.C0(strVideoUGCId);
            }
            Fragment parentFragment = uGCImmVideoDialogPlayListFragment.getParentFragment();
            BaseDialog baseDialog = parentFragment instanceof BaseDialog ? (BaseDialog) parentFragment : null;
            if (baseDialog != null) {
                baseDialog.dismissAllowingStateLoss();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Navigator x0(UGCImmVideoDialogPlayListFragment uGCImmVideoDialogPlayListFragment, Navigator navigator) {
        Intrinsics.h(navigator, "navigator");
        return navigator.K("parent_video_id", (String) uGCImmVideoDialogPlayListFragment.u0().D().f()).K("parent_track_id", uGCImmVideoDialogPlayListFragment.u0().T()).K("videoStyle", UGCPageStyle.UGC_PAGE_STYLE_IMM_VERTICAL_VIDEO.getValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y0(UGCImmVideoDialogPlayListFragment uGCImmVideoDialogPlayListFragment) {
        uGCImmVideoDialogPlayListFragment.E0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z0(UGCImmVideoDialogPlayListFragment uGCImmVideoDialogPlayListFragment) {
        if (nh.m.f70474a.e()) {
            uGCImmVideoDialogPlayListFragment.H0();
        }
    }

    public final void G0() {
        UGCVideo ugcVideo;
        String ugcVideoId;
        List<Object> listL;
        UGCImmVideo uGCImmVideo = this.curVideo;
        if (uGCImmVideo == null || (ugcVideo = uGCImmVideo.getUgcVideo()) == null || (ugcVideoId = ugcVideo.getUgcVideoId()) == null) {
            return;
        }
        com.transsion.ugcvideodetail.adapter.b bVar = this.playListAdapter;
        if (bVar == null || (listL = bVar.getData()) == null) {
            listL = CollectionsKt.l();
        }
        if (listL.isEmpty()) {
            return;
        }
        List<Object> list = listL;
        if ((list instanceof Collection) && list.isEmpty()) {
            return;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            UGCVideo ugcVideo2 = ((UGCImmVideo) it.next()).getUgcVideo();
            if (Intrinsics.c(ugcVideo2 != null ? ugcVideo2.videoUGCId() : null, ugcVideoId)) {
                J0(this, ugcVideoId, null, 2, null);
                C0(ugcVideoId);
                return;
            }
        }
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
        RecyclerView recyclerView;
        this.curVideo = (UGCImmVideo) u0().L0().f();
        com.transsion.ugcvideodetail.adapter.b bVar = new com.transsion.ugcvideodetail.adapter.b(true);
        bVar.w1(new p6.d() { // from class: com.transsion.ugcvideodetail.fragment.n
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                UGCImmVideoDialogPlayListFragment.w0(this.f56244a, baseQuickAdapter, view, i11);
            }
        });
        bVar.h0().z(true);
        bVar.h0().y(true);
        bVar.h0().E(3);
        bVar.h0().D(new p6.f() { // from class: com.transsion.ugcvideodetail.fragment.o
            @Override // p6.f
            public final void a() {
                UGCImmVideoDialogPlayListFragment.y0(this.f56247a);
            }
        });
        bVar.o0().d(true);
        bVar.o0().c(2);
        bVar.o0().b(new p6.g() { // from class: com.transsion.ugcvideodetail.fragment.p
            @Override // p6.g
            public final void a() {
                UGCImmVideoDialogPlayListFragment.z0(this.f56251a);
            }
        });
        this.playListAdapter = bVar;
        qv.l mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView = mViewBinding.f73798c) != null) {
            recyclerView.setLayoutManager(new NpaLinearLayoutManager(requireContext()));
            recyclerView.setAdapter(this.playListAdapter);
        }
        initExposureHelper();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        if (!this.isCollectionList) {
            s0().R0().j(this, this.playListObserver);
            return;
        }
        List list = (List) u0().H0().f();
        if (list != null && !list.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                UGCVideo ugcVideo = ((UGCImmVideo) obj).getUgcVideo();
                int iVideoUGCPosition = ugcVideo != null ? ugcVideo.videoUGCPosition() : -1;
                int i11 = this.tabStartPosition;
                if (iVideoUGCPosition <= this.tabEndPosition && i11 <= iVideoUGCPosition) {
                    arrayList.add(obj);
                }
            }
            com.transsion.ugcvideodetail.adapter.b bVar = this.playListAdapter;
            List<Object> data = bVar != null ? bVar.getData() : null;
            if ((data == null || data.isEmpty()) && !arrayList.isEmpty()) {
                com.transsion.ugcvideodetail.adapter.b bVar2 = this.playListAdapter;
                if (bVar2 != null) {
                    bVar2.n1(CollectionsKt.U0(arrayList));
                }
                String str = (String) u0().D().f();
                if (str != null) {
                    J0(this, str, null, 2, null);
                    C0(str);
                }
                hideLoading();
            }
        }
        u0().R0().j(this, this.playListObserver);
        u0().D().j(this, new b(new Function1() { // from class: com.transsion.ugcvideodetail.fragment.q
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                return UGCImmVideoDialogPlayListFragment.A0(this.f56254a, (String) obj2);
            }
        }));
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        sj.b bVar;
        super.onHiddenChanged(hidden);
        if (!hidden || (bVar = this.exposureHelper) == null) {
            return;
        }
        bVar.f();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        sj.b bVar = this.exposureHelper;
        if (bVar != null) {
            bVar.f();
        }
    }

    public final void r0() {
        List<Object> listL;
        UGCVideo ugcVideo;
        UGCVideoBelongToCollection belongToCollection;
        String collectionId;
        com.transsion.ugcvideodetail.adapter.b bVar = this.playListAdapter;
        if (bVar == null || (listL = bVar.getData()) == null) {
            listL = CollectionsKt.l();
        }
        if (!listL.isEmpty()) {
            hideLoading();
            return;
        }
        if (this.isCollectionList) {
            List listL2 = (List) u0().H0().f();
            if (listL2 == null) {
                listL2 = CollectionsKt.l();
            }
            List list = listL2;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    UGCVideo ugcVideo2 = ((UGCImmVideo) it.next()).getUgcVideo();
                    int iVideoUGCPosition = ugcVideo2 != null ? ugcVideo2.videoUGCPosition() : -1;
                    int i11 = this.tabStartPosition;
                    if (iVideoUGCPosition <= this.tabEndPosition && i11 <= iVideoUGCPosition) {
                        hideLoading();
                        return;
                    }
                }
            }
        }
        showLoading();
        UGCImmVideo uGCImmVideo = this.curVideo;
        if (uGCImmVideo == null || (ugcVideo = uGCImmVideo.getUgcVideo()) == null || (belongToCollection = ugcVideo.getBelongToCollection()) == null || (collectionId = belongToCollection.getCollectionId()) == null) {
            return;
        }
        int iMin = Math.min(this.tabStartPosition + 8, this.tabEndPosition);
        lg.a.C0828a.f(lg.a.f68839a, "UGCImmVideoDialogPlayListFragment", "checkAndLoadDataIfNeeded: tabIndex=" + this.tabIndex + ", requesting data range=[" + this.tabStartPosition + "-" + iMin + "]", false, 4, null);
        if (this.isCollectionList) {
            UGCImmVideoDetailViewModel.Q0(u0(), collectionId, this.tabStartPosition, iMin, true, false, 16, null);
        } else {
            s0().P0(collectionId, this.tabStartPosition, iMin, true, true);
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void receiveArguments() {
        super.receiveArguments();
        Bundle arguments = getArguments();
        this.isCollectionList = arguments != null ? arguments.getBoolean("ISC_COLLECTION_LIST", true) : true;
        Bundle arguments2 = getArguments();
        this.tabIndex = arguments2 != null ? arguments2.getInt("tab_index", 0) : 0;
        Bundle arguments3 = getArguments();
        this.tabStartPosition = arguments3 != null ? arguments3.getInt("tab_start_position", 1) : 1;
        Bundle arguments4 = getArguments();
        this.tabEndPosition = arguments4 != null ? arguments4.getInt("tab_end_position", 50) : 50;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: t0, reason: merged with bridge method [inline-methods] */
    public qv.l getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        qv.l lVarC = qv.l.c(inflater);
        Intrinsics.g(lVarC, "inflate(...)");
        return lVarC;
    }
}
