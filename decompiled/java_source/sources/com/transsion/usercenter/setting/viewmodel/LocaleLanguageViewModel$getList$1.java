package com.transsion.usercenter.setting.viewmodel;

import com.transsion.baselib.locale.d;
import java.util.ArrayList;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.usercenter.setting.viewmodel.LocaleLanguageViewModel$getList$1", f = "LocaleLanguageViewModel.kt", l = {}, m = "invokeSuspend")
final class LocaleLanguageViewModel$getList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ LocaleLanguageViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LocaleLanguageViewModel$getList$1(LocaleLanguageViewModel localeLanguageViewModel, Continuation<? super LocaleLanguageViewModel$getList$1> continuation) {
        super(2, continuation);
        this.this$0 = localeLanguageViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LocaleLanguageViewModel$getList$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LocaleLanguageViewModel$getList$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        boolean zC;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        d.b bVar = d.f43297f;
        Locale localeJ = bVar.e().j();
        if (localeJ != null) {
            LocaleLanguageViewModel localeLanguageViewModel = this.this$0;
            boolean zQ = bVar.e().q(localeJ);
            String language = localeJ.getLanguage();
            String[] strArrG = bVar.g();
            String[] strArrF = bVar.f();
            ArrayList arrayList = new ArrayList();
            int length = strArrG.length;
            int i11 = 0;
            while (i11 < length) {
                vw.a aVar = new vw.a();
                aVar.c(strArrG[i11]);
                aVar.e(strArrF[i11]);
                if (zQ) {
                    zC = i11 == 0;
                } else {
                    zC = Intrinsics.c(language, strArrF[i11]);
                }
                aVar.d(zC);
                arrayList.add(aVar);
                i11++;
            }
            localeLanguageViewModel.e().n(arrayList);
        }
        return Unit.f67061a;
    }
}
