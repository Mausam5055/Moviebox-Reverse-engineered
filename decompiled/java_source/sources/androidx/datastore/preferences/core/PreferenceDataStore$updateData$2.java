package androidx.datastore.preferences.core;

import com.mbridge.msdk.out.MBSupportMuteAdType;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Landroidx/datastore/preferences/core/c;", "it", "<anonymous>", "(Landroidx/datastore/preferences/core/c;)Landroidx/datastore/preferences/core/c;"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.datastore.preferences.core.PreferenceDataStore$updateData$2", f = "PreferenceDataStoreFactory.kt", l = {MBSupportMuteAdType.REWARD_VIDEO}, m = "invokeSuspend")
final class PreferenceDataStore$updateData$2 extends SuspendLambda implements Function2<c, Continuation<? super c>, Object> {
    final /* synthetic */ Function2<c, Continuation<? super c>, Object> $transform;
    /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    PreferenceDataStore$updateData$2(Function2<? super c, ? super Continuation<? super c>, ? extends Object> function2, Continuation<? super PreferenceDataStore$updateData$2> continuation) {
        super(2, continuation);
        this.$transform = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        PreferenceDataStore$updateData$2 preferenceDataStore$updateData$2 = new PreferenceDataStore$updateData$2(this.$transform, continuation);
        preferenceDataStore$updateData$2.L$0 = obj;
        return preferenceDataStore$updateData$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(c cVar, Continuation<? super c> continuation) {
        return ((PreferenceDataStore$updateData$2) create(cVar, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            c cVar = (c) this.L$0;
            Function2<c, Continuation<? super c>, Object> function2 = this.$transform;
            this.label = 1;
            obj = function2.invoke(cVar, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        c cVar2 = (c) obj;
        Intrinsics.f(cVar2, "null cannot be cast to non-null type androidx.datastore.preferences.core.MutablePreferences");
        ((MutablePreferences) cVar2).f();
        return cVar2;
    }
}
