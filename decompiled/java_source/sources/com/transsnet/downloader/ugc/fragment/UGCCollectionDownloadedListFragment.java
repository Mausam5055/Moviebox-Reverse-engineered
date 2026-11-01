package com.transsnet.downloader.ugc.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.Lifecycle;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.mbridge.msdk.MBridgeConstans;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.downloader.api.DownloadPageType;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.transsnet.downloader.popup.PopupManager;
import com.transsnet.downloader.ugc.adapter.UGCDownloadStaggeredAdapter;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\r\u0018\u0000 (2\u00020\u0001:\u0001)B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\b\u001a\u00020\u00072\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\u0003J\u000f\u0010\f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\f\u0010\u0003J\u0019\u0010\u000f\u001a\u00020\u00072\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0011\u0010\u0003J'\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0016H\u0014¢\u0006\u0004\b\u0018\u0010\u0019J'\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001e\u0010\u001fR\u0018\u0010\"\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0018\u0010$\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010!R\u0016\u0010'\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&¨\u0006*"}, d2 = {"Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;", "Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;", "<init>", "()V", "", "Lcom/transsion/baselib/db/download/DownloadBean;", "list", "", "u1", "(Ljava/util/List;)V", "t1", "G0", "loadData", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "initViewModel", "Lcom/transsnet/downloader/ugc/adapter/c;", WebConstants.FIELD_ITEM, "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", RequestParameters.POSITION, "U0", "(Lcom/transsnet/downloader/ugc/adapter/c;Landroid/view/View;I)V", "bean", "S0", "(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V", "", "E0", "()Ljava/lang/String;", "l", "Ljava/lang/String;", "collectionId", "m", "subjectId", "n", "I", "parentPosition", "o", "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCCollectionDownloadedListFragment extends UGCStaggeredListBaseFragment {

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private String collectionId;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private String subjectId;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private int parentPosition = -1;

    /* JADX INFO: renamed from: com.transsnet.downloader.ugc.fragment.UGCCollectionDownloadedListFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UGCCollectionDownloadedListFragment a(String str, String str2, int i11) {
            UGCCollectionDownloadedListFragment uGCCollectionDownloadedListFragment = new UGCCollectionDownloadedListFragment();
            uGCCollectionDownloadedListFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("collection_id", str), TuplesKt.a("subject_id", str2), TuplesKt.a("extra_parent_position", Integer.valueOf(i11))));
            return uGCCollectionDownloadedListFragment;
        }
    }

    public static final class b implements com.transsnet.downloader.adapter.u0.b {
        b() {
        }

        @Override // com.transsnet.downloader.adapter.u0.b
        public void a(int i11, int i12) {
            if (i12 == 4) {
                UGCCollectionDownloadedListFragment.this.loadData();
            }
        }

        @Override // com.transsnet.downloader.adapter.u0.b
        public void b(int i11, int i12, int i13, boolean z10) {
            com.transsnet.downloader.adapter.u0.b.a.a(this, i11, i12, i13, z10);
        }
    }

    static final class c implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f59681a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f59681a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f59681a;
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
            this.f59681a.invoke(obj);
        }
    }

    private final void G0() {
        Function1 function1 = new Function1() { // from class: com.transsnet.downloader.ugc.fragment.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UGCCollectionDownloadedListFragment.p1(this.f59787a, (my.a) obj);
            }
        };
        AppScopeVMlProvider appScopeVMlProvider = AppScopeVMlProvider.INSTANCE;
        FlowEventBus flowEventBus = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name = my.a.class.getName();
        Intrinsics.g(name, "getName(...)");
        Lifecycle.State state = Lifecycle.State.CREATED;
        flowEventBus.observeEvent(this, name, state, kotlinx.coroutines.y0.c().q(), false, function1);
        Function1 function2 = new Function1() { // from class: com.transsnet.downloader.ugc.fragment.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UGCCollectionDownloadedListFragment.q1(this.f59790a, (my.g) obj);
            }
        };
        FlowEventBus flowEventBus2 = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name2 = my.g.class.getName();
        Intrinsics.g(name2, "getName(...)");
        flowEventBus2.observeEvent(this, name2, state, kotlinx.coroutines.y0.c().q(), false, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadData() {
        String str = this.collectionId;
        if (str != null) {
            x0().m0(str);
            return;
        }
        String str2 = this.subjectId;
        if (str2 != null) {
            x0().n0(str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit p1(UGCCollectionDownloadedListFragment uGCCollectionDownloadedListFragment, my.a it) {
        Intrinsics.h(it, "it");
        try {
            uGCCollectionDownloadedListFragment.loadData();
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit q1(UGCCollectionDownloadedListFragment uGCCollectionDownloadedListFragment, my.g event) {
        List<Object> data;
        Intrinsics.h(event, "event");
        try {
            UGCDownloadStaggeredAdapter uGCDownloadStaggeredAdapterD0 = uGCCollectionDownloadedListFragment.getStaggeredAdapter();
            int i11 = -1;
            if (uGCDownloadStaggeredAdapterD0 != null && (data = uGCDownloadStaggeredAdapterD0.getData()) != null) {
                Iterator<Object> it = data.iterator();
                int i12 = 0;
                while (it.hasNext()) {
                    com.transsnet.downloader.ugc.adapter.c cVar = (com.transsnet.downloader.ugc.adapter.c) it.next();
                    if ((cVar instanceof com.transsnet.downloader.ugc.adapter.c.b) && Intrinsics.c(((com.transsnet.downloader.ugc.adapter.c.b) cVar).b().getUgcVideoCollectionId(), event.a()) && Intrinsics.c(((com.transsnet.downloader.ugc.adapter.c.b) cVar).b().getUgcVideoId(), event.c())) {
                        i11 = i12;
                        break;
                    }
                    i12++;
                }
            }
            if (i11 >= 0) {
                uGCCollectionDownloadedListFragment.g1(i11, event.b());
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit r1(UGCCollectionDownloadedListFragment uGCCollectionDownloadedListFragment, List list) {
        uGCCollectionDownloadedListFragment.u1(list);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s1(UGCCollectionDownloadedListFragment uGCCollectionDownloadedListFragment) {
        Navigator.x(TheRouter.c("/download/transfer"), uGCCollectionDownloadedListFragment.requireContext(), null, 2, null);
        return Unit.f67061a;
    }

    private final void t1() {
        String str;
        List list = (List) x0().I().f();
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        Context context = getContext();
        Object obj = null;
        FragmentActivity fragmentActivity = context instanceof FragmentActivity ? (FragmentActivity) context : null;
        if (fragmentActivity == null || fragmentActivity.isFinishing() || fragmentActivity.isDestroyed()) {
            return;
        }
        for (Object obj2 : list) {
            if (((DownloadBean) obj2).getStatus() != 14) {
                obj = obj2;
                break;
            }
        }
        DownloadBean downloadBean = (DownloadBean) obj;
        if (downloadBean == null || (str = this.collectionId) == null) {
            return;
        }
        String ugcVideoCollectionName = downloadBean.getUgcVideoCollectionName();
        if (ugcVideoCollectionName == null) {
            ugcVideoCollectionName = "";
        }
        DownloadManagerApi.f58398j.a().f0(fragmentActivity, (7940 & 2) != 0 ? null : str, (7940 & 4) != 0 ? null : null, (7940 & 8) != 0 ? null : ugcVideoCollectionName, (7940 & 16) != 0 ? null : downloadBean.getUgcVideoType(), (7940 & 32) != 0 ? null : "/download/ugc_collection_list", (7940 & 64) != 0 ? null : downloadBean.getOps(), (7940 & 128) != 0 ? null : downloadBean.getSubjectId(), (7940 & 256) != 0 ? null : null, (7940 & 512) != 0 ? null : null, (7940 & 1024) != 0 ? null : null, (7940 & 2048) != 0 ? false : false, (7940 & 4096) == 0 ? null : null);
    }

    private final void u1(List list) {
        ArrayList arrayList = new ArrayList();
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            arrayList.add(com.transsnet.downloader.ugc.adapter.c.d.f59617a);
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                DownloadBean downloadBean = (DownloadBean) it.next();
                if (downloadBean.getStatus() == 14) {
                    arrayList.add(new com.transsnet.downloader.ugc.adapter.c.a(downloadBean));
                } else {
                    arrayList.add(new com.transsnet.downloader.ugc.adapter.c.b(downloadBean));
                }
            }
        }
        UGCDownloadStaggeredAdapter uGCDownloadStaggeredAdapterD0 = getStaggeredAdapter();
        if (uGCDownloadStaggeredAdapterD0 != null) {
            uGCDownloadStaggeredAdapterD0.n1(arrayList);
        }
    }

    @Override // com.transsnet.downloader.ugc.fragment.UGCStaggeredListBaseFragment
    public String E0() {
        return DownloadPageType.DOWNLOAD.getPageName();
    }

    @Override // com.transsnet.downloader.ugc.fragment.UGCStaggeredListBaseFragment
    public void S0(DownloadBean bean, View view, int position) {
        Intrinsics.h(bean, "bean");
        Intrinsics.h(view, "view");
        DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
        String resourceId = bean.getResourceId();
        if (resourceId == null) {
            resourceId = bean.getUrl();
        }
        DownloadBean downloadBeanQ = downloadEsHelperA.q(resourceId);
        if (downloadBeanQ != null) {
            bean = downloadBeanQ;
        }
        PopupManager popupManager = new PopupManager(position, bean);
        popupManager.J(view, 1);
        popupManager.C(new Function0() { // from class: com.transsnet.downloader.ugc.fragment.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UGCCollectionDownloadedListFragment.s1(this.f59783a);
            }
        });
        popupManager.B(new b());
    }

    @Override // com.transsnet.downloader.ugc.fragment.UGCStaggeredListBaseFragment
    protected void U0(com.transsnet.downloader.ugc.adapter.c item, View view, int position) {
        Intrinsics.h(item, "item");
        Intrinsics.h(view, "view");
        if (item instanceof com.transsnet.downloader.ugc.adapter.c.a) {
            t1();
        } else {
            super.U0(item, view, position);
        }
    }

    @Override // com.transsnet.downloader.ugc.fragment.UGCStaggeredListBaseFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        super.initViewModel();
        x0().I().j(this, new c(new Function1() { // from class: com.transsnet.downloader.ugc.fragment.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UGCCollectionDownloadedListFragment.r1(this.f59780a, (List) obj);
            }
        }));
        G0();
        loadData();
    }

    @Override // com.transsnet.downloader.ugc.fragment.UGCStaggeredListBaseFragment, com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        c1("ugc_sub");
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.collectionId = arguments.getString("collection_id");
            this.subjectId = arguments.getString("subject_id");
            this.parentPosition = arguments.getInt("extra_parent_position", -1);
        }
    }
}
