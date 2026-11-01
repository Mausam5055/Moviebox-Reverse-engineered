package com.transsnet.downloader.fragment;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.Lifecycle;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.TitleLayout;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$mipmap;
import com.transsion.ad.bidding.nativead.BiddingListManager;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.video.UGCVideoDetailPlayBean;
import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.moviedetailapi.SubjectType;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.bean.HistoricalPlayRecordBean;
import com.transsnet.downloader.bean.HistoricalPlayRecordMultipleEntity;
import com.transsnet.downloader.dialog.DownloadConfirmDialog;
import com.transsnet.downloader.dialog.DownloadMoreDialog;
import com.transsnet.downloader.viewmodel.DownloadViewModel;
import com.transsnet.downloader.viewmodel.HistoricalPlayRecordViewModel;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\u0004J%\u0010\u0010\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u00052\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\t0\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0016\u0010\u0004J\u0019\u0010\u0019\u001a\u00020\t2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\tH\u0002¢\u0006\u0004\b\u001b\u0010\u0004J\u000f\u0010\u001c\u001a\u00020\tH\u0002¢\u0006\u0004\b\u001c\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001d\u0010\u0007J\u000f\u0010\u001e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001e\u0010\u0007J\u000f\u0010\u001f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001f\u0010\u0007J\u0017\u0010\"\u001a\u00020\u00022\u0006\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u0017H\u0016¢\u0006\u0004\b$\u0010%J!\u0010*\u001a\u00020\t2\u0006\u0010'\u001a\u00020&2\b\u0010)\u001a\u0004\u0018\u00010(H\u0016¢\u0006\u0004\b*\u0010+J\u000f\u0010,\u001a\u00020\tH\u0016¢\u0006\u0004\b,\u0010\u0004J\u000f\u0010-\u001a\u00020\tH\u0016¢\u0006\u0004\b-\u0010\u0004J\u000f\u0010.\u001a\u00020\tH\u0016¢\u0006\u0004\b.\u0010\u0004J\u000f\u0010/\u001a\u00020\tH\u0016¢\u0006\u0004\b/\u0010\u0004J\u000f\u00100\u001a\u00020\tH\u0016¢\u0006\u0004\b0\u0010\u0004J\u000f\u00101\u001a\u00020\u0017H\u0016¢\u0006\u0004\b1\u0010%J\u0011\u00103\u001a\u0004\u0018\u000102H\u0016¢\u0006\u0004\b3\u00104J\u000f\u00105\u001a\u00020\u0005H\u0016¢\u0006\u0004\b5\u0010\u0007J)\u00109\u001a\u00020\t2\b\u00107\u001a\u0004\u0018\u0001062\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u00108\u001a\u00020\u0012H\u0016¢\u0006\u0004\b9\u0010:J/\u0010=\u001a\u00020\t2\u000e\u0010<\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030;2\u0006\u0010'\u001a\u00020&2\u0006\u0010\u0013\u001a\u00020\u0012H\u0004¢\u0006\u0004\b=\u0010>J\u000f\u0010?\u001a\u00020\u0017H\u0016¢\u0006\u0004\b?\u0010%J\u000f\u0010@\u001a\u00020\tH\u0016¢\u0006\u0004\b@\u0010\u0004J\u000f\u0010A\u001a\u00020\tH\u0016¢\u0006\u0004\bA\u0010\u0004R$\u0010I\u001a\u0004\u0018\u00010B8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bC\u0010D\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR\u001b\u0010O\u001a\u00020J8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bK\u0010L\u001a\u0004\bM\u0010NR\u001b\u0010T\u001a\u00020P8DX\u0084\u0084\u0002¢\u0006\f\n\u0004\bQ\u0010L\u001a\u0004\bR\u0010SR\"\u0010W\u001a\u00020\u00058\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bU\u0010V\u001a\u0004\bW\u0010\u0007\"\u0004\bX\u0010\u000bR\u0016\u0010Z\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010VR\u001b\u0010_\u001a\u00020[8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\\\u0010L\u001a\u0004\b]\u0010^R\u001b\u0010d\u001a\u00020`8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\ba\u0010L\u001a\u0004\bb\u0010cR\u0018\u0010h\u001a\u0004\u0018\u00010e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010g¨\u0006i"}, d2 = {"Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lpy/s;", "<init>", "()V", "", "U0", "()Z", "visibility", "", "e1", "(Z)V", "g1", "isAll", "Lkotlin/Function0;", "clear", "c1", "(ZLkotlin/jvm/functions/Function0;)V", "", RequestParameters.POSITION, "C0", "(I)V", "A0", "", CampaignEx.JSON_KEY_TITLE, "B0", "(Ljava/lang/String;)V", "M0", "initAd", "isAudioShowNoNetworkLayout", "isMonitorNetworkState", "isShowPageStateLayoutTitle", "Landroid/view/LayoutInflater;", "inflater", "H0", "(Landroid/view/LayoutInflater;)Lpy/s;", "getPageStateLayoutTitle", "()Ljava/lang/String;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "initViewData", "initViewModel", "initListener", "retryLoadData", "loadDefaultData", "getEmptyDescText", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "T0", "Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;", "entity", "tabIndex", "Y0", "(Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;II)V", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "adapter", "V0", "(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V", "getPageName", "D0", "onDestroy", "Lcom/transsnet/downloader/adapter/a;", "a", "Lcom/transsnet/downloader/adapter/a;", "F0", "()Lcom/transsnet/downloader/adapter/a;", "b1", "(Lcom/transsnet/downloader/adapter/a;)V", "mAllHistoricalPlayRecordAdapter", "Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "G0", "()Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;", "mViewModel", "Lcom/transsnet/downloader/viewmodel/DownloadViewModel;", "c", "E0", "()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;", "downloadViewModel", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "isRequestPermissionFirst", "setRequestPermissionFirst", "e", "isRefreshAll", "Lcom/transsion/baselib/db/video/VideoDetailPlayDao;", "f", "getVideoDetailPlayDao", "()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;", "videoDetailPlayDao", "Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;", "g", "getUgcVideoDetailPlayDao", "()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;", "ugcVideoDetailPlayDao", "Lcom/transsion/ad/bidding/nativead/BiddingListManager;", "h", "Lcom/transsion/ad/bidding/nativead/BiddingListManager;", "v3ListManager", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public class AllHistoricalPlayRecordFragment extends PageStatusFragment<py.s> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private com.transsnet.downloader.adapter.a mAllHistoricalPlayRecordAdapter;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Lazy mViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(HistoricalPlayRecordViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsnet.downloader.fragment.AllHistoricalPlayRecordFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsnet.downloader.fragment.AllHistoricalPlayRecordFragment$special$$inlined$activityViewModels$default$2
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
    private final Lazy downloadViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(DownloadViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsnet.downloader.fragment.AllHistoricalPlayRecordFragment$special$$inlined$activityViewModels$default$3
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsnet.downloader.fragment.AllHistoricalPlayRecordFragment$special$$inlined$activityViewModels$default$4
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
    private boolean isRequestPermissionFirst = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private boolean isRefreshAll = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final Lazy videoDetailPlayDao = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.fragment.o
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return AllHistoricalPlayRecordFragment.h1();
        }
    });

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final Lazy ugcVideoDetailPlayDao = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.fragment.p
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return AllHistoricalPlayRecordFragment.f1();
        }
    });

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private BiddingListManager v3ListManager;

    static final class a implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f58778a;

        a(Function1 function) {
            Intrinsics.h(function, "function");
            this.f58778a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f58778a;
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
            this.f58778a.invoke(obj);
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
    private final void A0() {
        List<Object> data;
        try {
            Result.Companion companion = Result.INSTANCE;
            com.transsnet.downloader.adapter.a aVar = this.mAllHistoricalPlayRecordAdapter;
            if (aVar != null && (data = aVar.getData()) != null) {
                data.clear();
            }
            com.transsnet.downloader.adapter.a aVar2 = this.mAllHistoricalPlayRecordAdapter;
            Unit unit = null;
            if (aVar2 != null) {
                aVar2.n1(null);
            }
            e1(false);
            FragmentActivity activity = getActivity();
            if (activity != null) {
                com.transsnet.downloader.adapter.a aVar3 = this.mAllHistoricalPlayRecordAdapter;
                if (aVar3 != null) {
                    aVar3.Y0(getEmptyView(false));
                }
                activity.setResult(-1);
                uh.b.a aVar4 = uh.b.f76753a;
                Context context = getContext();
                aVar4.e(context != null ? context.getString(R$string.download_watch_history_cleared) : null);
                unit = Unit.f67061a;
            }
            Result.m454constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    private final void B0(String title) {
        List<Object> data;
        List<Object> data2;
        FragmentActivity activity;
        if (getActivity() != null && (activity = getActivity()) != null) {
            activity.setResult(-1);
        }
        uh.b.a aVar = uh.b.f76753a;
        Context context = getContext();
        aVar.e(context != null ? context.getString(R$string.download_delete_success) : null);
        com.transsnet.downloader.adapter.a aVar2 = this.mAllHistoricalPlayRecordAdapter;
        if (aVar2 == null || (data = aVar2.getData()) == null) {
            return;
        }
        int i11 = 0;
        int i12 = 0;
        HistoricalPlayRecordMultipleEntity historicalPlayRecordMultipleEntity = null;
        int i13 = 0;
        for (Object obj : data) {
            int i14 = i13 + 1;
            if (i13 < 0) {
                CollectionsKt.u();
            }
            HistoricalPlayRecordMultipleEntity historicalPlayRecordMultipleEntity2 = (HistoricalPlayRecordMultipleEntity) obj;
            if (TextUtils.equals(historicalPlayRecordMultipleEntity2.getTitle(), title)) {
                i11++;
                i12 = i13;
                historicalPlayRecordMultipleEntity = historicalPlayRecordMultipleEntity2;
            }
            i13 = i14;
        }
        if (i11 == 1) {
            com.transsnet.downloader.adapter.a aVar3 = this.mAllHistoricalPlayRecordAdapter;
            if (aVar3 != null && (data2 = aVar3.getData()) != null) {
                TypeIntrinsics.a(data2).remove(historicalPlayRecordMultipleEntity);
            }
            com.transsnet.downloader.adapter.a aVar4 = this.mAllHistoricalPlayRecordAdapter;
            if (aVar4 != null) {
                aVar4.notifyItemRemoved(i12);
            }
        }
    }

    private final void C0(int position) {
        List<Object> data;
        List<Object> data2;
        List<Object> data3;
        HistoricalPlayRecordMultipleEntity historicalPlayRecordMultipleEntity;
        List<Object> data4;
        com.transsnet.downloader.adapter.a aVar = this.mAllHistoricalPlayRecordAdapter;
        if (position >= ((aVar == null || (data4 = aVar.getData()) == null) ? 0 : data4.size())) {
            return;
        }
        com.transsnet.downloader.adapter.a aVar2 = this.mAllHistoricalPlayRecordAdapter;
        String title = (aVar2 == null || (data3 = aVar2.getData()) == null || (historicalPlayRecordMultipleEntity = (HistoricalPlayRecordMultipleEntity) data3.get(position)) == null) ? null : historicalPlayRecordMultipleEntity.getTitle();
        com.transsnet.downloader.adapter.a aVar3 = this.mAllHistoricalPlayRecordAdapter;
        if (aVar3 != null && (data2 = aVar3.getData()) != null) {
        }
        com.transsnet.downloader.adapter.a aVar4 = this.mAllHistoricalPlayRecordAdapter;
        if (aVar4 != null) {
            aVar4.notifyItemRemoved(position);
        }
        com.transsnet.downloader.adapter.a aVar5 = this.mAllHistoricalPlayRecordAdapter;
        if (aVar5 != null && (data = aVar5.getData()) != null && data.size() == 1) {
            A0();
        } else {
            B0(title);
            g1();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit I0(AllHistoricalPlayRecordFragment allHistoricalPlayRecordFragment, int i11, BiddingNativeManager wrapperNativeManager) {
        List<Object> data;
        Intrinsics.h(wrapperNativeManager, "wrapperNativeManager");
        if (wrapperNativeManager != null) {
            HistoricalPlayRecordMultipleEntity historicalPlayRecordMultipleEntity = new HistoricalPlayRecordMultipleEntity(3, null, null, wrapperNativeManager, 6, null);
            com.transsnet.downloader.adapter.a aVar = allHistoricalPlayRecordFragment.mAllHistoricalPlayRecordAdapter;
            int size = (aVar == null || (data = aVar.getData()) == null) ? 0 : data.size();
            if (i11 <= size) {
                com.transsnet.downloader.adapter.a aVar2 = allHistoricalPlayRecordFragment.mAllHistoricalPlayRecordAdapter;
                if (aVar2 != null) {
                    aVar2.n(i11, historicalPlayRecordMultipleEntity);
                }
            } else {
                com.transsnet.downloader.adapter.a aVar3 = allHistoricalPlayRecordFragment.mAllHistoricalPlayRecordAdapter;
                if (aVar3 != null) {
                    aVar3.n(size, historicalPlayRecordMultipleEntity);
                }
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J0(final AllHistoricalPlayRecordFragment allHistoricalPlayRecordFragment, View view) {
        allHistoricalPlayRecordFragment.c1(true, new Function0() { // from class: com.transsnet.downloader.fragment.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return AllHistoricalPlayRecordFragment.K0(this.f59160a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit K0(final AllHistoricalPlayRecordFragment allHistoricalPlayRecordFragment) {
        allHistoricalPlayRecordFragment.G0().C(new Function0() { // from class: com.transsnet.downloader.fragment.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return AllHistoricalPlayRecordFragment.L0(this.f59184a);
            }
        });
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit L0(AllHistoricalPlayRecordFragment allHistoricalPlayRecordFragment) {
        allHistoricalPlayRecordFragment.A0();
        return Unit.f67061a;
    }

    private final void M0() {
        Function1 function1 = new Function1() { // from class: com.transsnet.downloader.fragment.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return AllHistoricalPlayRecordFragment.N0(this.f59134a, (my.e) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = my.e.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().q(), false, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit N0(AllHistoricalPlayRecordFragment allHistoricalPlayRecordFragment, my.e it) {
        Intrinsics.h(it, "it");
        try {
            allHistoricalPlayRecordFragment.isRefreshAll = true;
            HistoricalPlayRecordViewModel.X(allHistoricalPlayRecordFragment.G0(), false, true, 1, null);
            allHistoricalPlayRecordFragment.showContentView();
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O0(AllHistoricalPlayRecordFragment allHistoricalPlayRecordFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        allHistoricalPlayRecordFragment.V0(adapter, view, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P0(AllHistoricalPlayRecordFragment allHistoricalPlayRecordFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        allHistoricalPlayRecordFragment.V0(adapter, view, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q0(AllHistoricalPlayRecordFragment allHistoricalPlayRecordFragment) {
        HistoricalPlayRecordViewModel.X(allHistoricalPlayRecordFragment.G0(), false, false, 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit R0(AllHistoricalPlayRecordFragment allHistoricalPlayRecordFragment, List list) {
        SwipeRefreshLayout swipeRefreshLayout;
        py.s mViewBinding;
        SwipeRefreshLayout swipeRefreshLayout2;
        py.s mViewBinding2 = allHistoricalPlayRecordFragment.getMViewBinding();
        if (mViewBinding2 != null && (swipeRefreshLayout = mViewBinding2.f72908c) != null && swipeRefreshLayout.isRefreshing() && (mViewBinding = allHistoricalPlayRecordFragment.getMViewBinding()) != null && (swipeRefreshLayout2 = mViewBinding.f72908c) != null) {
            swipeRefreshLayout2.setRefreshing(false);
        }
        if (!allHistoricalPlayRecordFragment.U0()) {
            return Unit.f67061a;
        }
        allHistoricalPlayRecordFragment.showContentView();
        com.transsnet.downloader.adapter.a aVar = allHistoricalPlayRecordFragment.mAllHistoricalPlayRecordAdapter;
        if (aVar != null) {
            if (list.isEmpty()) {
                if (aVar.getData().isEmpty()) {
                    aVar.n1(null);
                    aVar.Y0(allHistoricalPlayRecordFragment.getEmptyView(false));
                }
                r6.f.u(aVar.h0(), false, 1, null);
            } else {
                aVar.n1(list);
                aVar.h0().s();
            }
            allHistoricalPlayRecordFragment.G0().Y();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit S0(AllHistoricalPlayRecordFragment allHistoricalPlayRecordFragment, List list) {
        SwipeRefreshLayout swipeRefreshLayout;
        py.s mViewBinding;
        SwipeRefreshLayout swipeRefreshLayout2;
        py.s mViewBinding2 = allHistoricalPlayRecordFragment.getMViewBinding();
        if (mViewBinding2 != null && (swipeRefreshLayout = mViewBinding2.f72908c) != null && swipeRefreshLayout.isRefreshing() && (mViewBinding = allHistoricalPlayRecordFragment.getMViewBinding()) != null && (swipeRefreshLayout2 = mViewBinding.f72908c) != null) {
            swipeRefreshLayout2.setRefreshing(false);
        }
        if (!allHistoricalPlayRecordFragment.U0()) {
            return Unit.f67061a;
        }
        allHistoricalPlayRecordFragment.showContentView();
        com.transsnet.downloader.adapter.a aVar = allHistoricalPlayRecordFragment.mAllHistoricalPlayRecordAdapter;
        if (aVar != null) {
            if (list.isEmpty()) {
                if (aVar.getData().isEmpty()) {
                    allHistoricalPlayRecordFragment.e1(false);
                    aVar.n1(null);
                    aVar.Y0(allHistoricalPlayRecordFragment.getEmptyView(false));
                } else {
                    allHistoricalPlayRecordFragment.g1();
                }
                r6.f.u(aVar.h0(), false, 1, null);
            } else {
                if (allHistoricalPlayRecordFragment.isRefreshAll) {
                    aVar.n1(list);
                    aVar.h0().s();
                } else {
                    ArrayList arrayList = new ArrayList();
                    List<Object> data = aVar.getData();
                    Intrinsics.e(list);
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        HistoricalPlayRecordMultipleEntity historicalPlayRecordMultipleEntity = (HistoricalPlayRecordMultipleEntity) it.next();
                        if (!data.contains(historicalPlayRecordMultipleEntity)) {
                            arrayList.add(historicalPlayRecordMultipleEntity);
                        }
                    }
                    aVar.q(arrayList);
                    aVar.h0().s();
                }
                allHistoricalPlayRecordFragment.g1();
            }
            allHistoricalPlayRecordFragment.isRefreshAll = false;
            allHistoricalPlayRecordFragment.G0().Y();
        }
        return Unit.f67061a;
    }

    private final boolean U0() {
        if ((this instanceof LocalFileFragment) || (this instanceof LocalFileSingleTabFragment)) {
            return com.transsnet.downloader.viewmodel.a0.f60085a.a();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit W0(final int i11, BaseQuickAdapter baseQuickAdapter, final AllHistoricalPlayRecordFragment allHistoricalPlayRecordFragment) {
        if (i11 >= baseQuickAdapter.getData().size()) {
            return Unit.f67061a;
        }
        HistoricalPlayRecordViewModel historicalPlayRecordViewModelG0 = allHistoricalPlayRecordFragment.G0();
        Object obj = baseQuickAdapter.getData().get(i11);
        historicalPlayRecordViewModelG0.B(obj instanceof HistoricalPlayRecordMultipleEntity ? (HistoricalPlayRecordMultipleEntity) obj : null, new Function0() { // from class: com.transsnet.downloader.fragment.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return AllHistoricalPlayRecordFragment.X0(this.f59195a, i11);
            }
        });
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit X0(AllHistoricalPlayRecordFragment allHistoricalPlayRecordFragment, int i11) {
        allHistoricalPlayRecordFragment.C0(i11);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Z0(AllHistoricalPlayRecordFragment allHistoricalPlayRecordFragment, int i11, int i12, String str, String str2) {
        Intrinsics.h(str, "<unused var>");
        if (Intrinsics.c(str2, "transfer_file_2_mb")) {
            allHistoricalPlayRecordFragment.E0().J().q(1);
            if (i11 >= 0) {
                allHistoricalPlayRecordFragment.E0().j0().q(Integer.valueOf(i11));
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a1(AllHistoricalPlayRecordFragment allHistoricalPlayRecordFragment) {
        allHistoricalPlayRecordFragment.D0();
    }

    private final void c1(boolean isAll, final Function0 clear) {
        DownloadConfirmDialog downloadConfirmDialogA = DownloadConfirmDialog.INSTANCE.a(getString(R$string.cancel), getString(R$string.confirm), requireContext().getString(isAll ? R$string.clear_all_history_tips : R$string.clear_history_tips), null);
        downloadConfirmDialogA.s0(new Function1() { // from class: com.transsnet.downloader.fragment.h
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return AllHistoricalPlayRecordFragment.d1(clear, ((Boolean) obj).booleanValue());
            }
        });
        downloadConfirmDialogA.k0(getContext(), "confirm_Dialog");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d1(Function0 function0, boolean z10) {
        if (z10) {
            function0.invoke();
        }
        return Unit.f67061a;
    }

    private final void e1(boolean visibility) {
        TitleLayout titleLayout;
        ImageView ivMenu;
        py.s mViewBinding = getMViewBinding();
        if (mViewBinding == null || (titleLayout = mViewBinding.f72909d) == null || (ivMenu = titleLayout.getIvMenu()) == null) {
            return;
        }
        ivMenu.setVisibility(visibility ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UGCVideoDetailPlayDao f1() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).C1();
    }

    private final void g1() {
        com.transsnet.downloader.adapter.a aVar = this.mAllHistoricalPlayRecordAdapter;
        List<Object> data = aVar != null ? aVar.getData() : null;
        e1(!(data == null || data.isEmpty()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final VideoDetailPlayDao h1() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).D1();
    }

    private final void initAd() {
        BiddingListManager biddingListManager = new BiddingListManager();
        py.s mViewBinding = getMViewBinding();
        biddingListManager.F(mViewBinding != null ? mViewBinding.f72907b : null);
        biddingListManager.A(androidx.p009lifecycle.v.a(this));
        biddingListManager.G("ALLHistoricalPlayRecordScene");
        biddingListManager.z(new Function2() { // from class: com.transsnet.downloader.fragment.q
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AllHistoricalPlayRecordFragment.I0(this.f59289a, ((Integer) obj).intValue(), (BiddingNativeManager) obj2);
            }
        });
        this.v3ListManager = biddingListManager;
    }

    public void D0() {
        G0().N();
    }

    protected final DownloadViewModel E0() {
        return (DownloadViewModel) this.downloadViewModel.getValue();
    }

    /* JADX INFO: renamed from: F0, reason: from getter */
    public final com.transsnet.downloader.adapter.a getMAllHistoricalPlayRecordAdapter() {
        return this.mAllHistoricalPlayRecordAdapter;
    }

    public final HistoricalPlayRecordViewModel G0() {
        return (HistoricalPlayRecordViewModel) this.mViewModel.getValue();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: H0, reason: merged with bridge method [inline-methods] */
    public py.s getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        py.s sVarC = py.s.c(inflater);
        Intrinsics.g(sVarC, "inflate(...)");
        return sVarC;
    }

    public boolean T0() {
        return false;
    }

    protected final void V0(final BaseQuickAdapter adapter, View view, final int position) {
        HistoricalPlayRecordBean historical;
        VideoDetailPlayBean streamVideo;
        HistoricalPlayRecordBean historical2;
        VideoDetailPlayBean streamVideo2;
        Integer subjectType;
        DownloadBean video;
        String id2;
        VideoDetailPlayBean streamVideo3;
        HistoricalPlayRecordBean historical3;
        VideoDetailPlayBean streamVideo4;
        HistoricalPlayRecordBean historical4;
        HistoricalPlayRecordBean historical5;
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (position >= adapter.getData().size()) {
            return;
        }
        if (view.getId() == R$id.ivTopRightCornerPoint) {
            c1(false, new Function0() { // from class: com.transsnet.downloader.fragment.e
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return AllHistoricalPlayRecordFragment.W0(position, adapter, this);
                }
            });
            return;
        }
        if (view.getId() == R$id.historyRoot) {
            Object obj = adapter.getData().get(position);
            HistoricalPlayRecordMultipleEntity historicalPlayRecordMultipleEntity = obj instanceof HistoricalPlayRecordMultipleEntity ? (HistoricalPlayRecordMultipleEntity) obj : null;
            UGCVideoDetailPlayBean ugcVideo = (historicalPlayRecordMultipleEntity == null || (historical5 = historicalPlayRecordMultipleEntity.getHistorical()) == null) ? null : historical5.getUgcVideo();
            VideoDetailPlayBean streamVideo5 = (historicalPlayRecordMultipleEntity == null || (historical4 = historicalPlayRecordMultipleEntity.getHistorical()) == null) ? null : historical4.getStreamVideo();
            if (ugcVideo != null || (streamVideo5 != null && ak.g.f639a.b())) {
                kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new AllHistoricalPlayRecordFragment$onItemClick$2(ugcVideo, streamVideo5, null), 3, null);
                return;
            }
            String downloadFilePath = (historicalPlayRecordMultipleEntity == null || (historical3 = historicalPlayRecordMultipleEntity.getHistorical()) == null || (streamVideo4 = historical3.getStreamVideo()) == null) ? null : streamVideo4.getDownloadFilePath();
            com.transsnet.downloader.viewmodel.a0 a0Var = com.transsnet.downloader.viewmodel.a0.f60085a;
            boolean zO = a0Var.o(downloadFilePath);
            if ((downloadFilePath == null || downloadFilePath.length() == 0 || !zO) && (historicalPlayRecordMultipleEntity == null || historicalPlayRecordMultipleEntity.getType() != 2)) {
                Navigator.x(TheRouter.c("/movie/detail").F("subject_type", (historicalPlayRecordMultipleEntity == null || (historical2 = historicalPlayRecordMultipleEntity.getHistorical()) == null || (streamVideo2 = historical2.getStreamVideo()) == null || (subjectType = streamVideo2.getSubjectType()) == null) ? SubjectType.MOVIE.getValue() : subjectType.intValue()).K("id", (historicalPlayRecordMultipleEntity == null || (historical = historicalPlayRecordMultipleEntity.getHistorical()) == null || (streamVideo = historical.getStreamVideo()) == null) ? null : streamVideo.getSubjectId()).K("module_name", getClass().getSimpleName()), requireContext(), null, 2, null);
                return;
            }
            if (historicalPlayRecordMultipleEntity.getType() != 2) {
                HistoricalPlayRecordBean historical6 = historicalPlayRecordMultipleEntity.getHistorical();
                if (historical6 == null || (streamVideo3 = historical6.getStreamVideo()) == null || (id2 = streamVideo3.getId()) == null) {
                    id2 = "";
                }
                DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f58398j.a();
                FragmentActivity fragmentActivityRequireActivity = requireActivity();
                Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
                downloadManagerApiA.t0(fragmentActivityRequireActivity, id2, getPageName());
                return;
            }
            HistoricalPlayRecordBean historical7 = historicalPlayRecordMultipleEntity.getHistorical();
            if (historical7 != null && ((historical7.getType() == 2 || historical7.getType() == 6 || historical7.getType() == 5) && (video = historical7.getVideo()) != null && video.getFileType() == 2)) {
                DownloadBean video2 = historical7.getVideo();
                if (!a0Var.o(video2 != null ? video2.getPath() : null)) {
                    HistoricalPlayRecordBean historical8 = historicalPlayRecordMultipleEntity.getHistorical();
                    if (historical8 != null) {
                        historical8.setLocalFileDelete(Boolean.TRUE);
                    }
                    com.transsnet.downloader.adapter.a aVar = this.mAllHistoricalPlayRecordAdapter;
                    if (aVar != null) {
                        aVar.notifyItemChanged(position);
                        return;
                    }
                    return;
                }
            }
            HistoricalPlayRecordBean historical9 = historicalPlayRecordMultipleEntity.getHistorical();
            if (historical9 != null ? Intrinsics.c(historical9.isLocalFileDelete(), Boolean.TRUE) : false) {
                uh.b.f76753a.e(getString(R$string.download_no_local_file_tips));
            } else {
                G0().c0(historicalPlayRecordMultipleEntity, requireActivity(), getPageName());
            }
        }
    }

    public void Y0(HistoricalPlayRecordMultipleEntity entity, int position, final int tabIndex) {
        DownloadMoreDialog downloadMoreDialogA = DownloadMoreDialog.INSTANCE.a(CollectionsKt.q(new Pair(Utils.a().getString(R$string.download_transfer_tips), "transfer_file_2_mb")));
        downloadMoreDialogA.t0(new Function3() { // from class: com.transsnet.downloader.fragment.c
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return AllHistoricalPlayRecordFragment.Z0(this.f59148a, tabIndex, ((Integer) obj).intValue(), (String) obj2, (String) obj3);
            }
        });
        downloadMoreDialogA.l0(this, "DownloadMoreDialog");
    }

    public final void b1(com.transsnet.downloader.adapter.a aVar) {
        this.mAllHistoricalPlayRecordAdapter = aVar;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getEmptyDescText() {
        String string = getString(R$string.download_no_historical_tips);
        Intrinsics.g(string, "getString(...)");
        return string;
    }

    public String getPageName() {
        return "all_historical_page";
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        TitleLayout titleLayout;
        py.s mViewBinding = getMViewBinding();
        if (mViewBinding == null || (titleLayout = mViewBinding.f72909d) == null) {
            return;
        }
        titleLayout.setRightView(R$mipmap.ic_history_clear);
        ImageView ivMenu = titleLayout.getIvMenu();
        if (ivMenu != null) {
            e1(false);
            ivMenu.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.fragment.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AllHistoricalPlayRecordFragment.J0(this.f59215a, view);
                }
            });
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        RecyclerView recyclerView;
        py.s mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView = mViewBinding.f72907b) != null) {
            recyclerView.setLayoutManager(new NpaLinearLayoutManager(requireContext()));
            com.transsnet.downloader.adapter.a aVar = new com.transsnet.downloader.adapter.a(T0());
            aVar.w1(new p6.d() { // from class: com.transsnet.downloader.fragment.l
                @Override // p6.d
                public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                    AllHistoricalPlayRecordFragment.O0(this.f59248a, baseQuickAdapter, view, i11);
                }
            });
            aVar.l(R$id.ivTopRightCornerPoint);
            aVar.s1(new p6.b() { // from class: com.transsnet.downloader.fragment.m
                @Override // p6.b
                public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                    AllHistoricalPlayRecordFragment.P0(this.f59256a, baseQuickAdapter, view, i11);
                }
            });
            if (!(this instanceof LocalFileFragment)) {
                aVar.h0().D(new p6.f() { // from class: com.transsnet.downloader.fragment.n
                    @Override // p6.f
                    public final void a() {
                        AllHistoricalPlayRecordFragment.Q0(this.f59264a);
                    }
                });
            }
            this.mAllHistoricalPlayRecordAdapter = aVar;
            recyclerView.setAdapter(aVar);
        }
        initAd();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        if (this instanceof LocalFileBaseFragment) {
            G0().J().j(this, new a(new Function1() { // from class: com.transsnet.downloader.fragment.j
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AllHistoricalPlayRecordFragment.R0(this.f59227a, (List) obj);
                }
            }));
        } else {
            G0().I().j(this, new a(new Function1() { // from class: com.transsnet.downloader.fragment.k
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AllHistoricalPlayRecordFragment.S0(this.f59240a, (List) obj);
                }
            }));
            M0();
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isMonitorNetworkState() {
        return false;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isShowPageStateLayoutTitle() {
        return false;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void loadDefaultData() {
        HistoricalPlayRecordViewModel.X(G0(), false, false, 3, null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public hj.b newLogViewConfig() {
        return new hj.b(getPageName(), false, 2, null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        BiddingListManager biddingListManager = this.v3ListManager;
        if (biddingListManager != null) {
            biddingListManager.o();
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        SwipeRefreshLayout swipeRefreshLayout;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        py.s mViewBinding = getMViewBinding();
        if (mViewBinding == null || (swipeRefreshLayout = mViewBinding.f72908c) == null) {
            return;
        }
        if (!(this instanceof LocalFileBaseFragment)) {
            swipeRefreshLayout.setEnabled(false);
        }
        FragmentActivity activity = getActivity();
        if (activity != null) {
            swipeRefreshLayout.setProgressBackgroundColorSchemeColor(androidx.core.content.b.getColor(activity, R$color.bg_01));
            swipeRefreshLayout.setColorSchemeColors(androidx.core.content.b.getColor(activity, R$color.main_gradient_center), androidx.core.content.b.getColor(activity, R$color.main_gradient_start));
        }
        swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.j() { // from class: com.transsnet.downloader.fragment.a
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.j
            public final void a() {
                AllHistoricalPlayRecordFragment.a1(this.f59117a);
            }
        });
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
    }
}
