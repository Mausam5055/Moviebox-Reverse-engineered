package com.transsnet.downloader.ugc.fragment;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.p009lifecycle.Lifecycle;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.mbridge.msdk.MBridgeConstans;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.R$string;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.transsnet.downloader.popup.PopupManager;
import com.transsnet.downloader.ugc.adapter.UGCDownloadStaggeredAdapter;
import com.transsnet.downloader.ugc.util.UGCDownloadOpenUtil;
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
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000S\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\b\u0007*\u0001*\u0018\u0000 .2\u00020\u0001:\u0001/B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\b\u001a\u00020\u00072\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u0003J\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u000f\u0010\u0003J'\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0013H\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001a\u0010\u0003J'\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u001c\u0010\u0016J'\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0013H\u0014¢\u0006\u0004\b\u001d\u0010\u0016J\u000f\u0010\u001e\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001e\u0010\u0003R\u001b\u0010$\u001a\u00020\u001f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u001b\u0010)\u001a\u00020%8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010!\u001a\u0004\b'\u0010(R\u0014\u0010-\u001a\u00020*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,¨\u00060"}, d2 = {"Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;", "Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;", "<init>", "()V", "", "Lcom/transsion/baselib/db/download/DownloadBean;", "list", "", "w1", "(Ljava/util/List;)V", "s1", "downloadBean", "", "v1", "(Lcom/transsion/baselib/db/download/DownloadBean;)Z", "initViewModel", "bean", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", RequestParameters.POSITION, "R0", "(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V", "", "E0", "()Ljava/lang/String;", "initListener", WebConstants.FIELD_ITEM, "S0", "Y0", "onDestroy", "Landroid/os/Handler;", "l", "Lkotlin/Lazy;", "getMHandler", "()Landroid/os/Handler;", "mHandler", "Lcom/transsnet/downloader/manager/g;", "m", "r1", "()Lcom/transsnet/downloader/manager/g;", "downloadManager", "com/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$b", "n", "Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$b;", "downloadListener", "o", "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCDownloadingListFragment extends UGCStaggeredListBaseFragment {

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private final Lazy mHandler = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.ugc.fragment.b0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return UGCDownloadingListFragment.mHandler_delegate$lambda$0();
        }
    });

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private final Lazy downloadManager = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.ugc.fragment.c0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return UGCDownloadingListFragment.q1();
        }
    });

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private final b downloadListener = new b();

    /* JADX INFO: renamed from: com.transsnet.downloader.ugc.fragment.UGCDownloadingListFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UGCDownloadingListFragment a() {
            return new UGCDownloadingListFragment();
        }
    }

    public static final class b extends ny.d {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void j(UGCDownloadingListFragment uGCDownloadingListFragment) {
            uGCDownloadingListFragment.x0().H();
        }

        @Override // ny.d
        public void h(DownloadBean bean, int i11) {
            List<Object> data;
            List<Object> data2;
            Intrinsics.h(bean, "bean");
            if (i11 == 5) {
                lg.a.C0828a.f(lg.a.f68839a, UGCDownloadingListFragment.this.getTAG(), "onRefresh completed -> refresh all", false, 4, null);
                Handler mHandler = UGCDownloadingListFragment.this.getMHandler();
                final UGCDownloadingListFragment uGCDownloadingListFragment = UGCDownloadingListFragment.this;
                mHandler.postDelayed(new Runnable() { // from class: com.transsnet.downloader.ugc.fragment.f0
                    @Override // java.lang.Runnable
                    public final void run() {
                        UGCDownloadingListFragment.b.j(uGCDownloadingListFragment);
                    }
                }, 500L);
                return;
            }
            UGCDownloadStaggeredAdapter staggeredAdapter = UGCDownloadingListFragment.this.getStaggeredAdapter();
            int i12 = -1;
            if (staggeredAdapter != null && (data2 = staggeredAdapter.getData()) != null) {
                Iterator<Object> it = data2.iterator();
                int i13 = 0;
                while (it.hasNext()) {
                    com.transsnet.downloader.ugc.adapter.c cVar = (com.transsnet.downloader.ugc.adapter.c) it.next();
                    if ((cVar instanceof com.transsnet.downloader.ugc.adapter.c.C0695c) && Intrinsics.c(((com.transsnet.downloader.ugc.adapter.c.C0695c) cVar).b().getResourceId(), bean.getResourceId())) {
                        i12 = i13;
                        break;
                    }
                    i13++;
                }
            }
            if (i12 >= 0) {
                UGCDownloadStaggeredAdapter staggeredAdapter2 = UGCDownloadingListFragment.this.getStaggeredAdapter();
                com.transsnet.downloader.ugc.adapter.c cVar2 = staggeredAdapter2 != null ? (com.transsnet.downloader.ugc.adapter.c) staggeredAdapter2.getItem(i12) : null;
                com.transsnet.downloader.ugc.adapter.c.C0695c c0695c = cVar2 instanceof com.transsnet.downloader.ugc.adapter.c.C0695c ? (com.transsnet.downloader.ugc.adapter.c.C0695c) cVar2 : null;
                if (c0695c != null) {
                    com.transsnet.downloader.ugc.adapter.c.C0695c c0695cA = c0695c.a(bean);
                    UGCDownloadStaggeredAdapter staggeredAdapter3 = UGCDownloadingListFragment.this.getStaggeredAdapter();
                    if (staggeredAdapter3 != null && (data = staggeredAdapter3.getData()) != null) {
                    }
                    UGCDownloadStaggeredAdapter staggeredAdapter4 = UGCDownloadingListFragment.this.getStaggeredAdapter();
                    if (staggeredAdapter4 != null) {
                        staggeredAdapter4.notifyItemChanged(i12, bean);
                    }
                }
            }
        }
    }

    public static final class c implements com.transsnet.downloader.adapter.u0.b {
        c() {
        }

        @Override // com.transsnet.downloader.adapter.u0.b
        public void a(int i11, int i12) {
        }

        @Override // com.transsnet.downloader.adapter.u0.b
        public void b(int i11, int i12, int i13, boolean z10) {
            com.transsnet.downloader.adapter.u0.b.a.a(this, i11, i12, i13, z10);
        }
    }

    static final class d implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f59738a;

        d(Function1 function) {
            Intrinsics.h(function, "function");
            this.f59738a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f59738a;
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
            this.f59738a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Handler getMHandler() {
        return (Handler) this.mHandler.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Handler mHandler_delegate$lambda$0() {
        return new Handler(Looper.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsnet.downloader.manager.g q1() {
        return com.transsnet.downloader.manager.p.f59500a.a(Utils.a());
    }

    private final com.transsnet.downloader.manager.g r1() {
        return (com.transsnet.downloader.manager.g) this.downloadManager.getValue();
    }

    private final void s1() {
        Function1 function1 = new Function1() { // from class: com.transsnet.downloader.ugc.fragment.a0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UGCDownloadingListFragment.t1(this.f59781a, (my.a) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = my.a.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().q(), false, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit t1(UGCDownloadingListFragment uGCDownloadingListFragment, my.a it) {
        Intrinsics.h(it, "it");
        try {
            uGCDownloadingListFragment.x0().P();
        } catch (Throwable unused) {
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit u1(UGCDownloadingListFragment uGCDownloadingListFragment, List list) {
        uGCDownloadingListFragment.w1(list);
        return Unit.f67061a;
    }

    private final boolean v1(DownloadBean downloadBean) {
        long jA;
        String rootPath = downloadBean.getRootPath();
        if (rootPath == null || rootPath.length() == 0) {
            jA = com.blankj.utilcode.util.w.a();
        } else {
            try {
                jA = com.blankj.utilcode.util.n.j(downloadBean.getRootPath());
            } catch (Throwable unused) {
                return false;
            }
        }
        Long size = downloadBean.getSize();
        if ((size != null ? size.longValue() : 0L) - downloadBean.getProgress() < jA) {
            return false;
        }
        uh.b.f76753a.d(R$string.insufficient_storage_available);
        return true;
    }

    private final void w1(List list) {
        List arrayList;
        List<Object> data;
        UGCDownloadStaggeredAdapter staggeredAdapter = getStaggeredAdapter();
        if (staggeredAdapter == null || (data = staggeredAdapter.getData()) == null || (arrayList = CollectionsKt.U0(data)) == null) {
            arrayList = new ArrayList();
        }
        CollectionsKt.I(arrayList, new Function1() { // from class: com.transsnet.downloader.ugc.fragment.e0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(UGCDownloadingListFragment.x1((com.transsnet.downloader.ugc.adapter.c) obj));
            }
        });
        ArrayList arrayList2 = new ArrayList();
        List list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            String modeArg = getModeArg();
            if (Intrinsics.c(modeArg, "ugc_home")) {
                if (list.size() <= 3) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        arrayList2.add(new com.transsnet.downloader.ugc.adapter.c.C0695c((DownloadBean) it.next()));
                    }
                } else {
                    List list3 = list;
                    List listK0 = CollectionsKt.K0(list3, 3);
                    List listD0 = CollectionsKt.d0(list3, 3);
                    DownloadBean downloadBean = (DownloadBean) CollectionsKt.l0(listD0, 0);
                    DownloadBean downloadBean2 = new DownloadBean("moreBean", "moreBean", "", downloadBean != null ? downloadBean.getCover() : null, 0L, null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
                    downloadBean2.setMore(true);
                    downloadBean2.setCount(listD0.size());
                    downloadBean2.getSeriesList().clear();
                    downloadBean2.getSeriesList().addAll(CollectionsKt.K0(listD0, 2));
                    lg.a.C0828a.f(lg.a.f68839a, getTAG(), "updateDownloadingList: hasMore:true, modeArg:MODE_UGC_HOME", false, 4, null);
                    Iterator it2 = listK0.iterator();
                    while (it2.hasNext()) {
                        arrayList2.add(new com.transsnet.downloader.ugc.adapter.c.C0695c((DownloadBean) it2.next()));
                    }
                    arrayList2.add(new com.transsnet.downloader.ugc.adapter.c.C0695c(downloadBean2));
                }
            } else if (Intrinsics.c(modeArg, "ugc_sub")) {
                lg.a.C0828a.f(lg.a.f68839a, getTAG(), "updateDownloadingList,  modeArg:MODE_UGC_SUB", false, 4, null);
                Iterator it3 = list.iterator();
                while (it3.hasNext()) {
                    arrayList2.add(new com.transsnet.downloader.ugc.adapter.c.C0695c((DownloadBean) it3.next()));
                }
            }
        }
        a1(arrayList);
        if (arrayList2.isEmpty() && arrayList.isEmpty()) {
            arrayList.add(com.transsnet.downloader.ugc.adapter.c.d.f59617a);
        }
        arrayList.addAll(0, arrayList2);
        UGCDownloadStaggeredAdapter staggeredAdapter2 = getStaggeredAdapter();
        if (staggeredAdapter2 != null) {
            staggeredAdapter2.n1(arrayList);
        }
        b1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean x1(com.transsnet.downloader.ugc.adapter.c it) {
        Intrinsics.h(it, "it");
        return it instanceof com.transsnet.downloader.ugc.adapter.c.C0695c;
    }

    @Override // com.transsnet.downloader.ugc.fragment.UGCStaggeredListBaseFragment
    public String E0() {
        return Intrinsics.c(getModeArg(), "ugc_sub") ? "/download/ugc_my_downloading" : "/download/ugc_downloading";
    }

    @Override // com.transsnet.downloader.ugc.fragment.UGCStaggeredListBaseFragment
    protected void R0(DownloadBean bean, View view, int position) {
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
        int status = bean.getStatus();
        if (status == 1 || status == 2 || status == 3) {
            r1().G(bean);
        } else {
            if (v1(bean)) {
                return;
            }
            com.transsnet.downloader.manager.g.a.a(r1(), bean, false, 2, null);
        }
    }

    @Override // com.transsnet.downloader.ugc.fragment.UGCStaggeredListBaseFragment
    public void S0(DownloadBean item, View view, int position) {
        Intrinsics.h(item, "item");
        Intrinsics.h(view, "view");
        DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
        String resourceId = item.getResourceId();
        if (resourceId == null) {
            resourceId = item.getUrl();
        }
        DownloadBean downloadBeanQ = downloadEsHelperA.q(resourceId);
        if (downloadBeanQ != null) {
            item = downloadBeanQ;
        }
        PopupManager popupManager = new PopupManager(position, item);
        popupManager.J(view, 2);
        popupManager.B(new c());
    }

    @Override // com.transsnet.downloader.ugc.fragment.UGCStaggeredListBaseFragment
    protected void Y0(DownloadBean bean, View view, int position) {
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
        UGCDownloadOpenUtil.f59842a.r(view, getPageName(), position, bean);
    }

    @Override // com.transsnet.downloader.ugc.fragment.UGCStaggeredListBaseFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        super.initListener();
        r1().e(this.downloadListener);
        s1();
    }

    @Override // com.transsnet.downloader.ugc.fragment.UGCStaggeredListBaseFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        super.initViewModel();
        x0().Q().j(this, new d(new Function1() { // from class: com.transsnet.downloader.ugc.fragment.d0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UGCDownloadingListFragment.u1(this.f59791a, (List) obj);
            }
        }));
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        getMHandler().removeCallbacksAndMessages(null);
        r1().x(this.downloadListener);
    }
}
