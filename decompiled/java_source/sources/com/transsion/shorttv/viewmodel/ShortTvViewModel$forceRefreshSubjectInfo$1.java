package com.transsion.shorttv.viewmodel;

import androidx.p009lifecycle.b0;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.shorttv.bean.ShortTVFavInfo;
import com.transsion.shorttv.bean.Subject;
import com.transsion.shorttv.db.ShortTvAdUnlockDao;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$forceRefreshSubjectInfo$1", f = "ShortTvViewModel.kt", l = {875, 888, 895}, m = "invokeSuspend")
final class ShortTvViewModel$forceRefreshSubjectInfo$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $subjectId;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ ShortTvViewModel this$0;

    /* JADX INFO: renamed from: com.transsion.shorttv.viewmodel.ShortTvViewModel$forceRefreshSubjectInfo$1$3, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$forceRefreshSubjectInfo$1$3", f = "ShortTvViewModel.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass3 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Subject $newSubject;
        int label;
        final /* synthetic */ ShortTvViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(ShortTvViewModel shortTvViewModel, Subject subject, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.this$0 = shortTvViewModel;
            this.$newSubject = subject;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass3(this.this$0, this.$newSubject, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            this.this$0.f53685g.q(this.$newSubject);
            b0 b0Var = this.this$0.D;
            ShortTVFavInfo shortTVFavInfo = this.$newSubject.getShortTVFavInfo();
            b0Var.q(shortTVFavInfo != null ? Boxing.a(shortTVFavInfo.getHasFavorite()) : null);
            b0 b0VarL0 = this.this$0.l0();
            Unit unit = Unit.f67061a;
            b0VarL0.q(unit);
            return unit;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvViewModel$forceRefreshSubjectInfo$1(ShortTvViewModel shortTvViewModel, String str, Continuation<? super ShortTvViewModel$forceRefreshSubjectInfo$1> continuation) {
        super(2, continuation);
        this.this$0 = shortTvViewModel;
        this.$subjectId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ShortTvViewModel$forceRefreshSubjectInfo$1 shortTvViewModel$forceRefreshSubjectInfo$1 = new ShortTvViewModel$forceRefreshSubjectInfo$1(this.this$0, this.$subjectId, continuation);
        shortTvViewModel$forceRefreshSubjectInfo$1.L$0 = obj;
        return shortTvViewModel$forceRefreshSubjectInfo$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTvViewModel$forceRefreshSubjectInfo$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:59:0x00e5 A[PHI: r1
  0x00e5: PHI (r1v5 com.transsion.shorttv.bean.Subject) = 
  (r1v30 com.transsion.shorttv.bean.Subject)
  (r1v31 com.transsion.shorttv.bean.Subject)
  (r1v32 com.transsion.shorttv.bean.Subject)
 binds: [B:47:0x00b9, B:52:0x00c8, B:54:0x00ce] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:65:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:68:0x012b A[RETURN] */
    /* JADX WARN: Instruction removed from duplicated block: B:65:0x00fb, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v6, types: [com.transsion.shorttv.bean.Subject] */
    /* JADX WARN: Type inference failed for: r1v7 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Subject subject;
        Object objM454constructorimpl;
        Subject subject2;
        Unit unit;
        ?? r11;
        Throwable thM457exceptionOrNullimpl;
        a2 a2VarC;
        AnonymousClass3 anonymousClass3;
        Subject subject3;
        com.transsion.shorttv.db.e eVar;
        Set setC;
        Object objF = IntrinsicsKt.f();
        ?? r12 = this.label;
        try {
            try {
                if (r12 != 0) {
                    if (r12 == 1) {
                        ResultKt.b(obj);
                    } else if (r12 == 2) {
                        Subject subject4 = (Subject) this.L$0;
                        ResultKt.b(obj);
                        subject3 = subject4;
                        subject3 = subject;
                        eVar = (com.transsion.shorttv.db.e) obj;
                        subject2 = subject3;
                        if (eVar != null || (setC = eVar.c()) == null) {
                            subject2 = subject3;
                            unit = null;
                            r12 = subject2;
                        } else {
                            if (!setC.isEmpty()) {
                                subject2 = subject3;
                                subject3.getAdUnlockedEps().addAll(setC);
                            }
                            subject2 = subject3;
                            unit = Unit.f67061a;
                            r12 = subject3;
                        }
                        objM454constructorimpl = Result.m454constructorimpl(unit);
                        r11 = r12;
                        thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                        if (thM457exceptionOrNullimpl != null) {
                            lg.a.C0828a.l(lg.a.f68839a, "ShortTvViewModel", "forceRefreshSubjectInfo loadAdUnlockedEps error: " + thM457exceptionOrNullimpl, false, 4, null);
                        }
                        a2VarC = y0.c();
                        anonymousClass3 = new AnonymousClass3(this.this$0, r11, null);
                        this.L$0 = null;
                        this.label = 3;
                        if (kotlinx.coroutines.i.g(a2VarC, anonymousClass3, this) == objF) {
                            return objF;
                        }
                    } else {
                        if (r12 != 3) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.b(obj);
                    }
                    return Unit.f67061a;
                }
                ResultKt.b(obj);
                n0 n0Var = (n0) this.L$0;
                os.a aVar = this.this$0.f53676a;
                String str = this.$subjectId;
                this.L$0 = n0Var;
                this.label = 1;
                obj = os.a.C0875a.d(aVar, str, null, this, 2, null);
                if (obj == objF) {
                    return objF;
                }
                BaseDto baseDto = (BaseDto) obj;
                Subject subject5 = baseDto != null ? (Subject) baseDto.getData() : null;
                zr.b.f79451a.e(subject5);
                if (subject5 != null) {
                    Subject subject6 = (Subject) this.this$0.f53685g.f();
                    subject5.setOps(subject6 != null ? subject6.getOps() : null);
                }
                this.this$0.r1(this.$subjectId, subject5 != null ? subject5.getShortTVFavInfo() : null);
                subject = subject5;
            } catch (Throwable th2) {
                Result.Companion companion = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
                r11 = r12;
            }
        } catch (Exception e11) {
            lg.a.C0828a.l(lg.a.f68839a, "ShortTvViewModel", "forceRefreshSubjectInfo error: " + e11, false, 4, null);
            subject = null;
        }
        if (subject == null) {
            return Unit.f67061a;
        }
        ShortTvViewModel shortTvViewModel = this.this$0;
        String str2 = this.$subjectId;
        Result.Companion companion2 = Result.INSTANCE;
        ShortTvAdUnlockDao shortTvAdUnlockDaoU = shortTvViewModel.U();
        subject2 = subject;
        if (shortTvAdUnlockDaoU != null) {
            this.L$0 = subject;
            this.label = 2;
            obj = shortTvAdUnlockDaoU.a(str2, this);
            if (obj == objF) {
                subject3 = subject;
                return objF;
            }
            subject3 = subject;
            eVar = (com.transsion.shorttv.db.e) obj;
            subject2 = subject3;
            if (eVar != null) {
                subject2 = subject3;
                unit = null;
                r12 = subject2;
            } else {
                subject2 = subject3;
                unit = null;
                r12 = subject2;
            }
        } else {
            subject2 = subject3;
            unit = null;
            r12 = subject2;
        }
        objM454constructorimpl = Result.m454constructorimpl(unit);
        r11 = r12;
        thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.C0828a.l(lg.a.f68839a, "ShortTvViewModel", "forceRefreshSubjectInfo loadAdUnlockedEps error: " + thM457exceptionOrNullimpl, false, 4, null);
        }
        a2VarC = y0.c();
        anonymousClass3 = new AnonymousClass3(this.this$0, r11, null);
        this.L$0 = null;
        this.label = 3;
        if (kotlinx.coroutines.i.g(a2VarC, anonymousClass3, this) == objF) {
            return objF;
        }
        return Unit.f67061a;
    }
}
