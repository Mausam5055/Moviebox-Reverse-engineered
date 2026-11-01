package com.transsnet.downloader.manager;

import android.app.Application;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.SystemClock;
import android.text.TextUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.blankj.utilcode.util.Utils;
import com.therouter.TheRouter;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.DownloadException;
import com.transsion.postdetailapi.IPostDetailApi;
import com.transsnet.downloader.callback.DownloadTaskStat;
import com.transsnet.downloader.core.DownloadResponseImpl;
import com.transsnet.downloader.core.DownloadTaskImpl;
import com.transsnet.downloader.core.DownloadTaskImpl2;
import com.transsnet.downloader.core.task.DownloadTaskUtil;
import com.transsnet.downloader.notification.DownloadNotificationUtils;
import com.transsnet.downloader.util.DownloadUtil;
import com.transsnet.downloader.viewmodel.DownloadListManager;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import lj.m0;
import lj.s0;

/* JADX INFO: loaded from: classes.dex */
public final class DownloadManagerImpl implements g, com.transsnet.downloader.core.task.c {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final a f59433y = new a(null);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final Lazy f59434z = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() { // from class: com.transsnet.downloader.manager.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadManagerImpl.p0();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.transsnet.downloader.core.c f59438d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private oy.c f59439e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f59440f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private nh.n f59441g;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ny.b f59444j;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final com.transsnet.downloader.proxy.b f59454t;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f59435a = "DownloadImp";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ConcurrentHashMap f59436b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List f59437c = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ConcurrentHashMap f59442h = new ConcurrentHashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ConcurrentHashMap f59443i = new ConcurrentHashMap();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Set f59445k = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Set f59446l = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Set f59447m = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Set f59448n = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Lazy f59449o = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.manager.i
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadManagerImpl.i0();
        }
    });

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private DownloadTaskStat f59450p = new DownloadTaskStat(0, 0, 0, 0);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Set f59451q = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Set f59452r = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Lazy f59453s = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.manager.j
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadManagerImpl.Q0();
        }
    });

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final n0 f59455u = o0.a(y0.c());

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final n0 f59456v = o0.a(y0.b());

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final Lazy f59457w = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.manager.k
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadManagerImpl.G0();
        }
    });

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final Lazy f59458x = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.manager.l
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadManagerImpl.A0();
        }
    });

    /* JADX INFO: renamed from: com.transsnet.downloader.manager.DownloadManagerImpl$3, reason: invalid class name */
    /* JADX INFO: loaded from: classes7.dex */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.manager.DownloadManagerImpl$3", f = "DownloadManagerImpl.kt", l = {1265}, m = "invokeSuspend")
    static final class AnonymousClass3 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DownloadManagerImpl.this.new AnonymousClass3(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                DownloadManagerImpl downloadManagerImpl = DownloadManagerImpl.this;
                this.label = 1;
                if (downloadManagerImpl.C(this) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final g a() {
            return (g) DownloadManagerImpl.f59434z.getValue();
        }
    }

    public DownloadManagerImpl(oy.c cVar) {
        if (cVar == null) {
            this.f59439e = new oy.c();
        } else {
            this.f59439e = cVar;
        }
        com.transsnet.downloader.proxy.b bVar = new com.transsnet.downloader.proxy.b();
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        bVar.g(applicationA);
        m0 m0VarE = bVar.e();
        if (m0VarE != null) {
            e(m0VarE);
        }
        this.f59454t = bVar;
        DownloadEsHelper.f59419m.a();
        this.f59438d = new DownloadResponseImpl(this, this.f59451q, this.f59439e);
        DownloadNotificationUtils.f59506a.E();
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new AnonymousClass3(null), 3, null);
        H0();
        DownloadListManager.I(DownloadListManager.f59994m.a(), false, false, null, 7, null);
        e(new FinishDownloadHelper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IPostDetailApi A0() {
        return (IPostDetailApi) TheRouter.d(IPostDetailApi.class, new Object[0]);
    }

    private final boolean B0(DownloadBean downloadBean) {
        com.transsnet.downloader.core.c cVar;
        if (A(downloadBean) || downloadBean.isDownloading()) {
            lg.a.f68839a.p(this.f59435a, new String[]{"preDownload, isDownloading name = " + downloadBean.getName() + " "}, true);
            return false;
        }
        if (nh.m.f70474a.e() && downloadBean.isVideo()) {
            Long size = downloadBean.getSize();
            if ((size != null ? size.longValue() : 0L) >= 52428800) {
                if (downloadBean.getProgress() >= 5242880) {
                    lg.a.f68839a.p("download", new String[]{"preDownload, is downloaded do nothing, name = " + downloadBean.getTotalTitleName()}, true);
                    return false;
                }
                if (this.f59442h.size() > 0) {
                    ConcurrentHashMap concurrentHashMap = this.f59443i;
                    String resourceId = downloadBean.getResourceId();
                    if (resourceId == null) {
                        resourceId = downloadBean.getUrl();
                    }
                    concurrentHashMap.put(resourceId, downloadBean);
                    lg.a.f68839a.p("download", new String[]{"preDownload, 当前已有任务在预下载，加入等待队列, name = " + downloadBean.getTotalTitleName()}, true);
                    return false;
                }
                z0(downloadBean);
                downloadBean.setPreDownload(true);
                ConcurrentHashMap concurrentHashMap2 = this.f59443i;
                String resourceId2 = downloadBean.getResourceId();
                if (resourceId2 == null) {
                    resourceId2 = downloadBean.getUrl();
                }
                concurrentHashMap2.remove(resourceId2);
                oy.c cVar2 = this.f59439e;
                com.transsnet.downloader.core.task.b bVarK0 = null;
                if (cVar2 != null && (cVar = this.f59438d) != null) {
                    bVarK0 = k0(cVar2, cVar, downloadBean);
                }
                lg.a.f68839a.p("download", new String[]{"start preDownload, name = " + downloadBean.getTotalTitleName()}, true);
                if (bVarK0 != null) {
                    ConcurrentHashMap concurrentHashMap3 = this.f59442h;
                    String resourceId3 = downloadBean.getResourceId();
                    if (resourceId3 == null) {
                        resourceId3 = downloadBean.getUrl();
                    }
                    concurrentHashMap3.put(resourceId3, bVarK0);
                }
                downloadBean.setStatus(1);
                com.transsnet.downloader.core.c cVar3 = this.f59438d;
                if (cVar3 != null) {
                    cVar3.a(downloadBean);
                }
                if (bVarK0 != null) {
                    bVarK0.start();
                }
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C0() {
        if (nh.m.f70474a.e()) {
            lg.a.C0828a.f(lg.a.f68839a, this.f59435a, "preDownloadNextTask, pool size = " + this.f59443i.size(), false, 4, null);
            ArrayList arrayList = new ArrayList();
            for (Map.Entry entry : this.f59443i.entrySet()) {
                String str = (String) entry.getKey();
                DownloadBean downloadBean = (DownloadBean) entry.getValue();
                if (downloadBean.getProgress() < 5242880) {
                    if (downloadBean.getStatus() == 6) {
                        if (downloadBean.getErrorCount() < 3) {
                            downloadBean.setErrorCount(downloadBean.getErrorCount() + 1);
                        }
                    }
                    lg.a.f68839a.p("download", new String[]{"preDownloadNextTask, try start, name = " + downloadBean.getTotalTitleName()}, true);
                    B0(downloadBean);
                    break;
                }
                lg.a.C0828a.f(lg.a.f68839a, this.f59435a, "preDownloadNextTask, is downloaded do nothing, name = " + downloadBean.getName(), false, 4, null);
                arrayList.add(str);
            }
            if (arrayList.isEmpty()) {
                return;
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                this.f59443i.remove((String) it.next());
            }
        }
    }

    private final void D0(DownloadBean downloadBean) {
        if (ThreadUtils.j()) {
            E0(downloadBean);
        } else {
            kotlinx.coroutines.k.d(this.f59455u, null, null, new DownloadManagerImpl$prepareDownload$1(this, downloadBean, null), 3, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E0(DownloadBean downloadBean) {
        com.transsnet.downloader.core.c cVar;
        lg.a.C0828a c0828a = lg.a.f68839a;
        c0828a.c("download", n0() + " --> prepareDownloadNext() --> 2- prepareDownload,name = " + downloadBean.getTotalTitleName() + ",resourceId = " + downloadBean.getResourceId() + "，subjectId = " + downloadBean.getSubjectId() + ", status = " + downloadBean.getStatus(), true);
        if (downloadBean.getStatus() == 2 || downloadBean.getStatus() == 1) {
            lg.a.C0828a.f(c0828a, "download", n0() + " --> prepareDownloadNext() --> prepareDownload, status-- name = " + downloadBean.getName() + " ", false, 4, null);
            if (downloadBean.getIsPreDownload()) {
                downloadBean.setPreDownload(false);
                lg.a.C0828a.f(c0828a, "download", n0() + " --> prepareDownloadNext() --> preDownload 预下载转正变成当前下载 = " + downloadBean.getName() + " , epse = " + downloadBean.getEpse(), false, 4, null);
                ConcurrentHashMap concurrentHashMap = this.f59442h;
                String resourceId = downloadBean.getResourceId();
                if (resourceId == null) {
                    resourceId = downloadBean.getUrl();
                }
                com.transsnet.downloader.core.task.b bVar = (com.transsnet.downloader.core.task.b) concurrentHashMap.get(resourceId);
                Set set = this.f59445k;
                String resourceId2 = downloadBean.getResourceId();
                if (resourceId2 == null) {
                    resourceId2 = downloadBean.getUrl();
                }
                set.remove(resourceId2);
                Set set2 = this.f59447m;
                String resourceId3 = downloadBean.getResourceId();
                if (resourceId3 == null) {
                    resourceId3 = downloadBean.getUrl();
                }
                set2.remove(resourceId3);
                Set set3 = this.f59446l;
                String resourceId4 = downloadBean.getResourceId();
                if (resourceId4 == null) {
                    resourceId4 = downloadBean.getUrl();
                }
                set3.add(resourceId4);
                downloadBean.setStatus(2);
                com.transsnet.downloader.core.c cVar2 = this.f59438d;
                if (cVar2 != null) {
                    cVar2.a(downloadBean);
                }
                S0();
                if (bVar != null) {
                    R0();
                    ConcurrentHashMap concurrentHashMap2 = this.f59436b;
                    String resourceId5 = downloadBean.getResourceId();
                    if (resourceId5 == null) {
                        resourceId5 = downloadBean.getUrl();
                    }
                    concurrentHashMap2.put(resourceId5, bVar);
                    ConcurrentHashMap concurrentHashMap3 = this.f59442h;
                    String resourceId6 = downloadBean.getResourceId();
                    if (resourceId6 == null) {
                        resourceId6 = downloadBean.getUrl();
                    }
                    concurrentHashMap3.remove(resourceId6);
                }
            }
            if (nh.m.f70474a.e()) {
                return;
            }
            c0828a.p("download", new String[]{n0() + " --> prepareDownloadNext() --> not net， 2 error"}, true);
            downloadBean.setStatus(6);
            downloadBean.setException(new DownloadException(9, DownloadException.EXCEPTION_MESSAGE_NO_NET));
            v(downloadBean);
            return;
        }
        downloadBean.setPreDownload(false);
        ConcurrentHashMap concurrentHashMap4 = this.f59436b;
        String resourceId7 = downloadBean.getResourceId();
        if (resourceId7 == null) {
            resourceId7 = downloadBean.getUrl();
        }
        if (concurrentHashMap4.containsKey(resourceId7)) {
            if (downloadBean.isDownloading()) {
                c0828a.p("download", new String[]{n0() + " --> prepareDownloadNext() --> prepareDownload, isDownloading name = " + downloadBean.getName()}, true);
                return;
            }
            ConcurrentHashMap concurrentHashMap5 = this.f59436b;
            String resourceId8 = downloadBean.getResourceId();
            if (resourceId8 == null) {
                resourceId8 = downloadBean.getUrl();
            }
            concurrentHashMap5.remove(resourceId8);
            lg.a.C0828a.f(c0828a, "download", n0() + " --> prepareDownloadNext() --> prepareDownload, isDownloading, error status , remove  name = " + downloadBean.getName(), false, 4, null);
        }
        if (u0()) {
            if (!B0(downloadBean)) {
                downloadBean.setStatus(3);
                com.transsnet.downloader.core.c cVar3 = this.f59438d;
                if (cVar3 != null) {
                    cVar3.a(downloadBean);
                }
            }
            Set set4 = this.f59445k;
            String resourceId9 = downloadBean.getResourceId();
            if (resourceId9 == null) {
                resourceId9 = downloadBean.getUrl();
            }
            set4.add(resourceId9);
            c0828a.c("download", n0() + " --> prepareDownloadNext() --> 1--prepareDownload, name = " + downloadBean.getName() + ", add wait, status = " + downloadBean.getStatus() + ",loading  = " + this.f59446l.size() + ", error  = " + this.f59447m.size() + " , wait  = " + this.f59445k.size() + " ", true);
            S0();
            return;
        }
        ConcurrentHashMap concurrentHashMap6 = this.f59443i;
        String resourceId10 = downloadBean.getResourceId();
        if (resourceId10 == null) {
            resourceId10 = downloadBean.getUrl();
        }
        concurrentHashMap6.remove(resourceId10);
        ConcurrentHashMap concurrentHashMap7 = this.f59442h;
        String resourceId11 = downloadBean.getResourceId();
        if (resourceId11 == null) {
            resourceId11 = downloadBean.getUrl();
        }
        concurrentHashMap7.remove(resourceId11);
        if (this.f59442h.isEmpty() && !this.f59443i.isEmpty()) {
            C0();
        }
        oy.c cVar4 = this.f59439e;
        com.transsnet.downloader.core.task.b bVarK0 = null;
        if (cVar4 != null && (cVar = this.f59438d) != null) {
            bVarK0 = k0(cVar4, cVar, downloadBean);
        }
        com.transsnet.downloader.core.task.b bVar2 = bVarK0;
        if (bVar2 != null) {
            ConcurrentHashMap concurrentHashMap8 = this.f59436b;
            String resourceId12 = downloadBean.getResourceId();
            if (resourceId12 == null) {
                resourceId12 = downloadBean.getUrl();
            }
            concurrentHashMap8.put(resourceId12, bVar2);
        }
        downloadBean.setStatus(1);
        com.transsnet.downloader.core.c cVar5 = this.f59438d;
        if (cVar5 != null) {
            cVar5.a(downloadBean);
        }
        j0(downloadBean);
        Set set5 = this.f59445k;
        String resourceId13 = downloadBean.getResourceId();
        if (resourceId13 == null) {
            resourceId13 = downloadBean.getUrl();
        }
        set5.remove(resourceId13);
        Set set6 = this.f59447m;
        String resourceId14 = downloadBean.getResourceId();
        if (resourceId14 == null) {
            resourceId14 = downloadBean.getUrl();
        }
        set6.remove(resourceId14);
        Set set7 = this.f59446l;
        String resourceId15 = downloadBean.getResourceId();
        if (resourceId15 == null) {
            resourceId15 = downloadBean.getUrl();
        }
        set7.add(resourceId15);
        lg.a.C0828a.v(c0828a, "download", n0() + " --> prepareDownloadNext() --> 1--prepareDownload, name = " + downloadBean.getName() + ", add loading, loading  = " + this.f59446l.size() + ", error  = " + this.f59447m.size() + " , wait  = " + this.f59445k.size() + " ", false, 4, null);
        S0();
        if (bVar2 != null) {
            bVar2.start();
        }
    }

    private final void F0() {
        for (DownloadBean downloadBean : this.f59437c) {
            if (downloadBean.getStatus() == 3 || downloadBean.getStatus() == 6 || (downloadBean.isDownloading() && downloadBean.getIsPreDownload())) {
                if (downloadBean.getStatus() == 6) {
                    if (!nh.m.f70474a.e() || downloadBean.isNoNetError()) {
                        lg.a.C0828a.f(lg.a.f68839a, this.f59435a, "prepareDownloadNextTask, no net，continue, name = " + downloadBean.getName(), false, 4, null);
                    } else if (downloadBean.getErrorCount() >= 3) {
                        lg.a.f68839a.c("download", "prepareDownloadNextTask, 失败超限~不再执行，name = " + downloadBean.getName(), true);
                    } else {
                        downloadBean.setErrorCount(downloadBean.getErrorCount() + 1);
                    }
                }
                lg.a.f68839a.c("download", "prepareDownloadNextTask, name = " + downloadBean.getName() + ", from next, status: " + downloadBean.getStatus() + ",isPreDownload:" + downloadBean.getIsPreDownload() + ", progress: " + downloadBean.getProgress() + ",size:" + downloadBean.getSize(), true);
                Set set = this.f59445k;
                String resourceId = downloadBean.getResourceId();
                if (resourceId == null) {
                    resourceId = downloadBean.getUrl();
                }
                set.remove(resourceId);
                Set set2 = this.f59447m;
                String resourceId2 = downloadBean.getResourceId();
                if (resourceId2 == null) {
                    resourceId2 = downloadBean.getUrl();
                }
                set2.remove(resourceId2);
                D0(downloadBean);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final lj.n0 G0() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).q1();
    }

    private final void H0() {
        nh.n nVar = new nh.n() { // from class: com.transsnet.downloader.manager.DownloadManagerImpl$registerNetwork$1
            private final void a() {
                lg.a.C0828a c0828a = lg.a.f68839a;
                lg.a.C0828a.f(c0828a, this.f59459a.f59435a, "---------Download, Network onConnected", false, 4, null);
                DownloadBean downloadBeanD = this.f59459a.f59454t.d();
                if (downloadBeanD != null) {
                    DownloadManagerImpl downloadManagerImpl = this.f59459a;
                    if (!downloadBeanD.isRemoved()) {
                        lg.a.C0828a.f(c0828a, downloadManagerImpl.f59435a, "onConnected, start DownloadingPlay, name = " + downloadBeanD.getName() + ",epse = " + downloadBeanD.getEpse() + ",  cur status = " + downloadBeanD.getStatus(), false, 4, null);
                        downloadManagerImpl.t(downloadBeanD, true);
                    }
                }
                List<DownloadBean> list = this.f59459a.f59437c;
                DownloadManagerImpl downloadManagerImpl2 = this.f59459a;
                for (DownloadBean downloadBean : list) {
                    if (downloadBean.getStatus() == 6 || downloadBean.getStatus() == 3 || downloadBean.isDownloading()) {
                        lg.a.f68839a.c(downloadManagerImpl2.f59435a, "onConnected, caches, name = " + downloadBean.getName() + ",epse = " + downloadBean.getEpse() + ",  cur status = " + downloadBean.getStatus(), true);
                        if (downloadBean.isDownloading()) {
                            downloadBean.setPreDownload(false);
                            downloadBean.setStatus(3);
                        }
                        downloadManagerImpl2.t(downloadBean, true);
                    }
                }
                kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new DownloadManagerImpl$registerNetwork$1$netConnected$3(this.f59459a, null), 3, null);
            }

            @Override // nh.n
            public void onConnected() {
                a();
            }

            @Override // nh.n
            public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
                Intrinsics.h(network, "network");
                Intrinsics.h(networkCapabilities, "networkCapabilities");
                a();
            }

            @Override // nh.n
            public void onDisconnected() {
                lg.a.C0828a.f(lg.a.f68839a, this.f59459a.f59435a, "---------Download, Network onDisconnected, cancel all request---------", false, 4, null);
                try {
                    com.transsnet.downloader.core.b.f58613c.a().c().dispatcher().cancelAll();
                } catch (Throwable unused) {
                }
                this.f59459a.f59436b.clear();
                this.f59459a.f59443i.clear();
                this.f59459a.f59442h.clear();
            }
        };
        this.f59441g = nVar;
        nh.m.f70474a.l(nVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit I0(DownloadManagerImpl downloadManagerImpl, DownloadBean downloadBean, Function1 function1, String str, boolean z10) {
        downloadManagerImpl.K0(downloadBean);
        ConcurrentHashMap concurrentHashMap = downloadManagerImpl.f59436b;
        String resourceId = downloadBean.getResourceId();
        if (resourceId == null) {
            resourceId = downloadBean.getUrl();
        }
        concurrentHashMap.remove(resourceId);
        ConcurrentHashMap concurrentHashMap2 = downloadManagerImpl.f59443i;
        String resourceId2 = downloadBean.getResourceId();
        if (resourceId2 == null) {
            resourceId2 = downloadBean.getUrl();
        }
        concurrentHashMap2.remove(resourceId2);
        ConcurrentHashMap concurrentHashMap3 = downloadManagerImpl.f59442h;
        String resourceId3 = downloadBean.getResourceId();
        if (resourceId3 == null) {
            resourceId3 = downloadBean.getUrl();
        }
        concurrentHashMap3.remove(resourceId3);
        for (DownloadBean downloadBean2 : downloadManagerImpl.f59437c) {
            if (Intrinsics.c(downloadBean2.getResourceId(), downloadBean.getResourceId())) {
                downloadManagerImpl.f59437c.remove(downloadBean2);
                lg.a.C0828a.f(lg.a.f68839a, downloadManagerImpl.f59435a, "remove ~~", false, 4, null);
                break;
            }
        }
        com.transsnet.downloader.core.c cVar = downloadManagerImpl.f59438d;
        if (cVar != null) {
            cVar.a(downloadBean);
        }
        kotlinx.coroutines.k.d(downloadManagerImpl.f59456v, null, null, new DownloadManagerImpl$remove$1$1(str, downloadBean, null), 3, null);
        downloadManagerImpl.F0();
        my.e eVar = new my.e(true, false);
        AppScopeVMlProvider appScopeVMlProvider = AppScopeVMlProvider.INSTANCE;
        FlowEventBus flowEventBus = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name = my.e.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, eVar, 0L);
        my.a aVar = new my.a();
        FlowEventBus flowEventBus2 = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name2 = my.a.class.getName();
        Intrinsics.g(name2, "getName(...)");
        flowEventBus2.postEvent(name2, aVar, 0L);
        if (z10) {
            downloadManagerImpl.t0(downloadBean.getSubjectId() + downloadBean.getSe() + downloadBean.getEp());
        }
        if (function1 != null) {
            function1.invoke(Boolean.valueOf(z10));
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit J0(Function1 function1, DownloadManagerImpl downloadManagerImpl, boolean z10) {
        if (function1 != null) {
            function1.invoke(Boolean.valueOf(z10));
        }
        lg.a.C0828a.f(lg.a.f68839a, downloadManagerImpl.f59435a, "remove success ,prepareDownloadNextTask", false, 4, null);
        downloadManagerImpl.S0();
        downloadManagerImpl.F0();
        return Unit.f67061a;
    }

    private final void K0(DownloadBean downloadBean) {
        Set set = this.f59446l;
        String resourceId = downloadBean.getResourceId();
        if (resourceId == null) {
            resourceId = downloadBean.getUrl();
        }
        set.remove(resourceId);
        Set set2 = this.f59447m;
        String resourceId2 = downloadBean.getResourceId();
        if (resourceId2 == null) {
            resourceId2 = downloadBean.getUrl();
        }
        set2.remove(resourceId2);
        Set set3 = this.f59445k;
        String resourceId3 = downloadBean.getResourceId();
        if (resourceId3 == null) {
            resourceId3 = downloadBean.getUrl();
        }
        set3.remove(resourceId3);
        Set set4 = this.f59448n;
        String resourceId4 = downloadBean.getResourceId();
        if (resourceId4 == null) {
            resourceId4 = downloadBean.getUrl();
        }
        set4.remove(resourceId4);
        S0();
    }

    private final void L0(final List list, final int i11, final Function1 function1) {
        final DownloadBean downloadBean = (DownloadBean) list.get(i11);
        final String path = downloadBean.getPath();
        l0(downloadBean, false, new Function1() { // from class: com.transsnet.downloader.manager.o
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DownloadManagerImpl.M0(downloadBean, this, i11, list, function1, path, ((Boolean) obj).booleanValue());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit M0(DownloadBean downloadBean, DownloadManagerImpl downloadManagerImpl, int i11, List list, Function1 function1, String str, boolean z10) {
        lg.a.f68839a.u("download", "removeDownload ,db success, remove file, name = " + downloadBean.getName() + ", resourceId：" + downloadBean.getResourceId(), true);
        downloadManagerImpl.K0(downloadBean);
        ConcurrentHashMap concurrentHashMap = downloadManagerImpl.f59436b;
        String resourceId = downloadBean.getResourceId();
        if (resourceId == null) {
            resourceId = downloadBean.getUrl();
        }
        concurrentHashMap.remove(resourceId);
        ConcurrentHashMap concurrentHashMap2 = downloadManagerImpl.f59443i;
        String resourceId2 = downloadBean.getResourceId();
        if (resourceId2 == null) {
            resourceId2 = downloadBean.getUrl();
        }
        concurrentHashMap2.remove(resourceId2);
        ConcurrentHashMap concurrentHashMap3 = downloadManagerImpl.f59442h;
        String resourceId3 = downloadBean.getResourceId();
        if (resourceId3 == null) {
            resourceId3 = downloadBean.getUrl();
        }
        concurrentHashMap3.remove(resourceId3);
        downloadManagerImpl.f59437c.remove(downloadBean);
        com.transsnet.downloader.core.c cVar = downloadManagerImpl.f59438d;
        if (cVar != null) {
            cVar.a(downloadBean);
        }
        kotlinx.coroutines.k.d(downloadManagerImpl.f59456v, null, null, new DownloadManagerImpl$removeDownload$1$1(str, downloadBean, null), 3, null);
        if (i11 >= list.size() - 1) {
            my.e eVar = new my.e(true, false);
            AppScopeVMlProvider appScopeVMlProvider = AppScopeVMlProvider.INSTANCE;
            FlowEventBus flowEventBus = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
            String name = my.e.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, eVar, 0L);
            my.a aVar = new my.a();
            FlowEventBus flowEventBus2 = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
            String name2 = my.a.class.getName();
            Intrinsics.g(name2, "getName(...)");
            flowEventBus2.postEvent(name2, aVar, 0L);
            if (function1 != null) {
                function1.invoke(Boolean.TRUE);
            }
        } else {
            downloadManagerImpl.L0(list, i11 + 1, function1);
        }
        return Unit.f67061a;
    }

    private final void N0(DownloadBean downloadBean) {
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new DownloadManagerImpl$requestNewSource$1(this, downloadBean, null), 3, null);
    }

    private final void O0(boolean z10) {
        if (v0()) {
            lg.a.f68839a.c("download", "resumeAll, " + z10, true);
            for (DownloadBean downloadBean : this.f59437c) {
                lg.a.f68839a.c("download", "resumeAll, " + z10 + ", pauseInner:" + downloadBean.getTotalTitleName() + ", isAutoPause:" + downloadBean.getIsAutoPause(), true);
                if (!z10) {
                    D0(downloadBean);
                } else if (downloadBean.getIsAutoPause() && !downloadBean.isDownloading()) {
                    if (this.f59436b.isEmpty()) {
                        D0(downloadBean);
                    } else {
                        downloadBean.setStatus(3);
                        com.transsnet.downloader.core.c cVar = this.f59438d;
                        if (cVar != null) {
                            cVar.a(downloadBean);
                        }
                    }
                }
            }
        }
    }

    private final void P0(List list) {
        boolean z10;
        DownloadBean downloadBean;
        DownloadBean downloadBean2;
        lg.a.C0828a.f(lg.a.f68839a, this.f59435a, "resumeAllDownloading , uncomplete size = " + (list != null ? Integer.valueOf(list.size()) : null), false, 4, null);
        int i11 = 4;
        int i12 = 2;
        int i13 = 3;
        int i14 = 1;
        if (list != null) {
            Iterator it = list.iterator();
            z10 = false;
            downloadBean = null;
            downloadBean2 = null;
            while (it.hasNext()) {
                DownloadBean downloadBean3 = (DownloadBean) it.next();
                int status = downloadBean3.getStatus();
                if (status == i14 || status == i12) {
                    Iterator it2 = this.f59437c.iterator();
                    boolean z11 = false;
                    while (it2.hasNext()) {
                        if (Intrinsics.c(downloadBean3.getResourceId(), ((DownloadBean) it2.next()).getResourceId())) {
                            z11 = true;
                        }
                    }
                    ConcurrentHashMap concurrentHashMap = this.f59436b;
                    String resourceId = downloadBean3.getResourceId();
                    if (resourceId == null) {
                        resourceId = downloadBean3.getUrl();
                    }
                    if (!concurrentHashMap.containsKey(resourceId)) {
                        z11 = false;
                    }
                    if (downloadBean3.getIsPreDownload()) {
                        z11 = false;
                    }
                    if (!z11) {
                        lg.a.C0828a c0828a = lg.a.f68839a;
                        String resourceId2 = downloadBean3.getResourceId();
                        if (resourceId2 == null) {
                            resourceId2 = downloadBean3.getUrl();
                        }
                        lg.a.C0828a.f(c0828a, "DownloadStatus", "init resume , resId = " + resourceId2, false, 4, null);
                        String str = this.f59435a;
                        String resourceId3 = downloadBean3.getResourceId();
                        if (resourceId3 == null) {
                            resourceId3 = downloadBean3.getUrl();
                        }
                        c0828a.c(str, "resumeAllDownloading init resume  , resId = " + resourceId3 + ", name = " + downloadBean3.getName(), true);
                        downloadBean3.setStatus(3);
                        t(downloadBean3, true);
                    }
                    z10 = true;
                } else if (status == i13 || status == i11) {
                    if (downloadBean == null) {
                        downloadBean = downloadBean3;
                    }
                    if (downloadBean3.getStatus() == i13 && downloadBean3.getProgress() < 5242880) {
                        lg.a.C0828a.f(lg.a.f68839a, this.f59435a, "init-----preDownload ，add to pool, name = " + downloadBean3.getName() + ", epse = " + downloadBean3.getEpse(), false, 4, null);
                        ConcurrentHashMap concurrentHashMap2 = this.f59443i;
                        String resourceId4 = downloadBean3.getResourceId();
                        if (resourceId4 == null) {
                            resourceId4 = downloadBean3.getUrl();
                        }
                        concurrentHashMap2.put(resourceId4, downloadBean3);
                    }
                    lg.a.C0828a c0828a2 = lg.a.f68839a;
                    lg.a.C0828a.f(c0828a2, "DownloadStatus", "init add waitSet , resId = " + downloadBean3.getResourceId() + ", name = " + downloadBean3.getName(), false, 4, null);
                    lg.a.C0828a.f(c0828a2, this.f59435a, "init add waitSet , resId = " + downloadBean3.getResourceId() + ", epse = " + downloadBean3.getEpse() + ", name = " + downloadBean3.getName() + ", status = " + downloadBean3.getStatus() + ",progress = " + downloadBean3.getProgress(), false, 4, null);
                    Set set = this.f59445k;
                    String resourceId5 = downloadBean3.getResourceId();
                    if (resourceId5 == null) {
                        resourceId5 = downloadBean3.getUrl();
                    }
                    set.add(resourceId5);
                } else if (status == 6) {
                    if (downloadBean2 == null) {
                        downloadBean2 = downloadBean3;
                    }
                    lg.a.C0828a c0828a3 = lg.a.f68839a;
                    lg.a.C0828a.f(c0828a3, "DownloadStatus", "init add errorSet , resId = " + downloadBean3.getResourceId() + ", name = " + downloadBean3.getName() + ", name = " + downloadBean3.getName(), false, 4, null);
                    String str2 = this.f59435a;
                    String resourceId6 = downloadBean3.getResourceId();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("init add errorSet , resId = ");
                    sb2.append(resourceId6);
                    lg.a.C0828a.f(c0828a3, str2, sb2.toString(), false, 4, null);
                    Set set2 = this.f59447m;
                    String resourceId7 = downloadBean3.getResourceId();
                    if (resourceId7 == null) {
                        resourceId7 = downloadBean3.getUrl();
                    }
                    set2.add(resourceId7);
                }
                S0();
                if (!this.f59437c.contains(downloadBean3)) {
                    lg.a.f68839a.c(this.f59435a, "resumeAllDownloading， add 2 cache, name = " + downloadBean3.getName(), true);
                    this.f59437c.add(downloadBean3);
                }
                it = it;
                i11 = 4;
                i12 = 2;
                i13 = 3;
                i14 = 1;
            }
        } else {
            z10 = false;
            downloadBean = null;
            downloadBean2 = null;
        }
        if (z10) {
            return;
        }
        if (downloadBean != null) {
            if (!(downloadBean.getStatus() == 4)) {
                lg.a.f68839a.c(this.f59435a, "------ has no loading, use wait, name = " + downloadBean.getName(), true);
                Set set3 = this.f59445k;
                String resourceId8 = downloadBean.getResourceId();
                if (resourceId8 == null) {
                    resourceId8 = downloadBean.getUrl();
                }
                set3.remove(resourceId8);
                downloadBean.setStatus(3);
                g.a.a(this, downloadBean, false, 2, null);
                S0();
                return;
            }
        }
        if (downloadBean2 != null) {
            lg.a.f68839a.c(this.f59435a, "------ has no loading, use error, name = " + downloadBean2.getName(), true);
            Set set4 = this.f59447m;
            String resourceId9 = downloadBean2.getResourceId();
            if (resourceId9 == null) {
                resourceId9 = downloadBean2.getUrl();
            }
            set4.remove(resourceId9);
            downloadBean2.setStatus(3);
            g.a.a(this, downloadBean2, false, 2, null);
            S0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final qy.a Q0() {
        return (qy.a) zg.c.f79414e.a().h(qy.a.class);
    }

    private final void R0() {
        String str;
        int size = this.f59436b.size();
        oy.c cVar = this.f59439e;
        if (size >= (cVar != null ? cVar.e() : 2)) {
            Iterator it = this.f59436b.entrySet().iterator();
            if (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                str = (String) entry.getKey();
                DownloadBean downloadBeanB = ((com.transsnet.downloader.core.task.b) entry.getValue()).b();
                downloadBeanB.setStatus(3);
                com.transsnet.downloader.core.c cVar2 = this.f59438d;
                if (cVar2 != null) {
                    cVar2.a(downloadBeanB);
                }
                Set set = this.f59446l;
                String resourceId = downloadBeanB.getResourceId();
                if (resourceId == null) {
                    resourceId = downloadBeanB.getUrl();
                }
                set.remove(resourceId);
                Set set2 = this.f59445k;
                String resourceId2 = downloadBeanB.getResourceId();
                if (resourceId2 == null) {
                    resourceId2 = downloadBeanB.getUrl();
                }
                set2.add(resourceId2);
                lg.a.f68839a.c("download", "有其他资源进入边下边播 当前资源转换为waiting setCurDownloadingToWait() --> 2--downloading2wait,resourceId=" + downloadBeanB.getResourceId() + ",name = " + downloadBeanB.getTotalTitleName() + " ", true);
                S0();
            } else {
                str = null;
            }
            if (str != null) {
            }
        }
    }

    private final void S0() {
        ny.b bVar = this.f59444j;
        if (bVar != null) {
            this.f59450p.setWaitCount(this.f59445k.size());
            this.f59450p.setLoadingCount(this.f59446l.size());
            this.f59450p.setErrorCount(this.f59447m.size());
            this.f59450p.setDoneCount(this.f59448n.size());
            lg.a.C0828a.f(lg.a.f68839a, this.f59435a, "-------- statChange, downloadStat = " + this.f59450p + " ", false, 4, null);
            bVar.a(this.f59450p);
        }
    }

    private final void T0(DownloadBean downloadBean) {
        if (downloadBean.getRootPathType() == 1) {
            downloadBean.setTransferFailed(false);
        } else {
            if (downloadBean.getType() == 1) {
                return;
            }
            kotlinx.coroutines.k.d(this.f59456v, null, null, new DownloadManagerImpl$transferFile$1(downloadBean, null), 3, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U0(DownloadBean downloadBean) {
        Set set = this.f59447m;
        String resourceId = downloadBean.getResourceId();
        if (resourceId == null) {
            resourceId = downloadBean.getUrl();
        }
        set.add(resourceId);
        Set set2 = this.f59446l;
        String resourceId2 = downloadBean.getResourceId();
        if (resourceId2 == null) {
            resourceId2 = downloadBean.getUrl();
        }
        set2.remove(resourceId2);
        S0();
        F0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void V0(DownloadBean downloadBean) {
        Set set = this.f59445k;
        String resourceId = downloadBean.getResourceId();
        if (resourceId == null) {
            resourceId = downloadBean.getUrl();
        }
        set.remove(resourceId);
        Set set2 = this.f59447m;
        String resourceId2 = downloadBean.getResourceId();
        if (resourceId2 == null) {
            resourceId2 = downloadBean.getUrl();
        }
        set2.remove(resourceId2);
        D0(downloadBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void W0(DownloadBean downloadBean) {
        DownloadBean downloadBean2;
        com.transsnet.downloader.core.c cVar;
        if (downloadBean.isCompleted() || downloadBean.isRemoved()) {
            return;
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.v(c0828a, this.f59435a, "1- waitDownloadingAndStartNewTask,进入边下边播 subjectId=" + downloadBean.getSubjectId() + ",resourceId=" + downloadBean.getResourceId() + ",name = " + downloadBean.getTotalTitleName() + ",status = " + downloadBean.getStatus(), false, 4, null);
        downloadBean.setDownloadingPlay(true);
        boolean z10 = false;
        if (downloadBean.getStatus() == 2 || downloadBean.getStatus() == 1) {
            c0828a.p("download", new String[]{"下载中的 变成当前边下边播的 waitDownloadingAndStartNewTask, subjectId=" + downloadBean.getSubjectId() + ",resourceId=" + downloadBean.getResourceId() + ",status-- name = " + downloadBean.getName() + " "}, true);
            if (downloadBean.getIsPreDownload()) {
                downloadBean.setPreDownload(false);
                c0828a.p("download", new String[]{"preDownload 预下载的 转正变成当前边下边播的 subjectId=" + downloadBean.getSubjectId() + ",resourceId=" + downloadBean.getResourceId() + ",name= " + downloadBean.getName() + " , epse = " + downloadBean.getEpse()}, true);
                Set set = this.f59445k;
                String resourceId = downloadBean.getResourceId();
                if (resourceId == null) {
                    resourceId = downloadBean.getUrl();
                }
                set.remove(resourceId);
                Set set2 = this.f59447m;
                String resourceId2 = downloadBean.getResourceId();
                if (resourceId2 == null) {
                    resourceId2 = downloadBean.getUrl();
                }
                set2.remove(resourceId2);
                Set set3 = this.f59446l;
                String resourceId3 = downloadBean.getResourceId();
                if (resourceId3 == null) {
                    resourceId3 = downloadBean.getUrl();
                }
                set3.add(resourceId3);
                downloadBean.setStatus(2);
                com.transsnet.downloader.core.c cVar2 = this.f59438d;
                if (cVar2 != null) {
                    cVar2.a(downloadBean);
                }
                S0();
                ConcurrentHashMap concurrentHashMap = this.f59442h;
                String resourceId4 = downloadBean.getResourceId();
                if (resourceId4 == null) {
                    resourceId4 = downloadBean.getUrl();
                }
                com.transsnet.downloader.core.task.b bVar = (com.transsnet.downloader.core.task.b) concurrentHashMap.get(resourceId4);
                if (bVar != null) {
                    R0();
                    ConcurrentHashMap concurrentHashMap2 = this.f59436b;
                    String resourceId5 = downloadBean.getResourceId();
                    if (resourceId5 == null) {
                        resourceId5 = downloadBean.getUrl();
                    }
                    concurrentHashMap2.put(resourceId5, bVar);
                    ConcurrentHashMap concurrentHashMap3 = this.f59442h;
                    String resourceId6 = downloadBean.getResourceId();
                    if (resourceId6 == null) {
                        resourceId6 = downloadBean.getUrl();
                    }
                    concurrentHashMap3.remove(resourceId6);
                    return;
                }
                return;
            }
            return;
        }
        ConcurrentHashMap concurrentHashMap4 = this.f59443i;
        String resourceId7 = downloadBean.getResourceId();
        if (resourceId7 == null) {
            resourceId7 = downloadBean.getUrl();
        }
        concurrentHashMap4.remove(resourceId7);
        ConcurrentHashMap concurrentHashMap5 = this.f59442h;
        String resourceId8 = downloadBean.getResourceId();
        if (resourceId8 == null) {
            resourceId8 = downloadBean.getUrl();
        }
        concurrentHashMap5.remove(resourceId8);
        downloadBean.setPreDownload(false);
        ConcurrentHashMap concurrentHashMap6 = this.f59436b;
        String resourceId9 = downloadBean.getResourceId();
        if (resourceId9 == null) {
            resourceId9 = downloadBean.getUrl();
        }
        if (concurrentHashMap6.containsKey(resourceId9)) {
            if (downloadBean.isDownloading()) {
                c0828a.p("download", new String[]{"waitDownloadingAndStartNewTask, isDownloading name = " + downloadBean.getName() + " "}, true);
                return;
            }
            ConcurrentHashMap concurrentHashMap7 = this.f59436b;
            String resourceId10 = downloadBean.getResourceId();
            if (resourceId10 == null) {
                resourceId10 = downloadBean.getUrl();
            }
            concurrentHashMap7.remove(resourceId10);
            lg.a.C0828a.f(c0828a, this.f59435a, "waitDownloadingAndStartNewTask, isDownloading,error status , remove  name = " + downloadBean.getName(), false, 4, null);
        }
        R0();
        Iterator it = this.f59437c.iterator();
        while (true) {
            if (!it.hasNext()) {
                downloadBean2 = downloadBean;
                break;
            }
            downloadBean2 = (DownloadBean) it.next();
            if (Intrinsics.c(downloadBean2.getResourceId(), downloadBean.getResourceId())) {
                z10 = true;
                break;
            }
        }
        if (!z10) {
            this.f59437c.add(downloadBean2);
        }
        oy.c cVar3 = this.f59439e;
        com.transsnet.downloader.core.task.b bVarK0 = null;
        if (cVar3 != null && (cVar = this.f59438d) != null) {
            bVarK0 = k0(cVar3, cVar, downloadBean);
        }
        if (bVarK0 != null) {
            ConcurrentHashMap concurrentHashMap8 = this.f59436b;
            String resourceId11 = downloadBean2.getResourceId();
            if (resourceId11 == null) {
                resourceId11 = downloadBean2.getUrl();
            }
            concurrentHashMap8.put(resourceId11, bVarK0);
        }
        downloadBean2.setStatus(1);
        com.transsnet.downloader.core.c cVar4 = this.f59438d;
        if (cVar4 != null) {
            cVar4.a(downloadBean2);
        }
        j0(downloadBean2);
        Set set4 = this.f59445k;
        String resourceId12 = downloadBean2.getResourceId();
        if (resourceId12 == null) {
            resourceId12 = downloadBean2.getUrl();
        }
        set4.remove(resourceId12);
        Set set5 = this.f59447m;
        String resourceId13 = downloadBean2.getResourceId();
        if (resourceId13 == null) {
            resourceId13 = downloadBean2.getUrl();
        }
        set5.remove(resourceId13);
        Set set6 = this.f59446l;
        String resourceId14 = downloadBean2.getResourceId();
        if (resourceId14 == null) {
            resourceId14 = downloadBean2.getUrl();
        }
        set6.add(resourceId14);
        lg.a.f68839a.p("download", new String[]{"由边下边播触发的下载要开始了 2--prepareDownload, name = " + downloadBean2.getName() + ", add loading, loading  = " + this.f59446l.size() + ", error  = " + this.f59447m.size() + " , wait  = " + this.f59445k.size() + " "}, true);
        S0();
        if (bVarK0 != null) {
            bVarK0.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final jj.a i0() {
        Application applicationA = Utils.a();
        if (applicationA != null) {
            return AppDatabase.INSTANCE.b(applicationA).o1();
        }
        return null;
    }

    private final void j0(DownloadBean downloadBean) {
        DownloadNotificationUtils.f59506a.n(downloadBean);
    }

    private final com.transsnet.downloader.core.task.b k0(oy.c cVar, com.transsnet.downloader.core.c cVar2, DownloadBean downloadBean) {
        return DownloadTaskUtil.f58629a.j() ? new DownloadTaskImpl2(cVar2, this.f59454t, downloadBean, cVar, this) : new DownloadTaskImpl(cVar2, this.f59454t, downloadBean, cVar, this);
    }

    private final void l0(DownloadBean downloadBean, boolean z10, Function1 function1) {
        kotlinx.coroutines.k.d(this.f59456v, null, null, new DownloadManagerImpl$deleteItem$1(downloadBean, this, function1, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final jj.a m0() {
        return (jj.a) this.f59449o.getValue();
    }

    private final String n0() {
        return DownloadManagerImpl.class.getSimpleName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DownloadManagerImpl p0() {
        return new DownloadManagerImpl(null);
    }

    private final IPostDetailApi q0() {
        return (IPostDetailApi) this.f59458x.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final lj.n0 r0() {
        return (lj.n0) this.f59457w.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final qy.a s0() {
        return (qy.a) this.f59453s.getValue();
    }

    private final void t0(String str) {
        IPostDetailApi iPostDetailApiQ0 = q0();
        if (iPostDetailApiQ0 != null) {
            iPostDetailApiQ0.m(str);
        }
    }

    private final boolean u0() {
        String str;
        int size = this.f59436b.size();
        oy.c cVar = this.f59439e;
        boolean zIsDownloading = false;
        if (size >= (cVar != null ? cVar.e() : 2)) {
            Iterator it = this.f59436b.entrySet().iterator();
            if (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                str = (String) entry.getKey();
                DownloadBean downloadBeanB = ((com.transsnet.downloader.core.task.b) entry.getValue()).b();
                lg.a.C0828a.f(lg.a.f68839a, this.f59435a, "curTask, name = " + downloadBeanB.getTotalTitleName() + ",status = " + downloadBeanB.getStatus(), false, 4, null);
                zIsDownloading = downloadBeanB.isDownloading();
            } else {
                str = "";
            }
            if (!zIsDownloading && str.length() > 0) {
                this.f59436b.remove(str);
            }
        }
        return zIsDownloading;
    }

    private final boolean v0() {
        if (SystemClock.elapsedRealtime() - this.f59440f <= 500) {
            return false;
        }
        this.f59440f = SystemClock.elapsedRealtime();
        return true;
    }

    private final void w0(boolean z10) {
        lg.a.C0828a c0828a = lg.a.f68839a;
        c0828a.c(this.f59435a, "isAutoPause, isAutoPause:" + z10, true);
        if (v0()) {
            c0828a.c("download", "pauseAll, " + z10, true);
            for (DownloadBean downloadBean : this.f59437c) {
                if (!z10) {
                    x0(downloadBean, false);
                } else if (downloadBean.getStatus() != 4) {
                    lg.a.f68839a.c("download", "pauseAll, pauseInner:" + downloadBean.getTotalTitleName(), true);
                    downloadBean.setAutoPause(true);
                    x0(downloadBean, false);
                }
            }
        }
    }

    private final void x0(DownloadBean downloadBean, boolean z10) {
        DownloadBean downloadBean2;
        downloadBean.setPreDownload(false);
        Iterator it = this.f59437c.iterator();
        do {
            if (!it.hasNext()) {
                downloadBean2 = null;
                break;
            }
            downloadBean2 = (DownloadBean) it.next();
        } while (!Intrinsics.c(downloadBean2.getResourceId(), downloadBean.getResourceId()));
        if (downloadBean2 == null) {
            this.f59437c.add(downloadBean);
            downloadBean2 = downloadBean;
        }
        com.transsnet.downloader.core.task.b bVar = (com.transsnet.downloader.core.task.b) this.f59436b.get(downloadBean.getResourceId());
        if (bVar != null && !Intrinsics.c(bVar.b(), downloadBean2)) {
            lg.a.f68839a.c(this.f59435a, "------pause, name: " + downloadBean2.getTotalTitleName() + ", info:" + bVar.b(), true);
            bVar.b().setStatus(4);
        }
        Set set = this.f59446l;
        String resourceId = downloadBean2.getResourceId();
        if (resourceId == null) {
            resourceId = downloadBean2.getUrl();
        }
        set.remove(resourceId);
        Set set2 = this.f59447m;
        String resourceId2 = downloadBean2.getResourceId();
        if (resourceId2 == null) {
            resourceId2 = downloadBean2.getUrl();
        }
        set2.remove(resourceId2);
        Set set3 = this.f59445k;
        String resourceId3 = downloadBean2.getResourceId();
        if (resourceId3 == null) {
            resourceId3 = downloadBean2.getUrl();
        }
        set3.add(resourceId3);
        lg.a.f68839a.c(this.f59435a, "pause, name: " + downloadBean2.getTotalTitleName() + ", downloadNext:" + z10 + "， info:" + downloadBean2, true);
        S0();
        downloadBean2.setStatus(4);
        ConcurrentHashMap concurrentHashMap = this.f59436b;
        String resourceId4 = downloadBean2.getResourceId();
        if (resourceId4 == null) {
            resourceId4 = downloadBean2.getUrl();
        }
        concurrentHashMap.remove(resourceId4);
        ConcurrentHashMap concurrentHashMap2 = this.f59442h;
        String resourceId5 = downloadBean2.getResourceId();
        if (resourceId5 == null) {
            resourceId5 = downloadBean2.getUrl();
        }
        concurrentHashMap2.remove(resourceId5);
        ConcurrentHashMap concurrentHashMap3 = this.f59443i;
        String resourceId6 = downloadBean2.getResourceId();
        if (resourceId6 == null) {
            resourceId6 = downloadBean2.getUrl();
        }
        concurrentHashMap3.remove(resourceId6);
        com.transsnet.downloader.core.c cVar = this.f59438d;
        if (cVar != null) {
            cVar.a(downloadBean2);
        }
        if (z10) {
            F0();
        }
    }

    static /* synthetic */ void y0(DownloadManagerImpl downloadManagerImpl, DownloadBean downloadBean, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = true;
        }
        downloadManagerImpl.x0(downloadBean, z10);
    }

    private final void z0(DownloadBean downloadBean) {
        if (this.f59442h.isEmpty()) {
            return;
        }
        for (Map.Entry entry : this.f59442h.entrySet()) {
            String str = (String) entry.getKey();
            DownloadBean downloadBeanB = ((com.transsnet.downloader.core.task.b) entry.getValue()).b();
            lg.a.f68839a.c("download", "pause current preDownload, add to pool, name = " + downloadBeanB.getTotalTitleName() + "，HashCode = " + System.identityHashCode(downloadBean) + " ", true);
            this.f59443i.put(str, downloadBeanB);
            if (!Intrinsics.c(downloadBeanB.getResourceId(), downloadBean != null ? downloadBean.getResourceId() : null)) {
                downloadBeanB.setStatus(3);
            }
            this.f59442h.remove(str);
        }
    }

    @Override // com.transsnet.downloader.manager.g
    public boolean A(DownloadBean downloadInfo) {
        Intrinsics.h(downloadInfo, "downloadInfo");
        ConcurrentHashMap concurrentHashMap = this.f59436b;
        String resourceId = downloadInfo.getResourceId();
        if (resourceId == null) {
            resourceId = downloadInfo.getUrl();
        }
        return concurrentHashMap.containsKey(resourceId);
    }

    @Override // com.transsnet.downloader.manager.g
    public void B() {
        z0(null);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0064  */
    /* JADX WARN: Code duplicated, block: B:27:0x0070  */
    /* JADX WARN: Code duplicated, block: B:29:0x007c  */
    /* JADX WARN: Code duplicated, block: B:31:0x0084  */
    /* JADX WARN: Code duplicated, block: B:38:0x008f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.transsnet.downloader.manager.g
    public Object C(Continuation continuation) throws Throwable {
        DownloadManagerImpl$scheduleDownloadTask$1 downloadManagerImpl$scheduleDownloadTask$1;
        List<DownloadBean> list;
        String resourceId;
        if (continuation instanceof DownloadManagerImpl$scheduleDownloadTask$1) {
            downloadManagerImpl$scheduleDownloadTask$1 = (DownloadManagerImpl$scheduleDownloadTask$1) continuation;
            int i11 = downloadManagerImpl$scheduleDownloadTask$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                downloadManagerImpl$scheduleDownloadTask$1.label = i11 - Integer.MIN_VALUE;
            } else {
                downloadManagerImpl$scheduleDownloadTask$1 = new DownloadManagerImpl$scheduleDownloadTask$1(this, continuation);
            }
        } else {
            downloadManagerImpl$scheduleDownloadTask$1 = new DownloadManagerImpl$scheduleDownloadTask$1(this, continuation);
        }
        Object objC = downloadManagerImpl$scheduleDownloadTask$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = downloadManagerImpl$scheduleDownloadTask$1.label;
        if (i12 != 0) {
            if (i12 == 1) {
                ResultKt.b(objC);
            } else {
                if (i12 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objC);
            }
            list = (List) objC;
            if (list != null) {
                for (DownloadBean downloadBean : list) {
                    if (downloadBean.getIsRead() != 1) {
                        Set set = this.f59448n;
                        resourceId = downloadBean.getResourceId();
                        if (resourceId == null) {
                            resourceId = downloadBean.getUrl();
                        }
                        Boxing.a(set.remove(resourceId));
                    }
                    lg.a.C0828a.f(lg.a.f68839a, "DownloadStatus", "init add doneSet, resId = " + downloadBean.getResourceId() + "， it.isRead = " + downloadBean.getIsRead(), false, 4, null);
                }
            }
            return Unit.f67061a;
        }
        ResultKt.b(objC);
        DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
        downloadManagerImpl$scheduleDownloadTask$1.label = 1;
        objC = downloadEsHelperA.C(downloadManagerImpl$scheduleDownloadTask$1);
        if (objC == objF) {
            return objF;
        }
        P0((List) objC);
        DownloadEsHelper downloadEsHelperA2 = DownloadEsHelper.f59419m.a();
        downloadManagerImpl$scheduleDownloadTask$1.label = 2;
        objC = DownloadEsHelper.B(downloadEsHelperA2, false, downloadManagerImpl$scheduleDownloadTask$1, 1, null);
        if (objC == objF) {
            return objF;
        }
        list = (List) objC;
        if (list != null) {
            while (r12.hasNext()) {
                if (downloadBean.getIsRead() != 1) {
                    Set set2 = this.f59448n;
                    resourceId = downloadBean.getResourceId();
                    if (resourceId == null) {
                        resourceId = downloadBean.getUrl();
                    }
                    Boxing.a(set2.remove(resourceId));
                }
                lg.a.C0828a.f(lg.a.f68839a, "DownloadStatus", "init add doneSet, resId = " + downloadBean.getResourceId() + "， it.isRead = " + downloadBean.getIsRead(), false, 4, null);
            }
        }
        return Unit.f67061a;
    }

    @Override // com.transsnet.downloader.manager.g
    public void D(List list) {
        Intrinsics.h(list, "list");
        if (list.isEmpty()) {
            return;
        }
        if (list.size() == 1) {
            p((DownloadBean) list.get(0));
            return;
        }
        oy.c cVar = this.f59439e;
        int iE = cVar != null ? cVar.e() : 1;
        for (int i11 = 0; i11 < iE; i11++) {
            if (i11 < list.size()) {
                p((DownloadBean) list.get(i11));
            }
        }
        int i12 = 0;
        for (Object obj : list) {
            int i13 = i12 + 1;
            if (i12 < 0) {
                CollectionsKt.u();
            }
            DownloadBean downloadBean = (DownloadBean) obj;
            long j11 = i12;
            downloadBean.setUpdateTimeStamp(Long.valueOf(System.currentTimeMillis() + j11));
            downloadBean.setCreateAt(System.currentTimeMillis() + j11);
            if (i12 >= iE && i12 != list.size() - 1) {
                ConcurrentHashMap concurrentHashMap = this.f59443i;
                String resourceId = downloadBean.getResourceId();
                if (resourceId == null) {
                    resourceId = downloadBean.getUrl();
                }
                concurrentHashMap.put(resourceId, downloadBean);
                ConcurrentHashMap concurrentHashMap2 = this.f59442h;
                String resourceId2 = downloadBean.getResourceId();
                if (resourceId2 == null) {
                    resourceId2 = downloadBean.getUrl();
                }
                concurrentHashMap2.remove(resourceId2);
                if (!this.f59437c.contains(downloadBean)) {
                    this.f59437c.add(downloadBean);
                }
                downloadBean.setPreDownload(false);
                downloadBean.setStatus(3);
                com.transsnet.downloader.core.c cVar2 = this.f59438d;
                if (cVar2 != null) {
                    cVar2.a(downloadBean);
                }
                Set set = this.f59445k;
                String resourceId3 = downloadBean.getResourceId();
                if (resourceId3 == null) {
                    resourceId3 = downloadBean.getUrl();
                }
                set.add(resourceId3);
                S0();
            }
            i12 = i13;
        }
        int size = list.size() - 1;
        if (size >= iE - 1) {
            DownloadBean downloadBean2 = (DownloadBean) list.get(size);
            if (!this.f59437c.contains(downloadBean2)) {
                this.f59437c.add(downloadBean2);
            }
            if (!B0(downloadBean2)) {
                downloadBean2.setStatus(3);
                com.transsnet.downloader.core.c cVar3 = this.f59438d;
                if (cVar3 != null) {
                    cVar3.a(downloadBean2);
                }
            }
            Set set2 = this.f59445k;
            String resourceId4 = downloadBean2.getResourceId();
            if (resourceId4 == null) {
                resourceId4 = downloadBean2.getUrl();
            }
            set2.add(resourceId4);
        }
        S0();
    }

    @Override // com.transsnet.downloader.manager.g
    public void E() {
        S0();
    }

    @Override // com.transsnet.downloader.manager.g
    public void F(s0 listener) {
        Intrinsics.h(listener, "listener");
        this.f59452r.add(listener);
    }

    @Override // com.transsnet.downloader.manager.g
    public void G(DownloadBean downloadInfo) {
        Intrinsics.h(downloadInfo, "downloadInfo");
        if (v0()) {
            y0(this, downloadInfo, false, 2, null);
        }
    }

    @Override // com.transsnet.downloader.manager.g
    public void H() {
        this.f59454t.c();
    }

    @Override // com.transsnet.downloader.core.task.c
    public void I(DownloadBean downloadInfo) {
        Intrinsics.h(downloadInfo, "downloadInfo");
        kotlinx.coroutines.k.d(this.f59455u, null, null, new DownloadManagerImpl$onPreDownloadSuccess$1(this, downloadInfo, null), 3, null);
    }

    @Override // com.transsnet.downloader.manager.g
    public Object a(String str, int i11, String str2, Continuation continuation) {
        return kotlinx.coroutines.i.g(y0.b(), new DownloadManagerImpl$transformDownloadPlayUrl$3(str, i11, str2, this, null), continuation);
    }

    @Override // com.transsnet.downloader.core.task.c
    public void b(DownloadBean downloadInfo) {
        Intrinsics.h(downloadInfo, "downloadInfo");
        T0(downloadInfo);
        ConcurrentHashMap concurrentHashMap = this.f59443i;
        String resourceId = downloadInfo.getResourceId();
        if (resourceId == null) {
            resourceId = downloadInfo.getUrl();
        }
        concurrentHashMap.remove(resourceId);
        ConcurrentHashMap concurrentHashMap2 = this.f59436b;
        String resourceId2 = downloadInfo.getResourceId();
        if (resourceId2 == null) {
            resourceId2 = downloadInfo.getUrl();
        }
        concurrentHashMap2.remove(resourceId2);
        ConcurrentHashMap concurrentHashMap3 = this.f59442h;
        String resourceId3 = downloadInfo.getResourceId();
        if (resourceId3 == null) {
            resourceId3 = downloadInfo.getUrl();
        }
        concurrentHashMap3.remove(resourceId3);
        boolean zRemove = this.f59437c.remove(downloadInfo);
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, this.f59435a, "remove index " + zRemove, false, 4, null);
        Set set = this.f59448n;
        String resourceId4 = downloadInfo.getResourceId();
        if (resourceId4 == null) {
            resourceId4 = downloadInfo.getUrl();
        }
        set.add(resourceId4);
        Set set2 = this.f59445k;
        String resourceId5 = downloadInfo.getResourceId();
        if (resourceId5 == null) {
            resourceId5 = downloadInfo.getUrl();
        }
        set2.remove(resourceId5);
        DownloadStatusIconManager.f59462h.a().w(false);
        Set set3 = this.f59446l;
        String resourceId6 = downloadInfo.getResourceId();
        if (resourceId6 == null) {
            resourceId6 = downloadInfo.getUrl();
        }
        set3.remove(resourceId6);
        c0828a.p("download", new String[]{"onDownloadSuccess, name = " + downloadInfo.getName() + " subjectId=" + downloadInfo.getSubjectId() + " resourceId=" + downloadInfo.getResourceId() + ", status = " + downloadInfo.getStatus() + " "}, true);
        Iterator it = this.f59452r.iterator();
        while (it.hasNext()) {
            ((s0) it.next()).b(downloadInfo);
        }
        S0();
        F0();
    }

    @Override // com.transsnet.downloader.core.task.c
    public void c(DownloadBean downloadInfo, boolean z10) {
        Intrinsics.h(downloadInfo, "downloadInfo");
        Iterator it = this.f59452r.iterator();
        while (it.hasNext()) {
            ((s0) it.next()).c(downloadInfo, z10);
        }
    }

    @Override // com.transsnet.downloader.manager.g
    public void d() {
        C0();
    }

    @Override // com.transsnet.downloader.manager.g
    public void e(m0 listener) {
        Intrinsics.h(listener, "listener");
        this.f59451q.add(listener);
    }

    @Override // com.transsnet.downloader.manager.g
    public Object f(String str, Continuation continuation) {
        return DownloadEsHelper.f59419m.a().o(str, continuation);
    }

    @Override // com.transsnet.downloader.core.task.c
    public void g(DownloadBean downloadInfo) {
        Intrinsics.h(downloadInfo, "downloadInfo");
        Set set = this.f59445k;
        String resourceId = downloadInfo.getResourceId();
        if (resourceId == null) {
            resourceId = downloadInfo.getUrl();
        }
        set.remove(resourceId);
        Set set2 = this.f59447m;
        String resourceId2 = downloadInfo.getResourceId();
        if (resourceId2 == null) {
            resourceId2 = downloadInfo.getUrl();
        }
        set2.remove(resourceId2);
        D0(downloadInfo);
    }

    @Override // com.transsnet.downloader.manager.g
    public String h(DownloadBean bean) {
        Intrinsics.h(bean, "bean");
        return this.f59454t.f(bean);
    }

    @Override // com.transsnet.downloader.manager.g
    public boolean i() {
        return !this.f59436b.isEmpty();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.transsnet.downloader.manager.g
    public Object j(String str, Continuation continuation) throws Throwable {
        DownloadManagerImpl$getDownloadedPlayBean$2 downloadManagerImpl$getDownloadedPlayBean$2;
        DownloadBean downloadBeanS;
        String path;
        if (continuation instanceof DownloadManagerImpl$getDownloadedPlayBean$2) {
            downloadManagerImpl$getDownloadedPlayBean$2 = (DownloadManagerImpl$getDownloadedPlayBean$2) continuation;
            int i11 = downloadManagerImpl$getDownloadedPlayBean$2.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                downloadManagerImpl$getDownloadedPlayBean$2.label = i11 - Integer.MIN_VALUE;
            } else {
                downloadManagerImpl$getDownloadedPlayBean$2 = new DownloadManagerImpl$getDownloadedPlayBean$2(this, continuation);
            }
        } else {
            downloadManagerImpl$getDownloadedPlayBean$2 = new DownloadManagerImpl$getDownloadedPlayBean$2(this, continuation);
        }
        Object objR = downloadManagerImpl$getDownloadedPlayBean$2.result;
        Object objF = IntrinsicsKt.f();
        int i12 = downloadManagerImpl$getDownloadedPlayBean$2.label;
        if (i12 == 0) {
            ResultKt.b(objR);
            DownloadEsHelper.a aVar = DownloadEsHelper.f59419m;
            downloadBeanS = aVar.a().S(str);
            if (downloadBeanS == null) {
                DownloadEsHelper downloadEsHelperA = aVar.a();
                downloadManagerImpl$getDownloadedPlayBean$2.label = 1;
                objR = downloadEsHelperA.R(str, downloadManagerImpl$getDownloadedPlayBean$2);
                if (objR == objF) {
                    return objF;
                }
            }
            if (downloadBeanS != null || !downloadBeanS.isCompleted() || (path = downloadBeanS.getPath()) == null || path.length() <= 0) {
                return null;
            }
            return downloadBeanS;
        }
        if (i12 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(objR);
        downloadBeanS = (DownloadBean) objR;
        if (downloadBeanS != null) {
        }
        return null;
    }

    @Override // com.transsnet.downloader.manager.g
    public void k(DownloadBean downloadInfo) {
        Intrinsics.h(downloadInfo, "downloadInfo");
        if (ThreadUtils.j()) {
            W0(downloadInfo);
        } else {
            kotlinx.coroutines.k.d(this.f59455u, null, null, new DownloadManagerImpl$waitDownloadingAndStartNewTask$1(this, downloadInfo, null), 3, null);
        }
    }

    @Override // com.transsnet.downloader.manager.g
    public void l(final DownloadBean downloadInfo, final Function1 function1) {
        Intrinsics.h(downloadInfo, "downloadInfo");
        final String path = downloadInfo.getPath();
        l0(downloadInfo, true, new Function1() { // from class: com.transsnet.downloader.manager.n
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DownloadManagerImpl.I0(this.f59490a, downloadInfo, function1, path, ((Boolean) obj).booleanValue());
            }
        });
    }

    @Override // com.transsnet.downloader.manager.g
    public void m() {
        w0(false);
    }

    @Override // com.transsnet.downloader.manager.g
    public void n(ny.b listener) {
        Intrinsics.h(listener, "listener");
        this.f59450p.setWaitCount(this.f59445k.size());
        this.f59450p.setLoadingCount(this.f59446l.size());
        this.f59450p.setErrorCount(this.f59447m.size());
        this.f59450p.setDoneCount(this.f59448n.size());
        listener.a(this.f59450p);
        this.f59444j = listener;
    }

    @Override // com.transsnet.downloader.manager.g
    public void o() {
        this.f59454t.h();
    }

    public Object o0(Continuation continuation) {
        return DownloadEsHelper.f59419m.a().y(continuation);
    }

    @Override // com.transsnet.downloader.manager.g
    public void p(DownloadBean downloadInfo) {
        Intrinsics.h(downloadInfo, "downloadInfo");
        lg.a.C0828a c0828a = lg.a.f68839a;
        c0828a.c("download", n0() + " --> download() --> downloadInfo = " + downloadInfo, false);
        if (A(downloadInfo)) {
            lg.a.C0828a.f(c0828a, "download", n0() + " --> download() --> 任务已存在", false, 4, null);
            return;
        }
        DownloadEsHelper.f59419m.a().h();
        if (!this.f59437c.contains(downloadInfo)) {
            this.f59437c.add(downloadInfo);
        }
        c0828a.p("download", new String[]{n0() + " --> download() -->, 添加新的任务 -- name = " + downloadInfo.getName() + " "}, true);
        D0(downloadInfo);
    }

    @Override // com.transsnet.downloader.manager.g
    public void q() {
        this.f59454t.b();
    }

    @Override // com.transsnet.downloader.manager.g
    public void r(oy.c config) {
        Intrinsics.h(config, "config");
        oy.c cVar = this.f59439e;
        if (cVar == null || cVar == null || cVar.e() != config.e()) {
            if (config.e() > 1 && this.f59436b.size() < config.e()) {
                for (DownloadBean downloadBean : this.f59437c) {
                    if (!downloadBean.isDownloading() && downloadBean.getStatus() != 4 && config.e() - this.f59436b.size() > 0) {
                        lg.a.f68839a.p("download", new String[]{n0() + " --> set new config, start other task, task:" + config.e() + ", cur:" + this.f59436b.size() + " "}, true);
                        p(downloadBean);
                    }
                }
            } else if (this.f59436b.size() > 1 && this.f59436b.size() > config.e()) {
                for (int size = this.f59437c.size() - 1; size > 0; size--) {
                    DownloadBean downloadBean2 = (DownloadBean) this.f59437c.get(size);
                    if (downloadBean2.isDownloading() && config.e() <= this.f59436b.size()) {
                        x0(downloadBean2, false);
                        lg.a.f68839a.p("download", new String[]{n0() + " --> set new config, pause task, task:" + config.e() + ", cur:" + this.f59436b.size() + " "}, true);
                    }
                }
            }
        }
        this.f59439e = config;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [T, com.transsion.baselib.db.download.DownloadBean, java.lang.Object] */
    @Override // com.transsnet.downloader.manager.g
    public void s(String str, Function1 callback) {
        Intrinsics.h(callback, "callback");
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        for (?? r11 : this.f59437c) {
            if (TextUtils.equals(r11.getResourceId(), str)) {
                objectRef.element = r11;
                callback.invoke(r11);
                break;
            }
        }
        if (objectRef.element == 0) {
            kotlinx.coroutines.k.d(this.f59455u, null, null, new DownloadManagerImpl$getDownloadByResId$2(objectRef, str, callback, this, null), 3, null);
        }
    }

    @Override // com.transsnet.downloader.manager.g
    public void t(DownloadBean downloadInfo, boolean z10) {
        Intrinsics.h(downloadInfo, "downloadInfo");
        if (v0() || z10) {
            if (!this.f59437c.contains(downloadInfo)) {
                this.f59437c.add(downloadInfo);
            }
            lg.a.f68839a.c(this.f59435a, "resume, name = " + downloadInfo.getTotalTitleName() + ", cur status = " + downloadInfo.getStatus() + ", " + downloadInfo, true);
            Set set = this.f59445k;
            String resourceId = downloadInfo.getResourceId();
            if (resourceId == null) {
                resourceId = downloadInfo.getUrl();
            }
            set.remove(resourceId);
            Set set2 = this.f59447m;
            String resourceId2 = downloadInfo.getResourceId();
            if (resourceId2 == null) {
                resourceId2 = downloadInfo.getUrl();
            }
            set2.remove(resourceId2);
            D0(downloadInfo);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.transsnet.downloader.manager.g
    public Object u(String str, int i11, int i12, Continuation continuation) throws Throwable {
        DownloadManagerImpl$getDownloadedPlayBean$1 downloadManagerImpl$getDownloadedPlayBean$1;
        DownloadBean downloadBeanK;
        String path;
        if (continuation instanceof DownloadManagerImpl$getDownloadedPlayBean$1) {
            downloadManagerImpl$getDownloadedPlayBean$1 = (DownloadManagerImpl$getDownloadedPlayBean$1) continuation;
            int i13 = downloadManagerImpl$getDownloadedPlayBean$1.label;
            if ((i13 & Integer.MIN_VALUE) != 0) {
                downloadManagerImpl$getDownloadedPlayBean$1.label = i13 - Integer.MIN_VALUE;
            } else {
                downloadManagerImpl$getDownloadedPlayBean$1 = new DownloadManagerImpl$getDownloadedPlayBean$1(this, continuation);
            }
        } else {
            downloadManagerImpl$getDownloadedPlayBean$1 = new DownloadManagerImpl$getDownloadedPlayBean$1(this, continuation);
        }
        Object objJ = downloadManagerImpl$getDownloadedPlayBean$1.result;
        Object objF = IntrinsicsKt.f();
        int i14 = downloadManagerImpl$getDownloadedPlayBean$1.label;
        if (i14 == 0) {
            ResultKt.b(objJ);
            DownloadEsHelper.a aVar = DownloadEsHelper.f59419m;
            downloadBeanK = aVar.a().K(str, i11, i12);
            if (downloadBeanK == null) {
                DownloadEsHelper downloadEsHelperA = aVar.a();
                downloadManagerImpl$getDownloadedPlayBean$1.label = 1;
                objJ = downloadEsHelperA.J(str, i11, i12, downloadManagerImpl$getDownloadedPlayBean$1);
                if (objJ == objF) {
                    return objF;
                }
            }
            if (downloadBeanK != null || !downloadBeanK.isCompleted() || (path = downloadBeanK.getPath()) == null || path.length() <= 0) {
                return null;
            }
            return downloadBeanK;
        }
        if (i14 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(objJ);
        downloadBeanK = (DownloadBean) objJ;
        if (downloadBeanK != null) {
        }
        return null;
    }

    @Override // com.transsnet.downloader.manager.g
    public void v(DownloadBean downloadInfo) {
        Intrinsics.h(downloadInfo, "downloadInfo");
        downloadInfo.setPreDownload(false);
        ConcurrentHashMap concurrentHashMap = this.f59436b;
        String resourceId = downloadInfo.getResourceId();
        if (resourceId == null) {
            resourceId = downloadInfo.getUrl();
        }
        concurrentHashMap.remove(resourceId);
        com.transsnet.downloader.core.c cVar = this.f59438d;
        if (cVar != null) {
            cVar.a(downloadInfo);
        }
        ConcurrentHashMap concurrentHashMap2 = this.f59443i;
        String resourceId2 = downloadInfo.getResourceId();
        if (resourceId2 == null) {
            resourceId2 = downloadInfo.getUrl();
        }
        concurrentHashMap2.remove(resourceId2);
        ConcurrentHashMap concurrentHashMap3 = this.f59442h;
        String resourceId3 = downloadInfo.getResourceId();
        if (resourceId3 == null) {
            resourceId3 = downloadInfo.getUrl();
        }
        concurrentHashMap3.remove(resourceId3);
        if (DownloadUtil.f59900a.E(downloadInfo)) {
            N0(downloadInfo);
            return;
        }
        Set set = this.f59447m;
        String resourceId4 = downloadInfo.getResourceId();
        if (resourceId4 == null) {
            resourceId4 = downloadInfo.getUrl();
        }
        set.add(resourceId4);
        Set set2 = this.f59446l;
        String resourceId5 = downloadInfo.getResourceId();
        if (resourceId5 == null) {
            resourceId5 = downloadInfo.getUrl();
        }
        set2.remove(resourceId5);
        lg.a.f68839a.i("download", "Download Failed, name = " + downloadInfo.getName() + ", resourceId = " + downloadInfo.getResourceId() + "，subjectId = " + downloadInfo.getSubjectId() + "，remove from loading, add to error， loading  = " + this.f59446l.size() + ", error  = " + this.f59447m.size() + " , wait  = " + this.f59445k.size() + " ", true);
        S0();
        F0();
    }

    @Override // com.transsnet.downloader.manager.g
    public void w() {
        O0(false);
    }

    @Override // com.transsnet.downloader.manager.g
    public void x(m0 listener) {
        Intrinsics.h(listener, "listener");
        if (this.f59451q.contains(listener)) {
            this.f59451q.remove(listener);
        }
    }

    @Override // com.transsnet.downloader.manager.g
    public Long y() {
        Iterator it = this.f59437c.iterator();
        long progress = 0;
        while (it.hasNext()) {
            progress += ((DownloadBean) it.next()).getProgress();
        }
        return Long.valueOf(progress);
    }

    @Override // com.transsnet.downloader.manager.g
    public void z(List list, final Function1 function1) {
        lg.a.C0828a.f(lg.a.f68839a, this.f59435a, "remove list ,size = " + (list != null ? Integer.valueOf(list.size()) : null), false, 4, null);
        if (list != null) {
            L0(list, 0, new Function1() { // from class: com.transsnet.downloader.manager.m
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return DownloadManagerImpl.J0(function1, this, ((Boolean) obj).booleanValue());
                }
            });
        }
    }
}
