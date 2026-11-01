package com.transsnet.downloader.manager;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.bean.StartRequestBean;
import com.transsnet.downloader.bean.StartResponseBean;
import com.transsnet.downloader.bean.StartlDownloadBean;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.u0;
import okhttp3.RequestBody;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.manager.StartDownloadHelper$startDownloadResource$1", f = "StartDownloadHelper.kt", l = {98}, m = "invokeSuspend")
@SourceDebugExtension
final class StartDownloadHelper$startDownloadResource$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ List<DownloadBean> $beanList;
    int label;
    final /* synthetic */ StartDownloadHelper this$0;

    /* JADX INFO: renamed from: com.transsnet.downloader.manager.StartDownloadHelper$startDownloadResource$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsnet/downloader/bean/StartResponseBean;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.manager.StartDownloadHelper$startDownloadResource$1$2", f = "StartDownloadHelper.kt", l = {78, 87, 91, 93}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.c, Continuation<? super Unit>, Object> {
        final /* synthetic */ ArrayList<StartlDownloadBean> $normalList;
        final /* synthetic */ ArrayList<UGCStartDownloadBean> $ugcList;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ StartDownloadHelper this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(ArrayList<UGCStartDownloadBean> arrayList, StartDownloadHelper startDownloadHelper, ArrayList<StartlDownloadBean> arrayList2, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$ugcList = arrayList;
            this.this$0 = startDownloadHelper;
            this.$normalList = arrayList2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$ugcList, this.this$0, this.$normalList, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.flow.c cVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(cVar, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Code duplicated, block: B:22:0x00b3  */
        /* JADX WARN: Code duplicated, block: B:24:0x00dd A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:27:0x00ee A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:28:0x00ef  */
        /* JADX WARN: Code duplicated, block: B:30:0x00f9 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlinx.coroutines.flow.c cVar;
            Object data;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 != 0) {
                if (i11 == 1) {
                    cVar = (kotlinx.coroutines.flow.c) this.L$0;
                    ResultKt.b(obj);
                } else if (i11 == 2) {
                    cVar = (kotlinx.coroutines.flow.c) this.L$0;
                    ResultKt.b(obj);
                    data = ((BaseDto) obj).getData();
                    this.L$0 = null;
                    this.label = 3;
                    if (cVar.emit(data, this) == objF) {
                        return objF;
                    }
                } else {
                    if (i11 != 3 && i11 != 4) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return Unit.f67061a;
            }
            ResultKt.b(obj);
            cVar = (kotlinx.coroutines.flow.c) this.L$0;
            com.transsion.baselib.report.launch.b.f43370a.b().putLong(f.f59478a.b(), System.currentTimeMillis());
            if (!this.$ugcList.isEmpty()) {
                qy.a aVarD = this.this$0.d();
                String strA = vg.a.f77324a.a();
                bh.b.a aVar = bh.b.f16471a;
                String strJ = com.blankj.utilcode.util.o.j(new UGCStartRequestBean(this.$ugcList));
                Intrinsics.g(strJ, "toJson(...)");
                RequestBody requestBodyA = aVar.a(strJ);
                this.L$0 = cVar;
                this.label = 1;
                obj = aVarD.i(strA, requestBodyA, this);
                if (obj == objF) {
                    return objF;
                }
            } else if (this.$normalList.isEmpty()) {
                this.L$0 = null;
                this.label = 4;
                if (cVar.emit(null, this) == objF) {
                    return objF;
                }
            } else {
                qy.a aVarD2 = this.this$0.d();
                String strA2 = vg.a.f77324a.a();
                bh.b.a aVar2 = bh.b.f16471a;
                String strJ2 = com.blankj.utilcode.util.o.j(new StartRequestBean(this.$normalList));
                Intrinsics.g(strJ2, "toJson(...)");
                RequestBody requestBodyA2 = aVar2.a(strJ2);
                this.L$0 = cVar;
                this.label = 2;
                obj = aVarD2.d(strA2, requestBodyA2, this);
                if (obj == objF) {
                    return objF;
                }
                data = ((BaseDto) obj).getData();
                this.L$0 = null;
                this.label = 3;
                if (cVar.emit(data, this) == objF) {
                    return objF;
                }
            }
            return Unit.f67061a;
            lg.a.C0828a.f(lg.a.f68839a, this.this$0.f59474a, "startDownloadUGCResource success, count = " + this.$ugcList.size(), false, 4, null);
            if (this.$normalList.isEmpty()) {
                qy.a aVarD3 = this.this$0.d();
                String strA3 = vg.a.f77324a.a();
                bh.b.a aVar3 = bh.b.f16471a;
                String strJ3 = com.blankj.utilcode.util.o.j(new StartRequestBean(this.$normalList));
                Intrinsics.g(strJ3, "toJson(...)");
                RequestBody requestBodyA3 = aVar3.a(strJ3);
                this.L$0 = cVar;
                this.label = 2;
                obj = aVarD3.d(strA3, requestBodyA3, this);
                if (obj == objF) {
                    return objF;
                }
                data = ((BaseDto) obj).getData();
                this.L$0 = null;
                this.label = 3;
                if (cVar.emit(data, this) == objF) {
                    return objF;
                }
            } else {
                this.L$0 = null;
                this.label = 4;
                if (cVar.emit(null, this) == objF) {
                    return objF;
                }
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsnet.downloader.manager.StartDownloadHelper$startDownloadResource$1$3, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsnet/downloader/bean/StartResponseBean;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.manager.StartDownloadHelper$startDownloadResource$1$3", f = "StartDownloadHelper.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass3 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.c, Throwable, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ StartDownloadHelper this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(StartDownloadHelper startDownloadHelper, Continuation<? super AnonymousClass3> continuation) {
            super(3, continuation);
            this.this$0 = startDownloadHelper;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(kotlinx.coroutines.flow.c cVar, Throwable th2, Continuation<? super Unit> continuation) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.this$0, continuation);
            anonymousClass3.L$0 = th2;
            return anonymousClass3.invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            Throwable th2 = (Throwable) this.L$0;
            lg.a.C0828a c0828a = lg.a.f68839a;
            String str = this.this$0.f59474a;
            String message = th2.getMessage();
            if (message == null) {
                message = "";
            }
            lg.a.C0828a.e(c0828a, str, message, th2, false, 8, null);
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsnet.downloader.manager.StartDownloadHelper$startDownloadResource$1$4, reason: invalid class name */
    static final class AnonymousClass4 implements kotlinx.coroutines.flow.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f59476a;

        AnonymousClass4(List list) {
            this.f59476a = list;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // kotlinx.coroutines.flow.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object emit(StartResponseBean startResponseBean, Continuation continuation) throws Throwable {
            StartDownloadHelper$startDownloadResource$1$4$emit$1 startDownloadHelper$startDownloadResource$1$4$emit$1;
            if (continuation instanceof StartDownloadHelper$startDownloadResource$1$4$emit$1) {
                startDownloadHelper$startDownloadResource$1$4$emit$1 = (StartDownloadHelper$startDownloadResource$1$4$emit$1) continuation;
                int i11 = startDownloadHelper$startDownloadResource$1$4$emit$1.label;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    startDownloadHelper$startDownloadResource$1$4$emit$1.label = i11 - Integer.MIN_VALUE;
                } else {
                    startDownloadHelper$startDownloadResource$1$4$emit$1 = new StartDownloadHelper$startDownloadResource$1$4$emit$1(this, continuation);
                }
            } else {
                startDownloadHelper$startDownloadResource$1$4$emit$1 = new StartDownloadHelper$startDownloadResource$1$4$emit$1(this, continuation);
            }
            Object obj = startDownloadHelper$startDownloadResource$1$4$emit$1.result;
            Object objF = IntrinsicsKt.f();
            int i12 = startDownloadHelper$startDownloadResource$1$4$emit$1.label;
            if (i12 == 0) {
                ResultKt.b(obj);
                f.f59478a.a().g();
                List<DownloadBean> list = this.f59476a;
                if (list != null) {
                    for (DownloadBean downloadBean : list) {
                        if (downloadBean.getIsStartRequested()) {
                            downloadBean.setSubtitleStarted(1);
                        }
                    }
                }
                startDownloadHelper$startDownloadResource$1$4$emit$1.label = 1;
                if (u0.a(3000L, startDownloadHelper$startDownloadResource$1$4$emit$1) == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            f.f59478a.a().h();
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    StartDownloadHelper$startDownloadResource$1(List<? extends DownloadBean> list, StartDownloadHelper startDownloadHelper, Continuation<? super StartDownloadHelper$startDownloadResource$1> continuation) {
        super(2, continuation);
        this.$beanList = list;
        this.this$0 = startDownloadHelper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new StartDownloadHelper$startDownloadResource$1(this.$beanList, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((StartDownloadHelper$startDownloadResource$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:44:0x01a9  */
    /* JADX WARN: Instruction removed from duplicated block: B:44:0x01a9, please report this as an issue */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        boolean z10;
        String resourceId;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        boolean z11 = true;
        if (i11 == 0) {
            ResultKt.b(obj);
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            List<DownloadBean> list = this.$beanList;
            if (list != null && (!list.isEmpty())) {
                List<DownloadBean> list2 = this.$beanList;
                StartDownloadHelper startDownloadHelper = this.this$0;
                for (DownloadBean downloadBean : list2) {
                    if (downloadBean.getSubtitleStarted() == z11) {
                        lg.a.C0828a.v(lg.a.f68839a, startDownloadHelper.f59474a, "onStartDownload，is started, do not try again, name =  " + downloadBean.getName() + ", subjectId = " + downloadBean.getSubjectId(), false, 4, null);
                        downloadBean.setStartRequested(z11);
                    } else if (downloadBean.isUGCVideo()) {
                        String ugcVideoId = downloadBean.getUgcVideoId();
                        if (ugcVideoId == null || ugcVideoId.length() == 0 || (resourceId = downloadBean.getResourceId()) == null || resourceId.length() == 0) {
                            lg.a.C0828a.f(lg.a.f68839a, startDownloadHelper.f59474a, "onStartDownload fail， has no ugcVideoId or resourceId, name = " + downloadBean.getName(), false, 4, null);
                        } else {
                            arrayList.add(new UGCStartDownloadBean(downloadBean.getUgcVideoId(), downloadBean.getResourceId(), downloadBean.getSubtitleIdType()));
                            downloadBean.setStartRequested(z11);
                            lg.a.C0828a.f(lg.a.f68839a, startDownloadHelper.f59474a, "onStartDownload UGC, name = " + downloadBean.getName() + ", ugcVideoId = " + downloadBean.getUgcVideoId() + ", resourceId = " + downloadBean.getResourceId() + ", idType = " + downloadBean.getSubtitleIdType(), false, 4, null);
                        }
                    } else {
                        String resourceId2 = downloadBean.getResourceId();
                        if (resourceId2 == null || resourceId2.length() == 0) {
                            lg.a.C0828a.f(lg.a.f68839a, startDownloadHelper.f59474a, "onStartDownload fail， has no resourceId, name = " + downloadBean.getName(), false, 4, null);
                        } else {
                            String resourceId3 = downloadBean.getResourceId();
                            if (resourceId3 != null) {
                                z10 = true;
                                if (StringsKt.c0(resourceId3, "http", false, 2, null)) {
                                    lg.a.C0828a.f(lg.a.f68839a, startDownloadHelper.f59474a, "onStartDownload fail， has no resourceId, name = " + downloadBean.getName(), false, 4, null);
                                }
                            } else {
                                z10 = true;
                            }
                            arrayList2.add(new StartlDownloadBean(downloadBean.getSubjectId(), downloadBean.getResourceId(), Boxing.d(downloadBean.getEpse())));
                            downloadBean.setStartRequested(z10);
                            lg.a.C0828a.f(lg.a.f68839a, startDownloadHelper.f59474a, "onStartDownload, name = " + downloadBean.getName() + ", subjectId = " + downloadBean.getSubjectId() + ", resourceId = " + downloadBean.getResourceId() + ", episode = " + downloadBean.getEpse(), false, 4, null);
                        }
                    }
                    z11 = true;
                }
            }
            kotlinx.coroutines.flow.b bVarF = kotlinx.coroutines.flow.d.f(kotlinx.coroutines.flow.d.s(new AnonymousClass2(arrayList, this.this$0, arrayList2, null)), new AnonymousClass3(this.this$0, null));
            AnonymousClass4 anonymousClass4 = new AnonymousClass4(this.$beanList);
            this.label = 1;
            if (bVarF.a(anonymousClass4, this) == objF) {
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
