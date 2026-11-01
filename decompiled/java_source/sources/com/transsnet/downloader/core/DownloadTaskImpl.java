package com.transsnet.downloader.core;

import android.app.Application;
import androidx.collection.s;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.DownloadException;
import com.transsion.baselib.db.download.DownloadRange;
import com.transsnet.downloader.core.task.DownloadFileInfoTask;
import com.transsnet.downloader.core.thread.DownloadExecutor;
import com.transsnet.downloader.core.thread.DownloadRunnable;
import com.transsnet.downloader.util.DownloadUtil;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import lj.n0;
import nh.m;

/* JADX INFO: loaded from: classes7.dex */
public final class DownloadTaskImpl implements com.transsnet.downloader.core.task.b, com.transsnet.downloader.core.thread.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f58577a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.transsnet.downloader.proxy.b f58578b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final DownloadBean f58579c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final oy.c f58580d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List f58581e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.transsnet.downloader.core.task.c f58582f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f58583g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private n0 f58584h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final com.transsnet.downloader.proxy.c f58585i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private AtomicInteger f58586j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private kotlinx.coroutines.n0 f58587k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final String f58588l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Lazy f58589m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final AtomicInteger f58590n;

    public static final class a implements com.transsnet.downloader.proxy.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ DownloadBean f58591a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTaskImpl f58592b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ oy.c f58593c;

        a(DownloadBean downloadBean, DownloadTaskImpl downloadTaskImpl, oy.c cVar) {
            this.f58591a = downloadBean;
            this.f58592b = downloadTaskImpl;
            this.f58593c = cVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit c(com.transsnet.downloader.core.thread.f fVar, DownloadTaskImpl downloadTaskImpl, DownloadRange downloadRange, int i11, oy.c cVar, DownloadBean downloadBean, DownloadRange downloadRange2) {
            fVar.removeBreakCallback();
            ((ArrayList) downloadTaskImpl.f58581e).remove(fVar);
            lg.a.C0828a c0828a = lg.a.f68839a;
            lg.a.C0828a.v(c0828a, "DownloadThread", "beak success, start new thread", false, 4, null);
            downloadRange.setDownloading(true);
            DownloadRunnable downloadRunnable = new DownloadRunnable(downloadRange, downloadTaskImpl.f58578b, i11, downloadTaskImpl.f58577a, cVar, downloadBean, downloadTaskImpl);
            ((ArrayList) downloadTaskImpl.f58581e).add(downloadRunnable);
            Integer numValueOf = downloadRange2 != null ? Integer.valueOf(downloadRange2.getRangeId()) : null;
            Long lValueOf = downloadRange2 != null ? Long.valueOf(downloadRange2.getStart()) : null;
            Long lValueOf2 = downloadRange2 != null ? Long.valueOf(downloadRange2.getEnd()) : null;
            c0828a.u("download", "download&play start new thread,oldRangeId:" + numValueOf + ",start:" + lValueOf + ",end:" + lValueOf2 + ", rangeId: " + downloadRange.getRangeId() + ", start:" + downloadRange.getStart() + ",end:" + downloadRange.getEnd(), true);
            DownloadExecutor.f58633a.b().e(downloadRunnable);
            return Unit.f67061a;
        }

        @Override // com.transsnet.downloader.proxy.c
        public void a(String str, final int i11, final DownloadRange downloadRange, final DownloadRange range) {
            Intrinsics.h(range, "range");
            if (!Intrinsics.c(str, this.f58591a.getResourceId()) || range.isRangeDownloadSuccess() || ((ArrayList) this.f58592b.f58581e).isEmpty()) {
                return;
            }
            Object obj = ((ArrayList) this.f58592b.f58581e).get(((ArrayList) this.f58592b.f58581e).size() - 1);
            Intrinsics.g(obj, "get(...)");
            final com.transsnet.downloader.core.thread.f fVar = (com.transsnet.downloader.core.thread.f) obj;
            final DownloadTaskImpl downloadTaskImpl = this.f58592b;
            final oy.c cVar = this.f58593c;
            final DownloadBean downloadBean = this.f58591a;
            fVar.pause(new Function0() { // from class: com.transsnet.downloader.core.f
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return DownloadTaskImpl.a.c(fVar, downloadTaskImpl, range, i11, cVar, downloadBean, downloadRange);
                }
            });
        }
    }

    public static final class b implements com.transsnet.downloader.core.task.a {
        b() {
        }

        @Override // com.transsnet.downloader.core.task.a
        public Object a(boolean z10, long j11, Continuation continuation) {
            DownloadTaskImpl.this.D();
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsnet.downloader.core.DownloadTaskImpl$start$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.core.DownloadTaskImpl$start$1", f = "DownloadTaskImpl.kt", l = {87}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DownloadTaskImpl.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            DownloadTaskImpl downloadTaskImpl;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                String resourceId = DownloadTaskImpl.this.f58579c.getResourceId();
                if (resourceId != null) {
                    DownloadTaskImpl downloadTaskImpl2 = DownloadTaskImpl.this;
                    n0 n0Var = downloadTaskImpl2.f58584h;
                    this.L$0 = downloadTaskImpl2;
                    this.label = 1;
                    obj = n0Var.c(resourceId, this);
                    if (obj == objF) {
                        return objF;
                    }
                    downloadTaskImpl = downloadTaskImpl2;
                }
                DownloadTaskImpl.this.E();
                return Unit.f67061a;
            }
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            downloadTaskImpl = (DownloadTaskImpl) this.L$0;
            ResultKt.b(obj);
            List list = (List) obj;
            lg.a.C0828a.f(lg.a.f68839a, "Download_VideoCache", "ranges size = " + (list != null ? Boxing.d(list.size()) : null), false, 4, null);
            if (list != null) {
                downloadTaskImpl.f58579c.getDownloadRanges().clear();
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(list);
                downloadTaskImpl.t(arrayList);
                Boxing.a(downloadTaskImpl.f58579c.getDownloadRanges().addAll(arrayList));
            }
            DownloadTaskImpl.this.E();
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsnet.downloader.core.DownloadTaskImpl$start$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.core.DownloadTaskImpl$start$2", f = "DownloadTaskImpl.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DownloadTaskImpl.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            DownloadTaskImpl.this.E();
            return Unit.f67061a;
        }
    }

    public DownloadTaskImpl(c downloadResponse, com.transsnet.downloader.proxy.b proxyHelper, DownloadBean downloadInfo, oy.c config, com.transsnet.downloader.core.task.c cVar) {
        Intrinsics.h(downloadResponse, "downloadResponse");
        Intrinsics.h(proxyHelper, "proxyHelper");
        Intrinsics.h(downloadInfo, "downloadInfo");
        Intrinsics.h(config, "config");
        this.f58577a = downloadResponse;
        this.f58578b = proxyHelper;
        this.f58583g = System.currentTimeMillis();
        this.f58586j = new AtomicInteger(0);
        this.f58587k = o0.a(y0.b());
        this.f58588l = "DownloadThread_TaskImpl";
        this.f58589m = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.core.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DownloadTaskImpl.B();
            }
        });
        this.f58590n = new AtomicInteger(0);
        this.f58579c = downloadInfo;
        this.f58580d = config;
        this.f58582f = cVar;
        this.f58581e = new ArrayList();
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        this.f58584h = companion.b(applicationA).q1();
        a aVar = new a(downloadInfo, this, config);
        this.f58585i = aVar;
        String resourceId = downloadInfo.getResourceId();
        proxyHelper.a(resourceId == null ? downloadInfo.getUrl() : resourceId, aVar);
    }

    private final void A(int i11) {
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, this.f58588l, "1---multithreadingDownload", false, 4, null);
        List<DownloadRange> listV = v(i11, null);
        c0828a.c("download", "执行多线程下载, 需要启的线程数 =  " + listV.size(), true);
        int i12 = this.f58586j.get() - 1;
        this.f58586j.addAndGet(listV.size());
        for (DownloadRange downloadRange : listV) {
            int i13 = i12 + 1;
            DownloadRunnable downloadRunnable = new DownloadRunnable(downloadRange, this.f58578b, i13, this.f58577a, this.f58580d, this.f58579c, this);
            lg.a.C0828a.f(lg.a.f68839a, this.f58588l, "----多线程下载开始, rangeId =  " + downloadRange.getRangeId() + "， index = " + i13 + "，status = " + this.f58579c.getStatus(), false, 4, null);
            downloadRange.setDownloading(true);
            this.f58581e.add(downloadRunnable);
            DownloadExecutor.f58633a.b().e(downloadRunnable);
            i12 = i13;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final n0 B() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).q1();
    }

    private final void C(int i11) {
        ArrayList<DownloadRange> arrayList = new ArrayList();
        arrayList.addAll(this.f58579c.getDownloadRanges());
        for (DownloadRange downloadRange : arrayList) {
            if (!downloadRange.getIsDownloading() && !downloadRange.isRangeDownloadSuccess()) {
                downloadRange.setDownloading(true);
                DownloadRunnable downloadRunnable = new DownloadRunnable(downloadRange, this.f58578b, i11, this.f58577a, this.f58580d, this.f58579c, this);
                lg.a.f68839a.c("download", "singleThread------onRangeSuccess , start new range~ rangeId = " + downloadRange.getRangeId() + ", range.start = " + downloadRange.getStart() + ",range.end = " + downloadRange.getEnd() + ",progress = " + downloadRange.getProgress(), true);
                this.f58581e.add(downloadRunnable);
                DownloadExecutor.f58633a.b().e(downloadRunnable);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void D() {
        long jG = this.f58580d.g();
        Long size = this.f58579c.getSize();
        boolean z10 = jG < (size != null ? size.longValue() : 0L);
        this.f58579c.setStatus(2);
        this.f58577a.a(this.f58579c);
        this.f58579c.setSupportRanges(z10);
        int iF = this.f58580d.f();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("isSupportRanges ");
        sb2.append(z10);
        sb2.append(" config.eachDownloadThread ");
        sb2.append(iF);
        com.transsnet.downloader.core.task.c cVar = this.f58582f;
        if (cVar != null) {
            cVar.c(this.f58579c, true);
        }
        if (z10) {
            long downloadHeaderSize = this.f58579c.getDownloadHeaderSize();
            int iF2 = this.f58580d.f();
            long j11 = downloadHeaderSize / ((long) iF2);
            int i11 = 0;
            while (i11 < iF2) {
                long j12 = ((long) i11) * j11;
                long j13 = i11 == iF2 + (-1) ? downloadHeaderSize - 1 : (j12 + j11) - 1;
                DownloadRange downloadRange = new DownloadRange();
                String resourceId = this.f58579c.getResourceId();
                downloadRange.setThreadId(resourceId != null ? resourceId.hashCode() : 0);
                downloadRange.setRangeId(s.a(j12 + j13));
                downloadRange.setResourceId(this.f58579c.getResourceId());
                downloadRange.setStart(j12);
                downloadRange.setEnd(j13);
                downloadRange.setDownloading(true);
                this.f58579c.getDownloadRanges().add(downloadRange);
                DownloadRunnable downloadRunnable = new DownloadRunnable(downloadRange, this.f58578b, i11, this.f58577a, this.f58580d, this.f58579c, this);
                DownloadExecutor.f58633a.b().e(downloadRunnable);
                this.f58581e.add(downloadRunnable);
                this.f58586j.getAndIncrement();
                i11++;
                iF2 = iF2;
            }
            Long size2 = this.f58579c.getSize();
            long jLongValue = (size2 != null ? size2.longValue() : 1L) - 1;
            DownloadRange downloadRange2 = new DownloadRange();
            String resourceId2 = this.f58579c.getResourceId();
            downloadRange2.setThreadId(resourceId2 != null ? resourceId2.hashCode() : 0);
            downloadRange2.setRangeId(s.a(downloadHeaderSize + jLongValue));
            downloadRange2.setResourceId(this.f58579c.getResourceId());
            downloadRange2.setStart(downloadHeaderSize);
            downloadRange2.setEnd(jLongValue);
            this.f58579c.getDownloadRanges().add(downloadRange2);
            lg.a.f68839a.p("download", new String[]{"首次多线程下载,  allSize= " + this.f58580d.f() + "，curThreadSize = " + this.f58586j + ", curThreadListSize = " + this.f58581e.size()}, true);
        } else {
            DownloadRange downloadRange3 = new DownloadRange();
            String resourceId3 = this.f58579c.getResourceId();
            downloadRange3.setThreadId(resourceId3 != null ? resourceId3.hashCode() : 0);
            Long size3 = this.f58579c.getSize();
            downloadRange3.setRangeId(s.a(size3 != null ? size3.longValue() : 1L));
            downloadRange3.setResourceId(this.f58579c.getResourceId());
            downloadRange3.setStart(0L);
            Long size4 = this.f58579c.getSize();
            downloadRange3.setEnd((size4 != null ? size4.longValue() : 1L) - 1);
            this.f58579c.getDownloadRanges().add(downloadRange3);
            DownloadRunnable downloadRunnable2 = new DownloadRunnable(downloadRange3, this.f58578b, 0, this.f58577a, this.f58580d, this.f58579c, this);
            downloadRange3.setDownloading(true);
            DownloadExecutor.f58633a.b().e(downloadRunnable2);
            this.f58581e.add(downloadRunnable2);
            this.f58586j.getAndIncrement();
        }
        this.f58579c.setStatus(2);
        this.f58577a.a(this.f58579c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E() {
        DownloadUtil downloadUtil = DownloadUtil.f59900a;
        if (downloadUtil.i(this.f58579c)) {
            ry.e.f74755c.a().k(this.f58579c, null);
            lg.a.f68839a.p("download", new String[]{"startDownload, 资源有问题，需要从头下载"}, true);
            downloadUtil.H(this.f58579c);
        }
        this.f58579c.setRestartDownloadCount(0);
        if (r()) {
            e();
            return;
        }
        if (!this.f58579c.getDownloadRanges().isEmpty()) {
            lg.a.f68839a.p("download", new String[]{"DownloadTaskImpl has task, do not check, name = " + this.f58579c.getName()}, true);
            com.transsnet.downloader.core.task.c cVar = this.f58582f;
            if (cVar != null) {
                cVar.c(this.f58579c, false);
            }
            if (this.f58579c.getIsDownloadingPlay()) {
                z();
            } else {
                x();
            }
            this.f58579c.setStatus(2);
            this.f58577a.a(this.f58579c);
            return;
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        c0828a.c("download", "stat new task, name = " + this.f58579c.getName(), true);
        String path = this.f58579c.getPath();
        if (path == null || path.length() == 0) {
            DownloadBean downloadBean = this.f58579c;
            downloadBean.setPath(downloadUtil.s(downloadBean));
            c0828a.p("download", new String[]{"DownloadTaskImpl 新任务, set download path, path = " + this.f58579c.getPath()}, true);
        }
        if (this.f58579c.getDownloadHeaderSize() <= 0) {
            DownloadBean downloadBean2 = this.f58579c;
            downloadBean2.setDownloadHeaderSize(downloadUtil.o(downloadBean2));
        }
        s();
    }

    private final void F(List list) {
        t(list);
        k.d(o0.a(y0.b()), null, null, new DownloadTaskImpl$updateDBRanges$1(this, list, null), 3, null);
    }

    private final synchronized boolean r() {
        if (this.f58579c.getDownloadRanges().isEmpty()) {
            return false;
        }
        Iterator<T> it = this.f58579c.getDownloadRanges().iterator();
        while (it.hasNext()) {
            if (!((DownloadRange) it.next()).isRangeDownloadSuccess()) {
                return false;
            }
        }
        return true;
    }

    private final void s() {
        new DownloadFileInfoTask().b(this.f58579c, new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t(List list) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(list);
        if (arrayList.size() > 1) {
            CollectionsKt.A(arrayList, new Comparator() { // from class: com.transsnet.downloader.core.DownloadTaskImpl$checkLastRange$lambda$17$$inlined$sortBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t11, T t12) {
                    return ComparisonsKt.d(Long.valueOf(((DownloadRange) t11).getStart()), Long.valueOf(((DownloadRange) t12).getStart()));
                }
            });
        }
        list.clear();
        list.addAll(arrayList);
        if (list.isEmpty()) {
            return;
        }
        DownloadRange downloadRange = (DownloadRange) CollectionsKt.u0(list);
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, this.f58588l, "----checkLastRange, lastEnd =  " + downloadRange.getEnd() + "， end = " + this.f58579c.getSize(), false, 4, null);
        long end = downloadRange.getEnd();
        Long size = this.f58579c.getSize();
        if (end < (size != null ? size.longValue() : 1L) - 1) {
            lg.a.C0828a.f(c0828a, this.f58588l, "----checkLastRange, lost, add new range", false, 4, null);
            long end2 = downloadRange.getEnd() + 1;
            Long size2 = this.f58579c.getSize();
            long jLongValue = (size2 != null ? size2.longValue() : 1L) - 1;
            DownloadRange downloadRange2 = new DownloadRange();
            downloadRange2.setThreadId(downloadRange.getThreadId());
            downloadRange2.setRangeId(s.a(end2 + jLongValue));
            downloadRange2.setResourceId(downloadRange.getResourceId());
            downloadRange2.setStart(end2);
            downloadRange2.setEnd(jLongValue);
            downloadRange2.setProgress(0L);
            list.add(downloadRange2);
        }
    }

    private final long u() {
        com.transsnet.downloader.core.task.c cVar;
        ArrayList<DownloadRange> arrayList = new ArrayList();
        if (!this.f58579c.getDownloadRanges().isEmpty()) {
            arrayList.addAll(this.f58579c.getDownloadRanges());
        }
        AtomicLong atomicLong = new AtomicLong(0L);
        for (DownloadRange downloadRange : arrayList) {
            if (!downloadRange.getReDownload() && downloadRange.getProgress() > 0) {
                atomicLong.getAndAdd(downloadRange.getProgress());
            }
        }
        long j11 = atomicLong.get();
        synchronized (this) {
            try {
                this.f58579c.setProgress(j11);
                if (this.f58579c.getIsPreDownload() && j11 >= 5242880 && (cVar = this.f58582f) != null) {
                    cVar.I(this.f58579c);
                }
                lg.a.C0828a.f(lg.a.f68839a, "DownloadThread", "------------total size =" + this.f58579c.getSize() + " progress " + j11 + ", isPreDownload = " + this.f58579c.getIsPreDownload(), false, 4, null);
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return j11;
    }

    private final List v(int i11, List list) {
        long j11;
        boolean z10;
        long j12;
        DownloadRange downloadRange;
        ArrayList arrayList;
        long j13;
        long j14;
        DownloadTaskImpl downloadTaskImpl = this;
        int i12 = i11;
        ArrayList arrayList2 = new ArrayList();
        ArrayList<DownloadRange> arrayList3 = new ArrayList();
        arrayList3.addAll(downloadTaskImpl.f58579c.getDownloadRanges());
        for (DownloadRange downloadRange2 : arrayList3) {
            if (!downloadRange2.isRangeDownloadSuccess() && !downloadRange2.getIsDownloading()) {
                if (list == null || !list.contains(downloadRange2)) {
                    if (downloadRange2.getEnd() > downloadTaskImpl.f58579c.getDownloadHeaderSize() && downloadRange2.getRangeSize() - downloadRange2.getProgress() > downloadTaskImpl.f58580d.g()) {
                        lg.a.C0828a c0828a = lg.a.f68839a;
                        c0828a.c("download", "分片不够,切多个,count = " + i12 + "， rangeId = " + downloadRange2.getRangeId() + ",start =  " + downloadRange2.getStart() + ",end = " + downloadRange2.getEnd() + "，progress = " + downloadRange2.getProgress(), true);
                        long progress = downloadRange2.getProgress();
                        long start = downloadRange2.getStart() + progress;
                        ArrayList arrayList4 = new ArrayList();
                        String str = ", start = ";
                        if (progress > 0) {
                            long start2 = downloadRange2.getStart();
                            long j15 = start - 1;
                            DownloadRange downloadRange3 = new DownloadRange();
                            downloadRange3.setThreadId(downloadRange2.getThreadId());
                            downloadRange3.setRangeId(s.a(start2 + j15));
                            downloadRange3.setResourceId(downloadRange2.getResourceId());
                            downloadRange3.setStart(start2);
                            downloadRange3.setEnd(j15);
                            j11 = progress;
                            downloadRange3.setProgress(j11);
                            c0828a.p("download", new String[]{"当前分片已有下载内容 downloadedSize = " + j11 + " 直接将已下载的生成一个独立分片，rangeId = " + downloadRange3.getRangeId() + ", start = " + downloadRange3.getStart() + ",end = " + downloadRange3.getEnd() + ",success = " + downloadRange3.isRangeDownloadSuccess()}, true);
                            arrayList4.add(downloadRange3);
                        } else {
                            j11 = progress;
                        }
                        int i13 = i11;
                        long rangeSize = (downloadRange2.getRangeSize() - j11) / ((long) i13);
                        DownloadTaskImpl downloadTaskImpl2 = this;
                        if (rangeSize > downloadTaskImpl2.f58580d.g()) {
                            rangeSize = downloadTaskImpl2.f58580d.g();
                            z10 = false;
                        } else {
                            z10 = true;
                        }
                        long end = downloadRange2.getEnd();
                        int i14 = 0;
                        long j16 = 0;
                        while (i14 < i13) {
                            long j17 = start + (((long) i14) * rangeSize);
                            long jLongValue = (j17 + rangeSize) - 1;
                            if (z10) {
                                j12 = rangeSize;
                                if (i14 == i13 - 1 && jLongValue < end) {
                                    jLongValue = end;
                                }
                            } else {
                                j12 = rangeSize;
                            }
                            Long size = downloadTaskImpl2.f58579c.getSize();
                            if (jLongValue >= (size != null ? size.longValue() : 1L)) {
                                Long size2 = downloadTaskImpl2.f58579c.getSize();
                                jLongValue = (size2 != null ? size2.longValue() : 1L) - 1;
                            }
                            if (!z10) {
                                downloadRange = downloadRange2;
                                long j18 = end;
                                arrayList = arrayList2;
                                j13 = start;
                                j14 = j18;
                                DownloadRange downloadRange4 = new DownloadRange();
                                downloadRange4.setThreadId(downloadRange.getThreadId());
                                downloadRange4.setRangeId(s.a(j17 + jLongValue));
                                downloadRange4.setResourceId(downloadRange.getResourceId());
                                downloadRange4.setStart(j17);
                                downloadRange4.setEnd(jLongValue);
                                downloadRange4.setProgress(0L);
                                lg.a.f68839a.c("download", "分片不够, 没瓜分完 新分片------rangeId = " + downloadRange4.getRangeId() + ",start = " + j17 + ",end = " + jLongValue, true);
                                arrayList.add(downloadRange4);
                                arrayList4.add(downloadRange4);
                            } else if (i14 == 0) {
                                lg.a.C0828a c0828a2 = lg.a.f68839a;
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("分片不够, 瓜分完了 第一个使用原始分片，更改 start = ");
                                long j19 = start;
                                sb2.append(j19);
                                j14 = end;
                                sb2.append(" end1 = ");
                                sb2.append(jLongValue);
                                c0828a2.c("download", sb2.toString(), true);
                                downloadRange = downloadRange2;
                                downloadRange.setStart(j19);
                                downloadRange.setEnd(jLongValue);
                                downloadRange.setProgress(0L);
                                downloadRange.setDownloading(false);
                                arrayList = arrayList2;
                                arrayList.add(downloadRange);
                                j13 = j19;
                            } else {
                                downloadRange = downloadRange2;
                                long j20 = end;
                                arrayList = arrayList2;
                                j13 = start;
                                j14 = j20;
                                DownloadRange downloadRange5 = new DownloadRange();
                                downloadRange5.setThreadId(downloadRange.getThreadId());
                                downloadRange5.setRangeId(s.a(j17 + jLongValue));
                                downloadRange5.setResourceId(downloadRange.getResourceId());
                                downloadRange5.setStart(j17);
                                downloadRange5.setEnd(jLongValue);
                                downloadRange5.setProgress(0L);
                                lg.a.f68839a.c("download", "分片不够, 瓜分完了 新分片------rangeId = " + downloadRange5.getRangeId() + ",start = " + j17 + ",end = " + jLongValue, true);
                                arrayList.add(downloadRange5);
                                arrayList4.add(downloadRange5);
                            }
                            i14++;
                            downloadTaskImpl2 = this;
                            i13 = i11;
                            z10 = z10;
                            j16 = jLongValue;
                            str = str;
                            long j21 = j13;
                            downloadRange2 = downloadRange;
                            arrayList2 = arrayList;
                            end = j14;
                            start = j21;
                            rangeSize = j12;
                        }
                        String str2 = str;
                        ArrayList arrayList5 = arrayList2;
                        DownloadRange downloadRange6 = downloadRange2;
                        if (!z10) {
                            downloadRange6.setStart(j16 + 1);
                            downloadRange6.setDownloading(false);
                            downloadRange6.setProgress(0L);
                            lg.a.f68839a.c("download", "原始分片 =  id = " + downloadRange6.getRangeId() + str2 + downloadRange6.getStart(), true);
                        }
                        if (!arrayList4.isEmpty()) {
                            this.f58579c.getDownloadRanges().addAll(arrayList4);
                        }
                        F(this.f58579c.getDownloadRanges());
                        return arrayList5;
                    }
                    ArrayList arrayList6 = arrayList2;
                    DownloadTaskImpl downloadTaskImpl3 = downloadTaskImpl;
                    if (arrayList6.size() >= i11) {
                        return arrayList6;
                    }
                    lg.a.f68839a.c("download", "---多线程, 分片小于range大小， 头文件 = " + (downloadRange2.getEnd() <= downloadTaskImpl3.f58579c.getDownloadHeaderSize()), true);
                    arrayList6.add(downloadRange2);
                    downloadTaskImpl = downloadTaskImpl3;
                    arrayList2 = arrayList6;
                    i12 = i11;
                }
            }
        }
        return arrayList2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final n0 w() {
        return (n0) this.f58589m.getValue();
    }

    private final void x() {
        lg.a.f68839a.p("download", new String[]{"开始下载--多线程"}, true);
        ArrayList<DownloadRange> arrayList = new ArrayList();
        List<DownloadRange> downloadRanges = this.f58579c.getDownloadRanges();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(downloadRanges);
        if (arrayList2.size() > 1) {
            CollectionsKt.A(arrayList2, new Comparator() { // from class: com.transsnet.downloader.core.DownloadTaskImpl$handleMultithreadingDownloadOnly$lambda$3$lambda$2$$inlined$sortBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t11, T t12) {
                    return ComparisonsKt.d(Long.valueOf(((DownloadRange) t11).getStart()), Long.valueOf(((DownloadRange) t12).getStart()));
                }
            });
        }
        downloadRanges.clear();
        downloadRanges.addAll(arrayList2);
        for (DownloadRange downloadRange : this.f58579c.getDownloadRanges()) {
            downloadRange.setDownloading(false);
            if (arrayList.size() < this.f58580d.f() && !downloadRange.isRangeDownloadSuccess() && downloadRange.getRangeSize() <= this.f58580d.g()) {
                lg.a.f68839a.p("download", new String[]{"添加下载分片,rangeId = " + downloadRange.getRangeId() + ",start =  " + downloadRange.getStart() + ",end = " + downloadRange.getEnd() + "， progress = " + downloadRange.getProgress() + " "}, true);
                arrayList.add(downloadRange);
            }
        }
        if (arrayList.size() < this.f58580d.f()) {
            arrayList.addAll(v(this.f58580d.f() - arrayList.size(), arrayList));
        }
        int i11 = this.f58586j.get() - 1;
        this.f58586j.addAndGet(arrayList.size());
        for (DownloadRange downloadRange2 : arrayList) {
            i11++;
            DownloadRunnable downloadRunnable = new DownloadRunnable(downloadRange2, this.f58578b, i11, this.f58577a, this.f58580d, this.f58579c, this);
            lg.a.f68839a.p(this.f58588l, new String[]{"----多线程下载开始, rangeId =  " + downloadRange2.getRangeId() + ", curSize= " + i11 + "，status = " + this.f58579c.getStatus()}, true);
            downloadRange2.setDownloading(true);
            DownloadExecutor.f58633a.b().e(downloadRunnable);
            this.f58581e.add(downloadRunnable);
        }
    }

    private final void y(int i11) {
        lg.a.C0828a.f(lg.a.f68839a, this.f58588l, "2---handleNextRangeDownload", false, 4, null);
        ArrayList<DownloadRange> arrayList = new ArrayList();
        arrayList.addAll(this.f58579c.getDownloadRanges());
        for (DownloadRange downloadRange : arrayList) {
            if (!downloadRange.isRangeDownloadSuccess()) {
                lg.a.C0828a.f(lg.a.f68839a, this.f58588l, "2---rangeId = " + downloadRange.getRangeId() + ", isDownloading = " + downloadRange.getIsDownloading(), false, 4, null);
            }
            if (!downloadRange.getIsDownloading() && !downloadRange.isRangeDownloadSuccess()) {
                if (!this.f58579c.getIsDownloadingPlay() && downloadRange.getRangeSize() - downloadRange.getProgress() > this.f58580d.g()) {
                    lg.a.f68839a.c(this.f58588l, "onRangeSuccess 这个分片太大，需要切成小分片", true);
                    long progress = downloadRange.getProgress() + downloadRange.getStart() + this.f58580d.g() + 1;
                    long end = downloadRange.getEnd();
                    DownloadRange downloadRange2 = new DownloadRange();
                    downloadRange2.setThreadId(downloadRange.getThreadId());
                    downloadRange2.setRangeId(s.a(progress + end));
                    downloadRange2.setResourceId(downloadRange.getResourceId());
                    downloadRange2.setStart(progress);
                    downloadRange2.setEnd(end);
                    downloadRange2.setProgress(0L);
                    downloadRange.setEnd(downloadRange2.getStart() - 1);
                    this.f58579c.getDownloadRanges().add(downloadRange2);
                    F(this.f58579c.getDownloadRanges());
                }
                DownloadRunnable downloadRunnable = new DownloadRunnable(downloadRange, this.f58578b, i11, this.f58577a, this.f58580d, this.f58579c, this);
                downloadRange.setDownloading(true);
                lg.a.C0828a.f(lg.a.f68839a, this.f58588l, "2---start single new range tread~ rangeId = " + downloadRange.getRangeId() + ", range.start = " + downloadRange.getStart() + ",range.end = " + downloadRange.getEnd(), false, 4, null);
                this.f58581e.add(downloadRunnable);
                this.f58586j.getAndIncrement();
                DownloadExecutor.f58633a.b().e(downloadRunnable);
                return;
            }
        }
    }

    private final void z() {
        DownloadRange next;
        DownloadRange downloadRange;
        long currentOffset = 0;
        if (this.f58579c.getCurrentOffset() > 0) {
            long currentOffset2 = this.f58579c.getCurrentOffset();
            Long size = this.f58579c.getSize();
            if (currentOffset2 < (size != null ? size.longValue() : 0L) - 1) {
                currentOffset = this.f58579c.getCurrentOffset();
            }
        }
        lg.a.f68839a.p("download", new String[]{"开始下载--边下边播，单线程 subjectId=" + this.f58579c.getSubjectId() + ",resourceId=" + this.f58579c.getResourceId() + ",name=" + this.f58579c.getName() + ",---readProgress = " + this.f58579c.getReadProgress() + ", currentOffset = " + currentOffset + ", ranges size = " + this.f58579c.getDownloadRanges().size()}, true);
        Iterator<DownloadRange> it = this.f58579c.getDownloadRanges().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            lg.a.C0828a c0828a = lg.a.f68839a;
            String str = this.f58588l;
            int rangeId = next.getRangeId();
            long start = next.getStart();
            long end = next.getEnd();
            long progress = next.getProgress();
            StringBuilder sb2 = new StringBuilder();
            Iterator<DownloadRange> it2 = it;
            sb2.append("---rangeId = ");
            sb2.append(rangeId);
            sb2.append(", range.start = ");
            sb2.append(start);
            sb2.append(",range.end = ");
            sb2.append(end);
            sb2.append(", range.progress = ");
            sb2.append(progress);
            lg.a.C0828a.f(c0828a, str, sb2.toString(), false, 4, null);
            next.setDownloading(false);
            long start2 = next.getStart();
            if (currentOffset <= next.getEnd() && start2 <= currentOffset) {
                lg.a.C0828a.f(c0828a, this.f58588l, "0-- get range , rangeId =  " + next.getRangeId(), false, 4, null);
                break;
            }
            it = it2;
        }
        if (next != null && !next.isRangeDownloadSuccess()) {
            downloadRange = next;
            break;
        }
        lg.a.C0828a.f(lg.a.f68839a, this.f58588l, "1--  播放进度的分片已下载完成，则取一个问下载的分片执行下载", false, 4, null);
        Iterator<DownloadRange> it3 = this.f58579c.getDownloadRanges().iterator();
        while (true) {
            if (!it3.hasNext()) {
                downloadRange = next;
                break;
            }
            DownloadRange next2 = it3.next();
            if (!next2.isRangeDownloadSuccess()) {
                lg.a.C0828a.f(lg.a.f68839a, this.f58588l, "2--  取一个问下载的分片执行下载, get range", false, 4, null);
                downloadRange = next2;
                break;
            }
        }
        if (downloadRange == null || downloadRange.isRangeDownloadSuccess()) {
            return;
        }
        lg.a.f68839a.p("download", new String[]{"----------执行未下载的线程"}, true);
        DownloadRunnable downloadRunnable = new DownloadRunnable(downloadRange, this.f58578b, 0, this.f58577a, this.f58580d, this.f58579c, this);
        downloadRange.setDownloading(true);
        DownloadExecutor.f58633a.b().e(downloadRunnable);
        this.f58581e.add(downloadRunnable);
        this.f58586j.getAndIncrement();
    }

    @Override // com.transsnet.downloader.core.thread.d
    public synchronized void a(com.transsnet.downloader.core.thread.f runnable, int i11, DownloadRange curRange) {
        try {
            Intrinsics.h(runnable, "runnable");
            Intrinsics.h(curRange, "curRange");
            int iDecrementAndGet = this.f58586j.get() > 0 ? this.f58586j.decrementAndGet() : 0;
            curRange.setDownloading(false);
            boolean zRemove = this.f58581e.remove(runnable);
            lg.a.C0828a c0828a = lg.a.f68839a;
            lg.a.C0828a.f(c0828a, this.f58588l, "reDownload，result =" + zRemove, false, 4, null);
            if (iDecrementAndGet <= 0) {
                c0828a.p("download", new String[]{"重新下载所有线程已经暂停，开始执行新下载"}, true);
                k.d(this.f58587k, null, null, new DownloadTaskImpl$reDownload$1(this, null), 3, null);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.transsnet.downloader.core.task.b
    public DownloadBean b() {
        return this.f58579c;
    }

    @Override // com.transsnet.downloader.core.thread.d
    public synchronized void c(com.transsnet.downloader.core.thread.f runnable, int i11, DownloadRange curRange) {
        try {
            Intrinsics.h(runnable, "runnable");
            Intrinsics.h(curRange, "curRange");
            int iDecrementAndGet = this.f58586j.get() > 0 ? this.f58586j.decrementAndGet() : 0;
            curRange.setDownloading(false);
            this.f58581e.remove(runnable);
            int iF = this.f58580d.f() - iDecrementAndGet;
            lg.a.f68839a.c("download", "边下边播 退出-------执行多线程， threadSize = " + iF, true);
            if (iF > 0) {
                A(iF);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.transsnet.downloader.core.thread.d
    public synchronized void d() {
        int status = this.f58579c.getStatus();
        if (status == 1 || status == 2 || this.f58590n.get() != status) {
            this.f58590n.set(status);
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.f58583g > 1000) {
                long jU = u();
                Long size = this.f58579c.getSize();
                if (jU > (size != null ? size.longValue() : 1L)) {
                    e();
                } else {
                    this.f58579c.setUpdateTimeStamp(Long.valueOf(jCurrentTimeMillis));
                    this.f58577a.a(this.f58579c);
                    this.f58583g = jCurrentTimeMillis;
                }
            }
        }
    }

    @Override // com.transsnet.downloader.core.thread.d
    public synchronized void e() {
        u();
        if (this.f58579c.getStatus() == 5) {
            lg.a.C0828a.f(lg.a.f68839a, this.f58588l, "--------onDownloadSuccess---相同状态，无需重复回调-", false, 4, null);
            return;
        }
        long progress = this.f58579c.getProgress();
        Long size = this.f58579c.getSize();
        if (progress >= (size != null ? size.longValue() : 1L) || r()) {
            DownloadUtil downloadUtil = DownloadUtil.f59900a;
            if (downloadUtil.i(this.f58579c)) {
                ry.e.f74755c.a().k(this.f58579c, null);
                lg.a.C0828a c0828a = lg.a.f68839a;
                c0828a.c("download", "onDownloadSuccess, 资源有问题，需要重新下载，  progress = " + this.f58579c.getProgress(), true);
                this.f58579c.setStatus(0);
                downloadUtil.H(this.f58579c);
                lg.a.C0828a.f(c0828a, "ReDownload", "resetProgress， progress = " + this.f58579c.getProgress(), false, 4, null);
                com.transsnet.downloader.core.task.c cVar = this.f58582f;
                if (cVar != null) {
                    cVar.g(this.f58579c);
                }
                return;
            }
            lg.a.f68839a.c("download", "------------------------------onDownloadSuccess subjectId=" + this.f58579c.getResourceId() + ",resourceId=" + this.f58579c.getResourceId() + "------------------------------", true);
            this.f58579c.setStatus(5);
            this.f58579c.setReportStatus(5);
            this.f58579c.setUpdateTimeStamp(Long.valueOf(System.currentTimeMillis()));
            this.f58577a.a(this.f58579c);
            com.transsnet.downloader.core.task.c cVar2 = this.f58582f;
            if (cVar2 != null) {
                cVar2.b(this.f58579c);
            }
            com.transsnet.downloader.proxy.b bVar = this.f58578b;
            String resourceId = this.f58579c.getResourceId();
            if (resourceId == null) {
                resourceId = this.f58579c.getUrl();
            }
            bVar.i(resourceId);
        }
    }

    @Override // com.transsnet.downloader.core.thread.d
    public synchronized void f(com.transsnet.downloader.core.thread.f runnable, int i11, DownloadRange curRange) {
        try {
            Intrinsics.h(runnable, "runnable");
            Intrinsics.h(curRange, "curRange");
            long jU = u();
            curRange.setDownloading(false);
            lg.a.C0828a c0828a = lg.a.f68839a;
            c0828a.u("download", "======onRangeSuccess, thread = " + Thread.currentThread().getName() + ",rangeId = " + curRange.getRangeId() + ",progress = " + jU + ", resourceId=" + this.f58579c.getResourceId() + ",HeaderSize= " + this.f58579c.getDownloadHeaderSize(), true);
            long jCurrentTimeMillis = System.currentTimeMillis();
            Long size = this.f58579c.getSize();
            if (jU > (size != null ? size.longValue() : 1L)) {
                e();
                return;
            }
            this.f58579c.setUpdateTimeStamp(Long.valueOf(System.currentTimeMillis()));
            this.f58577a.a(this.f58579c);
            this.f58583g = jCurrentTimeMillis;
            int iDecrementAndGet = this.f58586j.get() > 0 ? this.f58586j.decrementAndGet() : 0;
            this.f58581e.remove(runnable);
            if (jU < this.f58579c.getDownloadHeaderSize() && iDecrementAndGet > 0) {
                c0828a.p("download", new String[]{"=======onRangeSuccess header not success, wait, downloadProgress = " + jU}, true);
                return;
            }
            if (Math.abs(jU - this.f58579c.getDownloadHeaderSize()) < lj.b.f68866a.d()) {
                c0828a.c("download", "onRangeSuccess,  文件头下载完成，执行多线程", true);
            }
            int iF = iDecrementAndGet < this.f58580d.f() ? this.f58580d.f() - iDecrementAndGet : 0;
            c0828a.c("download", "allSize= " + this.f58580d.f() + ",curThreadSize = " + iDecrementAndGet + ",resourceId=" + this.f58579c.getResourceId() + "," + this.f58581e.size() + ",threadSize = " + iF, true);
            if (iF > 1 && !this.f58579c.getIsDownloadingPlay()) {
                A(iF);
            } else if (this.f58579c.getIsDownloadingPlay() && iDecrementAndGet > 2) {
                c0828a.c("download", "resourceId=" + this.f58579c.getResourceId() + " 当前边下边播 还是多线程，移除该线程，等待最后一个单线程下载", true);
            } else if (this.f58579c.getIsDownloadingPlay()) {
                c0828a.c("download", "resourceId=" + this.f58579c.getResourceId() + " 当前边下边播 ,单线程下载，不去切分片---", true);
                C(i11);
            } else {
                y(i11);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.transsnet.downloader.core.task.b
    public void start() {
        if (!m.f70474a.e()) {
            this.f58577a.b(this.f58579c, new DownloadException(9, DownloadException.EXCEPTION_MESSAGE_NO_NET));
        } else if (this.f58579c.getDownloadRanges().isEmpty()) {
            k.d(this.f58587k, null, null, new AnonymousClass1(null), 3, null);
        } else {
            k.d(this.f58587k, null, null, new AnonymousClass2(null), 3, null);
        }
    }
}
