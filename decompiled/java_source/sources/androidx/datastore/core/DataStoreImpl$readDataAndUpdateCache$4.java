package androidx.datastore.core;

import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0004\u0012\u00020\u00010\u0003\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"T", "", "locked", "Lkotlin/Pair;", "Landroidx/datastore/core/r;", "<anonymous>", "(Z)Lkotlin/Pair;"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$4", f = "DataStoreImpl.kt", l = {306, Sdk$SDKError.Reason.ASSET_FAILED_TO_DELETE_VALUE}, m = "invokeSuspend")
final class DataStoreImpl$readDataAndUpdateCache$4 extends SuspendLambda implements Function2<Boolean, Continuation<? super Pair<? extends r, ? extends Boolean>>, Object> {
    final /* synthetic */ int $cachedVersion;
    Object L$0;
    /* synthetic */ boolean Z$0;
    int label;
    final /* synthetic */ DataStoreImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DataStoreImpl$readDataAndUpdateCache$4(DataStoreImpl dataStoreImpl, int i11, Continuation<? super DataStoreImpl$readDataAndUpdateCache$4> continuation) {
        super(2, continuation);
        this.this$0 = dataStoreImpl;
        this.$cachedVersion = i11;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DataStoreImpl$readDataAndUpdateCache$4 dataStoreImpl$readDataAndUpdateCache$4 = new DataStoreImpl$readDataAndUpdateCache$4(this.this$0, this.$cachedVersion, continuation);
        dataStoreImpl$readDataAndUpdateCache$4.Z$0 = ((Boolean) obj).booleanValue();
        return dataStoreImpl$readDataAndUpdateCache$4;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return invoke(((Boolean) obj).booleanValue(), (Continuation<? super Pair<? extends r, Boolean>>) obj2);
    }

    public final Object invoke(boolean z10, Continuation<? super Pair<? extends r, Boolean>> continuation) {
        return ((DataStoreImpl$readDataAndUpdateCache$4) create(Boolean.valueOf(z10), continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r4v0 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Throwable th2;
        int iIntValue;
        ?? r11;
        ?? r12;
        r rVar;
        ?? r13;
        Object objF = IntrinsicsKt.f();
        ?? r14 = this.label;
        try {
            if (r14 == 0) {
                ResultKt.b(obj);
                boolean z10 = this.Z$0;
                DataStoreImpl dataStoreImpl = this.this$0;
                this.Z$0 = z10;
                this.label = 1;
                obj = dataStoreImpl.y(z10, this);
                r14 = z10;
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (r14 != 1) {
                    if (r14 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    boolean z11 = this.Z$0;
                    th2 = (Throwable) this.L$0;
                    ResultKt.b(obj);
                    r12 = z11;
                    iIntValue = ((Number) obj).intValue();
                    r11 = r12;
                    o oVar = new o(th2, iIntValue);
                    r13 = r11;
                    rVar = oVar;
                    return TuplesKt.a(rVar, Boxing.a(r13));
                }
                boolean z12 = this.Z$0;
                ResultKt.b(obj);
                r14 = z12;
            }
            rVar = (r) obj;
            r13 = r14;
        } catch (Throwable th3) {
            if (r14 != 0) {
                k kVarR = this.this$0.r();
                this.L$0 = th3;
                this.Z$0 = r14;
                this.label = 2;
                Object objA = kVarR.a(this);
                if (objA == objF) {
                    return objF;
                }
                r12 = r14;
                th2 = th3;
                obj = objA;
            } else {
                ?? r15 = r14;
                th2 = th3;
                iIntValue = this.$cachedVersion;
                r11 = r15 == true ? 1 : 0;
            }
            o oVar2 = new o(th2, iIntValue);
            r13 = r11;
            rVar = oVar2;
            return TuplesKt.a(rVar, Boxing.a(r13));
        }
        return TuplesKt.a(rVar, Boxing.a(r13));
    }
}
