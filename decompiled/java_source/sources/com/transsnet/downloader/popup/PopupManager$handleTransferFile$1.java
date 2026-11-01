package com.transsnet.downloader.popup;

import android.content.Context;
import com.alibaba.sdk.android.oss.common.OSSConstants;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.dialog.DownloadReDetectorSaveDialog;
import com.transsnet.downloader.util.DownloadUtil;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.DownloadRefreshEvent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.popup.PopupManager$handleTransferFile$1", f = "PopupManager.kt", l = {TTAdConstant.DEEPLINK_UNAVAILABLE_CODE, 479}, m = "invokeSuspend")
@SourceDebugExtension
final class PopupManager$handleTransferFile$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $checkTransferFailed;
    final /* synthetic */ Context $context;
    final /* synthetic */ my.b $info;
    final /* synthetic */ DownloadReDetectorSaveDialog $loadingDialog;
    final /* synthetic */ Function2<Boolean, Integer, Unit> $resultCallback;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final /* synthetic */ PopupManager this$0;

    /* JADX INFO: renamed from: com.transsnet.downloader.popup.PopupManager$handleTransferFile$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.popup.PopupManager$handleTransferFile$1$1", f = "PopupManager.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ boolean $checkTransferFailed;
        final /* synthetic */ DownloadReDetectorSaveDialog $loadingDialog;
        int label;
        final /* synthetic */ PopupManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(DownloadReDetectorSaveDialog downloadReDetectorSaveDialog, PopupManager popupManager, boolean z10, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$loadingDialog = downloadReDetectorSaveDialog;
            this.this$0 = popupManager;
            this.$checkTransferFailed = z10;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$loadingDialog, this.this$0, this.$checkTransferFailed, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            lg.a.f68839a.c("resource_save", "剧集存储全不符合，都跳过，直接成功", true);
            if (this.$loadingDialog.isAdded()) {
                this.$loadingDialog.dismissAllowingStateLoss();
            }
            uh.b.f76753a.e(this.this$0.y(this.$checkTransferFailed));
            this.$loadingDialog.J0(100);
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    PopupManager$handleTransferFile$1(PopupManager popupManager, boolean z10, Context context, my.b bVar, DownloadReDetectorSaveDialog downloadReDetectorSaveDialog, Function2<? super Boolean, ? super Integer, Unit> function2, Continuation<? super PopupManager$handleTransferFile$1> continuation) {
        super(2, continuation);
        this.this$0 = popupManager;
        this.$checkTransferFailed = z10;
        this.$context = context;
        this.$info = bVar;
        this.$loadingDialog = downloadReDetectorSaveDialog;
        this.$resultCallback = function2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i(Map map, DownloadBean downloadBean, Ref.LongRef longRef, Ref.LongRef longRef2, DownloadReDetectorSaveDialog downloadReDetectorSaveDialog, long j11, long j12) {
        map.put(downloadBean, Long.valueOf(j11));
        Iterator it = map.values().iterator();
        long jLongValue = 0;
        while (it.hasNext()) {
            jLongValue += ((Number) it.next()).longValue();
        }
        longRef.element = jLongValue;
        kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new PopupManager$handleTransferFile$1$2$2(longRef, longRef2, downloadReDetectorSaveDialog, null), 3, null);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:8:0x0071 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:9:0x0073  */
    public static final Unit j(Ref.LongRef longRef, Ref.LongRef longRef2, PopupManager popupManager, my.b bVar, Function2 function2, DownloadReDetectorSaveDialog downloadReDetectorSaveDialog, boolean z10, boolean z11) {
        if (z11) {
            long j11 = longRef.element;
            long j12 = longRef2.element;
            if (j11 >= j12 || Math.abs(j11 - j12) < OSSConstants.MIN_PART_SIZE_LIMIT) {
                popupManager.f59520b.setRootPath(bVar.b());
                popupManager.f59520b.setRootPathType(bVar.e());
                DownloadRefreshEvent downloadRefreshEvent = new DownloadRefreshEvent("", "", false, false, 12, null);
                FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
                String name = DownloadRefreshEvent.class.getName();
                Intrinsics.g(name, "getName(...)");
                flowEventBus.postEvent(name, downloadRefreshEvent, 0L);
                kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new PopupManager$handleTransferFile$1$3$1(popupManager, bVar, function2, downloadReDetectorSaveDialog, z10, null), 3, null);
            } else if (!z11) {
                kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new PopupManager$handleTransferFile$1$3$2(function2, bVar, downloadReDetectorSaveDialog, z10, null), 3, null);
            }
        } else if (!z11) {
            kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new PopupManager$handleTransferFile$1$3$2(function2, bVar, downloadReDetectorSaveDialog, z10, null), 3, null);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k(DownloadReDetectorSaveDialog downloadReDetectorSaveDialog, PopupManager popupManager, long j11, long j12) {
        kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new PopupManager$handleTransferFile$1$4$1(downloadReDetectorSaveDialog, j11, popupManager, j12, null), 3, null);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l(PopupManager popupManager, Function2 function2, my.b bVar, boolean z10, DownloadReDetectorSaveDialog downloadReDetectorSaveDialog, boolean z11) {
        DownloadRefreshEvent downloadRefreshEvent = new DownloadRefreshEvent(popupManager.f59520b.getSubjectId(), popupManager.f59520b.getResourceId(), false, false, 12, null);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = DownloadRefreshEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, downloadRefreshEvent, 0L);
        kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new PopupManager$handleTransferFile$1$5$1(function2, z11, bVar, popupManager, z10, downloadReDetectorSaveDialog, null), 3, null);
        return Unit.f67061a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PopupManager$handleTransferFile$1(this.this$0, this.$checkTransferFailed, this.$context, this.$info, this.$loadingDialog, this.$resultCallback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PopupManager$handleTransferFile$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:45:0x0141  */
    /* JADX WARN: Code duplicated, block: B:47:0x0174  */
    /* JADX WARN: Code duplicated, block: B:49:0x017d  */
    /* JADX WARN: Code duplicated, block: B:51:0x0183  */
    /* JADX WARN: Code duplicated, block: B:55:0x019e  */
    /* JADX WARN: Code duplicated, block: B:56:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:60:0x0213 A[LOOP:0: B:43:0x013b->B:60:0x0213, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:79:0x0212 A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:45:0x0141, please report this as an issue */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        String rootPath;
        Ref.LongRef longRef;
        Map map;
        Ref.LongRef longRef2;
        Iterator it;
        final DownloadBean downloadBean;
        String rootPath2;
        String str;
        DownloadUtil downloadUtil;
        Context context;
        int rootPathType;
        String strB;
        int iE;
        Function2 function2;
        Function1 function1;
        boolean z10;
        int i11;
        Ref.LongRef longRef3;
        Map map2;
        Ref.LongRef longRef4;
        Iterator it2;
        Object objF = IntrinsicsKt.f();
        int i12 = this.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            if (this.this$0.f59520b.getStatus() == 10) {
                lg.a.f68839a.c("resource_save", "剧集转存操作, name = " + this.this$0.f59520b.getName() + ", subjectId = " + this.this$0.f59520b.getSubjectId(), true);
                Ref.LongRef longRef5 = new Ref.LongRef();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                Ref.LongRef longRef6 = new Ref.LongRef();
                ArrayList arrayList = new ArrayList();
                if (this.$checkTransferFailed) {
                    for (DownloadBean downloadBean2 : this.this$0.f59520b.getSeriesList()) {
                        if (downloadBean2.getStatus() < 10 && downloadBean2.getIsTransferFailed()) {
                            arrayList.add(downloadBean2);
                            long j11 = longRef5.element;
                            Long size = downloadBean2.getSize();
                            longRef5.element = j11 + (size != null ? size.longValue() : 0L);
                        }
                    }
                } else {
                    for (DownloadBean downloadBean3 : this.this$0.f59520b.getSeriesList()) {
                        if (downloadBean3.getStatus() < 10 && downloadBean3.isFileExist()) {
                            arrayList.add(downloadBean3);
                            long j12 = longRef5.element;
                            Long size2 = downloadBean3.getSize();
                            longRef5.element = j12 + (size2 != null ? size2.longValue() : 0L);
                        }
                    }
                }
                if (arrayList.isEmpty()) {
                    kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new AnonymousClass1(this.$loadingDialog, this.this$0, this.$checkTransferFailed, null), 3, null);
                    return Unit.f67061a;
                }
                longRef = longRef5;
                map = linkedHashMap;
                longRef2 = longRef6;
                it = arrayList.iterator();
                while (it.hasNext()) {
                    downloadBean = (DownloadBean) it.next();
                    lg.a.f68839a.c("resource_save", "save video, epse = " + downloadBean.getEpse() + ",isTransferFailed = " + downloadBean.getIsTransferFailed(), true);
                    if (downloadBean.getIsTransferFailed()) {
                        rootPath2 = lj.b.f68866a.e();
                    } else {
                        if (downloadBean.getRootPath() == null) {
                            downloadBean.setRootPath(lj.b.f68866a.e());
                        }
                        rootPath2 = downloadBean.getRootPath();
                        Intrinsics.e(rootPath2);
                    }
                    str = rootPath2;
                    downloadUtil = DownloadUtil.f59900a;
                    context = this.$context;
                    if (downloadBean.getIsTransferFailed()) {
                        rootPathType = 1;
                    } else {
                        rootPathType = downloadBean.getRootPathType();
                    }
                    strB = this.$info.b();
                    iE = this.$info.e();
                    final DownloadReDetectorSaveDialog downloadReDetectorSaveDialog = this.$loadingDialog;
                    final Map map3 = map;
                    final Ref.LongRef longRef7 = longRef2;
                    final Ref.LongRef longRef8 = longRef;
                    function2 = new Function2() { // from class: com.transsnet.downloader.popup.m
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj2, Object obj3) {
                            return PopupManager$handleTransferFile$1.i(map3, downloadBean, longRef7, longRef8, downloadReDetectorSaveDialog, ((Long) obj2).longValue(), ((Long) obj3).longValue());
                        }
                    };
                    final PopupManager popupManager = this.this$0;
                    final my.b bVar = this.$info;
                    final Function2<Boolean, Integer, Unit> function3 = this.$resultCallback;
                    final DownloadReDetectorSaveDialog downloadReDetectorSaveDialog2 = this.$loadingDialog;
                    final boolean z11 = this.$checkTransferFailed;
                    final Ref.LongRef longRef9 = longRef2;
                    final Ref.LongRef longRef10 = longRef;
                    function1 = new Function1() { // from class: com.transsnet.downloader.popup.n
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            return PopupManager$handleTransferFile$1.j(longRef9, longRef10, popupManager, bVar, function3, downloadReDetectorSaveDialog2, z11, ((Boolean) obj2).booleanValue());
                        }
                    };
                    z10 = this.$checkTransferFailed;
                    this.L$0 = longRef;
                    this.L$1 = map;
                    this.L$2 = longRef2;
                    this.L$3 = it;
                    this.label = 1;
                    i11 = rootPathType;
                    longRef3 = longRef;
                    map2 = map;
                    longRef4 = longRef2;
                    it2 = it;
                    if (downloadUtil.J(context, false, downloadBean, str, i11, strB, iE, function2, function1, z10, this) == objF) {
                        return objF;
                    }
                    it = it2;
                    longRef = longRef3;
                    map = map2;
                    longRef2 = longRef4;
                }
            } else {
                lg.a.f68839a.c("resource_save", "单资源转存操作, name = " + this.this$0.f59520b.getName() + ", subjectId = " + this.this$0.f59520b.getSubjectId() + ",resourceId = " + this.this$0.f59520b.getResourceId(), true);
                if (this.this$0.f59520b.getIsTransferFailed()) {
                    rootPath = lj.b.f68866a.e();
                } else {
                    if (this.this$0.f59520b.getRootPath() == null) {
                        this.this$0.f59520b.setRootPath(lj.b.f68866a.e());
                    }
                    rootPath = this.this$0.f59520b.getRootPath();
                    Intrinsics.e(rootPath);
                }
                String str2 = rootPath;
                int rootPathType2 = this.this$0.f59520b.getIsTransferFailed() ? 1 : this.this$0.f59520b.getRootPathType();
                DownloadUtil downloadUtil2 = DownloadUtil.f59900a;
                Context context2 = this.$context;
                DownloadBean downloadBean4 = this.this$0.f59520b;
                String strB2 = this.$info.b();
                int iE2 = this.$info.e();
                final DownloadReDetectorSaveDialog downloadReDetectorSaveDialog3 = this.$loadingDialog;
                final PopupManager popupManager2 = this.this$0;
                Function2 function4 = new Function2() { // from class: com.transsnet.downloader.popup.o
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        return PopupManager$handleTransferFile$1.k(downloadReDetectorSaveDialog3, popupManager2, ((Long) obj2).longValue(), ((Long) obj3).longValue());
                    }
                };
                final PopupManager popupManager3 = this.this$0;
                final Function2<Boolean, Integer, Unit> function5 = this.$resultCallback;
                final my.b bVar2 = this.$info;
                final boolean z12 = this.$checkTransferFailed;
                final DownloadReDetectorSaveDialog downloadReDetectorSaveDialog4 = this.$loadingDialog;
                Function1 function6 = new Function1() { // from class: com.transsnet.downloader.popup.p
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return PopupManager$handleTransferFile$1.l(popupManager3, function5, bVar2, z12, downloadReDetectorSaveDialog4, ((Boolean) obj2).booleanValue());
                    }
                };
                boolean z13 = this.$checkTransferFailed;
                this.label = 2;
                if (downloadUtil2.J(context2, false, downloadBean4, str2, rootPathType2, strB2, iE2, function4, function6, z13, this) == objF) {
                    return objF;
                }
            }
        } else if (i12 == 1) {
            Iterator it3 = (Iterator) this.L$3;
            Ref.LongRef longRef11 = (Ref.LongRef) this.L$2;
            Map map4 = (Map) this.L$1;
            Ref.LongRef longRef12 = (Ref.LongRef) this.L$0;
            ResultKt.b(obj);
            it = it3;
            longRef2 = longRef11;
            map = map4;
            longRef = longRef12;
            while (it.hasNext()) {
                downloadBean = (DownloadBean) it.next();
                lg.a.f68839a.c("resource_save", "save video, epse = " + downloadBean.getEpse() + ",isTransferFailed = " + downloadBean.getIsTransferFailed(), true);
                if (downloadBean.getIsTransferFailed()) {
                    rootPath2 = lj.b.f68866a.e();
                } else {
                    if (downloadBean.getRootPath() == null) {
                        downloadBean.setRootPath(lj.b.f68866a.e());
                    }
                    rootPath2 = downloadBean.getRootPath();
                    Intrinsics.e(rootPath2);
                }
                str = rootPath2;
                downloadUtil = DownloadUtil.f59900a;
                context = this.$context;
                if (downloadBean.getIsTransferFailed()) {
                    rootPathType = 1;
                } else {
                    rootPathType = downloadBean.getRootPathType();
                }
                strB = this.$info.b();
                iE = this.$info.e();
                final DownloadReDetectorSaveDialog downloadReDetectorSaveDialog5 = this.$loadingDialog;
                final Map map5 = map;
                final Ref.LongRef longRef13 = longRef2;
                final Ref.LongRef longRef14 = longRef;
                function2 = new Function2() { // from class: com.transsnet.downloader.popup.m
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        return PopupManager$handleTransferFile$1.i(map5, downloadBean, longRef13, longRef14, downloadReDetectorSaveDialog5, ((Long) obj2).longValue(), ((Long) obj3).longValue());
                    }
                };
                final PopupManager popupManager4 = this.this$0;
                final my.b bVar3 = this.$info;
                final Function2 function7 = this.$resultCallback;
                final DownloadReDetectorSaveDialog downloadReDetectorSaveDialog6 = this.$loadingDialog;
                final boolean z14 = this.$checkTransferFailed;
                final Ref.LongRef longRef15 = longRef2;
                final Ref.LongRef longRef16 = longRef;
                function1 = new Function1() { // from class: com.transsnet.downloader.popup.n
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return PopupManager$handleTransferFile$1.j(longRef15, longRef16, popupManager4, bVar3, function7, downloadReDetectorSaveDialog6, z14, ((Boolean) obj2).booleanValue());
                    }
                };
                z10 = this.$checkTransferFailed;
                this.L$0 = longRef;
                this.L$1 = map;
                this.L$2 = longRef2;
                this.L$3 = it;
                this.label = 1;
                i11 = rootPathType;
                longRef3 = longRef;
                map2 = map;
                longRef4 = longRef2;
                it2 = it;
                if (downloadUtil.J(context, false, downloadBean, str, i11, strB, iE, function2, function1, z10, this) == objF) {
                    return objF;
                }
                it = it2;
                longRef = longRef3;
                map = map2;
                longRef2 = longRef4;
            }
        } else {
            if (i12 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f67061a;
    }
}
