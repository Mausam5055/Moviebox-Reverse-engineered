package com.google.firebase.datastorage;

import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.d;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u0010\u0004\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lkotlinx/coroutines/n0;", "", "Landroidx/datastore/preferences/core/c$a;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)Ljava/util/Map;"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "com.google.firebase.datastorage.JavaDataStorage$getAllSync$1", f = "JavaDataStorage.kt", l = {170}, m = "invokeSuspend")
final class JavaDataStorage$getAllSync$1 extends SuspendLambda implements Function2<n0, Continuation<? super Map<androidx.datastore.preferences.core.c.a, ? extends Object>>, Object> {
    int label;
    final /* synthetic */ JavaDataStorage this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    JavaDataStorage$getAllSync$1(JavaDataStorage javaDataStorage, Continuation<? super JavaDataStorage$getAllSync$1> continuation) {
        super(2, continuation);
        this.this$0 = javaDataStorage;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new JavaDataStorage$getAllSync$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Map<androidx.datastore.preferences.core.c.a, ? extends Object>> continuation) {
        return ((JavaDataStorage$getAllSync$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Map mapA;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.b data = this.this$0.f31813e.getData();
            this.label = 1;
            obj = d.r(data, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        androidx.datastore.preferences.core.c cVar = (androidx.datastore.preferences.core.c) obj;
        return (cVar == null || (mapA = cVar.a()) == null) ? MapsKt.h() : mapA;
    }
}
