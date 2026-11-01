package com.transsnet.downloader.core;

import android.app.Application;
import androidx.collection.s;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.DownloadException;
import com.transsion.baselib.db.download.DownloadRange;
import com.transsnet.downloader.core.task.DownloadFileInfoTask;
import com.transsnet.downloader.core.task.DownloadTaskUtil;
import com.transsnet.downloader.core.thread.DownloadExecutor;
import com.transsnet.downloader.core.thread.DownloadRunnable;
import com.transsnet.downloader.util.DownloadUtil;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import nh.m;

/* JADX INFO: loaded from: classes7.dex */
public final class DownloadTaskImpl2 implements com.transsnet.downloader.core.task.b, com.transsnet.downloader.core.thread.d {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final a f58595n = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.transsnet.downloader.core.c f58596a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.transsnet.downloader.proxy.b f58597b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final DownloadBean f58598c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final oy.c f58599d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.transsnet.downloader.core.task.c f58600e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f58601f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private AtomicInteger f58602g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List f58603h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private AtomicLong f58604i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private n0 f58605j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Lazy f58606k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final AtomicInteger f58607l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final c f58608m;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class b implements com.transsnet.downloader.core.task.a {
        b() {
        }

        @Override // com.transsnet.downloader.core.task.a
        public Object a(boolean z10, long j11, Continuation continuation) throws Throwable {
            Object objZ = DownloadTaskImpl2.this.z(continuation);
            return objZ == IntrinsicsKt.f() ? objZ : Unit.f67061a;
        }
    }

    public static final class c implements com.transsnet.downloader.proxy.c {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit c(com.transsnet.downloader.core.thread.f fVar, DownloadTaskImpl2 downloadTaskImpl2, DownloadRange downloadRange, DownloadRange downloadRange2, int i11) {
            fVar.removeBreakCallback();
            downloadTaskImpl2.f58603h.remove(fVar);
            lg.a.C0828a c0828a = lg.a.f68839a;
            lg.a.C0828a.v(c0828a, "DownloadThread", "beak success, start new thread", false, 4, null);
            long progress = downloadTaskImpl2.f58598c.getProgress();
            Integer numValueOf = downloadRange != null ? Integer.valueOf(downloadRange.getRangeId()) : null;
            Long lValueOf = downloadRange != null ? Long.valueOf(downloadRange.getStart()) : null;
            Long lValueOf2 = downloadRange != null ? Long.valueOf(downloadRange.getEnd()) : null;
            Long lValueOf3 = downloadRange != null ? Long.valueOf(downloadRange.getProgress()) : null;
            c0828a.u("download", StringsKt.n("download&play start new thread, totalProgress = " + progress + "\n                        oldRangeId:" + numValueOf + ", start:" + lValueOf + ", end:" + lValueOf2 + ", progress:" + lValueOf3 + " \n                        newRangeId:" + downloadRange2.getRangeId() + ", start:" + downloadRange2.getStart() + ", end:" + downloadRange2.getEnd() + ", progress:" + downloadRange2.getProgress() + " \n                    "), true);
            downloadTaskImpl2.y(downloadRange2, i11);
            return Unit.f67061a;
        }

