package com.transsion.room.fragment;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.result.ActivityResult;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.LiveData;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.RoomJoinAnimationView;
import com.tn.lib.view.RoomJoinStatus;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$string;
import com.transsion.baseui.fragment.LazyFragment;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.RoomBean;
import com.transsion.moviedetailapi.bean.RoomItem;
import com.transsion.moviedetailapi.bean.RoomNet;
import com.transsion.publish.api.GroupBean;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;
import com.transsion.room.adapter.RoomListAdapter;
import com.transsion.room.adapter.RoomListFrom;
import com.transsion.room.viewmodel.RoomDetailViewModel;
import com.transsion.room.viewmodel.RoomViewModel;
import com.transsion.web.api.WebConstants;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.loginapi.ILoginApi;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
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
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J!\u0010\u000b\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\r\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\r\u0010\fJ\u000f\u0010\u000e\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000e\u0010\u0004J\u0017\u0010\u000f\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0019\u0010\u001a\u001a\u00020\u00052\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001c\u0010\u0004J\u000f\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0011H\u0016¢\u0006\u0004\b \u0010\u0013J\u000f\u0010!\u001a\u00020\u0011H\u0016¢\u0006\u0004\b!\u0010\u0013J\u000f\u0010\"\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\"\u0010\u001fJ\u000f\u0010#\u001a\u00020\u0005H\u0016¢\u0006\u0004\b#\u0010\u0004J\u000f\u0010$\u001a\u00020\u0005H\u0016¢\u0006\u0004\b$\u0010\u0004J\u000f\u0010%\u001a\u00020\u0005H\u0016¢\u0006\u0004\b%\u0010\u0004J\u000f\u0010&\u001a\u00020\u0005H\u0016¢\u0006\u0004\b&\u0010\u0004J\u0019\u0010)\u001a\u00020\u00052\b\u0010(\u001a\u0004\u0018\u00010'H\u0016¢\u0006\u0004\b)\u0010*J\u000f\u0010+\u001a\u00020\u0005H\u0016¢\u0006\u0004\b+\u0010\u0004J\u0011\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b-\u0010.J\u000f\u00100\u001a\u00020/H&¢\u0006\u0004\b0\u00101J\u0019\u00103\u001a\u00020\u00052\b\b\u0002\u00102\u001a\u00020\u0011H&¢\u0006\u0004\b3\u00104J\u000f\u00105\u001a\u00020\u001dH&¢\u0006\u0004\b5\u0010\u001fR$\u0010=\u001a\u0004\u0018\u0001068\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b7\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\u0018\u0010A\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R$\u0010I\u001a\u0004\u0018\u00010B8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bC\u0010D\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR\u0018\u0010M\u001a\u0004\u0018\u00010J8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u0016\u0010P\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010OR\u0018\u0010S\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010RR$\u0010X\u001a\u0004\u0018\u00010\u001d8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bT\u0010R\u001a\u0004\bU\u0010\u001f\"\u0004\bV\u0010WR\"\u0010_\u001a\u00020\t8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bY\u0010Z\u001a\u0004\b[\u0010\\\"\u0004\b]\u0010^R\u0018\u0010b\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010aR\u0018\u0010f\u001a\u0004\u0018\u00010c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010eR\u0018\u0010i\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bg\u0010hR\u001d\u0010o\u001a\u0004\u0018\u00010j8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bk\u0010l\u001a\u0004\bm\u0010nR\"\u0010u\u001a\u0010\u0012\f\u0012\n r*\u0004\u0018\u00010q0q0p8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bs\u0010t¨\u0006v"}, d2 = {"Lcom/transsion/room/fragment/RoomListBaseFragment;", "Lcom/transsion/baseui/fragment/LazyFragment;", "Lbq/r;", "<init>", "()V", "", "initExposureHelper", "Lcom/transsion/moviedetailapi/bean/RoomItem;", WebConstants.FIELD_ITEM, "", RequestParameters.POSITION, "I0", "(Lcom/transsion/moviedetailapi/bean/RoomItem;I)V", "s0", "D0", "H0", "(Lcom/transsion/moviedetailapi/bean/RoomItem;)V", "", "checkLogin", "()Z", "Landroid/view/LayoutInflater;", "inflater", "x0", "(Landroid/view/LayoutInflater;)Lbq/r;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "lazyLoadData", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "isShowPageStateLayoutTitle", "isAudioShowNoNetworkLayout", "getEmptyDescText", "initViewData", "initViewModel", "retryLoadData", "t0", "Lcom/transsion/moviedetailapi/bean/RoomBean;", "bean", "J0", "(Lcom/transsion/moviedetailapi/bean/RoomBean;)V", "checkToShowEmptyView", "Landroid/view/View;", "getLoadingView", "()Landroid/view/View;", "Lcom/transsion/room/adapter/RoomListFrom;", "w0", "()Lcom/transsion/room/adapter/RoomListFrom;", "isRefresh", "E0", "(Z)V", "pageName", "Lcom/transsion/room/adapter/RoomListAdapter;", "a", "Lcom/transsion/room/adapter/RoomListAdapter;", "u0", "()Lcom/transsion/room/adapter/RoomListAdapter;", "setMAdapter", "(Lcom/transsion/room/adapter/RoomListAdapter;)V", "mAdapter", "Lsj/b;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lsj/b;", "mExposureHelper", "Lcom/transsion/room/viewmodel/RoomViewModel;", "c", "Lcom/transsion/room/viewmodel/RoomViewModel;", "v0", "()Lcom/transsion/room/viewmodel/RoomViewModel;", "setMViewModel", "(Lcom/transsion/room/viewmodel/RoomViewModel;)V", "mViewModel", "Lcom/transsion/room/viewmodel/RoomDetailViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/room/viewmodel/RoomDetailViewModel;", "mDetailViewModel", "e", "Z", "isSelectRoom", "f", "Ljava/lang/String;", "mPageFrom", "g", "getMPage", "setMPage", "(Ljava/lang/String;)V", "mPage", "h", "I", "getMPerPage", "()I", "setMPerPage", "(I)V", "mPerPage", "i", "Ljava/lang/Integer;", "mCurJoinPosition", "Lcom/tn/lib/view/RoomJoinAnimationView;", "j", "Lcom/tn/lib/view/RoomJoinAnimationView;", "mCurJoinView", CampaignEx.JSON_KEY_AD_K, "Landroid/view/View;", "mLoadingView", "Lcom/transsnet/loginapi/ILoginApi;", "l", "Lkotlin/Lazy;", "getMLoginApi", "()Lcom/transsnet/loginapi/ILoginApi;", "mLoginApi", "Landroidx/activity/result/b;", "Landroid/content/Intent;", "kotlin.jvm.PlatformType", "m", "Landroidx/activity/result/b;", "mLoginLaunch", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public abstract class RoomListBaseFragment extends LazyFragment<bq.r> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private RoomListAdapter mAdapter;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private sj.b mExposureHelper;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private RoomViewModel mViewModel;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private RoomDetailViewModel mDetailViewModel;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private boolean isSelectRoom;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private String mPageFrom;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private String mPage;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private Integer mCurJoinPosition;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private RoomJoinAnimationView mCurJoinView;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private View mLoadingView;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private final androidx.activity.result.b mLoginLaunch;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private int mPerPage = 12;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private final Lazy mLoginApi = LazyKt.b(new Function0() { // from class: com.transsion.room.fragment.h1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return RoomListBaseFragment.mLoginApi_delegate$lambda$0();
        }
    });

    public static final class a implements sj.a {
        a() {
        }

        @Override // sj.a
        public void a(int i11, long j11, View view) {
            RoomItem roomItem;
            RoomListBaseFragment roomListBaseFragment = RoomListBaseFragment.this;
            try {
                Result.Companion companion = Result.INSTANCE;
                RoomListAdapter mAdapter = roomListBaseFragment.getMAdapter();
                if (mAdapter != null && (roomItem = (RoomItem) mAdapter.getItem(i11)) != null) {
                    com.transsion.room.helper.l.f51631a.i(roomListBaseFragment.mPageFrom, roomListBaseFragment.pageName(), i11, j11, roomItem);
                }
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }
    }

    public static final class b extends DiffUtil.e {
        b() {
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean areContentsTheSame(RoomItem oldItem, RoomItem newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.getGroupId(), newItem.getGroupId());
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public boolean areItemsTheSame(RoomItem oldItem, RoomItem newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.getGroupId(), newItem.getGroupId());
        }
    }

    static final class c implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f51503a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f51503a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f51503a;
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
            this.f51503a.invoke(obj);
        }
    }

    public RoomListBaseFragment() {
        androidx.activity.result.b bVarRegisterForActivityResult = registerForActivityResult(new f.j(), new androidx.activity.result.a() { // from class: com.transsion.room.fragment.i1
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                RoomListBaseFragment.G0(this.f51558a, (ActivityResult) obj);
            }
        });
        Intrinsics.g(bVarRegisterForActivityResult, "registerForActivityResult(...)");
        this.mLoginLaunch = bVarRegisterForActivityResult;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A0(RoomListBaseFragment roomListBaseFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 500L)) {
            return;
        }
        Object item = adapter.getItem(i11);
        RoomItem roomItem = item instanceof RoomItem ? (RoomItem) item : null;
        if (roomItem == null) {
            return;
        }
        if (Intrinsics.c(roomItem.getHasJoin(), Boolean.TRUE)) {
            roomListBaseFragment.I0(roomItem, i11);
            return;
        }
        roomListBaseFragment.mCurJoinPosition = Integer.valueOf(i11);
        roomListBaseFragment.mCurJoinView = (RoomJoinAnimationView) view;
        roomListBaseFragment.D0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B0(RoomListBaseFragment roomListBaseFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 2000L)) {
            return;
        }
        Object item = adapter.getItem(i11);
        RoomItem roomItem = item instanceof RoomItem ? (RoomItem) item : null;
        if (roomItem == null) {
            return;
        }
        if (roomListBaseFragment.isSelectRoom) {
            roomListBaseFragment.H0(roomItem);
        } else {
            roomListBaseFragment.I0(roomItem, i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit C0(RoomListBaseFragment roomListBaseFragment, RoomNet roomNet) {
        if (roomNet == null) {
            RoomJoinAnimationView roomJoinAnimationView = roomListBaseFragment.mCurJoinView;
            if (roomJoinAnimationView != null) {
                roomJoinAnimationView.setStatus(RoomJoinStatus.JOIN);
            }
        } else {
            RoomJoinAnimationView roomJoinAnimationView2 = roomListBaseFragment.mCurJoinView;
            if (roomJoinAnimationView2 != null) {
                roomJoinAnimationView2.setStatus(RoomJoinStatus.JOINED);
            }
        }
        roomListBaseFragment.mCurJoinView = null;
        roomListBaseFragment.mCurJoinPosition = null;
        return Unit.f67061a;
    }

    private final void D0() {
        Integer num;
        RoomItem roomItem;
        String groupId;
        RoomJoinAnimationView roomJoinAnimationView = this.mCurJoinView;
        if ((roomJoinAnimationView == null || !roomJoinAnimationView.isLoading()) && checkLogin() && (num = this.mCurJoinPosition) != null) {
            Intrinsics.e(num);
            if (num.intValue() < 0) {
                return;
            }
            RoomListAdapter roomListAdapter = this.mAdapter;
            if (roomListAdapter != null) {
                Integer num2 = this.mCurJoinPosition;
                Intrinsics.e(num2);
                roomItem = (RoomItem) roomListAdapter.getItem(num2.intValue());
            } else {
                roomItem = null;
            }
            if (com.transsion.baseui.util.c.f43504a.a(1001, 2000L)) {
                return;
            }
            if (!nh.m.f70474a.e()) {
                uh.b.f76753a.d(R$string.no_network_toast);
                return;
            }
            if (roomItem == null || (groupId = roomItem.getGroupId()) == null) {
                return;
            }
            RoomJoinAnimationView roomJoinAnimationView2 = this.mCurJoinView;
            if (roomJoinAnimationView2 != null) {
                roomJoinAnimationView2.setStatus(RoomJoinStatus.LOADING);
            }
            RoomDetailViewModel roomDetailViewModel = this.mDetailViewModel;
            if (roomDetailViewModel != null) {
                roomDetailViewModel.w(groupId);
            }
            com.transsion.baselib.helper.a.f43262a.h(pageName(), "join", (60 & 4) != 0 ? "" : groupId, (60 & 8) != 0 ? "" : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
        }
    }

    public static /* synthetic */ void F0(RoomListBaseFragment roomListBaseFragment, boolean z10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: loadData");
        }
        if ((i11 & 1) != 0) {
            z10 = true;
        }
        roomListBaseFragment.E0(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G0(RoomListBaseFragment roomListBaseFragment, ActivityResult it) {
        Intrinsics.h(it, "it");
        if (it.getResultCode() == -1) {
            roomListBaseFragment.D0();
            return;
        }
        RoomJoinAnimationView roomJoinAnimationView = roomListBaseFragment.mCurJoinView;
        if (roomJoinAnimationView != null) {
            roomJoinAnimationView.setStatus(RoomJoinStatus.JOIN);
        }
        roomListBaseFragment.mCurJoinView = null;
        roomListBaseFragment.mCurJoinPosition = null;
    }

    private final void H0(RoomItem item) {
        lg.a.C0828a.f(lg.a.f68839a, "RoomList", "onSelectRoom, name:" + item.getName() + ",id:" + item.getGroupId(), false, 4, null);
        GroupBean groupBean = new GroupBean();
        groupBean.setGroupId(item.getGroupId());
        groupBean.setName(item.getName());
        groupBean.setDes(item.getDescription());
        groupBean.setDescription(item.getDescription());
        groupBean.setPostCount(String.valueOf(item.getPostCount()));
        groupBean.setAvatar(item.getAvatar());
        groupBean.setNewPostCount(String.valueOf(item.getNewPostCount()));
        groupBean.setOps(item.getOps());
        fp.a aVar = new fp.a();
        aVar.o(6);
        aVar.n(1);
        aVar.m(groupBean);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = fp.a.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, aVar, 0L);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    private final void I0(RoomItem item, int position) {
        if (item != null) {
            com.transsion.room.helper.l.f51631a.j(this.mPageFrom, pageName(), position, item);
        }
        Navigator.x(TheRouter.c("/room/detail").I(WebConstants.FIELD_ITEM, item).K("id", item != null ? item.getGroupId() : null), requireContext(), null, 2, null);
        s0(item, position);
    }

    private final boolean checkLogin() {
        ILoginApi mLoginApi;
        ILoginApi mLoginApi2 = getMLoginApi();
        if (mLoginApi2 != null && mLoginApi2.a()) {
            return true;
        }
        androidx.activity.result.b bVar = this.mLoginLaunch;
        Context context = getContext();
        Intent intentO = null;
        if (context != null && (mLoginApi = getMLoginApi()) != null) {
            intentO = mLoginApi.o(context);
        }
        bVar.a(intentO);
        return false;
    }

    private final ILoginApi getMLoginApi() {
        return (ILoginApi) this.mLoginApi.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initExposureHelper() {
        RecyclerView recyclerView;
        sj.b bVar = new sj.b(0.6f, new a(), false, 4, null);
        bVar.n(2);
        bq.r rVar = (bq.r) getMViewBinding();
        if (rVar != null && (recyclerView = rVar.f16856b) != null) {
            recyclerView.addOnScrollListener(bVar);
        }
        this.mExposureHelper = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi mLoginApi_delegate$lambda$0() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    private final void s0(RoomItem item, int position) {
        if (item != null) {
            item.setNewPostCount(0L);
        }
        RoomListAdapter roomListAdapter = this.mAdapter;
        if (roomListAdapter != null) {
            roomListAdapter.notifyItemChanged(position, 0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y0(RoomListBaseFragment roomListBaseFragment) {
        roomListBaseFragment.t0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z0(RoomListBaseFragment roomListBaseFragment) {
        roomListBaseFragment.E0(false);
    }

    public abstract void E0(boolean isRefresh);

    /* JADX WARN: Multi-variable type inference failed */
    public void J0(RoomBean bean) {
        List<Object> arrayList;
        r6.f fVarH0;
        r6.f fVarH1;
        Pager pager;
        r6.f fVarH2;
        List<RoomItem> items;
        r6.f fVarH3;
        RoomListAdapter roomListAdapter;
        r6.f fVarH4;
        r6.f fVarH5;
        RoomListAdapter roomListAdapter2;
        r6.f fVarH6;
        SwipeRefreshLayout swipeRefreshLayout;
        bq.r rVar;
        SwipeRefreshLayout swipeRefreshLayout2;
        bq.r rVar2 = (bq.r) getMViewBinding();
        if (rVar2 != null && (swipeRefreshLayout = rVar2.f16857c) != null && swipeRefreshLayout.isRefreshing() && (rVar = (bq.r) getMViewBinding()) != null && (swipeRefreshLayout2 = rVar.f16857c) != null) {
            swipeRefreshLayout2.setRefreshing(false);
        }
        showContentView();
        RoomListAdapter roomListAdapter3 = this.mAdapter;
        if (roomListAdapter3 == null || (arrayList = roomListAdapter3.getData()) == null) {
            arrayList = new ArrayList<>();
        }
        if (bean == null || (items = bean.getItems()) == null || items.isEmpty()) {
            if (arrayList.isEmpty()) {
                checkToShowEmptyView();
                return;
            }
            RoomListAdapter roomListAdapter4 = this.mAdapter;
            if ((roomListAdapter4 == null || (fVarH2 = roomListAdapter4.h0()) == null || !fVarH2.r()) ? false : true) {
                if ((bean == null || (pager = bean.getPager()) == null) ? false : Intrinsics.c(pager.getHasMore(), Boolean.TRUE)) {
                    RoomListAdapter roomListAdapter5 = this.mAdapter;
                    if (roomListAdapter5 == null || (fVarH0 = roomListAdapter5.h0()) == null) {
                        return;
                    }
                    fVarH0.v();
                    return;
                }
                RoomListAdapter roomListAdapter6 = this.mAdapter;
                if (roomListAdapter6 == null || (fVarH1 = roomListAdapter6.h0()) == null) {
                    return;
                }
                r6.f.u(fVarH1, false, 1, null);
                return;
            }
            return;
        }
        Pager pager2 = bean.getPager();
        this.mPage = pager2 != null ? pager2.getNextPage() : null;
        if (bean.getIsRefresh()) {
            hj.b logViewConfig = getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.k(true);
            }
            RoomListAdapter roomListAdapter7 = this.mAdapter;
            if (roomListAdapter7 != null) {
                roomListAdapter7.n1(bean.getItems());
            }
        } else {
            List<RoomItem> items2 = bean.getItems();
            if (items2 != null) {
                ArrayList arrayList2 = new ArrayList();
                if (arrayList.isEmpty()) {
                    arrayList2.addAll(items2);
                } else {
                    for (RoomItem roomItem : items2) {
                        if (!arrayList.contains(roomItem)) {
                            arrayList2.add(roomItem);
                        }
                    }
                }
                if (arrayList2.isEmpty()) {
                    RoomListAdapter roomListAdapter8 = this.mAdapter;
                    if (roomListAdapter8 != null && (fVarH3 = roomListAdapter8.h0()) != null) {
                        r6.f.u(fVarH3, false, 1, null);
                    }
                    if (arrayList.isEmpty()) {
                        checkToShowEmptyView();
                    }
                } else {
                    RoomListAdapter roomListAdapter9 = this.mAdapter;
                    if (roomListAdapter9 != null) {
                        roomListAdapter9.q(arrayList2);
                    }
                }
            }
        }
        RoomListAdapter roomListAdapter10 = this.mAdapter;
        if (roomListAdapter10 != null && (fVarH5 = roomListAdapter10.h0()) != null && fVarH5.r() && (roomListAdapter2 = this.mAdapter) != null && (fVarH6 = roomListAdapter2.h0()) != null) {
            fVarH6.s();
        }
        Pager pager3 = bean.getPager();
        if ((pager3 != null ? Intrinsics.c(pager3.getHasMore(), Boolean.TRUE) : false) || (roomListAdapter = this.mAdapter) == null || (fVarH4 = roomListAdapter.h0()) == null) {
            return;
        }
        r6.f.u(fVarH4, false, 1, null);
    }

    public void checkToShowEmptyView() {
        if (nh.m.f70474a.e()) {
            RoomListAdapter roomListAdapter = this.mAdapter;
            if (roomListAdapter != null) {
                roomListAdapter.Y0(getEmptyView(false));
                return;
            }
            return;
        }
        RoomListAdapter roomListAdapter2 = this.mAdapter;
        if (roomListAdapter2 != null) {
            roomListAdapter2.Y0(getLocalNoNetworkView(false));
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getEmptyDescText() {
        String string = getString(com.transsion.usercenter.R$string.profile_not_content);
        Intrinsics.g(string, "getString(...)");
        return string;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public View getLoadingView() {
        if (this.mLoadingView == null) {
            this.mLoadingView = LayoutInflater.from(requireContext()).inflate(R$layout.layout_room_list_loading, (ViewGroup) getFlStateView(), false);
        }
        return this.mLoadingView;
    }

    protected final String getMPage() {
        return this.mPage;
    }

    protected final int getMPerPage() {
        return this.mPerPage;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        RecyclerView recyclerView;
        SwipeRefreshLayout swipeRefreshLayout;
        initExposureHelper();
        bq.r rVar = (bq.r) getMViewBinding();
        if (rVar != null && (swipeRefreshLayout = rVar.f16857c) != null) {
            swipeRefreshLayout.setProgressBackgroundColorSchemeColor(androidx.core.content.b.getColor(swipeRefreshLayout.getContext(), R$color.bg_01));
            swipeRefreshLayout.setColorSchemeColors(androidx.core.content.b.getColor(swipeRefreshLayout.getContext(), R$color.main_gradient_center), androidx.core.content.b.getColor(swipeRefreshLayout.getContext(), R$color.main_gradient_start));
            swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.j() { // from class: com.transsion.room.fragment.j1
                @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.j
                public final void a() {
                    RoomListBaseFragment.y0(this.f51560a);
                }
            });
        }
        RoomListAdapter roomListAdapter = new RoomListAdapter(w0(), this.isSelectRoom);
        roomListAdapter.h0().z(true);
        roomListAdapter.h0().y(true);
        roomListAdapter.h0().E(3);
        roomListAdapter.h0().D(new p6.f() { // from class: com.transsion.room.fragment.k1
            @Override // p6.f
            public final void a() {
                RoomListBaseFragment.z0(this.f51563a);
            }
        });
        roomListAdapter.R0(new b());
        roomListAdapter.l(R$id.v_join);
        roomListAdapter.s1(new p6.b() { // from class: com.transsion.room.fragment.l1
            @Override // p6.b
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                RoomListBaseFragment.A0(this.f51566a, baseQuickAdapter, view, i11);
            }
        });
        roomListAdapter.w1(new p6.d() { // from class: com.transsion.room.fragment.m1
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                RoomListBaseFragment.B0(this.f51570a, baseQuickAdapter, view, i11);
            }
        });
        this.mAdapter = roomListAdapter;
        bq.r rVar2 = (bq.r) getMViewBinding();
        if (rVar2 == null || (recyclerView = rVar2.f16856b) == null) {
            return;
        }
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(recyclerView.getContext()));
        recyclerView.setAdapter(this.mAdapter);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        RoomListAdapter roomListAdapter;
        LiveData liveDataS;
        RoomDetailViewModel roomDetailViewModel = this.mDetailViewModel;
        if (roomDetailViewModel != null && (liveDataS = roomDetailViewModel.s()) != null) {
            liveDataS.j(this, new c(new Function1() { // from class: com.transsion.room.fragment.g1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return RoomListBaseFragment.C0(this.f51553a, (RoomNet) obj);
                }
            }));
        }
        if (nh.m.f70474a.e() || (roomListAdapter = this.mAdapter) == null) {
            return;
        }
        roomListAdapter.Y0(getLocalNoNetworkView(false));
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isShowPageStateLayoutTitle() {
        return false;
    }

    @Override // com.transsion.baseui.fragment.LazyFragment
    public void lazyLoadData() {
        showLoadingView();
        F0(this, false, 1, null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        this.isSelectRoom = arguments != null ? arguments.getBoolean("is_select_room") : false;
        this.mViewModel = (RoomViewModel) new androidx.p009lifecycle.v0(this).a(RoomViewModel.class);
        this.mDetailViewModel = (RoomDetailViewModel) new androidx.p009lifecycle.v0(this).a(RoomDetailViewModel.class);
        this.mPageFrom = hj.i.f64505a.i();
    }

    public abstract String pageName();

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
        showLoadingView();
        F0(this, false, 1, null);
    }

    public void t0() {
        this.mPage = null;
        F0(this, false, 1, null);
    }

    /* JADX INFO: renamed from: u0, reason: from getter */
    protected final RoomListAdapter getMAdapter() {
        return this.mAdapter;
    }

    /* JADX INFO: renamed from: v0, reason: from getter */
    protected final RoomViewModel getMViewModel() {
        return this.mViewModel;
    }

    public abstract RoomListFrom w0();

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: x0, reason: merged with bridge method [inline-methods] */
    public bq.r getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        bq.r rVarC = bq.r.c(inflater);
        Intrinsics.g(rVarC, "inflate(...)");
        return rVarC;
    }
}
