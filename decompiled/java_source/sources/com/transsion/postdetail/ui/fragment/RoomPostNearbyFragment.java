package com.transsion.postdetail.ui.fragment;

import android.location.Address;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.therouter.TheRouter;
import com.transsion.moviedetailapi.bean.PostSubjectBean;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.RoomBean;
import com.transsion.moviedetailapi.bean.RoomItem;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.ui.adapter.PostAdapterFrom;
import com.transsion.postdetail.viewmodel.RoomPostViewModel;
import com.transsion.room.api.IRoomApi;
import com.transsion.room.api.bean.LocationPlace;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 G2\u00020\u0001:\u0001HB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u0017\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000b\u0010\u0003J\u000f\u0010\f\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\f\u0010\u0003J\u000f\u0010\r\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000e\u0010\u0003J\u000f\u0010\u000f\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000f\u0010\u0003J\u0019\u0010\u0012\u001a\u00020\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0014\u0010\u0003J\u000f\u0010\u0015\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0015\u0010\u0003J\u000f\u0010\u0016\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0016\u0010\u0003J\u000f\u0010\u0017\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0017\u0010\u0003J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0019\u0010\u001d\u001a\u00020\u00042\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b \u0010!J\u001f\u0010$\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u0006H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u001fH\u0016¢\u0006\u0004\b&\u0010!J\u000f\u0010'\u001a\u00020\u001fH\u0016¢\u0006\u0004\b'\u0010!J\u000f\u0010(\u001a\u00020\u0006H\u0016¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\u0006H\u0016¢\u0006\u0004\b*\u0010)J\u000f\u0010,\u001a\u00020+H\u0016¢\u0006\u0004\b,\u0010-J\u000f\u0010.\u001a\u00020\u0006H\u0016¢\u0006\u0004\b.\u0010)R\u0018\u00100\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0018\u00103\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0018\u00105\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00104R\u0018\u00107\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R\u0018\u00109\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u00101R\u0018\u0010:\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u00101R\u0016\u0010;\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\u0016\u0010=\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010<R\u0018\u0010?\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u001d\u0010F\u001a\u0004\u0018\u00010A8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bB\u0010C\u001a\u0004\bD\u0010E¨\u0006I"}, d2 = {"Lcom/transsion/postdetail/ui/fragment/RoomPostNearbyFragment;", "Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;", "<init>", "()V", "", "checkGPS", "", "forceRequest", "checkPermission", "(Z)V", "requestLocationPermission", "addLocationHeaderView", "getCurrentLocation", "removeLocationHeaderView", "removeEmptyView", "loadRecommendRooms", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "initViewData", "initViewModel", "lazyLoadData", "checkToShowEmptyView", "Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;", "postAdapterFrom", "()Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", WebConstants.FIELD_ITEM, "onItemHeaderClick", "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V", "", "onItemHeaderModuleName", "()Ljava/lang/String;", "isFirstLoad", "isRefresh", "loadData", "(ZZ)V", "pageName", "subpageName", "isSwipeRefreshEnable", "()Z", "isNeedInsertPublishPost", "", "tabIndex", "()I", "isStaggeredPost", "Landroid/view/View;", "locationPermissionHeaderView", "Landroid/view/View;", "", "lat", "Ljava/lang/Double;", "lon", "Landroid/location/Address;", PlaceTypes.ADDRESS, "Landroid/location/Address;", "mEmptyView", "mNoNetView", "isRoomListRequested", "Z", "isInsertRoom", "Laq/a;", "mGpsServiceHelper", "Laq/a;", "Lcom/transsion/room/api/IRoomApi;", "mRoomApi$delegate", "Lkotlin/Lazy;", "getMRoomApi", "()Lcom/transsion/room/api/IRoomApi;", "mRoomApi", "Companion", "a", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class RoomPostNearbyFragment extends RoomPostBaseFragment {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String KEY_PERMISSION_REQUESTED = "key_lo_per_requested";
    public static final String SUBPAGE_NAME = "room_home_nearby";
    public static final String TAG = "RoomPostNearby";
    private Address address;
    private boolean isInsertRoom;
    private boolean isRoomListRequested;
    private Double lat;
    private View locationPermissionHeaderView;
    private Double lon;
    private View mEmptyView;
    private aq.a mGpsServiceHelper;
    private View mNoNetView;

    /* JADX INFO: renamed from: mRoomApi$delegate, reason: from kotlin metadata */
    private final Lazy mRoomApi = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.ui.fragment.v4
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return RoomPostNearbyFragment.mRoomApi_delegate$lambda$0();
        }
    });

    /* JADX INFO: renamed from: com.transsion.postdetail.ui.fragment.RoomPostNearbyFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final RoomPostNearbyFragment a(String str) {
            RoomPostNearbyFragment roomPostNearbyFragment = new RoomPostNearbyFragment();
            roomPostNearbyFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("parent_type", str)));
            return roomPostNearbyFragment;
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f49609a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f49609a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f49609a;
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
            this.f49609a.invoke(obj);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void addLocationHeaderView() {
        RecyclerView recyclerView;
        FragmentActivity activity = getActivity();
        if (activity == null || activity.isDestroyed() || activity.isFinishing() || this.locationPermissionHeaderView != null) {
            return;
        }
        final View viewInflate = LayoutInflater.from(activity).inflate(R$layout.layout_location_permission_header, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R$id.tv_allow)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.fragment.t4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f49824a.requestLocationPermission();
            }
        });
        com.transsion.postdetail.ui.adapter.i mAdapter = getMAdapter();
        if (mAdapter != null) {
            Intrinsics.e(viewInflate);
            BaseQuickAdapter.y(mAdapter, viewInflate, 0, 0, 6, null);
        }
        so.s sVar = (so.s) getMViewBinding();
        if (sVar != null && (recyclerView = sVar.f75704b) != null) {
            recyclerView.post(new Runnable() { // from class: com.transsion.postdetail.ui.fragment.u4
                @Override // java.lang.Runnable
                public final void run() {
                    RoomPostNearbyFragment.addLocationHeaderView$lambda$11$lambda$10(viewInflate, this);
                }
            });
        }
        this.locationPermissionHeaderView = viewInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void addLocationHeaderView$lambda$11$lambda$10(View view, RoomPostNearbyFragment roomPostNearbyFragment) {
        Unit unit;
        RecyclerView recyclerView;
        try {
            Result.Companion companion = Result.INSTANCE;
            so.s sVar = (so.s) roomPostNearbyFragment.getMViewBinding();
            if (sVar == null || (recyclerView = sVar.f75704b) == null) {
                unit = null;
            } else {
                recyclerView.scrollToPosition(0);
                unit = Unit.f67061a;
            }
            Result.m454constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void checkGPS() {
        FrameLayout root;
        FragmentActivity activity = getActivity();
        if (activity == null || activity.isDestroyed() || activity.isFinishing()) {
            return;
        }
        aq.a aVar = this.mGpsServiceHelper;
        if (aVar != null && aVar.b()) {
            lg.a.C0828a.f(lg.a.f68839a, "NearbyLocation", "GPS is open, checkPermission", false, 4, null);
            so.s sVar = (so.s) getMViewBinding();
            if (sVar == null || (root = sVar.getRoot()) == null) {
                return;
            }
            root.post(new Runnable() { // from class: com.transsion.postdetail.ui.fragment.q4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f49802a.checkPermission(false);
                }
            });
            return;
        }
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
        if (bVar.b().getBoolean(KEY_PERMISSION_REQUESTED, false)) {
            addLocationHeaderView();
            showLoadingView();
            RoomPostBaseFragment.loadData$default(this, true, false, 2, null);
        } else {
            bVar.b().putBoolean(KEY_PERMISSION_REQUESTED, true);
            aq.a aVar2 = this.mGpsServiceHelper;
            if (aVar2 != null) {
                aVar2.a(new Function1() { // from class: com.transsion.postdetail.ui.fragment.s4
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return RoomPostNearbyFragment.checkGPS$lambda$6(this.f49817a, ((Boolean) obj).booleanValue());
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit checkGPS$lambda$6(final RoomPostNearbyFragment roomPostNearbyFragment, boolean z10) {
        FrameLayout root;
        if (!roomPostNearbyFragment.isAdded() || roomPostNearbyFragment.isDetached() || roomPostNearbyFragment.isRemoving()) {
            return Unit.f67061a;
        }
        lg.a.C0828a.f(lg.a.f68839a, "NearbyLocation", "openGPS result:" + z10, false, 4, null);
        so.s sVar = (so.s) roomPostNearbyFragment.getMViewBinding();
        if (sVar != null && (root = sVar.getRoot()) != null) {
            root.post(new Runnable() { // from class: com.transsion.postdetail.ui.fragment.y4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f49860a.checkPermission(true);
                }
            });
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkPermission(boolean forceRequest) {
        FragmentActivity activity = getActivity();
        if (activity == null) {
            return;
        }
        if (ye.c.f78993a.f(activity, "android.permission.ACCESS_FINE_LOCATION")) {
            getCurrentLocation();
            return;
        }
        if (forceRequest) {
            lg.a.C0828a.f(lg.a.f68839a, "NearbyLocation", "checkPermission forceRequest permission", false, 4, null);
            requestLocationPermission();
        } else {
            com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
            if (bVar.b().getBoolean(KEY_PERMISSION_REQUESTED, false)) {
                lg.a.C0828a.f(lg.a.f68839a, "NearbyLocation", "checkPermission other,show header", false, 4, null);
                addLocationHeaderView();
            } else {
                lg.a.C0828a.f(lg.a.f68839a, "NearbyLocation", "checkPermission first", false, 4, null);
                bVar.b().putBoolean(KEY_PERMISSION_REQUESTED, true);
                requestLocationPermission();
            }
        }
        showLoadingView();
        RoomPostBaseFragment.loadData$default(this, false, false, 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void checkToShowEmptyView$lambda$16(RoomPostNearbyFragment roomPostNearbyFragment, View view) {
        com.transsion.postdetail.ui.adapter.i mAdapter = roomPostNearbyFragment.getMAdapter();
        if (mAdapter != null) {
            BaseQuickAdapter.y(mAdapter, view, 1, 0, 4, null);
        }
    }

    private final void getCurrentLocation() {
        IRoomApi mRoomApi;
        FragmentActivity activity = getActivity();
        if (activity == null || (mRoomApi = getMRoomApi()) == null) {
            return;
        }
        mRoomApi.b(activity, new Function1() { // from class: com.transsion.postdetail.ui.fragment.r4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RoomPostNearbyFragment.getCurrentLocation$lambda$12(this.f49809a, (LocationPlace) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getCurrentLocation$lambda$12(RoomPostNearbyFragment roomPostNearbyFragment, LocationPlace locationPlace) {
        if (!roomPostNearbyFragment.isAdded() || roomPostNearbyFragment.isDetached() || roomPostNearbyFragment.isRemoving()) {
            return Unit.f67061a;
        }
        roomPostNearbyFragment.lat = locationPlace != null ? locationPlace.getLat() : null;
        roomPostNearbyFragment.lon = locationPlace != null ? locationPlace.getLon() : null;
        roomPostNearbyFragment.address = locationPlace != null ? locationPlace.getLocationAddress() : null;
        lg.a.C0828a.f(lg.a.f68839a, roomPostNearbyFragment.getTAG(), "get location success load data again", false, 4, null);
        roomPostNearbyFragment.loadRecommendRooms();
        roomPostNearbyFragment.showLoadingView();
        RoomPostBaseFragment.loadData$default(roomPostNearbyFragment, false, false, 3, null);
        return Unit.f67061a;
    }

    private final IRoomApi getMRoomApi() {
        return (IRoomApi) this.mRoomApi.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:44:0x00c6  */
    /* JADX WARN: Instruction removed from duplicated block: B:44:0x00c6, please report this as an issue */
    public static final Unit initViewModel$lambda$1(RoomPostNearbyFragment roomPostNearbyFragment, PostSubjectBean postSubjectBean) {
        List<RoomItem> list;
        androidx.p009lifecycle.b0 b0VarR;
        RoomBean roomBean;
        RoomPostViewModel mViewModel = roomPostNearbyFragment.getMViewModel();
        List<RoomItem> items = (mViewModel == null || (b0VarR = mViewModel.R()) == null || (roomBean = (RoomBean) b0VarR.f()) == null) ? null : roomBean.getItems();
        if (!roomPostNearbyFragment.isRoomListRequested || roomPostNearbyFragment.isInsertRoom) {
            lg.a.C0828a.f(lg.a.f68839a, roomPostNearbyFragment.getTAG(), "帖子列表成功，room推荐:" + roomPostNearbyFragment.isRoomListRequested + "，不插入数据", false, 4, null);
        } else {
            List<PostSubjectItem> items2 = postSubjectBean != null ? postSubjectBean.getItems() : null;
            if (items2 == null || items2.isEmpty() || (list = items) == null || list.isEmpty()) {
                lg.a.C0828a.f(lg.a.f68839a, roomPostNearbyFragment.getTAG(), "帖子列表成功，room推荐:" + roomPostNearbyFragment.isRoomListRequested + "，不插入数据", false, 4, null);
            } else {
                if ((items != null ? items.size() : 0) >= 3) {
                    lg.a.C0828a.f(lg.a.f68839a, roomPostNearbyFragment.getTAG(), "帖子列表成功，room推荐已成功，插入数据", false, 4, null);
                    PostSubjectItem postSubjectItem = new PostSubjectItem(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, null, true, items, false, null, false, false, false, false, null, -50331649, 1, null);
                    List<PostSubjectItem> items3 = postSubjectBean.getItems();
                    if ((items3 != null ? items3.size() : 0) > 2) {
                        List<PostSubjectItem> items4 = postSubjectBean.getItems();
                        if (items4 != null) {
                            items4.add(2, postSubjectItem);
                        }
                    } else {
                        List<PostSubjectItem> items5 = postSubjectBean.getItems();
                        if (items5 != null) {
                            items5.add(postSubjectItem);
                        }
                    }
                    roomPostNearbyFragment.isInsertRoom = true;
                } else {
                    lg.a.C0828a.f(lg.a.f68839a, roomPostNearbyFragment.getTAG(), "帖子列表成功，room推荐:" + roomPostNearbyFragment.isRoomListRequested + "，不插入数据", false, 4, null);
                }
            }
        }
        roomPostNearbyFragment.removeEmptyView();
        roomPostNearbyFragment.updateData(postSubjectBean);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initViewModel$lambda$3(RoomPostNearbyFragment roomPostNearbyFragment, RoomBean roomBean) {
        Unit unit;
        List<Object> data;
        roomPostNearbyFragment.isRoomListRequested = true;
        List<RoomItem> items = roomBean != null ? roomBean.getItems() : null;
        List<RoomItem> list = items;
        if (list == null || list.isEmpty()) {
            lg.a.C0828a.f(lg.a.f68839a, roomPostNearbyFragment.getTAG(), "room 推荐列表成功，属于为空，不处理", false, 4, null);
            return Unit.f67061a;
        }
        if (items.size() < 3) {
            lg.a.C0828a.f(lg.a.f68839a, roomPostNearbyFragment.getTAG(), "room 推荐列表成功，少于3个，直接隐藏", false, 4, null);
            return Unit.f67061a;
        }
        PostSubjectItem postSubjectItem = new PostSubjectItem(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, null, true, items, false, null, false, false, false, false, null, -50331649, 1, null);
        com.transsion.postdetail.ui.adapter.i mAdapter = roomPostNearbyFragment.getMAdapter();
        int itemCount = mAdapter != null ? mAdapter.getItemCount() : 0;
        if (itemCount > 0) {
            lg.a.C0828a.f(lg.a.f68839a, roomPostNearbyFragment.getTAG(), "room 推荐列表成功，帖子列表已返回，直接插入， " + items.size(), false, 4, null);
            if (itemCount > 2) {
                itemCount = 2;
            }
            try {
                Result.Companion companion = Result.INSTANCE;
                com.transsion.postdetail.ui.adapter.i mAdapter2 = roomPostNearbyFragment.getMAdapter();
                if (mAdapter2 != null && (data = mAdapter2.getData()) != null) {
                    data.add(itemCount, postSubjectItem);
                }
                com.transsion.postdetail.ui.adapter.i mAdapter3 = roomPostNearbyFragment.getMAdapter();
                if (mAdapter3 != null) {
                    mAdapter3.notifyItemInserted(itemCount);
                    unit = Unit.f67061a;
                } else {
                    unit = null;
                }
                Result.m454constructorimpl(unit);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }
        return Unit.f67061a;
    }

    private final void loadRecommendRooms() {
        RoomPostViewModel mViewModel;
        if (this.lat == null || this.lon == null || (mViewModel = getMViewModel()) == null) {
            return;
        }
        Double d11 = this.lat;
        Intrinsics.e(d11);
        double dDoubleValue = d11.doubleValue();
        Double d12 = this.lon;
        Intrinsics.e(d12);
        mViewModel.Q(dDoubleValue, d12.doubleValue(), this.address);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IRoomApi mRoomApi_delegate$lambda$0() {
        return (IRoomApi) TheRouter.d(IRoomApi.class, new Object[0]);
    }

    private final void removeEmptyView() {
        View view = this.mNoNetView;
        if (view != null) {
            com.transsion.postdetail.ui.adapter.i mAdapter = getMAdapter();
            if (mAdapter != null) {
                mAdapter.J0(view);
            }
            this.mNoNetView = null;
        }
        View view2 = this.mEmptyView;
        if (view2 != null) {
            com.transsion.postdetail.ui.adapter.i mAdapter2 = getMAdapter();
            if (mAdapter2 != null) {
                mAdapter2.J0(view2);
            }
            this.mEmptyView = null;
        }
    }

    private final void removeLocationHeaderView() {
        View view = this.locationPermissionHeaderView;
        if (view != null) {
            com.transsion.postdetail.ui.adapter.i mAdapter = getMAdapter();
            if (mAdapter != null) {
                mAdapter.J0(view);
            }
            this.locationPermissionHeaderView = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void requestLocationPermission() {
        IRoomApi mRoomApi;
        FragmentActivity activity = getActivity();
        if (activity == null || !isAdded() || isDetached() || isRemoving() || (mRoomApi = getMRoomApi()) == null) {
            return;
        }
        mRoomApi.a(activity, false, new Function1() { // from class: com.transsion.postdetail.ui.fragment.x4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RoomPostNearbyFragment.requestLocationPermission$lambda$7(this.f49853a, ((Boolean) obj).booleanValue());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit requestLocationPermission$lambda$7(RoomPostNearbyFragment roomPostNearbyFragment, boolean z10) {
        if (z10) {
            lg.a.C0828a.f(lg.a.f68839a, "NearbyLocation", "checkPermission permission Granted， get location", false, 4, null);
            roomPostNearbyFragment.removeLocationHeaderView();
            roomPostNearbyFragment.getCurrentLocation();
        } else {
            lg.a.C0828a.f(lg.a.f68839a, "NearbyLocation", "checkPermission permission denied, show header", false, 4, null);
            roomPostNearbyFragment.addLocationHeaderView();
        }
        return Unit.f67061a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    public void checkToShowEmptyView() {
        final View emptyView;
        FrameLayout root;
        if (this.locationPermissionHeaderView == null) {
            super.checkToShowEmptyView();
            return;
        }
        if (nh.m.f70474a.e()) {
            emptyView = getEmptyView(false);
            this.mEmptyView = emptyView;
        } else {
            emptyView = getLocalNoNetworkView(false);
            this.mNoNetView = emptyView;
        }
        so.s sVar = (so.s) getMViewBinding();
        if (sVar == null || (root = sVar.getRoot()) == null) {
            return;
        }
        root.post(new Runnable() { // from class: com.transsion.postdetail.ui.fragment.w4
            @Override // java.lang.Runnable
            public final void run() {
                RoomPostNearbyFragment.checkToShowEmptyView$lambda$16(this.f49845a, emptyView);
            }
        });
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        super.initViewData();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        androidx.p009lifecycle.b0 b0VarR;
        androidx.p009lifecycle.b0 b0VarG;
        RoomPostViewModel mViewModel = getMViewModel();
        if (mViewModel != null && (b0VarG = mViewModel.G()) != null) {
            b0VarG.j(this, new b(new Function1() { // from class: com.transsion.postdetail.ui.fragment.z4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return RoomPostNearbyFragment.initViewModel$lambda$1(this.f49869a, (PostSubjectBean) obj);
                }
            }));
        }
        RoomPostViewModel mViewModel2 = getMViewModel();
        if (mViewModel2 == null || (b0VarR = mViewModel2.R()) == null) {
            return;
        }
        b0VarR.j(this, new b(new Function1() { // from class: com.transsion.postdetail.ui.fragment.a5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RoomPostNearbyFragment.initViewModel$lambda$3(this.f49650a, (RoomBean) obj);
            }
        }));
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
        if (!isAdded() || isDetached() || isRemoving()) {
            return;
        }
        checkGPS();
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    public void loadData(boolean isFirstLoad, boolean isRefresh) {
        if (isRefresh) {
            this.isInsertRoom = false;
            loadRecommendRooms();
        }
        RoomPostViewModel mViewModel = getMViewModel();
        if (mViewModel != null) {
            String mPage = getMPage();
            int mPerPage = getMPerPage();
            Double d11 = this.lat;
            double dDoubleValue = d11 != null ? d11.doubleValue() : 0.0d;
            Double d12 = this.lon;
            mViewModel.L(isRefresh, mPage, mPerPage, dDoubleValue, d12 != null ? d12.doubleValue() : 0.0d);
        }
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment, com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        setMParentTypeName(arguments != null ? arguments.getString("parent_type") : null);
        IRoomApi mRoomApi = getMRoomApi();
        this.mGpsServiceHelper = mRoomApi != null ? mRoomApi.f(this) : null;
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    public void onItemHeaderClick(PostSubjectItem item) {
        openUserCenter(item);
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    public String onItemHeaderModuleName() {
        return "user_center";
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    public String pageName() {
        return "room_home";
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    public PostAdapterFrom postAdapterFrom() {
        return PostAdapterFrom.NEARBY;
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    public String subpageName() {
        return SUBPAGE_NAME;
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    /* JADX INFO: renamed from: tabIndex */
    public int getMTabIndex() {
        return 1;
    }
}