        @Override // com.transsnet.downloader.proxy.c
        public void a(String str, final int i11, final DownloadRange downloadRange, final DownloadRange range) {
            Intrinsics.h(range, "range");
            if (Intrinsics.c(str, DownloadTaskImpl2.this.f58598c.getResourceId())) {
                if (range.isRangeDownloadSuccess()) {
                    lg.a.f68839a.u("download", "download&play, range download success， do nothing", true);
                } else {
                    if (DownloadTaskImpl2.this.f58603h.isEmpty()) {
                        lg.a.C0828a.v(lg.a.f68839a, "DownloadThread", "download&play, thread null", false, 4, null);
                        return;
                    }
                    final com.transsnet.downloader.core.thread.f fVar = (com.transsnet.downloader.core.thread.f) DownloadTaskImpl2.this.f58603h.get(DownloadTaskImpl2.this.f58603h.size() - 1);
                    final DownloadTaskImpl2 downloadTaskImpl2 = DownloadTaskImpl2.this;
                    fVar.pause(new Function0() { // from class: com.transsnet.downloader.core.h
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return DownloadTaskImpl2.c.c(fVar, downloadTaskImpl2, downloadRange, range, i11);
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.transsnet.downloader.core.DownloadTaskImpl2$start$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.core.DownloadTaskImpl2$start$1", f = "DownloadTaskImpl2.kt", l = {107, Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE, 134}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DownloadTaskImpl2.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Code duplicated, block: B:32:0x00b0  */
        /* JADX WARN: Code duplicated, block: B:34:0x00c4  */
        /* JADX WARN: Code duplicated, block: B:36:0x00f0  */
        /* JADX WARN: Code duplicated, block: B:38:0x010f  */
        /* JADX WARN: Code duplicated, block: B:40:0x0148  */
        /* JADX WARN: Code duplicated, block: B:43:0x0165  */
        /* JADX WARN: Code duplicated, block: B:46:0x017b A[RETURN] */
        /* JADX WARN: Instruction removed from duplicated block: B:34:0x00c4, please report this as an issue */
        /* JADX WARN: Instruction removed from duplicated block: B:38:0x010f, please report this as an issue */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            DownloadTaskImpl2 downloadTaskImpl2;
            List arrayList;
            com.transsnet.downloader.core.task.c cVar;
            DownloadTaskImpl2 downloadTaskImpl3;
            com.transsnet.downloader.core.task.c cVar2;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                String resourceId = DownloadTaskImpl2.this.f58598c.getResourceId();
                if (resourceId != null) {
                    downloadTaskImpl2 = DownloadTaskImpl2.this;
                    lj.n0 n0VarT = downloadTaskImpl2.t();
                    this.L$0 = downloadTaskImpl2;
                    this.label = 1;
                    obj = n0VarT.c(resourceId, this);
                    if (obj == objF) {
                        return objF;
                    }
                } else if (DownloadTaskImpl2.this.f58598c.getDownloadRanges().isEmpty()) {
                    lg.a.f68839a.c("download", "DownloadTask2 stat new task, name = " + DownloadTaskImpl2.this.f58598c.getName(), true);
                    DownloadTaskUtil.f58629a.e(DownloadTaskImpl2.this.f58598c);
                    if (DownloadTaskImpl2.this.f58598c.getDownloadHeaderSize() <= 0) {
                        DownloadTaskImpl2.this.f58598c.setDownloadHeaderSize(DownloadUtil.f59900a.o(DownloadTaskImpl2.this.f58598c));
                    }
                    cVar = DownloadTaskImpl2.this.f58600e;
                    if (cVar != null) {
                        cVar.c(DownloadTaskImpl2.this.f58598c, true);
                    }
                    downloadTaskImpl3 = DownloadTaskImpl2.this;
                    this.L$0 = null;
                    this.label = 3;
                    if (downloadTaskImpl3.s(this) == objF) {
                        return objF;
                    }
                } else {
                    lg.a.f68839a.p("download", new String[]{"DownloadTask2 has task, name = " + DownloadTaskImpl2.this.f58598c.getName()}, true);
                    cVar2 = DownloadTaskImpl2.this.f58600e;
                    if (cVar2 != null) {
                        cVar2.c(DownloadTaskImpl2.this.f58598c, false);
                    }
                    DownloadTaskImpl2.this.u();
                    DownloadTaskImpl2.this.f58596a.a(DownloadTaskImpl2.this.f58598c);
                }
                return Unit.f67061a;
            }
            if (i11 == 1) {
                downloadTaskImpl2 = (DownloadTaskImpl2) this.L$0;
                ResultKt.b(obj);
            } else if (i11 == 2) {
                downloadTaskImpl2 = (DownloadTaskImpl2) this.L$0;
                ResultKt.b(obj);
                arrayList = (List) obj;
                Boxing.a(downloadTaskImpl2.f58598c.getDownloadRanges().addAll(arrayList));
                if (DownloadTaskImpl2.this.f58598c.getDownloadRanges().isEmpty()) {
                    lg.a.f68839a.p("download", new String[]{"DownloadTask2 has task, name = " + DownloadTaskImpl2.this.f58598c.getName()}, true);
                    cVar2 = DownloadTaskImpl2.this.f58600e;
                    if (cVar2 != null) {
                        cVar2.c(DownloadTaskImpl2.this.f58598c, false);
                    }
                    DownloadTaskImpl2.this.u();
                    DownloadTaskImpl2.this.f58596a.a(DownloadTaskImpl2.this.f58598c);
                } else {
                    lg.a.f68839a.c("download", "DownloadTask2 stat new task, name = " + DownloadTaskImpl2.this.f58598c.getName(), true);
                    DownloadTaskUtil.f58629a.e(DownloadTaskImpl2.this.f58598c);
                    if (DownloadTaskImpl2.this.f58598c.getDownloadHeaderSize() <= 0) {
                        DownloadTaskImpl2.this.f58598c.setDownloadHeaderSize(DownloadUtil.f59900a.o(DownloadTaskImpl2.this.f58598c));
                    }
                    cVar = DownloadTaskImpl2.this.f58600e;
                    if (cVar != null) {
                        cVar.c(DownloadTaskImpl2.this.f58598c, true);
                    }
                    downloadTaskImpl3 = DownloadTaskImpl2.this;
                    this.L$0 = null;
                    this.label = 3;
                    if (downloadTaskImpl3.s(this) == objF) {
                        return objF;
                    }
                }
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
            List list = (List) obj;
            if (list != null) {
                arrayList = new ArrayList();
                arrayList.addAll(list);
                Long size = downloadTaskImpl2.f58598c.getSize();
                long jLongValue = ((size != null ? size.longValue() : 0L) / downloadTaskImpl2.f58601f) + 1;
                int size2 = arrayList.size();
                if (!arrayList.isEmpty() && jLongValue > size2) {
                    DownloadTaskUtil downloadTaskUtil = DownloadTaskUtil.f58629a;
                    long j11 = downloadTaskImpl2.f58601f;
                    DownloadBean downloadBean = downloadTaskImpl2.f58598c;
                    this.L$0 = downloadTaskImpl2;
                    this.label = 2;
                    obj = downloadTaskUtil.d(j11, downloadBean, arrayList, this);
                    if (obj == objF) {
                        return objF;
                    }
                    arrayList = (List) obj;
                }
                Boxing.a(downloadTaskImpl2.f58598c.getDownloadRanges().addAll(arrayList));
                if (DownloadTaskImpl2.this.f58598c.getDownloadRanges().isEmpty()) {
                    lg.a.f68839a.p("download", new String[]{"DownloadTask2 has task, name = " + DownloadTaskImpl2.this.f58598c.getName()}, true);
                    cVar2 = DownloadTaskImpl2.this.f58600e;
                    if (cVar2 != null) {
                        cVar2.c(DownloadTaskImpl2.this.f58598c, false);
                    }
                    DownloadTaskImpl2.this.u();
                    DownloadTaskImpl2.this.f58596a.a(DownloadTaskImpl2.this.f58598c);
                } else {
                    lg.a.f68839a.c("download", "DownloadTask2 stat new task, name = " + DownloadTaskImpl2.this.f58598c.getName(), true);
                    DownloadTaskUtil.f58629a.e(DownloadTaskImpl2.this.f58598c);
                    if (DownloadTaskImpl2.this.f58598c.getDownloadHeaderSize() <= 0) {
                        DownloadTaskImpl2.this.f58598c.setDownloadHeaderSize(DownloadUtil.f59900a.o(DownloadTaskImpl2.this.f58598c));
                    }
                    cVar = DownloadTaskImpl2.this.f58600e;
                    if (cVar != null) {
                        cVar.c(DownloadTaskImpl2.this.f58598c, true);
                    }
                    downloadTaskImpl3 = DownloadTaskImpl2.this;
                    this.L$0 = null;
                    this.label = 3;
                    if (downloadTaskImpl3.s(this) == objF) {
                        return objF;
                    }
                }
            } else if (DownloadTaskImpl2.this.f58598c.getDownloadRanges().isEmpty()) {
                lg.a.f68839a.p("download", new String[]{"DownloadTask2 has task, name = " + DownloadTaskImpl2.this.f58598c.getName()}, true);
                cVar2 = DownloadTaskImpl2.this.f58600e;
                if (cVar2 != null) {
                    cVar2.c(DownloadTaskImpl2.this.f58598c, false);
                }
                DownloadTaskImpl2.this.u();
                DownloadTaskImpl2.this.f58596a.a(DownloadTaskImpl2.this.f58598c);
            } else {
                lg.a.f68839a.c("download", "DownloadTask2 stat new task, name = " + DownloadTaskImpl2.this.f58598c.getName(), true);
                DownloadTaskUtil.f58629a.e(DownloadTaskImpl2.this.f58598c);
                if (DownloadTaskImpl2.this.f58598c.getDownloadHeaderSize() <= 0) {
                    DownloadTaskImpl2.this.f58598c.setDownloadHeaderSize(DownloadUtil.f59900a.o(DownloadTaskImpl2.this.f58598c));
                }
                cVar = DownloadTaskImpl2.this.f58600e;
                if (cVar != null) {
                    cVar.c(DownloadTaskImpl2.this.f58598c, true);
                }
                downloadTaskImpl3 = DownloadTaskImpl2.this;
                this.L$0 = null;
                this.label = 3;
                if (downloadTaskImpl3.s(this) == objF) {
                    return objF;
                }
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsnet.downloader.core.DownloadTaskImpl2$start$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.core.DownloadTaskImpl2$start$2", f = "DownloadTaskImpl2.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DownloadTaskImpl2.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            lg.a.f68839a.p("download", new String[]{"DownloadTask2 has task, name = " + DownloadTaskImpl2.this.f58598c.getName()}, true);
            com.transsnet.downloader.core.task.c cVar = DownloadTaskImpl2.this.f58600e;
            if (cVar != null) {
                cVar.c(DownloadTaskImpl2.this.f58598c, false);
            }
            DownloadTaskImpl2.this.u();
            DownloadTaskImpl2.this.f58596a.a(DownloadTaskImpl2.this.f58598c);
            return Unit.f67061a;
        }
    }

    public DownloadTaskImpl2(com.transsnet.downloader.core.c downloadResponse, com.transsnet.downloader.proxy.b proxyHelper, DownloadBean downloadBean, oy.c config, com.transsnet.downloader.core.task.c cVar) {
        Intrinsics.h(downloadResponse, "downloadResponse");
        Intrinsics.h(proxyHelper, "proxyHelper");
        Intrinsics.h(downloadBean, "downloadBean");
        Intrinsics.h(config, "config");
        this.f58596a = downloadResponse;
        this.f58597b = proxyHelper;
        this.f58598c = downloadBean;
        this.f58599d = config;
        this.f58600e = cVar;
        this.f58601f = config.g();
        this.f58602g = new AtomicInteger(0);
        this.f58603h = new ArrayList();
        this.f58604i = new AtomicLong(System.currentTimeMillis());
        this.f58605j = o0.a(y0.b());
        this.f58606k = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.core.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DownloadTaskImpl2.x();
            }
        });
        this.f58607l = new AtomicInteger(0);
        c cVar2 = new c();
        this.f58608m = cVar2;
        String resourceId = downloadBean.getResourceId();
        proxyHelper.a(resourceId == null ? downloadBean.getUrl() : resourceId, cVar2);
    }

    private final synchronized boolean r() {
        if (this.f58598c.getDownloadRanges().isEmpty()) {
            return false;
        }
        Iterator<T> it = this.f58598c.getDownloadRanges().iterator();
        while (it.hasNext()) {
            if (!((DownloadRange) it.next()).isRangeDownloadSuccess()) {
                return false;
            }
        }
        lg.a.f68839a.c("download", "checkAllThreadStatus success", true);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object s(Continuation continuation) {
        new DownloadFileInfoTask().b(this.f58598c, new b());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final lj.n0 t() {
        return (lj.n0) this.f58606k.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u() {
        int i11;
        DownloadTaskUtil.f58629a.e(this.f58598c);
        if (this.f58598c.getDownloadHeaderSize() <= 0) {
            DownloadBean downloadBean = this.f58598c;
            downloadBean.setDownloadHeaderSize(DownloadUtil.f59900a.o(downloadBean));
        }
        int i12 = 1;
        lg.a.f68839a.p("download", new String[]{"已有任务 开始下载--多线程, isPreDownload:" + this.f58598c.getIsPreDownload()}, true);
        this.f58598c.setStatus(2);
        ArrayList<DownloadRange> arrayList = new ArrayList();
        int iF = this.f58598c.getIsDownloadingPlay() ? 2 : this.f58599d.f();
        Iterator<DownloadRange> it = this.f58598c.getDownloadRanges().iterator();
        while (true) {
            if (!it.hasNext()) {
                i11 = i12;
                break;
            }
            DownloadRange next = it.next();
            next.setDownloading(false);
            if (!next.isRangeDownloadSuccess()) {
                lg.a.C0828a c0828a = lg.a.f68839a;
                int rangeId = next.getRangeId();
                long start = next.getStart();
                long end = next.getEnd();
                long progress = next.getProgress();
                boolean isDownloadingPlay = this.f58598c.getIsDownloadingPlay();
                StringBuilder sb2 = new StringBuilder();
                Iterator<DownloadRange> it2 = it;
                sb2.append("添加下载分片,rangeId:");
                sb2.append(rangeId);
                sb2.append(", start:");
                sb2.append(start);
                sb2.append(", end:");
                sb2.append(end);
                sb2.append(", progress:");
                sb2.append(progress);
                sb2.append(", dp:");
                sb2.append(isDownloadingPlay);
                sb2.append(" ");
                i11 = 1;
                c0828a.p("download", new String[]{sb2.toString()}, true);
                arrayList.add(next);
                if (arrayList.size() >= iF) {
                    break;
                }
                i12 = 1;
                it = it2;
            }
        }
        int i13 = this.f58602g.get() - i11;
        this.f58602g.addAndGet(arrayList.size());
        for (DownloadRange downloadRange : arrayList) {
            lg.a.f68839a.p("download", new String[]{"----多线程下载开始, rangeId:" + downloadRange.getRangeId() + ", curSize:" + i13 + "，status:" + this.f58598c.getStatus()}, true);
            i13++;
            y(downloadRange, i13);
        }
    }

    private final void v(int i11) {
        ArrayList arrayList;
        boolean z10;
        Object next;
        int i12 = i11;
        lg.a.f68839a.c("download", "2---handleNextRangeDownload,name:" + this.f58598c.getName() + ", RangesSize:" + this.f58598c.getDownloadRanges().size(), true);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(this.f58598c.getDownloadRanges());
        long currentOffset = 0;
        if (this.f58598c.getCurrentOffset() > 0) {
            long currentOffset2 = this.f58598c.getCurrentOffset();
            Long size = this.f58598c.getSize();
            if (currentOffset2 < (size != null ? size.longValue() : 0L)) {
                currentOffset = this.f58598c.getCurrentOffset();
            }
        }
        Iterator it = arrayList2.iterator();
        boolean z11 = false;
        while (true) {
            if (!it.hasNext()) {
                arrayList = arrayList2;
                z10 = false;
                break;
            }
            DownloadRange downloadRange = (DownloadRange) it.next();
            if (!downloadRange.isRangeDownloadSuccess()) {
                lg.a.C0828a.f(lg.a.f68839a, "download", "2---rangeId:" + downloadRange.getRangeId() + ", isDownloading:" + downloadRange.getIsDownloading() + ",currentOffset:" + currentOffset, false, 4, null);
            }
            if (!downloadRange.isRangeDownloadSuccess() && !downloadRange.getIsDownloading()) {
                if (downloadRange.getEnd() >= currentOffset) {
                    y(downloadRange, i12);
                    lg.a.C0828a c0828a = lg.a.f68839a;
                    int rangeId = downloadRange.getRangeId();
                    long start = downloadRange.getStart();
                    long end = downloadRange.getEnd();
                    long progress = downloadRange.getProgress();
                    StringBuilder sb2 = new StringBuilder();
                    arrayList = arrayList2;
                    sb2.append("2---执行下一个task~ rangeId:");
                    sb2.append(rangeId);
                    sb2.append(", start:");
                    sb2.append(start);
                    sb2.append(",range:");
                    sb2.append(end);
                    sb2.append(",progress:");
                    sb2.append(progress);
                    c0828a.c("download", sb2.toString(), true);
                    this.f58602g.getAndIncrement();
                    z10 = true;
                    break;
                }
                z11 = true;
            } else {
                i12 = i11;
                arrayList2 = arrayList2;
            }
        }
        if (!z11 || z10) {
            return;
        }
        Iterator it2 = arrayList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
            DownloadRange downloadRange2 = (DownloadRange) next;
            if (!downloadRange2.isRangeDownloadSuccess() && !downloadRange2.getIsDownloading()) {
                break;
            }
        }
        DownloadRange downloadRange3 = (DownloadRange) next;
        if (downloadRange3 != null) {
            lg.a.f68839a.c("download", "2-2---执行下一个task~ rangeId:" + downloadRange3.getRangeId() + ", start:" + downloadRange3.getStart() + ",range:" + downloadRange3.getEnd() + ",progress:" + downloadRange3.getProgress(), true);
            this.f58602g.getAndIncrement();
            y(downloadRange3, i11);
        }
    }

    private final void w(int i11) {
        List<DownloadRange> listK = DownloadTaskUtil.f58629a.k(i11, this.f58598c);
        lg.a.f68839a.c("download", "1---multithreadingDownload,name:" + this.f58598c.getName() + ", RangesSize:" + this.f58598c.getDownloadRanges().size() + " 需要启的线程数 =  " + listK.size(), true);
        int i12 = this.f58602g.get() - 1;
        this.f58602g.addAndGet(listK.size());
        for (DownloadRange downloadRange : listK) {
            lg.a.C0828a.f(lg.a.f68839a, "download", "----多线程下载开始, rangeId =  " + downloadRange.getRangeId() + "， index = " + i12 + "，status = " + this.f58598c.getStatus(), false, 4, null);
            i12++;
            y(downloadRange, i12);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final lj.n0 x() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).q1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y(DownloadRange downloadRange, int i11) {
        long end = downloadRange.getEnd();
        Long size = this.f58598c.getSize();
        if (end <= (size != null ? size.longValue() : 0L)) {
            downloadRange.setDownloading(true);
            if (DownloadTaskUtil.f58629a.i()) {
                com.transsnet.downloader.core.thread.e eVar = new com.transsnet.downloader.core.thread.e(downloadRange, this.f58597b, i11, this.f58596a, this.f58599d, this.f58598c, this);
                this.f58603h.add(eVar);
                k.d(this.f58605j, null, null, new DownloadTaskImpl2$startDownloadInIO$2(eVar, null), 3, null);
                return;
            } else {
                DownloadRunnable downloadRunnable = new DownloadRunnable(downloadRange, this.f58597b, i11, this.f58596a, this.f58599d, this.f58598c, this);
                this.f58603h.add(downloadRunnable);
                DownloadExecutor.f58633a.b().e(downloadRunnable);
                return;
            }
        }
        lg.a.f68839a.i("download", "startDownloadInIO error range ,contentLength:" + this.f58598c.getSize() + ",range:" + downloadRange.getStart() + "-" + downloadRange.getEnd(), true);
        try {
            Result.Companion companion = Result.INSTANCE;
            Result.m454constructorimpl(Boolean.valueOf(this.f58598c.getDownloadRanges().remove(downloadRange)));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object z(Continuation continuation) throws Throwable {
        DownloadTaskImpl2$startFirstDownload$1 downloadTaskImpl2$startFirstDownload$1;
        int size;
        List list;
        if (continuation instanceof DownloadTaskImpl2$startFirstDownload$1) {
            downloadTaskImpl2$startFirstDownload$1 = (DownloadTaskImpl2$startFirstDownload$1) continuation;
            int i11 = downloadTaskImpl2$startFirstDownload$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                downloadTaskImpl2$startFirstDownload$1.label = i11 - Integer.MIN_VALUE;
            } else {
                downloadTaskImpl2$startFirstDownload$1 = new DownloadTaskImpl2$startFirstDownload$1(this, continuation);
            }
        } else {
            downloadTaskImpl2$startFirstDownload$1 = new DownloadTaskImpl2$startFirstDownload$1(this, continuation);
        }
        Object obj = downloadTaskImpl2$startFirstDownload$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = downloadTaskImpl2$startFirstDownload$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            int iF = this.f58599d.f();
            ArrayList arrayList = new ArrayList();
            long downloadHeaderSize = this.f58598c.getDownloadHeaderSize() / ((long) iF);
            Ref.LongRef longRef = new Ref.LongRef();
            longRef.element = -1L;
            Ref.LongRef longRef2 = new Ref.LongRef();
            longRef2.element = -1L;
            Long size2 = this.f58598c.getSize();
            long jLongValue = size2 != null ? size2.longValue() : 0L;
            int i13 = 0;
            while (true) {
                long j11 = longRef2.element;
                long j12 = jLongValue - 1;
                if (j11 >= j12) {
                    break;
                }
                int i14 = i13 + 1;
                if (i13 >= iF) {
                    downloadHeaderSize = this.f58601f;
                }
                long j13 = longRef.element < 0 ? 0L : j11 + 1;
                longRef.element = j13;
                long j14 = (j13 + downloadHeaderSize) - 1;
                longRef2.element = j14;
                if (j14 >= jLongValue) {
                    longRef2.element = j12;
                }
                DownloadRange downloadRange = new DownloadRange();
                String resourceId = this.f58598c.getResourceId();
                downloadRange.setThreadId(resourceId != null ? resourceId.hashCode() : 0);
                downloadRange.setRangeId(s.a(longRef.element + longRef2.element));
                downloadRange.setResourceId(this.f58598c.getResourceId());
                downloadRange.setStart(longRef.element);
                downloadRange.setEnd(longRef2.element);
                downloadRange.setProgress(0L);
                arrayList.add(downloadRange);
                objF = objF;
                i13 = i14;
                downloadHeaderSize = downloadHeaderSize;
                downloadTaskImpl2$startFirstDownload$1 = downloadTaskImpl2$startFirstDownload$1;
            }
            DownloadTaskImpl2$startFirstDownload$1 downloadTaskImpl2$startFirstDownload$2 = downloadTaskImpl2$startFirstDownload$1;
            Object obj2 = objF;
            lg.a.f68839a.p("download", new String[]{"首次多线程下载, , isPreDownload:" + this.f58598c.getIsPreDownload() + ", rangeListSize:" + arrayList.size() + "，ThreadSize:" + iF + ", name:" + this.f58598c.getName()}, true);
            this.f58598c.setStatus(2);
            this.f58598c.getDownloadRanges().addAll(arrayList);
            DownloadTaskUtil downloadTaskUtil = DownloadTaskUtil.f58629a;
            List<DownloadRange> downloadRanges = this.f58598c.getDownloadRanges();
            downloadTaskImpl2$startFirstDownload$2.L$0 = arrayList;
            downloadTaskImpl2$startFirstDownload$2.I$0 = iF;
            downloadTaskImpl2$startFirstDownload$2.label = 1;
            if (downloadTaskUtil.n(downloadRanges, downloadTaskImpl2$startFirstDownload$2) == obj2) {
                return obj2;
            }
            size = iF;
            list = arrayList;
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            size = downloadTaskImpl2$startFirstDownload$1.I$0;
            list = (List) downloadTaskImpl2$startFirstDownload$1.L$0;
            ResultKt.b(obj);
        }
        if (list.size() < size) {
            size = list.size();
        }
        int i15 = 0;
        for (Object obj3 : list.subList(0, size)) {
            int i16 = i15 + 1;
            if (i15 < 0) {
                CollectionsKt.u();
            }
            y((DownloadRange) obj3, i15);
            this.f58602g.getAndIncrement();
            i15 = i16;
        }
        return Unit.f67061a;
    }

    @Override // com.transsnet.downloader.core.thread.d
    public void a(com.transsnet.downloader.core.thread.f runnable, int i11, DownloadRange curRange) {
        Intrinsics.h(runnable, "runnable");
        Intrinsics.h(curRange, "curRange");
        int iDecrementAndGet = this.f58602g.get() > 0 ? this.f58602g.decrementAndGet() : 0;
        curRange.setDownloading(false);
        boolean zRemove = this.f58603h.remove(runnable);
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "download", "reDownload，result =" + zRemove, false, 4, null);
        if (iDecrementAndGet <= 0) {
            c0828a.p("download", new String[]{"重新下载所有线程已经暂停，开始执行新下载"}, true);
            k.d(this.f58605j, null, null, new DownloadTaskImpl2$reDownload$1(this, null), 3, null);
        }
    }

    @Override // com.transsnet.downloader.core.task.b
    public DownloadBean b() {
        return this.f58598c;
    }

    @Override // com.transsnet.downloader.core.thread.d
    public void c(com.transsnet.downloader.core.thread.f fVar, int i11, DownloadRange downloadRange) {
        com.transsnet.downloader.core.thread.d.a.a(this, fVar, i11, downloadRange);
    }

    @Override // com.transsnet.downloader.core.thread.d
    public synchronized void d() {
        int status = this.f58598c.getStatus();
        if (status == 1 || status == 2 || this.f58607l.get() != status) {
            this.f58607l.set(status);
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.f58604i.get() > 1000) {
                long jF = DownloadTaskUtil.f58629a.f(this.f58598c, this, this.f58600e);
                Long size = this.f58598c.getSize();
                if (jF > (size != null ? size.longValue() : 1L)) {
                    e();
                } else {
                    this.f58598c.setUpdateTimeStamp(Long.valueOf(jCurrentTimeMillis));
                    this.f58596a.a(this.f58598c);
                    this.f58604i.set(jCurrentTimeMillis);
                }
            }
        }
    }

    @Override // com.transsnet.downloader.core.thread.d
    public synchronized void e() {
        DownloadTaskUtil.f58629a.f(this.f58598c, this, this.f58600e);
        if (this.f58598c.getStatus() == 5) {
            lg.a.C0828a.f(lg.a.f68839a, "download", "--------onDownloadSuccess---相同状态，无需重复回调-", false, 4, null);
            return;
        }
        long progress = this.f58598c.getProgress();
        Long size = this.f58598c.getSize();
        if (progress >= (size != null ? size.longValue() : 1L) || r()) {
            DownloadUtil downloadUtil = DownloadUtil.f59900a;
            if (downloadUtil.i(this.f58598c)) {
                ry.e.f74755c.a().k(this.f58598c, null);
                lg.a.C0828a c0828a = lg.a.f68839a;
                c0828a.c("download", "onDownloadSuccess, 资源有问题，需要重新下载，  progress = " + this.f58598c.getProgress(), true);
                this.f58598c.setStatus(0);
                downloadUtil.H(this.f58598c);
                lg.a.C0828a.f(c0828a, "ReDownload", "resetProgress， progress = " + this.f58598c.getProgress(), false, 4, null);
                com.transsnet.downloader.core.task.c cVar = this.f58600e;
                if (cVar != null) {
                    cVar.g(this.f58598c);
                }
                return;
            }
            lg.a.f68839a.c("download", "------------------------------onDownloadSuccess subjectId=" + this.f58598c.getSubjectId() + ",resourceId=" + this.f58598c.getResourceId() + ", size:" + this.f58598c.getSize() + ", progress:" + this.f58598c.getProgress() + "------------------------------", true);
            this.f58598c.setStatus(5);
            this.f58598c.setReportStatus(5);
            this.f58598c.setUpdateTimeStamp(Long.valueOf(System.currentTimeMillis()));
            this.f58596a.a(this.f58598c);
            com.transsnet.downloader.core.task.c cVar2 = this.f58600e;
            if (cVar2 != null) {
                cVar2.b(this.f58598c);
            }
            com.transsnet.downloader.proxy.b bVar = this.f58597b;
            String resourceId = this.f58598c.getResourceId();
            if (resourceId == null) {
                resourceId = this.f58598c.getUrl();
            }
            bVar.i(resourceId);
        }
    }

    @Override // com.transsnet.downloader.core.thread.d
    public synchronized void f(com.transsnet.downloader.core.thread.f runnable, int i11, DownloadRange curRange) {
        try {
            Intrinsics.h(runnable, "runnable");
            Intrinsics.h(curRange, "curRange");
            long jF = DownloadTaskUtil.f58629a.f(this.f58598c, this, this.f58600e);
            curRange.setDownloading(false);
            lg.a.C0828a c0828a = lg.a.f68839a;
            c0828a.u("download", "======onRangeSuccess, name:" + this.f58598c.getTitleName() + ",thread = " + Thread.currentThread().getName() + ",rangeId = " + curRange.getRangeId() + ",progress = " + jF + ", resourceId=" + this.f58598c.getResourceId() + ",status:" + this.f58598c.getStatus() + "}", true);
            long jCurrentTimeMillis = System.currentTimeMillis();
            Long size = this.f58598c.getSize();
            if (jF > (size != null ? size.longValue() : 1L)) {
                e();
                return;
            }
            this.f58598c.setUpdateTimeStamp(Long.valueOf(jCurrentTimeMillis));
            if (jCurrentTimeMillis - this.f58604i.get() > 1000) {
                this.f58596a.a(this.f58598c);
                this.f58604i.set(jCurrentTimeMillis);
            }
            int iDecrementAndGet = this.f58602g.get() > 0 ? this.f58602g.decrementAndGet() : 0;
            this.f58603h.remove(runnable);
            if (jF < this.f58598c.getDownloadHeaderSize() && iDecrementAndGet > 0) {
                c0828a.p("download", new String[]{"=======onRangeSuccess header not success, wait, downloadProgress = " + jF}, true);
                return;
            }
            int iF = iDecrementAndGet < this.f58599d.f() ? this.f58599d.f() - iDecrementAndGet : 0;
            c0828a.c("download", "allSize:" + this.f58599d.f() + ",curThreadSize: " + iDecrementAndGet + ", threadCount：" + this.f58603h.size() + ",newThreadCount = " + iF, true);
            if (iF > 1 && !this.f58598c.getIsDownloadingPlay()) {
                w(iF);
            } else if (!this.f58598c.getIsDownloadingPlay() || iDecrementAndGet < 2) {
                v(i11);
            } else {
                c0828a.c("download", "resourceId=" + this.f58598c.getResourceId() + " 当前边下边播 还是多线程，移除该线程，等待最后还有2个线程下载", true);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.transsnet.downloader.core.task.b
    public void start() {
        if (!m.f70474a.e()) {
            this.f58596a.b(this.f58598c, new DownloadException(9, DownloadException.EXCEPTION_MESSAGE_NO_NET));
            return;
        }
        DownloadUtil downloadUtil = DownloadUtil.f59900a;
        if (downloadUtil.i(this.f58598c)) {
            ry.e.f74755c.a().k(this.f58598c, null);
            lg.a.f68839a.p("download", new String[]{"startDownload, 资源有问题，需要从头下载"}, true);
            downloadUtil.H(this.f58598c);
        }
        this.f58598c.setRestartDownloadCount(0);
        if (r()) {
            e();
            return;
        }
        this.f58598c.setStatus(2);
        if (this.f58598c.getDownloadRanges().isEmpty()) {
            k.d(this.f58605j, null, null, new AnonymousClass1(null), 3, null);
        } else {
            k.d(this.f58605j, null, null, new AnonymousClass2(null), 3, null);
        }
    }
}
