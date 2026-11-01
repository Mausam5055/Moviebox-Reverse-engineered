package com.transsion.shorttv.viewmodel;

import androidx.core.view.InputDeviceCompat;
import com.transsion.shorttv.db.ShortTvAdUnlockDao;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv.viewmodel.ShortTvDownloadViewModel$saveAdUnlockedEps$1", f = "ShortTvDownloadViewModel.kt", l = {InputDeviceCompat.SOURCE_KEYBOARD}, m = "invokeSuspend")
final class ShortTvDownloadViewModel$saveAdUnlockedEps$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Set<Integer> $eps;
    final /* synthetic */ String $subjectId;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ ShortTvDownloadViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvDownloadViewModel$saveAdUnlockedEps$1(String str, Set<Integer> set, ShortTvDownloadViewModel shortTvDownloadViewModel, Continuation<? super ShortTvDownloadViewModel$saveAdUnlockedEps$1> continuation) {
        super(2, continuation);
        this.$subjectId = str;
        this.$eps = set;
        this.this$0 = shortTvDownloadViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ShortTvDownloadViewModel$saveAdUnlockedEps$1 shortTvDownloadViewModel$saveAdUnlockedEps$1 = new ShortTvDownloadViewModel$saveAdUnlockedEps$1(this.$subjectId, this.$eps, this.this$0, continuation);
        shortTvDownloadViewModel$saveAdUnlockedEps$1.L$0 = obj;
        return shortTvDownloadViewModel$saveAdUnlockedEps$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTvDownloadViewModel$saveAdUnlockedEps$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0066  */
    /* JADX WARN: Instruction removed from duplicated block: B:24:0x0066, please report this as an issue */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        Throwable thM457exceptionOrNullimpl;
        Unit unit;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                String str = this.$subjectId;
                Set<Integer> set = this.$eps;
                ShortTvDownloadViewModel shortTvDownloadViewModel = this.this$0;
                Result.Companion companion = Result.INSTANCE;
                com.transsion.shorttv.db.e eVar = new com.transsion.shorttv.db.e(str, CollectionsKt.s0(set, ",", null, null, 0, null, null, 62, null));
                ShortTvAdUnlockDao shortTvAdUnlockDaoH = shortTvDownloadViewModel.h();
                if (shortTvAdUnlockDaoH != null) {
                    this.label = 1;
                    if (shortTvAdUnlockDaoH.b(eVar, this) == objF) {
                        return objF;
                    }
                } else {
                    unit = null;
                }
                objM454constructorimpl = Result.m454constructorimpl(unit);
                thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                if (thM457exceptionOrNullimpl != null) {
                    lg.a.C0828a.l(lg.a.f68839a, "ShortTvDownload", "saveAdUnlockedEps error: " + thM457exceptionOrNullimpl, false, 4, null);
                }
                return Unit.f67061a;
            }
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            unit = Unit.f67061a;
            objM454constructorimpl = Result.m454constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.C0828a.l(lg.a.f68839a, "ShortTvDownload", "saveAdUnlockedEps error: " + thM457exceptionOrNullimpl, false, 4, null);
        }
        return Unit.f67061a;
    }
}
