package com.transsion.commercialization.gameres.aha;

import android.content.Context;
import android.view.View;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.i;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.commercialization.gameres.aha.AHAGameResLoader$loadGameInfo$1", f = "AHAGameResLoader.kt", l = {45}, m = "invokeSuspend")
final class AHAGameResLoader$loadGameInfo$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function1<View, Unit> $callback;
    final /* synthetic */ Context $context;
    final /* synthetic */ String $itemId;
    final /* synthetic */ String $pageName;
    int label;
    final /* synthetic */ AHAGameResLoader this$0;

    /* JADX INFO: renamed from: com.transsion.commercialization.gameres.aha.AHAGameResLoader$loadGameInfo$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsion/commercialization/gameres/aha/c;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.commercialization.gameres.aha.AHAGameResLoader$loadGameInfo$1$1", f = "AHAGameResLoader.kt", l = {35, 37, 40}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.c, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $itemId;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ AHAGameResLoader this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, AHAGameResLoader aHAGameResLoader, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$itemId = str;
            this.this$0 = aHAGameResLoader;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$itemId, this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.flow.c cVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(cVar, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlinx.coroutines.flow.c cVar;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 != 0) {
                if (i11 == 1) {
                    cVar = (kotlinx.coroutines.flow.c) this.L$0;
                    ResultKt.b(obj);
                } else {
                    if (i11 != 2 && i11 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return Unit.f67061a;
            }
            ResultKt.b(obj);
            cVar = (kotlinx.coroutines.flow.c) this.L$0;
            lg.a.f68839a.c("GameResLoader", "AHAGameRes getGameInfo,itemId:" + this.$itemId, true);
            a aVarG = this.this$0.g();
            String str = this.$itemId;
            String strF = this.this$0.f();
            this.L$0 = cVar;
            this.label = 1;
            obj = aVarG.a(str, strF, this);
            if (obj == objF) {
                return objF;
            }
            b bVar = (b) obj;
            Integer numA = bVar.a();
            if (numA != null && numA.intValue() == 1000) {
                c cVarB = bVar.b();
                this.L$0 = null;
                this.label = 2;
                if (cVar.emit(cVarB, this) == objF) {
                    return objF;
                }
            } else {
                lg.a.f68839a.c("GameResLoader", "AHAGameRes fail, code:" + bVar.a() + ", msg:" + bVar.c(), true);
                this.L$0 = null;
                this.label = 3;
                if (cVar.emit(null, this) == objF) {
                    return objF;
                }
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsion.commercialization.gameres.aha.AHAGameResLoader$loadGameInfo$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsion/commercialization/gameres/aha/c;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.commercialization.gameres.aha.AHAGameResLoader$loadGameInfo$1$2", f = "AHAGameResLoader.kt", l = {44}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.c, Throwable, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(kotlinx.coroutines.flow.c cVar, Throwable th2, Continuation<? super Unit> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation);
            anonymousClass2.L$0 = cVar;
            anonymousClass2.L$1 = th2;
            return anonymousClass2.invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                kotlinx.coroutines.flow.c cVar = (kotlinx.coroutines.flow.c) this.L$0;
                Throwable th2 = (Throwable) this.L$1;
                lg.a.f68839a.i("GameResLoader", "AHAGameRes getGameInfo error:" + th2.getMessage(), true);
                this.L$0 = null;
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    AHAGameResLoader$loadGameInfo$1(String str, AHAGameResLoader aHAGameResLoader, Function1<? super View, Unit> function1, Context context, String str2, Continuation<? super AHAGameResLoader$loadGameInfo$1> continuation) {
        super(2, continuation);
        this.$itemId = str;
        this.this$0 = aHAGameResLoader;
        this.$callback = function1;
        this.$context = context;
        this.$pageName = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AHAGameResLoader$loadGameInfo$1(this.$itemId, this.this$0, this.$callback, this.$context, this.$pageName, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((AHAGameResLoader$loadGameInfo$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.b bVarF = kotlinx.coroutines.flow.d.f(kotlinx.coroutines.flow.d.s(new AnonymousClass1(this.$itemId, this.this$0, null)), new AnonymousClass2(null));
            final Function1<View, Unit> function1 = this.$callback;
            final AHAGameResLoader aHAGameResLoader = this.this$0;
            final Context context = this.$context;
            final String str = this.$pageName;
            final String str2 = this.$itemId;
            kotlinx.coroutines.flow.c cVar = new kotlinx.coroutines.flow.c() { // from class: com.transsion.commercialization.gameres.aha.AHAGameResLoader$loadGameInfo$1.3

                /* JADX INFO: renamed from: com.transsion.commercialization.gameres.aha.AHAGameResLoader$loadGameInfo$1$3$1, reason: invalid class name */
                @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
                @DebugMetadata(c = "com.transsion.commercialization.gameres.aha.AHAGameResLoader$loadGameInfo$1$3$1", f = "AHAGameResLoader.kt", l = {}, m = "invokeSuspend")
                static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
                    final /* synthetic */ Function1<View, Unit> $callback;
                    final /* synthetic */ Context $context;
                    final /* synthetic */ String $itemId;
                    final /* synthetic */ String $pageName;
                    final /* synthetic */ c $response;
                    int label;
                    final /* synthetic */ AHAGameResLoader this$0;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    AnonymousClass1(c cVar, Function1<? super View, Unit> function1, AHAGameResLoader aHAGameResLoader, Context context, String str, String str2, Continuation<? super AnonymousClass1> continuation) {
                        super(2, continuation);
                        this.$response = cVar;
                        this.$callback = function1;
                        this.this$0 = aHAGameResLoader;
                        this.$context = context;
                        this.$pageName = str;
                        this.$itemId = str2;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        return new AnonymousClass1(this.$response, this.$callback, this.this$0, this.$context, this.$pageName, this.$itemId, continuation);
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
                        c cVar = this.$response;
                        if (cVar == null) {
                            this.$callback.invoke(null);
                        } else {
                            lg.a.C0828a.f(lg.a.f68839a, "GameResLoader", "AHAGameRes getGameInfo, success:" + cVar, false, 4, null);
                            Function1<View, Unit> function1 = this.$callback;
                            AHAGameResLoader aHAGameResLoader = this.this$0;
                            function1.invoke(aHAGameResLoader.e(this.$context, aHAGameResLoader.d(this.$pageName, this.$itemId, this.$response)));
                        }
                        return Unit.f67061a;
                    }
                }

                @Override // kotlinx.coroutines.flow.c
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public final Object emit(c cVar2, Continuation continuation) {
                    Object objG = i.g(y0.c(), new AnonymousClass1(cVar2, function1, aHAGameResLoader, context, str, str2, null), continuation);
                    return objG == IntrinsicsKt.f() ? objG : Unit.f67061a;
                }
            };
            this.label = 1;
            if (bVarF.a(cVar, this) == objF) {
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
