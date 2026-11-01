package com.transsion.ugcvideodetail.viewmodel;

import com.transsion.baselib.db.video.UGCCollectionVideoGroupDao;
import com.transsion.baselib.db.video.UGCVideoDetailPlayBean;
import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel$loadHistory$1", f = "UGCVideoDetailViewModel.kt", l = {177}, m = "invokeSuspend")
final class UGCVideoDetailViewModel$loadHistory$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $ugcVideoId;
    int label;
    final /* synthetic */ UGCVideoDetailViewModel this$0;

    /* JADX INFO: renamed from: com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel$loadHistory$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel$loadHistory$1$1", f = "UGCVideoDetailViewModel.kt", l = {159, 161, 162, 164, 166, 169, 172}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.c, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $ugcVideoId;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ UGCVideoDetailViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(UGCVideoDetailViewModel uGCVideoDetailViewModel, String str, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = uGCVideoDetailViewModel;
            this.$ugcVideoId = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$ugcVideoId, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.flow.c cVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(cVar, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0053  */
        /* JADX WARN: Code duplicated, block: B:18:0x0066 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:21:0x006b  */
        /* JADX WARN: Code duplicated, block: B:23:0x007c A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:26:0x0081  */
        /* JADX WARN: Code duplicated, block: B:28:0x008c A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:29:0x008d  */
        /* JADX WARN: Code duplicated, block: B:31:0x0098 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:32:0x0099  */
        /* JADX WARN: Code duplicated, block: B:34:0x00a4 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:35:0x00a5  */
        /* JADX WARN: Code duplicated, block: B:37:0x00b0 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlinx.coroutines.flow.c cVar;
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean;
            String str;
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean2;
            Object objF = IntrinsicsKt.f();
            switch (this.label) {
                case 0:
                    ResultKt.b(obj);
                    cVar = (kotlinx.coroutines.flow.c) this.L$0;
                    UGCVideoDetailPlayDao uGCVideoDetailPlayDaoK = this.this$0.K();
                    String str2 = this.$ugcVideoId;
                    this.L$0 = cVar;
                    this.label = 1;
                    obj = uGCVideoDetailPlayDaoK.r(str2, this);
                    if (obj == objF) {
                        return objF;
                    }
                    uGCVideoDetailPlayBean = (UGCVideoDetailPlayBean) obj;
                    if (uGCVideoDetailPlayBean == null) {
                        UGCCollectionVideoGroupDao uGCCollectionVideoGroupDaoZ = this.this$0.z();
                        String str3 = this.$ugcVideoId;
                        this.L$0 = cVar;
                        this.label = 2;
                        obj = uGCCollectionVideoGroupDaoZ.c(str3, this);
                        if (obj == objF) {
                            return objF;
                        }
                        str = (String) obj;
                        if (str != null) {
                            UGCVideoDetailPlayDao uGCVideoDetailPlayDaoK2 = this.this$0.K();
                            this.L$0 = cVar;
                            this.label = 3;
                            obj = uGCVideoDetailPlayDaoK2.c(str, this);
                            if (obj == objF) {
                                return objF;
                            }
                            uGCVideoDetailPlayBean2 = (UGCVideoDetailPlayBean) obj;
                            if (uGCVideoDetailPlayBean2 == null) {
                                this.L$0 = cVar;
                                this.label = 4;
                                if (cVar.emit(null, this) == objF) {
                                    return objF;
                                }
                            } else {
                                this.L$0 = cVar;
                                this.label = 5;
                                if (cVar.emit(uGCVideoDetailPlayBean2, this) == objF) {
                                    return objF;
                                }
                            }
                        } else {
                            this.L$0 = null;
                            this.label = 6;
                            if (cVar.emit(null, this) == objF) {
                                return objF;
                            }
                        }
                    } else {
                        this.L$0 = null;
                        this.label = 7;
                        if (cVar.emit(uGCVideoDetailPlayBean, this) == objF) {
                            return objF;
                        }
                    }
                    return Unit.f67061a;
                case 1:
                    cVar = (kotlinx.coroutines.flow.c) this.L$0;
                    ResultKt.b(obj);
                    uGCVideoDetailPlayBean = (UGCVideoDetailPlayBean) obj;
                    if (uGCVideoDetailPlayBean == null) {
                        UGCCollectionVideoGroupDao uGCCollectionVideoGroupDaoZ2 = this.this$0.z();
                        String str4 = this.$ugcVideoId;
                        this.L$0 = cVar;
                        this.label = 2;
                        obj = uGCCollectionVideoGroupDaoZ2.c(str4, this);
                        if (obj == objF) {
                            return objF;
                        }
                        str = (String) obj;
                        if (str != null) {
                            UGCVideoDetailPlayDao uGCVideoDetailPlayDaoK3 = this.this$0.K();
                            this.L$0 = cVar;
                            this.label = 3;
                            obj = uGCVideoDetailPlayDaoK3.c(str, this);
                            if (obj == objF) {
                                return objF;
                            }
                            uGCVideoDetailPlayBean2 = (UGCVideoDetailPlayBean) obj;
                            if (uGCVideoDetailPlayBean2 == null) {
                                this.L$0 = cVar;
                                this.label = 4;
                                if (cVar.emit(null, this) == objF) {
                                    return objF;
                                }
                            } else {
                                this.L$0 = cVar;
                                this.label = 5;
                                if (cVar.emit(uGCVideoDetailPlayBean2, this) == objF) {
                                    return objF;
                                }
                            }
                        } else {
                            this.L$0 = null;
                            this.label = 6;
                            if (cVar.emit(null, this) == objF) {
                                return objF;
                            }
                        }
                    } else {
                        this.L$0 = null;
                        this.label = 7;
                        if (cVar.emit(uGCVideoDetailPlayBean, this) == objF) {
                            return objF;
                        }
                    }
                    return Unit.f67061a;
                case 2:
                    cVar = (kotlinx.coroutines.flow.c) this.L$0;
                    ResultKt.b(obj);
                    str = (String) obj;
                    if (str != null) {
                        UGCVideoDetailPlayDao uGCVideoDetailPlayDaoK4 = this.this$0.K();
                        this.L$0 = cVar;
                        this.label = 3;
                        obj = uGCVideoDetailPlayDaoK4.c(str, this);
                        if (obj == objF) {
                            return objF;
                        }
                        uGCVideoDetailPlayBean2 = (UGCVideoDetailPlayBean) obj;
                        if (uGCVideoDetailPlayBean2 == null) {
                            this.L$0 = cVar;
                            this.label = 4;
                            if (cVar.emit(null, this) == objF) {
                                return objF;
                            }
                        } else {
                            this.L$0 = cVar;
                            this.label = 5;
                            if (cVar.emit(uGCVideoDetailPlayBean2, this) == objF) {
                                return objF;
                            }
                        }
                    } else {
                        this.L$0 = null;
                        this.label = 6;
                        if (cVar.emit(null, this) == objF) {
                            return objF;
                        }
                    }
                    return Unit.f67061a;
                case 3:
                    cVar = (kotlinx.coroutines.flow.c) this.L$0;
                    ResultKt.b(obj);
                    uGCVideoDetailPlayBean2 = (UGCVideoDetailPlayBean) obj;
                    if (uGCVideoDetailPlayBean2 == null) {
                        this.L$0 = cVar;
                        this.label = 4;
                        if (cVar.emit(null, this) == objF) {
                            return objF;
                        }
                    } else {
                        this.L$0 = cVar;
                        this.label = 5;
                        if (cVar.emit(uGCVideoDetailPlayBean2, this) == objF) {
                            return objF;
                        }
                    }
                    return Unit.f67061a;
                case 4:
                case 5:
                case 6:
                case 7:
                    ResultKt.b(obj);
                    return Unit.f67061a;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    /* JADX INFO: renamed from: com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel$loadHistory$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;", "", "e", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel$loadHistory$1$2", f = "UGCVideoDetailViewModel.kt", l = {176}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.c, Throwable, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(kotlinx.coroutines.flow.c cVar, Throwable th2, Continuation<? super Unit> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation);
            anonymousClass2.L$0 = cVar;
            return anonymousClass2.invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                kotlinx.coroutines.flow.c cVar = (kotlinx.coroutines.flow.c) this.L$0;
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

    static final class a implements kotlinx.coroutines.flow.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ UGCVideoDetailViewModel f56473a;

        a(UGCVideoDetailViewModel uGCVideoDetailViewModel) {
            this.f56473a = uGCVideoDetailViewModel;
        }

        @Override // kotlinx.coroutines.flow.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object emit(UGCVideoDetailPlayBean uGCVideoDetailPlayBean, Continuation continuation) {
            this.f56473a.Y().q(uGCVideoDetailPlayBean);
            this.f56473a.H().q(uGCVideoDetailPlayBean);
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCVideoDetailViewModel$loadHistory$1(UGCVideoDetailViewModel uGCVideoDetailViewModel, String str, Continuation<? super UGCVideoDetailViewModel$loadHistory$1> continuation) {
        super(2, continuation);
        this.this$0 = uGCVideoDetailViewModel;
        this.$ugcVideoId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCVideoDetailViewModel$loadHistory$1(this.this$0, this.$ugcVideoId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCVideoDetailViewModel$loadHistory$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.b bVarF = kotlinx.coroutines.flow.d.f(kotlinx.coroutines.flow.d.u(kotlinx.coroutines.flow.d.s(new AnonymousClass1(this.this$0, this.$ugcVideoId, null)), y0.b()), new AnonymousClass2(null));
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
