package com.transsion.subtitle.viewmodel;

import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.SubtitleLanguageMapBean;
import com.transsion.moviedetailapi.bean.SubtitleItem;
import com.transsion.subtitle.bean.SubtitleSearchListBean;
import com.transsion.subtitle.fragment.i;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.c;
import kotlinx.coroutines.flow.d;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.subtitle.viewmodel.SubtitleDownloadViewModel$searchSubtitleList$1", f = "SubtitleDownloadViewModel.kt", l = {151}, m = "invokeSuspend")
@SourceDebugExtension
final class SubtitleDownloadViewModel$searchSubtitleList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ DownloadBean $downloadBean;
    final /* synthetic */ i $keyword;
    final /* synthetic */ List<SubtitleLanguageMapBean> $languageList;
    final /* synthetic */ String $languages;
    final /* synthetic */ String $nextPage;
    final /* synthetic */ int $perPage;
    int label;
    final /* synthetic */ SubtitleDownloadViewModel this$0;

    /* JADX INFO: renamed from: com.transsion.subtitle.viewmodel.SubtitleDownloadViewModel$searchSubtitleList$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsion/subtitle/bean/SubtitleSearchListBean;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.subtitle.viewmodel.SubtitleDownloadViewModel$searchSubtitleList$1$1", f = "SubtitleDownloadViewModel.kt", l = {140, 140}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<c, Continuation<? super Unit>, Object> {
        final /* synthetic */ DownloadBean $downloadBean;
        final /* synthetic */ i $keyword;
        final /* synthetic */ List<SubtitleLanguageMapBean> $languageList;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ SubtitleDownloadViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(SubtitleDownloadViewModel subtitleDownloadViewModel, DownloadBean downloadBean, i iVar, List<SubtitleLanguageMapBean> list, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = subtitleDownloadViewModel;
            this.$downloadBean = downloadBean;
            this.$keyword = iVar;
            this.$languageList = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$downloadBean, this.$keyword, this.$languageList, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(c cVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(cVar, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            c cVar;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 != 0) {
                if (i11 == 1) {
                    cVar = (c) this.L$0;
                    ResultKt.b(obj);
                } else {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return Unit.f67061a;
            }
            ResultKt.b(obj);
            cVar = (c) this.L$0;
            SubtitleDownloadViewModel subtitleDownloadViewModel = this.this$0;
            DownloadBean downloadBean = this.$downloadBean;
            i iVar = this.$keyword;
            List<SubtitleLanguageMapBean> list = this.$languageList;
            this.L$0 = cVar;
            this.label = 1;
            obj = subtitleDownloadViewModel.s(downloadBean, iVar, list, this);
            if (obj == objF) {
                return objF;
            }
            this.L$0 = null;
            this.label = 2;
            if (cVar.emit(obj, this) == objF) {
                return objF;
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsion.subtitle.viewmodel.SubtitleDownloadViewModel$searchSubtitleList$1$3, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsion/subtitle/bean/SubtitleSearchListBean;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.subtitle.viewmodel.SubtitleDownloadViewModel$searchSubtitleList$1$3", f = "SubtitleDownloadViewModel.kt", l = {150}, m = "invokeSuspend")
    static final class AnonymousClass3 extends SuspendLambda implements Function3<c, Throwable, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(c cVar, Throwable th2, Continuation<? super Unit> continuation) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(continuation);
            anonymousClass3.L$0 = cVar;
            return anonymousClass3.invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                c cVar = (c) this.L$0;
                this.label = 1;
                if (cVar.emit(null, this) == objF) {
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

    static final class a implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ SubtitleDownloadViewModel f54981a;

        a(SubtitleDownloadViewModel subtitleDownloadViewModel) {
            this.f54981a = subtitleDownloadViewModel;
        }

        @Override // kotlinx.coroutines.flow.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object emit(SubtitleSearchListBean subtitleSearchListBean, Continuation continuation) {
            this.f54981a.o().n(subtitleSearchListBean);
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SubtitleDownloadViewModel$searchSubtitleList$1(SubtitleDownloadViewModel subtitleDownloadViewModel, DownloadBean downloadBean, i iVar, List<SubtitleLanguageMapBean> list, String str, String str2, int i11, Continuation<? super SubtitleDownloadViewModel$searchSubtitleList$1> continuation) {
        super(2, continuation);
        this.this$0 = subtitleDownloadViewModel;
        this.$downloadBean = downloadBean;
        this.$keyword = iVar;
        this.$languageList = list;
        this.$languages = str;
        this.$nextPage = str2;
        this.$perPage = i11;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SubtitleDownloadViewModel$searchSubtitleList$1(this.this$0, this.$downloadBean, this.$keyword, this.$languageList, this.$languages, this.$nextPage, this.$perPage, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SubtitleDownloadViewModel$searchSubtitleList$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            final kotlinx.coroutines.flow.b bVarS = d.s(new AnonymousClass1(this.this$0, this.$downloadBean, this.$keyword, this.$languageList, null));
            final SubtitleDownloadViewModel subtitleDownloadViewModel = this.this$0;
            final i iVar = this.$keyword;
            final String str = this.$languages;
            final DownloadBean downloadBean = this.$downloadBean;
            final String str2 = this.$nextPage;
            final int i12 = this.$perPage;
            kotlinx.coroutines.flow.b bVarF = d.f(new kotlinx.coroutines.flow.b() { // from class: com.transsion.subtitle.viewmodel.SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1

                /* JADX INFO: renamed from: com.transsion.subtitle.viewmodel.SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1$2, reason: invalid class name */
                public static final class AnonymousClass2 implements c {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    final /* synthetic */ c f54989a;

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    final /* synthetic */ SubtitleDownloadViewModel f54990b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    final /* synthetic */ i f54991c;

                    /* JADX INFO: renamed from: d, reason: collision with root package name */
                    final /* synthetic */ String f54992d;

                    /* JADX INFO: renamed from: e, reason: collision with root package name */
                    final /* synthetic */ DownloadBean f54993e;

                    /* JADX INFO: renamed from: f, reason: collision with root package name */
                    final /* synthetic */ String f54994f;

                    /* JADX INFO: renamed from: g, reason: collision with root package name */
                    final /* synthetic */ int f54995g;

                    /* JADX INFO: renamed from: com.transsion.subtitle.viewmodel.SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1$2$1, reason: invalid class name */
                    @Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
                    @DebugMetadata(c = "com.transsion.subtitle.viewmodel.SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1$2", f = "SubtitleDownloadViewModel.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE, 50}, m = "emit")
                    public static final class AnonymousClass1 extends ContinuationImpl {
                        Object L$0;
                        int label;
                        /* synthetic */ Object result;

                        public AnonymousClass1(Continuation continuation) {
                            super(continuation);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            this.result = obj;
                            this.label |= Integer.MIN_VALUE;
                            return AnonymousClass2.this.emit(null, this);
                        }
                    }

                    public AnonymousClass2(c cVar, SubtitleDownloadViewModel subtitleDownloadViewModel, i iVar, String str, DownloadBean downloadBean, String str2, int i11) {
                        this.f54989a = cVar;
                        this.f54990b = subtitleDownloadViewModel;
                        this.f54991c = iVar;
                        this.f54992d = str;
                        this.f54993e = downloadBean;
                        this.f54994f = str2;
                        this.f54995g = i11;
                    }

                    /* JADX WARN: Code duplicated, block: B:31:0x007f A[RETURN] */
                    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                    @Override // kotlinx.coroutines.flow.c
                    public final Object emit(Object obj, Continuation continuation) throws Throwable {
                        AnonymousClass1 anonymousClass1;
                        c cVar;
                        c cVar2;
                        Object obj2;
                        if (continuation instanceof AnonymousClass1) {
                            anonymousClass1 = (AnonymousClass1) continuation;
                            int i11 = anonymousClass1.label;
                            if ((i11 & Integer.MIN_VALUE) != 0) {
                                anonymousClass1.label = i11 - Integer.MIN_VALUE;
                            } else {
                                anonymousClass1 = new AnonymousClass1(continuation);
                            }
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                        Object obj3 = anonymousClass1.result;
                        Object objF = IntrinsicsKt.f();
                        int i12 = anonymousClass1.label;
                        if (i12 != 0) {
                            if (i12 == 1) {
                                c cVar3 = (c) anonymousClass1.L$0;
                                ResultKt.b(obj3);
                                cVar = cVar3;
                            } else {
                                if (i12 != 2) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                ResultKt.b(obj3);
                            }
                            return Unit.f67061a;
                        }
                        ResultKt.b(obj3);
                        c cVar4 = this.f54989a;
                        SubtitleSearchListBean subtitleSearchListBean = (SubtitleSearchListBean) obj;
                        List<SubtitleItem> items = subtitleSearchListBean != null ? subtitleSearchListBean.getItems() : null;
                        if (items == null || items.isEmpty()) {
                            obj2 = subtitleSearchListBean;
                            cVar2 = cVar4;
                            SubtitleDownloadViewModel subtitleDownloadViewModel = this.f54990b;
                            i iVar = this.f54991c;
                            String str = this.f54992d;
                            DownloadBean downloadBean = this.f54993e;
                            String str2 = this.f54994f;
                            int i13 = this.f54995g;
                            anonymousClass1.L$0 = cVar4;
                            anonymousClass1.label = 1;
                            Object objR = subtitleDownloadViewModel.r(iVar, str, downloadBean, str2, i13, anonymousClass1);
                            if (objR == objF) {
                                return objF;
                            }
                            obj3 = objR;
                            cVar = cVar4;
                        }
                        obj2 = subtitleSearchListBean;
                        cVar2 = cVar4;
                        anonymousClass1.L$0 = null;
                        anonymousClass1.label = 2;
                        if (cVar2.emit(obj2, anonymousClass1) == objF) {
                            return objF;
                        }
                        return Unit.f67061a;
                        Object obj4 = obj3;
                        cVar2 = cVar;
                        obj2 = obj4;
                        obj2 = subtitleSearchListBean;
                        cVar2 = cVar4;
                        anonymousClass1.L$0 = null;
                        anonymousClass1.label = 2;
                        if (cVar2.emit(obj2, anonymousClass1) == objF) {
                            return objF;
                        }
                        return Unit.f67061a;
                    }
                }

                @Override // kotlinx.coroutines.flow.b
                public Object a(c cVar, Continuation continuation) {
                    Object objA = bVarS.a(new AnonymousClass2(cVar, subtitleDownloadViewModel, iVar, str, downloadBean, str2, i12), continuation);
                    return objA == IntrinsicsKt.f() ? objA : Unit.f67061a;
                }
            }, new AnonymousClass3(null));
            a aVar = new a(this.this$0);
            this.label = 1;
            if (bVarF.a(aVar, this) == objF) {
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
