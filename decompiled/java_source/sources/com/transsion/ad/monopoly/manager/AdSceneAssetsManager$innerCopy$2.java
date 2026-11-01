package com.transsion.ad.monopoly.manager;

import android.text.TextUtils;
import com.transsion.ad.scene.d;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import ti.f;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.monopoly.manager.AdSceneAssetsManager$innerCopy$2", f = "AdSceneAssetsManager.kt", l = {}, m = "invokeSuspend")
final class AdSceneAssetsManager$innerCopy$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;

    AdSceneAssetsManager$innerCopy$2(Continuation<? super AdSceneAssetsManager$innerCopy$2> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AdSceneAssetsManager$innerCopy$2(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((AdSceneAssetsManager$innerCopy$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        try {
            Result.Companion companion = Result.INSTANCE;
            d dVar = d.f42204a;
            if (dVar.e()) {
                oi.b.a.c(AdSceneAssetsManager.f42158b, 4, "innerCopy() --> 数据已经存在", null, false, 12, null);
                return Unit.f67061a;
            }
            String strB = f.f76255a.b("assets_scene.json");
            if (TextUtils.isEmpty(strB)) {
                oi.b.a.c(AdSceneAssetsManager.f42158b, 6, "innerCopy() --> assets数据 -- 保存数据库失败 -- fail fail fail -- readAssets = null", null, false, 12, null);
            } else {
                oi.b.a.c(AdSceneAssetsManager.f42158b, 4, "innerCopy() --> readAssets = " + strB, null, false, 12, null);
                dVar.f(strB);
            }
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
            Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
            if (thM457exceptionOrNullimpl != null) {
                oi.b.a.c(AdSceneAssetsManager.f42158b, 6, "innerCopy() --> 保存本地数据异常 -- error error error --> it = " + thM457exceptionOrNullimpl, null, false, 12, null);
            }
            return Unit.f67061a;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
    }
}
