package com.transsion.room.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.RoomJoinAnimationView;
import com.tn.lib.view.RoomJoinStatus;
import com.tn.lib.widget.R$string;
import com.transsion.moviedetailapi.bean.RoomItem;
import com.transsion.moviedetailapi.bean.RoomNet;
import com.transsion.room.R$id;
import com.transsion.room.adapter.CommunityRoomsAdapter;
import com.transsion.room.viewmodel.RoomDetailViewModel;
import com.transsion.web.api.WebConstants;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.JoinRoomEvent;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import g4.a;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010#\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u00032\u00020\u00042\u00020\u0005B'\b\u0007\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0015\u0010\u0010J\u000f\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u000eH\u0014¢\u0006\u0004\b!\u0010\u0010J\u000f\u0010\"\u001a\u00020\u000eH\u0014¢\u0006\u0004\b\"\u0010\u0010J\u0015\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000H\u0016¢\u0006\u0004\b#\u0010$J\u001d\u0010(\u001a\u00020\u000e2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020&0%H\u0016¢\u0006\u0004\b(\u0010)J\u001f\u0010-\u001a\u00020\u000e2\u0006\u0010+\u001a\u00020*2\u0006\u0010,\u001a\u00020*H\u0016¢\u0006\u0004\b-\u0010.J\u0017\u00100\u001a\u00020\u000e2\u0006\u0010/\u001a\u00020*H\u0016¢\u0006\u0004\b0\u00101J\u000f\u00102\u001a\u00020\u000eH\u0004¢\u0006\u0004\b2\u0010\u0010J\u001f\u00105\u001a\u00020\u000e2\u0006\u00103\u001a\u00020&2\u0006\u00104\u001a\u00020\nH\u0004¢\u0006\u0004\b5\u00106J\u000f\u00107\u001a\u00020\u000eH&¢\u0006\u0004\b7\u0010\u0010J\u0011\u00109\u001a\u0004\u0018\u000108H&¢\u0006\u0004\b9\u0010:J\u0011\u0010<\u001a\u0004\u0018\u00010;H&¢\u0006\u0004\b<\u0010=R$\u0010D\u001a\u0004\u0018\u00018\u00008\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b>\u0010?\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR\u0018\u0010G\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR\u0018\u0010K\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010JR\u0018\u0010N\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010MR\u0018\u0010P\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010MR\u001a\u0010T\u001a\b\u0012\u0004\u0012\u00020\n0Q8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bR\u0010SR\u001d\u0010Z\u001a\u0004\u0018\u00010U8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bV\u0010W\u001a\u0004\bX\u0010YR\u001b\u0010_\u001a\u00020[8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\\\u0010W\u001a\u0004\b]\u0010^R\"\u0010g\u001a\u00020`8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\ba\u0010b\u001a\u0004\bc\u0010d\"\u0004\be\u0010f¨\u0006h"}, d2 = {"Lcom/transsion/room/widget/RoomsHomeBaseView;", "Lg4/a;", "T", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Laq/c;", "Ldz/a;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "s", "()V", CampaignEx.JSON_KEY_AD_R, RequestParameters.POSITION, "D", "(I)V", "t", "", CampaignEx.JSON_KEY_AD_Q, "()Z", "Landroidx/fragment/app/FragmentActivity;", "activity", "z", "(Landroidx/fragment/app/FragmentActivity;)V", "Lcom/transsnet/loginapi/bean/UserInfo;", "user", "onLogin", "(Lcom/transsnet/loginapi/bean/UserInfo;)V", "onAttachedToWindow", "onDetachedFromWindow", "getView", "()Lcom/transsion/room/widget/RoomsHomeBaseView;", "", "Lcom/transsion/moviedetailapi/bean/RoomItem;", "dataList", "setList", "(Ljava/util/List;)V", "", "pageName", "moduleName", "setReportName", "(Ljava/lang/String;Ljava/lang/String;)V", CampaignEx.JSON_KEY_TITLE, "updateTitle", "(Ljava/lang/String;)V", "C", WebConstants.FIELD_ITEM, "index", "B", "(Lcom/transsion/moviedetailapi/bean/RoomItem;I)V", "initRecyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "getRecyclerView", "()Landroidx/recyclerview/widget/RecyclerView;", "Landroid/widget/TextView;", "getTitleView", "()Landroid/widget/TextView;", "a", "Lg4/a;", "getMViewBinding", "()Lg4/a;", "setMViewBinding", "(Lg4/a;)V", "mViewBinding", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/Integer;", "mCurJoinPosition", "Lcom/tn/lib/view/RoomJoinAnimationView;", "c", "Lcom/tn/lib/view/RoomJoinAnimationView;", "mCurJoinView", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "mPageName", "e", "mModuleName", "", "f", "Ljava/util/Set;", "mExposedItems", "Lcom/transsnet/loginapi/ILoginApi;", "g", "Lkotlin/Lazy;", "getMLoginApi", "()Lcom/transsnet/loginapi/ILoginApi;", "mLoginApi", "Lcom/transsion/room/viewmodel/RoomDetailViewModel;", "h", "getMDetailViewModel", "()Lcom/transsion/room/viewmodel/RoomDetailViewModel;", "mDetailViewModel", "Lcom/transsion/room/adapter/CommunityRoomsAdapter;", "i", "Lcom/transsion/room/adapter/CommunityRoomsAdapter;", "getMAdapter", "()Lcom/transsion/room/adapter/CommunityRoomsAdapter;", "setMAdapter", "(Lcom/transsion/room/adapter/CommunityRoomsAdapter;)V", "mAdapter", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public abstract class RoomsHomeBaseView<T extends g4.a> extends ConstraintLayout implements aq.c, dz.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private g4.a mViewBinding;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private Integer mCurJoinPosition;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private RoomJoinAnimationView mCurJoinView;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String mPageName;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String mModuleName;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final Set mExposedItems;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final Lazy mLoginApi;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final Lazy mDetailViewModel;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private CommunityRoomsAdapter mAdapter;

    public static final class a extends RecyclerView.r {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrollStateChanged(RecyclerView recyclerView, int i11) {
            Intrinsics.h(recyclerView, "recyclerView");
            super.onScrollStateChanged(recyclerView, i11);
            if (i11 == 0) {
                RoomsHomeBaseView.this.r();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrolled(RecyclerView recyclerView, int i11, int i12) {
            Intrinsics.h(recyclerView, "recyclerView");
            super.onScrolled(recyclerView, i11, i12);
            RoomsHomeBaseView.this.r();
        }
    }

    static final class b implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f51887a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f51887a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f51887a;
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
            this.f51887a.invoke(obj);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public RoomsHomeBaseView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public RoomsHomeBaseView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public RoomsHomeBaseView(final Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.mExposedItems = new LinkedHashSet();
        this.mLoginApi = LazyKt.b(new Function0() { // from class: com.transsion.room.widget.l
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RoomsHomeBaseView.y();
            }
        });
        this.mDetailViewModel = LazyKt.b(new Function0() { // from class: com.transsion.room.widget.m
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RoomsHomeBaseView.x(context);
            }
        });
        CommunityRoomsAdapter communityRoomsAdapter = new CommunityRoomsAdapter();
        communityRoomsAdapter.l(R$id.v_join);
        communityRoomsAdapter.s1(new p6.b() { // from class: com.transsion.room.widget.n
            @Override // p6.b
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i12) {
                RoomsHomeBaseView.u(this.f51899a, baseQuickAdapter, view, i12);
            }
        });
        communityRoomsAdapter.w1(new p6.d() { // from class: com.transsion.room.widget.o
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i12) {
                RoomsHomeBaseView.v(this.f51900a, baseQuickAdapter, view, i12);
            }
        });
        communityRoomsAdapter.E1(context, new View.OnClickListener() { // from class: com.transsion.room.widget.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RoomsHomeBaseView.w(this.f51901a, view);
            }
        });
        this.mAdapter = communityRoomsAdapter;
        FragmentActivity fragmentActivity = (FragmentActivity) context;
        getMDetailViewModel().s().j(fragmentActivity, new b(new Function1() { // from class: com.transsion.room.widget.q
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RoomsHomeBaseView.p(this.f51902a, (RoomNet) obj);
            }
        }));
        z(fragmentActivity);
        s();
    }

    public /* synthetic */ RoomsHomeBaseView(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit A(RoomsHomeBaseView roomsHomeBaseView, JoinRoomEvent value) {
        Intrinsics.h(value, "value");
        Iterator<Object> it = roomsHomeBaseView.mAdapter.getData().iterator();
        int i11 = 0;
        while (true) {
            if (!it.hasNext()) {
                i11 = -1;
                break;
            }
            if (Intrinsics.c(value.getGroupId(), ((RoomItem) it.next()).getGroupId())) {
                break;
            }
            i11++;
        }
        if (i11 >= 0) {
            RoomItem roomItem = (RoomItem) roomsHomeBaseView.mAdapter.f0(i11);
            if (roomItem != null) {
                roomItem.setHasJoin(Boolean.valueOf(value.getJoin()));
            }
            roomsHomeBaseView.mAdapter.notifyItemChanged(i11, Boolean.valueOf(value.getJoin()));
        }
        return Unit.f67061a;
    }

    private final void D(int position) {
        String str;
        String str2;
        if (this.mExposedItems.contains(Integer.valueOf(position))) {
            return;
        }
        this.mExposedItems.add(Integer.valueOf(position));
        RoomItem roomItem = (RoomItem) this.mAdapter.f0(position);
        if (roomItem == null || (str = this.mPageName) == null || (str2 = this.mModuleName) == null) {
            return;
        }
        com.transsion.room.helper.l.f51631a.e(str, str2, roomItem);
    }

    private final RoomDetailViewModel getMDetailViewModel() {
        return (RoomDetailViewModel) this.mDetailViewModel.getValue();
    }

    private final ILoginApi getMLoginApi() {
        return (ILoginApi) this.mLoginApi.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit p(RoomsHomeBaseView roomsHomeBaseView, RoomNet roomNet) {
        if (roomNet == null) {
            RoomJoinAnimationView roomJoinAnimationView = roomsHomeBaseView.mCurJoinView;
            if (roomJoinAnimationView != null) {
                roomJoinAnimationView.setStatus(RoomJoinStatus.JOIN);
            }
        } else {
            RoomJoinAnimationView roomJoinAnimationView2 = roomsHomeBaseView.mCurJoinView;
            if (roomJoinAnimationView2 != null) {
                roomJoinAnimationView2.setStatus(RoomJoinStatus.JOINED);
            }
        }
        roomsHomeBaseView.mCurJoinView = null;
        roomsHomeBaseView.mCurJoinPosition = null;
        return Unit.f67061a;
    }

    private final boolean q() {
        ILoginApi mLoginApi = getMLoginApi();
        if (mLoginApi != null && mLoginApi.a()) {
            return true;
        }
        ILoginApi mLoginApi2 = getMLoginApi();
        if (mLoginApi2 == null) {
            return false;
        }
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        mLoginApi2.j(context);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r() {
        int iFindFirstVisibleItemPosition;
        int iFindLastVisibleItemPosition;
        int i11;
        RecyclerView recyclerView = getRecyclerView();
        RecyclerView.m layoutManager = recyclerView != null ? recyclerView.getLayoutManager() : null;
        if (layoutManager instanceof GridLayoutManager) {
            iFindFirstVisibleItemPosition = ((GridLayoutManager) layoutManager).findFirstVisibleItemPosition();
        } else if (!(layoutManager instanceof LinearLayoutManager)) {
            return;
        } else {
            iFindFirstVisibleItemPosition = ((LinearLayoutManager) layoutManager).findFirstVisibleItemPosition();
        }
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
        if (linearLayoutManager instanceof GridLayoutManager) {
            iFindLastVisibleItemPosition = ((GridLayoutManager) layoutManager).findLastVisibleItemPosition();
        } else if (!(linearLayoutManager instanceof LinearLayoutManager)) {
            return;
        } else {
            iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
        }
        if (iFindFirstVisibleItemPosition == -1 || iFindLastVisibleItemPosition == -1 || iFindFirstVisibleItemPosition > (i11 = iFindLastVisibleItemPosition - 1)) {
            return;
        }
        while (true) {
            D(iFindFirstVisibleItemPosition);
            if (iFindFirstVisibleItemPosition == i11) {
                return;
            } else {
                iFindFirstVisibleItemPosition++;
            }
        }
    }

    private final void s() {
        RecyclerView recyclerView = getRecyclerView();
        if (recyclerView != null) {
            recyclerView.addOnScrollListener(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setList$lambda$10(RoomsHomeBaseView roomsHomeBaseView) {
        roomsHomeBaseView.s();
        roomsHomeBaseView.r();
    }

    private final void t() {
        Integer num;
        RoomJoinAnimationView roomJoinAnimationView = this.mCurJoinView;
        if ((roomJoinAnimationView == null || !roomJoinAnimationView.isLoading()) && this.mCurJoinPosition != null && q() && (num = this.mCurJoinPosition) != null) {
            Intrinsics.e(num);
            if (num.intValue() < 0) {
                return;
            }
            CommunityRoomsAdapter communityRoomsAdapter = this.mAdapter;
            Integer num2 = this.mCurJoinPosition;
            Intrinsics.e(num2);
            RoomItem roomItem = (RoomItem) communityRoomsAdapter.getItem(num2.intValue());
            if (com.transsion.baseui.util.c.f43504a.a(1001, 2000L)) {
                return;
            }
            if (!nh.m.f70474a.e()) {
                uh.b.f76753a.d(R$string.no_network_toast);
                return;
            }
            String groupId = roomItem.getGroupId();
            if (groupId != null) {
                RoomJoinAnimationView roomJoinAnimationView2 = this.mCurJoinView;
                if (roomJoinAnimationView2 != null) {
                    roomJoinAnimationView2.setStatus(RoomJoinStatus.LOADING);
                }
                getMDetailViewModel().w(groupId);
                String str = this.mPageName;
                if (str != null) {
                    com.transsion.baselib.helper.a.f43262a.h(str, "join", (60 & 4) != 0 ? "" : groupId, (60 & 8) != 0 ? "" : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(RoomsHomeBaseView roomsHomeBaseView, BaseQuickAdapter adapter, View view, int i11) {
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
            roomsHomeBaseView.B(roomItem, i11);
            return;
        }
        roomsHomeBaseView.mCurJoinPosition = Integer.valueOf(i11);
        roomsHomeBaseView.mCurJoinView = (RoomJoinAnimationView) view;
        roomsHomeBaseView.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(RoomsHomeBaseView roomsHomeBaseView, BaseQuickAdapter adapter, View view, int i11) {
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
        roomsHomeBaseView.B(roomItem, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(RoomsHomeBaseView roomsHomeBaseView, View view) {
        roomsHomeBaseView.C();
        String str = roomsHomeBaseView.mPageName;
        if (str != null) {
            com.transsion.room.helper.l.f51631a.h(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final RoomDetailViewModel x(Context context) {
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        return (RoomDetailViewModel) new v0((FragmentActivity) context).a(RoomDetailViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi y() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    private final void z(FragmentActivity activity) {
        Function1 function1 = new Function1() { // from class: com.transsion.room.widget.r
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RoomsHomeBaseView.A(this.f51903a, (JoinRoomEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = JoinRoomEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(activity, name, Lifecycle.State.CREATED, y0.c().q(), false, function1);
    }

    protected final void B(RoomItem item, int index) {
        Intrinsics.h(item, "item");
        item.setNewPostCount(0L);
        this.mAdapter.notifyItemChanged(index, 0L);
        String str = this.mPageName;
        if (str != null) {
            com.transsion.room.helper.l.f51631a.g(str, this.mModuleName, item);
        }
        Navigator.x(TheRouter.c("/room/detail").K("id", item.getGroupId()), getContext(), null, 2, null);
    }

    protected final void C() {
        String str = this.mPageName;
        if (str != null) {
            com.transsion.room.helper.l.f51631a.d(str, this.mModuleName);
        }
        Navigator.x(TheRouter.c("/room/list").F("index", 1), getContext(), null, 2, null);
    }

    protected final CommunityRoomsAdapter getMAdapter() {
        return this.mAdapter;
    }

    protected final T getMViewBinding() {
        return (T) this.mViewBinding;
    }

    public abstract RecyclerView getRecyclerView();

    public abstract TextView getTitleView();

    @Override // aq.c
    public RoomsHomeBaseView<T> getView() {
        return this;
    }

    public abstract void initRecyclerView();

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ILoginApi mLoginApi = getMLoginApi();
        if (mLoginApi != null) {
            mLoginApi.g(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ILoginApi mLoginApi = getMLoginApi();
        if (mLoginApi != null) {
            mLoginApi.p(this);
        }
    }

    @Override // dz.a
    public void onLogin(UserInfo user) {
        Intrinsics.h(user, "user");
        dz.a.C0737a.a(this, user);
        t();
    }

    @Override // dz.a
    public void onLogout() {
        dz.a.C0737a.b(this);
    }

    @Override // dz.a
    public void onUpdateUserInfo(UserInfo userInfo) {
        dz.a.C0737a.c(this, userInfo);
    }

    public void setList(List<RoomItem> dataList) {
        Intrinsics.h(dataList, "dataList");
        if (dataList.size() > 4) {
            dataList = dataList.subList(0, 4);
        }
        this.mAdapter.n1(dataList);
        RecyclerView recyclerView = getRecyclerView();
        if (recyclerView != null) {
            recyclerView.post(new Runnable() { // from class: com.transsion.room.widget.k
                @Override // java.lang.Runnable
                public final void run() {
                    RoomsHomeBaseView.setList$lambda$10(this.f51897a);
                }
            });
        }
    }

    protected final void setMAdapter(CommunityRoomsAdapter communityRoomsAdapter) {
        Intrinsics.h(communityRoomsAdapter, "<set-?>");
        this.mAdapter = communityRoomsAdapter;
    }

    protected final void setMViewBinding(T t11) {
        this.mViewBinding = t11;
    }

    @Override // aq.c
    public void setReportName(String pageName, String moduleName) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(moduleName, "moduleName");
        this.mPageName = pageName;
        this.mModuleName = moduleName;
    }

    @Override // aq.c
    public void updateTitle(String title) {
        Intrinsics.h(title, "title");
        TextView titleView = getTitleView();
        if (titleView != null) {
            titleView.setText(title);
        }
    }
}
