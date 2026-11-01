package com.transsion.room.fragment;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baseui.fragment.BaseListFragment;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.RoomBean;
import com.transsion.moviedetailapi.bean.RoomItem;
import com.transsion.room.R$string;
import com.transsion.room.viewmodel.RoomViewModel;
import com.transsion.web.api.WebConstants;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 =2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001>B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\u0005J\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u000eJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u001d\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0017\u0010\u0005J\u000f\u0010\u0018\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0018\u0010\u0005J\u000f\u0010\u0019\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0019\u0010\u0005J\u000f\u0010\u001a\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001a\u0010\u0005J\u000f\u0010\u001b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001b\u0010\u0005J\u000f\u0010\u001c\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001c\u0010\u0005J\u000f\u0010\u001d\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001d\u0010\u0005J\u000f\u0010\u001e\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001e\u0010\u0005J\u000f\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b \u0010!J\u0017\u0010$\u001a\u00020\b2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\fH\u0016¢\u0006\u0004\b&\u0010\u000eR\u0018\u0010*\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010-\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u00101\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0018\u00103\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u0010,R\u0016\u00106\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u001d\u0010<\u001a\u0004\u0018\u0001078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b8\u00109\u001a\u0004\b:\u0010;¨\u0006?"}, d2 = {"Lcom/transsion/room/fragment/RoomsFragment;", "Lcom/transsion/baseui/fragment/BaseListFragment;", "Lcom/transsion/moviedetailapi/bean/RoomItem;", "Ldz/a;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "onDestroy", "", "s0", "()Ljava/lang/String;", "getPageStateLayoutTitle", "", "isAudioShowNoNetworkLayout", "()Z", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "m0", "()Lcom/chad/library/adapter/base/BaseQuickAdapter;", "initViewData", "initViewModel", "x0", "G0", "loadMore", "lazyLoadData", "loadDefaultData", "retryLoadData", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "Lcom/transsnet/loginapi/bean/UserInfo;", "user", "onLogin", "(Lcom/transsnet/loginapi/bean/UserInfo;)V", "getEmptyDescText", "Lcom/transsion/room/viewmodel/RoomViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/room/viewmodel/RoomViewModel;", "mRoomViewModel", "c", "Ljava/lang/String;", "mPageNum", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", "mPerPage", "e", "mUserId", "f", "Z", "isSelf", "Lcom/transsnet/loginapi/ILoginApi;", "g", "Lkotlin/Lazy;", "getMLoginApi", "()Lcom/transsnet/loginapi/ILoginApi;", "mLoginApi", "h", "a", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RoomsFragment extends BaseListFragment<RoomItem> implements dz.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private RoomViewModel mRoomViewModel;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private boolean isSelf;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private String mPageNum = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private int mPerPage = 10;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String mUserId = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final Lazy mLoginApi = LazyKt.b(new Function0() { // from class: com.transsion.room.fragment.a2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return RoomsFragment.mLoginApi_delegate$lambda$0();
        }
    });

    /* JADX INFO: renamed from: com.transsion.room.fragment.RoomsFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final RoomsFragment a(String str, boolean z10) {
            RoomsFragment roomsFragment = new RoomsFragment();
            Bundle bundle = new Bundle();
            bundle.putString("m_User_Id", str);
            bundle.putBoolean("is_Self", z10);
            roomsFragment.setArguments(bundle);
            return roomsFragment;
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f51533a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f51533a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f51533a;
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
            this.f51533a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void R0(com.transsion.room.adapter.a aVar, RoomsFragment roomsFragment, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        Navigator.x(TheRouter.c("/room/detail").I(WebConstants.FIELD_ITEM, (Parcelable) aVar.getItem(i11)), roomsFragment.requireContext(), null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit S0(RoomsFragment roomsFragment, RoomBean roomBean) {
        List<RoomItem> items;
        Pager pager;
        if (roomBean != null && (pager = roomBean.getPager()) != null) {
            if (Intrinsics.c(pager.getHasMore(), Boolean.TRUE)) {
                String nextPage = pager.getNextPage();
                if (nextPage == null) {
                    nextPage = "";
                }
                roomsFragment.mPageNum = nextPage;
                Integer perPage = pager.getPerPage();
                roomsFragment.mPerPage = perPage != null ? perPage.intValue() : 10;
                roomsFragment.B0();
            } else {
                BaseListFragment.D0(roomsFragment, false, 1, null);
            }
        }
        if (roomBean == null || (items = roomBean.getItems()) == null) {
            roomsFragment.N0();
        } else if (roomsFragment.A0()) {
            roomsFragment.I0(false);
            BaseQuickAdapter mBaseAdapter = roomsFragment.getMBaseAdapter();
            if (mBaseAdapter != null) {
                mBaseAdapter.n1(items);
            }
            if (items.isEmpty()) {
                BaseListFragment.K0(roomsFragment, null, 1, null);
            }
        } else {
            BaseQuickAdapter mBaseAdapter2 = roomsFragment.getMBaseAdapter();
            if (mBaseAdapter2 != null) {
                mBaseAdapter2.q(items);
            }
        }
        return Unit.f67061a;
    }

    private final ILoginApi getMLoginApi() {
        return (ILoginApi) this.mLoginApi.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi mLoginApi_delegate$lambda$0() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment
    public void G0() {
        this.mPageNum = "";
        I0(true);
        loadDefaultData();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getEmptyDescText() {
        String string = getString(R$string.not_in_any_rooms);
        Intrinsics.g(string, "getString(...)");
        return string;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        super.initViewData();
        I0(true);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        RoomViewModel roomViewModel = (RoomViewModel) new androidx.p009lifecycle.v0(this).a(RoomViewModel.class);
        roomViewModel.C().j(this, new b(new Function1() { // from class: com.transsion.room.fragment.c2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RoomsFragment.S0(this.f51542a, (RoomBean) obj);
            }
        }));
        this.mRoomViewModel = roomViewModel;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override // com.transsion.baseui.fragment.LazyFragment
    public void lazyLoadData() {
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void loadDefaultData() {
        RoomViewModel roomViewModel = this.mRoomViewModel;
        if (roomViewModel != null) {
            roomViewModel.B(this.mPageNum, this.mPerPage, this.mUserId);
        }
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment
    public void loadMore() {
        if (TextUtils.isEmpty(this.mPageNum) || TextUtils.equals("0", this.mPageNum)) {
            BaseListFragment.D0(this, false, 1, null);
        } else {
            loadDefaultData();
        }
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment
    public BaseQuickAdapter m0() {
        return null;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public hj.b newLogViewConfig() {
        return new hj.b("myrooms", false, 2, null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        UserInfo userInfoI;
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.mUserId = arguments.getString("m_User_Id");
            this.isSelf = arguments.getBoolean("is_Self", false);
            if (TextUtils.isEmpty(this.mUserId)) {
                ILoginApi mLoginApi = getMLoginApi();
                this.mUserId = (mLoginApi == null || (userInfoI = mLoginApi.i()) == null) ? null : userInfoI.getUserId();
            }
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ILoginApi mLoginApi = getMLoginApi();
        if (mLoginApi != null) {
            mLoginApi.p(this);
        }
    }

    @Override // dz.a
    public void onLogin(UserInfo user) {
        Intrinsics.h(user, "user");
        dz.a.C0737a.a(this, user);
        this.mUserId = user.getUserId();
        G0();
    }

    @Override // dz.a
    public void onLogout() {
        dz.a.C0737a.b(this);
    }

    @Override // dz.a
    public void onUpdateUserInfo(UserInfo userInfo) {
        dz.a.C0737a.c(this, userInfo);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
        F0();
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment
    public String s0() {
        String string = getString(R$string.str_room_title);
        Intrinsics.g(string, "getString(...)");
        return string;
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment
    public void x0() {
        RecyclerView recyclerView;
        bk.b bVar = (bk.b) getMViewBinding();
        if (bVar == null || (recyclerView = bVar.f16580d) == null) {
            return;
        }
        recyclerView.setLayoutManager(new GridLayoutManager(requireContext(), 3, 1, false));
        int iA = com.blankj.utilcode.util.a0.a(8.0f);
        int i11 = iA / 2;
        recyclerView.addItemDecoration(new cq.a(iA, i11, i11));
        final com.transsion.room.adapter.a aVar = new com.transsion.room.adapter.a(new ArrayList());
        aVar.w1(new p6.d() { // from class: com.transsion.room.fragment.b2
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i12) {
                RoomsFragment.R0(aVar, this, baseQuickAdapter, view, i12);
            }
        });
        H0(aVar);
        recyclerView.setAdapter(getMBaseAdapter());
        if (y0()) {
            BaseQuickAdapter mBaseAdapter = getMBaseAdapter();
            recyclerView.addOnScrollListener(new fk.a(mBaseAdapter != null ? mBaseAdapter.h0() : null));
        }
    }
}
