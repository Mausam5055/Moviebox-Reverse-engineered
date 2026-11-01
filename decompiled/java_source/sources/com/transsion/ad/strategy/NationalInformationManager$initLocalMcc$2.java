package com.transsion.ad.strategy;

import android.content.Context;
import com.google.gson.reflect.TypeToken;
import com.transsion.ad.db.MbAdDatabase;
import com.transsion.ad.db.mcc.LocalMcc;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.strategy.NationalInformationManager$initLocalMcc$2", f = "NationalInformationManager.kt", l = {57, 67}, m = "invokeSuspend")
final class NationalInformationManager$initLocalMcc$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Context $context;
    Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NationalInformationManager$initLocalMcc$2(Context context, Continuation<? super NationalInformationManager$initLocalMcc$2> continuation) {
        super(2, continuation);
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new NationalInformationManager$initLocalMcc$2(this.$context, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((NationalInformationManager$initLocalMcc$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00d1  */
    /* JADX WARN: Instruction removed from duplicated block: B:32:0x00d1, please report this as an issue */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        Throwable thM457exceptionOrNullimpl;
        Context context;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 != 0) {
                if (i11 == 1) {
                    context = (Context) this.L$0;
                    ResultKt.b(obj);
                } else {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                oi.a.c(oi.a.f71022a, NationalInformationManager.f42224a.d() + " --> initLocalMcc() --> assets数据 -- 保存数据库成功 -- success", 0, false, 6, null);
                objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
                thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                if (thM457exceptionOrNullimpl != null) {
                    oi.a.c(oi.a.f71022a, NationalInformationManager.f42224a.d() + " --> initLocalMcc() --> assets数据 -- 保存数据库失败 -- error -- it = " + thM457exceptionOrNullimpl, 6, false, 4, null);
                }
                return Unit.f67061a;
            }
            ResultKt.b(obj);
            context = this.$context;
            Result.Companion companion = Result.INSTANCE;
            ki.a aVarY0 = MbAdDatabase.INSTANCE.b(context).y0();
            this.L$0 = context;
            this.label = 1;
            obj = aVarY0.d(this);
            if (obj == objF) {
                return objF;
            }
            if (((LocalMcc) obj) != null) {
                oi.a.c(oi.a.f71022a, NationalInformationManager.f42224a.d() + " --> initLocalMcc() --> 数据库已存在 --> success", 0, false, 6, null);
                return Unit.f67061a;
            }
            List list = (List) com.blankj.utilcode.util.o.e(ti.f.f76255a.b("local_mcc.json"), new TypeToken<List<? extends LocalMcc>>() { // from class: com.transsion.ad.strategy.NationalInformationManager$initLocalMcc$2$1$listType$1
            }.getType());
            ki.a aVarY1 = MbAdDatabase.INSTANCE.b(context).y0();
            Intrinsics.e(list);
            this.L$0 = null;
            this.label = 2;
            if (aVarY1.a(list, this) == objF) {
                return objF;
            }
            oi.a.c(oi.a.f71022a, NationalInformationManager.f42224a.d() + " --> initLocalMcc() --> assets数据 -- 保存数据库成功 -- success", 0, false, 6, null);
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
            thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
            if (thM457exceptionOrNullimpl != null) {
                oi.a.c(oi.a.f71022a, NationalInformationManager.f42224a.d() + " --> initLocalMcc() --> assets数据 -- 保存数据库失败 -- error -- it = " + thM457exceptionOrNullimpl, 6, false, 4, null);
            }
            return Unit.f67061a;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
    }
}
