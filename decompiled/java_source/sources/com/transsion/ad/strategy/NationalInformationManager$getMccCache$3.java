package com.transsion.ad.strategy;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.transsion.ad.db.MbAdDatabase;
import com.transsion.ad.db.mcc.LocalMcc;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/n0;", "", "", "", "Lcom/transsion/ad/db/mcc/LocalMcc;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Ljava/util/Map;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.strategy.NationalInformationManager$getMccCache$3", f = "NationalInformationManager.kt", l = {39}, m = "invokeSuspend")
@SourceDebugExtension
final class NationalInformationManager$getMccCache$3 extends SuspendLambda implements Function2<n0, Continuation<? super Map<String, ? extends List<? extends LocalMcc>>>, Object> {
    int label;

    NationalInformationManager$getMccCache$3(Continuation<? super NationalInformationManager$getMccCache$3> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new NationalInformationManager$getMccCache$3(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Map<String, ? extends List<LocalMcc>>> continuation) {
        return ((NationalInformationManager$getMccCache$3) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            MbAdDatabase.Companion companion = MbAdDatabase.INSTANCE;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            ki.a aVarY0 = companion.b(applicationA).y0();
            this.label = 1;
            obj = aVarY0.c(this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj2 : (List) obj) {
            String lowerCase = ((LocalMcc) obj2).getIso().toLowerCase(Locale.ROOT);
            Intrinsics.g(lowerCase, "toLowerCase(...)");
            Object arrayList = linkedHashMap.get(lowerCase);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(lowerCase, arrayList);
            }
            ((List) arrayList).add(obj2);
        }
        NationalInformationManager.f42225b = linkedHashMap;
        return linkedHashMap;
    }
}
