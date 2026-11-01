package com.transsion.home.category.fragment;

import android.content.Context;
import android.content.res.ColorStateList;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.os.d;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.google.android.material.appbar.AppBarLayout;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$string;
import com.transsion.ad.bidding.nativead.BiddingListManager;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.home.R$id;
import com.transsion.home.bean.PlayListResp;
import com.transsion.home.category.PlayListActivity;
import com.transsion.home.category.adapter.j;
import com.transsion.home.category.fragment.PlayListFragment;
import com.transsion.home.viewmodel.PlayListViewModel;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.PlayListType;
import com.transsion.moviedetailapi.bean.Staff;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.AddToDownloadEvent;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import gl.t;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.y0;
import nh.m;
import org.json.JSONException;
import org.json.JSONObject;
import p6.f;
import rl.h;
import rl.i;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 X2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00015B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0011\u0010\t\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\t\u0010\nJ\u0011\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\f\u0010\rJ!\u0010\u0013\u001a\u00020\u00122\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0019\u0010\u0017\u001a\u00020\u00122\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u001a\u0010\u0004J\u000f\u0010\u001b\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u001b\u0010\u0004J\u0017\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010\u001f\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u001f\u0010\u0018J\u000f\u0010 \u001a\u00020\u0012H\u0002¢\u0006\u0004\b \u0010\u0004J\u000f\u0010!\u001a\u00020\u0012H\u0002¢\u0006\u0004\b!\u0010\u0004J\u0017\u0010$\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\u0012H\u0016¢\u0006\u0004\b)\u0010\u0004J\u000f\u0010*\u001a\u00020\u0012H\u0016¢\u0006\u0004\b*\u0010\u0004J\u000f\u0010+\u001a\u00020\u0012H\u0016¢\u0006\u0004\b+\u0010\u0004J\u000f\u0010,\u001a\u00020\u0012H\u0016¢\u0006\u0004\b,\u0010\u0004J\u000f\u0010-\u001a\u00020\u0005H\u0016¢\u0006\u0004\b-\u0010\u0007J\u000f\u0010.\u001a\u00020\u0012H\u0016¢\u0006\u0004\b.\u0010\u0004J\u000f\u0010/\u001a\u00020\u0012H\u0016¢\u0006\u0004\b/\u0010\u0004J\u000f\u00101\u001a\u000200H\u0016¢\u0006\u0004\b1\u00102J\u000f\u00103\u001a\u00020\u0012H\u0016¢\u0006\u0004\b3\u0010\u0004R\u0016\u00107\u001a\u0002048\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b5\u00106R\u0018\u0010:\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0018\u0010<\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u00109R\u0018\u0010>\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u00109R\u0018\u0010@\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u00109R\u0016\u0010C\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010BR\u0018\u0010G\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR\u0018\u0010J\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u0018\u0010M\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u001b\u0010S\u001a\u00020N8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bO\u0010P\u001a\u0004\bQ\u0010RR\u0018\u0010W\u001a\u0004\u0018\u00010T8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010V¨\u0006Y"}, d2 = {"Lcom/transsion/home/category/fragment/PlayListFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lgl/t;", "<init>", "()V", "", "U0", "()Z", "Lcom/transsion/home/category/adapter/b;", "I0", "()Lcom/transsion/home/category/adapter/b;", "Lcom/transsion/home/category/adapter/j;", "M0", "()Lcom/transsion/home/category/adapter/j;", "Lcom/transsion/moviedetailapi/bean/Subject;", "subjectItem", "", RequestParameters.POSITION, "", "E0", "(Lcom/transsion/moviedetailapi/bean/Subject;I)V", "Lcom/transsion/home/bean/PlayListResp;", "playListResp", "Y0", "(Lcom/transsion/home/bean/PlayListResp;)V", "reload", "loadData", "loadMore", "isExpand", "D0", "(Z)V", "Z0", "W0", "initAd", "Landroid/view/LayoutInflater;", "inflater", "G0", "(Landroid/view/LayoutInflater;)Lgl/t;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "receiveArguments", "initViewData", "initViewModel", "initListener", "isMonitorNetworkState", "retryLoadData", "loadDefaultData", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "onDestroy", "Lcom/transsion/home/viewmodel/PlayListViewModel;", "a", "Lcom/transsion/home/viewmodel/PlayListViewModel;", "viewModel", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "mLabel", "c", "mCategory", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "mRecType", "e", "mTopIds", "f", "I", "mTabId", "Lhl/b;", "g", "Lhl/b;", "mExposureHelper", "h", "Lcom/transsion/home/category/adapter/j;", "mSubjectAdapter", "i", "Lcom/transsion/home/category/adapter/b;", "mCastAdapter", "Lrl/i;", "j", "Lkotlin/Lazy;", "F0", "()Lrl/i;", "mPlayListDotHelper", "Lcom/transsion/ad/bidding/nativead/BiddingListManager;", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/ad/bidding/nativead/BiddingListManager;", "v3ListManager", "l", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class PlayListFragment extends PageStatusFragment<t> {

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f44862m = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private PlayListViewModel viewModel;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private String mLabel;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private String mCategory;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String mRecType;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String mTopIds;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private int mTabId;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private hl.b mExposureHelper;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private j mSubjectAdapter;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private com.transsion.home.category.adapter.b mCastAdapter;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final Lazy mPlayListDotHelper = LazyKt.b(new Function0() { // from class: fl.r
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PlayListFragment.V0();
        }
    });

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private BiddingListManager v3ListManager;

    /* JADX INFO: renamed from: com.transsion.home.category.fragment.PlayListFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final PlayListFragment a(String str, String str2, String str3, String str4, int i11) {
            PlayListFragment playListFragment = new PlayListFragment();
            playListFragment.setArguments(d.b(TuplesKt.a("label", str), TuplesKt.a("category", str2), TuplesKt.a("recType", str3), TuplesKt.a("topIds", str4), TuplesKt.a("tabId", Integer.valueOf(i11))));
            return playListFragment;
        }
    }

    public static final class b implements hl.a {
        b() {
        }

        @Override // hl.a
        public void a(int i11, long j11, View view) {
            Boolean hasResource;
            List<Object> data;
            List<Object> data2;
            boolean zBooleanValue = false;
            size = 0;
            int size = 0;
            zBooleanValue = false;
            if (PlayListFragment.this.U0()) {
                com.transsion.home.category.adapter.b bVar = PlayListFragment.this.mCastAdapter;
                if (bVar != null && (data2 = bVar.getData()) != null) {
                    size = data2.size();
                }
                if (i11 >= size) {
                    return;
                }
                com.transsion.home.category.adapter.b bVar2 = PlayListFragment.this.mCastAdapter;
                Staff staff = bVar2 != null ? (Staff) bVar2.getItem(i11) : null;
                PlayListFragment.this.F0().b("playlist", staff != null ? staff.getStaffId() : null, staff != null ? staff.getOps() : null, Integer.valueOf(i11), PlayListFragment.this.mCategory, PlayListFragment.this.mRecType, PlayListFragment.this.mLabel);
                return;
            }
            j jVar = PlayListFragment.this.mSubjectAdapter;
            if (i11 >= ((jVar == null || (data = jVar.getData()) == null) ? 0 : data.size())) {
                return;
            }
            j jVar2 = PlayListFragment.this.mSubjectAdapter;
            Subject subject = jVar2 != null ? (Subject) jVar2.getItem(i11) : null;
            i iVarF0 = PlayListFragment.this.F0();
            String subjectId = subject != null ? subject.getSubjectId() : null;
            String ops = subject != null ? subject.getOps() : null;
            Integer numValueOf = Integer.valueOf(i11);
            if (subject != null && (hasResource = subject.getHasResource()) != null) {
                zBooleanValue = hasResource.booleanValue();
            }
            iVarF0.d("playlist", subjectId, ops, numValueOf, zBooleanValue, PlayListFragment.this.mCategory, PlayListFragment.this.mRecType, PlayListFragment.this.mLabel);
        }
    }

    static final class c implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f44875a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f44875a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f44875a;
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
            this.f44875a.invoke(obj);
        }
    }

    private final void D0(boolean isExpand) {
        if (isAdded()) {
            FragmentActivity activity = getActivity();
            if (activity instanceof PlayListActivity) {
                ((PlayListActivity) activity).e0(isExpand);
            }
        }
    }

    private final void E0(Subject subjectItem, int position) {
        Boolean hasResource;
        if (getContext() != null) {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            F0().a("playlist", h.g(subjectItem, "playlist", contextRequireContext, "play_list_page"), subjectItem != null ? subjectItem.getSubjectId() : null, subjectItem != null ? subjectItem.getOps() : null, Integer.valueOf(position), (subjectItem == null || (hasResource = subjectItem.getHasResource()) == null) ? false : hasResource.booleanValue(), this.mCategory, this.mRecType, this.mLabel);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final i F0() {
        return (i) this.mPlayListDotHelper.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit H0(PlayListFragment playListFragment, int i11, BiddingNativeManager current) {
        List<Object> data;
        List<Object> data2;
        Intrinsics.h(current, "current");
        if (current != null) {
            int size = 0;
            if (playListFragment.U0()) {
                Staff staff = new Staff();
                staff.setNonAdDelegate(current);
                com.transsion.home.category.adapter.b bVar = playListFragment.mCastAdapter;
                if (bVar != null && (data2 = bVar.getData()) != null) {
                    size = data2.size();
                }
                if (i11 < size) {
                    com.transsion.home.category.adapter.b bVar2 = playListFragment.mCastAdapter;
                    if (bVar2 != null) {
                        bVar2.n(i11, staff);
                    }
                } else {
                    com.transsion.home.category.adapter.b bVar3 = playListFragment.mCastAdapter;
                    if (bVar3 != null) {
                        bVar3.p(staff);
                    }
                }
            } else {
                Subject subject = new Subject(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, 0, null, null, null, null, null, null, -1, 134217727, null);
                subject.setNonAdDelegate(current);
                j jVar = playListFragment.mSubjectAdapter;
                if (jVar != null && (data = jVar.getData()) != null) {
                    size = data.size();
                }
                if (i11 < size) {
                    j jVar2 = playListFragment.mSubjectAdapter;
                    if (jVar2 != null) {
                        jVar2.n(i11, subject);
                    }
                } else {
                    j jVar3 = playListFragment.mSubjectAdapter;
                    if (jVar3 != null) {
                        jVar3.p(subject);
                    }
                }
            }
        }
        return Unit.f67061a;
    }

    private final com.transsion.home.category.adapter.b I0() {
        final com.transsion.home.category.adapter.b bVar = new com.transsion.home.category.adapter.b(new ArrayList(), this.mExposureHelper);
        bVar.h0().z(true);
        bVar.h0().y(true);
        bVar.h0().D(new f() { // from class: fl.w
            @Override // p6.f
            public final void a() {
                PlayListFragment.J0(this.f62444a);
            }
        });
        bVar.w1(new p6.d() { // from class: fl.l
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                PlayListFragment.L0(bVar, this, baseQuickAdapter, view, i11);
            }
        });
        this.mCastAdapter = bVar;
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J0(final PlayListFragment playListFragment) {
        RecyclerView recyclerView;
        if (m.f70474a.e()) {
            playListFragment.loadMore();
            return;
        }
        uh.b.f76753a.d(R$string.no_network);
        t mViewBinding = playListFragment.getMViewBinding();
        if (mViewBinding == null || (recyclerView = mViewBinding.f63845e) == null) {
            return;
        }
        recyclerView.postDelayed(new Runnable() { // from class: fl.m
            @Override // java.lang.Runnable
            public final void run() {
                PlayListFragment.K0(this.f62434a);
            }
        }, 300L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K0(PlayListFragment playListFragment) {
        r6.f fVarH0;
        com.transsion.home.category.adapter.b bVar = playListFragment.mCastAdapter;
        if (bVar == null || (fVarH0 = bVar.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L0(com.transsion.home.category.adapter.b bVar, PlayListFragment playListFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        Object item = adapter.getItem(i11);
        if (item instanceof Staff) {
            Staff staff = (Staff) item;
            Navigator.x(TheRouter.c("/movie/staff").K("id", staff.getStaffId()).J("staff", (Serializable) item), bVar.getContext(), null, 2, null);
            playListFragment.F0().c("playlist", staff.getStaffId(), staff.getOps(), Integer.valueOf(i11), playListFragment.mCategory, playListFragment.mRecType, playListFragment.mLabel);
        }
    }

    private final j M0() {
        j jVar = new j(new ArrayList(), this.mExposureHelper);
        jVar.h0().z(true);
        jVar.h0().y(true);
        jVar.h0().D(new f() { // from class: fl.t
            @Override // p6.f
            public final void a() {
                PlayListFragment.N0(this.f62441a);
            }
        });
        jVar.w1(new p6.d() { // from class: fl.u
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                PlayListFragment.P0(this.f62442a, baseQuickAdapter, view, i11);
            }
        });
        jVar.l(R$id.ll_download);
        jVar.s1(new p6.b() { // from class: fl.v
            @Override // p6.b
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                PlayListFragment.Q0(this.f62443a, baseQuickAdapter, view, i11);
            }
        });
        this.mSubjectAdapter = jVar;
        return jVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N0(final PlayListFragment playListFragment) {
        RecyclerView recyclerView;
        if (m.f70474a.e()) {
            playListFragment.loadMore();
            return;
        }
        uh.b.f76753a.d(R$string.no_network);
        t mViewBinding = playListFragment.getMViewBinding();
        if (mViewBinding == null || (recyclerView = mViewBinding.f63845e) == null) {
            return;
        }
        recyclerView.postDelayed(new Runnable() { // from class: fl.n
            @Override // java.lang.Runnable
            public final void run() {
                PlayListFragment.O0(this.f62435a);
            }
        }, 300L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O0(PlayListFragment playListFragment) {
        r6.f fVarH0;
        j jVar = playListFragment.mSubjectAdapter;
        if (jVar == null || (fVarH0 = jVar.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P0(PlayListFragment playListFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        Object item = adapter.getItem(i11);
        if (item instanceof Subject) {
            Subject subject = (Subject) item;
            h.f(subject, "play_list_page");
            i iVarF0 = playListFragment.F0();
            String subjectId = subject.getSubjectId();
            String ops = subject.getOps();
            Integer numValueOf = Integer.valueOf(i11);
            Boolean hasResource = subject.getHasResource();
            iVarF0.e("playlist", subjectId, ops, numValueOf, hasResource != null ? hasResource.booleanValue() : false, playListFragment.mCategory, playListFragment.mRecType, playListFragment.mLabel);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q0(PlayListFragment playListFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 2000L)) {
            return;
        }
        Object item = adapter.getItem(i11);
        Subject subject = item instanceof Subject ? (Subject) item : null;
        if (view.getId() == R$id.ll_download) {
            playListFragment.E0(subject, i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void R0(PlayListFragment playListFragment, View view) {
        FragmentActivity activity = playListFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S0(PlayListFragment playListFragment, t tVar, AppBarLayout appBarLayout, int i11) {
        if (playListFragment.getContext() == null) {
            return;
        }
        if (Math.abs(i11) >= appBarLayout.getTotalScrollRange()) {
            tVar.f63846f.setBackgroundColor(androidx.core.content.b.getColor(playListFragment.requireContext(), R$color.bg_01));
            tVar.f63843c.setImageTintList(ColorStateList.valueOf(androidx.core.content.b.getColor(playListFragment.requireContext(), R$color.btn_back)));
            AppCompatTextView tvTitle = tVar.f63847g;
            Intrinsics.g(tvTitle, "tvTitle");
            jg.c.k(tvTitle);
            AppCompatTextView tvTitleExpand = tVar.f63848h;
            Intrinsics.g(tvTitleExpand, "tvTitleExpand");
            jg.c.g(tvTitleExpand);
            playListFragment.D0(true);
            return;
        }
        tVar.f63846f.setBackgroundColor(androidx.core.content.b.getColor(playListFragment.requireContext(), R$color.transparent));
        tVar.f63843c.setImageTintList(ColorStateList.valueOf(androidx.core.content.b.getColor(playListFragment.requireContext(), R$color.common_white)));
        AppCompatTextView tvTitle2 = tVar.f63847g;
        Intrinsics.g(tvTitle2, "tvTitle");
        jg.c.g(tvTitle2);
        AppCompatTextView tvTitleExpand2 = tVar.f63848h;
        Intrinsics.g(tvTitleExpand2, "tvTitleExpand");
        jg.c.k(tvTitleExpand2);
        playListFragment.D0(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit T0(PlayListFragment playListFragment, PlayListResp playListResp) throws JSONException {
        List<Object> data;
        List<Object> data2;
        j jVar;
        r6.f fVarH0;
        r6.f fVarH1;
        j jVar2;
        r6.f fVarH2;
        List<Object> data3;
        List<Object> data4;
        com.transsion.home.category.adapter.b bVar;
        r6.f fVarH3;
        r6.f fVarH4;
        com.transsion.home.category.adapter.b bVar2;
        r6.f fVarH5;
        playListFragment.showContentView();
        playListFragment.Y0(playListResp);
        if (playListFragment.U0()) {
            com.transsion.home.category.adapter.b bVar3 = playListFragment.mCastAdapter;
            if (bVar3 != null && (fVarH4 = bVar3.h0()) != null && fVarH4.r() && (bVar2 = playListFragment.mCastAdapter) != null && (fVarH5 = bVar2.h0()) != null) {
                fVarH5.s();
            }
            if (playListResp != null) {
                List<Staff> staffs = playListResp.getStaffs();
                int size = staffs != null ? staffs.size() : 0;
                if (size < 4 && (bVar = playListFragment.mCastAdapter) != null && (fVarH3 = bVar.h0()) != null) {
                    r6.f.u(fVarH3, false, 1, null);
                }
                com.transsion.home.category.adapter.b bVar4 = playListFragment.mCastAdapter;
                if (bVar4 == null || (data4 = bVar4.getData()) == null || data4.size() != 0 || size != 0) {
                    playListFragment.Z0(playListResp);
                } else {
                    PageStatusFragment.showEmptyView$default(playListFragment, false, 1, null);
                }
                hj.b logViewConfig = playListFragment.getLogViewConfig();
                if (logViewConfig != null) {
                    logViewConfig.k(true);
                }
            } else {
                com.transsion.home.category.adapter.b bVar5 = playListFragment.mCastAdapter;
                if (bVar5 != null && (data3 = bVar5.getData()) != null && data3.size() == 0) {
                    PageStatusFragment.showEmptyView$default(playListFragment, false, 1, null);
                }
            }
        } else {
            j jVar3 = playListFragment.mSubjectAdapter;
            if (jVar3 != null && (fVarH1 = jVar3.h0()) != null && fVarH1.r() && (jVar2 = playListFragment.mSubjectAdapter) != null && (fVarH2 = jVar2.h0()) != null) {
                fVarH2.s();
            }
            if (playListResp != null) {
                List<Subject> subjects = playListResp.getSubjects();
                int size2 = subjects != null ? subjects.size() : 0;
                if (size2 < 4 && (jVar = playListFragment.mSubjectAdapter) != null && (fVarH0 = jVar.h0()) != null) {
                    r6.f.u(fVarH0, false, 1, null);
                }
                j jVar4 = playListFragment.mSubjectAdapter;
                if (jVar4 == null || (data2 = jVar4.getData()) == null || data2.size() != 0 || size2 != 0) {
                    playListFragment.Z0(playListResp);
                } else {
                    PageStatusFragment.showEmptyView$default(playListFragment, false, 1, null);
                }
                hj.b logViewConfig2 = playListFragment.getLogViewConfig();
                if (logViewConfig2 != null) {
                    logViewConfig2.k(true);
                }
            } else {
                j jVar5 = playListFragment.mSubjectAdapter;
                if (jVar5 != null && (data = jVar5.getData()) != null && data.size() == 0) {
                    PageStatusFragment.showEmptyView$default(playListFragment, false, 1, null);
                }
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean U0() {
        return Intrinsics.c(this.mCategory, PlayListType.CAST.getValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final i V0() {
        return new i();
    }

    private final void W0() {
        Function1 function1 = new Function1() { // from class: fl.q
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PlayListFragment.X0(this.f62439a, (AddToDownloadEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = AddToDownloadEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, y0.c().q(), false, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit X0(PlayListFragment playListFragment, AddToDownloadEvent value) {
        j jVar;
        List<Object> data;
        Intrinsics.h(value, "value");
        try {
            j jVar2 = playListFragment.mSubjectAdapter;
            int i11 = -1;
            if (jVar2 != null && (data = jVar2.getData()) != null) {
                Iterator<Object> it = data.iterator();
                int i12 = 0;
                while (it.hasNext()) {
                    if (Intrinsics.c(((Subject) it.next()).getSubjectId(), value.getSubjectId())) {
                        i11 = i12;
                        break;
                    }
                    i12++;
                }
            }
            if (i11 >= 0 && (jVar = playListFragment.mSubjectAdapter) != null) {
                jVar.notifyItemChanged(i11);
            }
        } catch (Exception unused) {
            lg.a.C0828a.g(lg.a.f68839a, " callback change data fail", false, 2, null);
        }
        return Unit.f67061a;
    }

    private final void Y0(PlayListResp playListResp) throws JSONException {
        List<Subject> subjects;
        List<Staff> staffs;
        String ops = playListResp != null ? playListResp.getOps() : null;
        JSONObject jSONObject = (ops == null || ops.length() == 0) ? new JSONObject() : new JSONObject(ops);
        jSONObject.put("rec_type", this.mRecType);
        jSONObject.put("label", this.mLabel);
        String string = jSONObject.toString();
        if (playListResp != null && (staffs = playListResp.getStaffs()) != null) {
            for (Staff staff : staffs) {
                String ops2 = staff.getOps();
                if (ops2 == null || ops2.length() == 0) {
                    staff.setOps(string);
                }
            }
        }
        if (playListResp == null || (subjects = playListResp.getSubjects()) == null) {
            return;
        }
        for (Subject subject : subjects) {
            String ops3 = subject.getOps();
            if (ops3 == null || ops3.length() == 0) {
                subject.setOps(string);
            }
        }
    }

    private final void Z0(PlayListResp playListResp) {
        t mViewBinding;
        List<Object> data;
        String url;
        Cover cover;
        String thumbnail;
        Cover cover2;
        List<Object> data2;
        List<Object> data3;
        j jVar;
        List<Object> data4;
        String avatarUrl;
        List<Object> data5;
        com.transsion.home.category.adapter.b bVar;
        if (getContext() == null || (mViewBinding = getMViewBinding()) == null) {
            return;
        }
        String title = playListResp.getTitle();
        if (title != null && title.length() > 0) {
            mViewBinding.f63847g.setText(playListResp.getTitle());
            mViewBinding.f63848h.setText(playListResp.getTitle());
        }
        Subject subject = null;
        staff = null;
        Staff staff = null;
        subject = null;
        String str = "";
        if (U0()) {
            List<Staff> staffs = playListResp.getStaffs();
            if (staffs != null && (bVar = this.mCastAdapter) != null) {
                bVar.q(staffs);
            }
            com.transsion.home.category.adapter.b bVar2 = this.mCastAdapter;
            if (bVar2 == null || (data4 = bVar2.getData()) == null || !(!data4.isEmpty())) {
                return;
            }
            com.transsion.home.category.adapter.b bVar3 = this.mCastAdapter;
            if (bVar3 != null && (data5 = bVar3.getData()) != null) {
                staff = (Staff) data5.get(0);
            }
            ej.f.a aVar = ej.f.f61882a;
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            ej.f.b bVarM = aVar.m(contextRequireContext);
            if (staff != null && (avatarUrl = staff.getAvatarUrl()) != null) {
                str = avatarUrl;
            }
            ej.f.b bVarG = bVarM.g(str);
            AppCompatImageView ivCover = mViewBinding.f63844d;
            Intrinsics.g(ivCover, "ivCover");
            bVarG.d(ivCover);
            return;
        }
        List<Subject> subjects = playListResp.getSubjects();
        if (subjects != null) {
            Boolean showRank = playListResp.getShowRank();
            j jVar2 = this.mSubjectAdapter;
            if (jVar2 != null && (data3 = jVar2.getData()) != null && data3.isEmpty() && showRank != null && (jVar = this.mSubjectAdapter) != null) {
                jVar.T1(showRank.booleanValue());
            }
            j jVar3 = this.mSubjectAdapter;
            if (jVar3 != null) {
                jVar3.q(subjects);
            }
        }
        j jVar4 = this.mSubjectAdapter;
        if (jVar4 == null || (data = jVar4.getData()) == null || !(!data.isEmpty())) {
            return;
        }
        j jVar5 = this.mSubjectAdapter;
        if (jVar5 != null && (data2 = jVar5.getData()) != null) {
            subject = (Subject) data2.get(0);
        }
        ej.f.a aVar2 = ej.f.f61882a;
        Context contextRequireContext2 = requireContext();
        Intrinsics.g(contextRequireContext2, "requireContext(...)");
        ej.f.b bVarM2 = aVar2.m(contextRequireContext2);
        if (subject == null || (cover2 = subject.getCover()) == null || (url = cover2.getUrl()) == null) {
            url = "";
        }
        ej.f.b bVarG2 = bVarM2.g(url);
        if (subject != null && (cover = subject.getCover()) != null && (thumbnail = cover.getThumbnail()) != null) {
            str = thumbnail;
        }
        ej.f.b bVarL = bVarG2.l(str);
        AppCompatImageView ivCover2 = mViewBinding.f63844d;
        Intrinsics.g(ivCover2, "ivCover");
        bVarL.d(ivCover2);
    }

    private final void initAd() {
        Map mapA = com.transsion.ad.strategy.d.f42231a.a("");
        String str = this.mCategory;
        if (str != null) {
            mapA.put("category", str);
        }
        BiddingListManager biddingListManager = new BiddingListManager();
        t mViewBinding = getMViewBinding();
        biddingListManager.F(mViewBinding != null ? mViewBinding.f63845e : null);
        biddingListManager.A(v.a(this));
        biddingListManager.G("PlayListScene");
        biddingListManager.B(mapA);
        biddingListManager.z(new Function2() { // from class: fl.s
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return PlayListFragment.H0(this.f62440a, ((Integer) obj).intValue(), (BiddingNativeManager) obj2);
            }
        });
        this.v3ListManager = biddingListManager;
    }

    private final void loadData() {
        PlayListViewModel playListViewModel = this.viewModel;
        if (playListViewModel == null) {
            Intrinsics.z("viewModel");
            playListViewModel = null;
        }
        PlayListViewModel playListViewModel2 = playListViewModel;
        String str = this.mLabel;
        if (str == null) {
            str = "";
        }
        String str2 = this.mCategory;
        if (str2 == null) {
            str2 = "";
        }
        String str3 = this.mRecType;
        if (str3 == null) {
            str3 = "";
        }
        String str4 = this.mTopIds;
        if (str4 == null) {
            str4 = "";
        }
        playListViewModel2.f(str, str2, str3, str4, this.mTabId);
    }

    private final void loadMore() {
        loadData();
    }

    private final void reload() {
        if (m.f70474a.e()) {
            loadDefaultData();
        } else {
            showLoadingView();
            showNoNetworkViewDelayed();
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: G0, reason: merged with bridge method [inline-methods] */
    public t getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        t tVarC = t.c(inflater);
        Intrinsics.g(tVarC, "inflate(...)");
        return tVarC;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        W0();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        Toolbar toolbar;
        t mViewBinding = getMViewBinding();
        if (mViewBinding != null && (toolbar = mViewBinding.f63846f) != null) {
            jg.c.e(toolbar);
        }
        pageStateFitStatusBar();
        initAd();
        final t mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null) {
            mViewBinding2.f63843c.setOnClickListener(new View.OnClickListener() { // from class: fl.o
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PlayListFragment.R0(this.f62436a, view);
                }
            });
            RecyclerView recyclerView = mViewBinding2.f63845e;
            recyclerView.setLayoutManager(new NpaLinearLayoutManager(recyclerView.getContext()));
            hl.b bVar = new hl.b(0.6f, new b(), false, 4, null);
            bVar.l(2);
            recyclerView.addOnScrollListener(bVar);
            this.mExposureHelper = bVar;
            recyclerView.setAdapter(U0() ? I0() : M0());
            mViewBinding2.f63842b.addOnOffsetChangedListener(new AppBarLayout.g() { // from class: fl.p
                @Override // com.google.android.material.appbar.AppBarLayout.b
                public final void onOffsetChanged(AppBarLayout appBarLayout, int i11) {
                    PlayListFragment.S0(this.f62437a, mViewBinding2, appBarLayout, i11);
                }
            });
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        PlayListViewModel playListViewModel = (PlayListViewModel) new v0(this).a(PlayListViewModel.class);
        this.viewModel = playListViewModel;
        PlayListViewModel playListViewModel2 = null;
        if (playListViewModel == null) {
            Intrinsics.z("viewModel");
            playListViewModel = null;
        }
        playListViewModel.i(1);
        PlayListViewModel playListViewModel3 = this.viewModel;
        if (playListViewModel3 == null) {
            Intrinsics.z("viewModel");
        } else {
            playListViewModel2 = playListViewModel3;
        }
        playListViewModel2.g().j(this, new c(new Function1() { // from class: fl.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PlayListFragment.T0(this.f62431a, (PlayListResp) obj);
            }
        }));
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isMonitorNetworkState() {
        return true;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void loadDefaultData() {
        if (m.f70474a.e()) {
            showLoadingView();
            loadData();
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public hj.b newLogViewConfig() {
        return new hj.b("playlist", false, 2, null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        BiddingListManager biddingListManager = this.v3ListManager;
        if (biddingListManager != null) {
            biddingListManager.o();
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void receiveArguments() {
        HashMap mapG;
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.mLabel = arguments.getString("label");
            this.mCategory = arguments.getString("category");
            this.mRecType = arguments.getString("recType");
            this.mTopIds = arguments.getString("topIds");
            this.mTabId = arguments.getInt("tabId", 0);
        }
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig == null || (mapG = logViewConfig.g()) == null) {
            return;
        }
        mapG.put("label", this.mLabel);
        mapG.put("category", this.mCategory);
        mapG.put("rec_type", this.mRecType);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
        List<Object> data;
        List<Object> data2;
        if (U0()) {
            com.transsion.home.category.adapter.b bVar = this.mCastAdapter;
            if (bVar != null && (data2 = bVar.getData()) != null && data2.size() == 0) {
                reload();
                return;
            }
            com.transsion.home.category.adapter.b bVar2 = this.mCastAdapter;
            if (bVar2 == null || bVar2.h0().i() != LoadMoreStatus.Fail) {
                return;
            }
            bVar2.h0().w();
            return;
        }
        j jVar = this.mSubjectAdapter;
        if (jVar != null && (data = jVar.getData()) != null && data.size() == 0) {
            reload();
            return;
        }
        j jVar2 = this.mSubjectAdapter;
        if (jVar2 == null || jVar2.h0().i() != LoadMoreStatus.Fail) {
            return;
        }
        jVar2.h0().w();
    }
}
