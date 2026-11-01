package androidx.room.util;

import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.Transactor;
import androidx.room.n0;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¨\u0006\u0004"}, d2 = {"<anonymous>", "R", "transactor", "Landroidx/room/Transactor;", "androidx/room/util/DBUtil__DBUtilKt$internalPerform$2"}, k = 3, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$2$invokeSuspend$$inlined$internalPerform$1", f = "DBUtil.android.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_VISIBILITY_VALUE, 57, 59, 60, 67}, m = "invokeSuspend")
@SourceDebugExtension
public final class DBUtil__DBUtil_androidKt$performInTransactionSuspending$2$invokeSuspend$$inlined$internalPerform$1 extends SuspendLambda implements Function2<Transactor, Continuation<Object>, Object> {
    final /* synthetic */ Function1 $block$inlined;
    final /* synthetic */ boolean $inTransaction;
    final /* synthetic */ boolean $isReadOnly;
    final /* synthetic */ RoomDatabase $this_internalPerform;
    /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX INFO: renamed from: androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$2$invokeSuspend$$inlined$internalPerform$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\n¨\u0006\u0002"}, d2 = {"R", "Landroidx/room/n0;", "androidx/room/util/DBUtil__DBUtilKt$internalPerform$2$result$1", "<anonymous>"}, k = 3, mv = {2, 0, 0})
    @DebugMetadata(c = "androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$2$invokeSuspend$$inlined$internalPerform$1$1", f = "DBUtil.android.kt", l = {60}, m = "invokeSuspend")
    @SourceDebugExtension
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<Object>, Object> {
        final /* synthetic */ Function1 $block$inlined;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Continuation continuation, Function1 function1) {
            super(2, continuation);
            this.$block$inlined = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation, this.$block$inlined);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<Object> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                Function1 function1 = this.$block$inlined;
                this.label = 1;
                InlineMarker.c(6);
                obj = function1.invoke(this);
                InlineMarker.c(7);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return obj;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DBUtil__DBUtil_androidKt$performInTransactionSuspending$2$invokeSuspend$$inlined$internalPerform$1(boolean z10, boolean z11, RoomDatabase roomDatabase, Continuation continuation, Function1 function1) {
        super(2, continuation);
        this.$inTransaction = z10;
        this.$isReadOnly = z11;
        this.$this_internalPerform = roomDatabase;
        this.$block$inlined = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DBUtil__DBUtil_androidKt$performInTransactionSuspending$2$invokeSuspend$$inlined$internalPerform$1 dBUtil__DBUtil_androidKt$performInTransactionSuspending$2$invokeSuspend$$inlined$internalPerform$1 = new DBUtil__DBUtil_androidKt$performInTransactionSuspending$2$invokeSuspend$$inlined$internalPerform$1(this.$inTransaction, this.$isReadOnly, this.$this_internalPerform, continuation, this.$block$inlined);
        dBUtil__DBUtil_androidKt$performInTransactionSuspending$2$invokeSuspend$$inlined$internalPerform$1.L$0 = obj;
        return dBUtil__DBUtil_androidKt$performInTransactionSuspending$2$invokeSuspend$$inlined$internalPerform$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Transactor transactor, Continuation<Object> continuation) {
        return ((DBUtil__DBUtil_androidKt$performInTransactionSuspending$2$invokeSuspend$$inlined$internalPerform$1) create(transactor, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00a7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:39:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:41:0x00b6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:42:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:45:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:51:? A[RETURN, SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Transactor.SQLiteTransactionType sQLiteTransactionType;
        Transactor transactor;
        Transactor transactor2;
        Transactor.SQLiteTransactionType sQLiteTransactionType2;
        Object objB;
        Object obj2;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            Transactor transactor3 = (Transactor) this.L$0;
            if (!this.$inTransaction) {
                Function1 function1 = this.$block$inlined;
                this.label = 5;
                InlineMarker.c(6);
                Object objInvoke = function1.invoke(this);
                InlineMarker.c(7);
                return objInvoke == objF ? objF : objInvoke;
            }
            boolean z10 = this.$isReadOnly;
            sQLiteTransactionType = z10 ? Transactor.SQLiteTransactionType.DEFERRED : Transactor.SQLiteTransactionType.IMMEDIATE;
            if (z10) {
                transactor = transactor3;
            } else {
                this.L$0 = transactor3;
                this.L$1 = sQLiteTransactionType;
                this.label = 1;
                Object objB2 = transactor3.b(this);
                if (objB2 == objF) {
                    return objF;
                }
                Transactor.SQLiteTransactionType sQLiteTransactionType3 = sQLiteTransactionType;
                transactor2 = transactor3;
                obj = objB2;
                sQLiteTransactionType2 = sQLiteTransactionType3;
            }
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(null, this.$block$inlined);
            this.L$0 = transactor;
            this.L$1 = null;
            this.label = 3;
            obj = transactor.a(sQLiteTransactionType, anonymousClass1, this);
            if (obj == objF) {
                return objF;
            }
            if (!this.$isReadOnly) {
                return obj;
            }
            this.L$0 = obj;
            this.label = 4;
            objB = transactor.b(this);
            if (objB == objF) {
                return objF;
            }
            obj2 = obj;
            obj = objB;
            if (!((Boolean) obj).booleanValue()) {
                this.$this_internalPerform.y().x();
            }
            return obj2;
        }
        if (i11 == 1) {
            sQLiteTransactionType2 = (Transactor.SQLiteTransactionType) this.L$1;
            transactor2 = (Transactor) this.L$0;
            ResultKt.b(obj);
        } else if (i11 == 2) {
            sQLiteTransactionType2 = (Transactor.SQLiteTransactionType) this.L$1;
            transactor2 = (Transactor) this.L$0;
            ResultKt.b(obj);
            Transactor transactor4 = transactor2;
            sQLiteTransactionType = sQLiteTransactionType2;
            transactor = transactor4;
            AnonymousClass1 anonymousClass2 = new AnonymousClass1(null, this.$block$inlined);
            this.L$0 = transactor;
            this.L$1 = null;
            this.label = 3;
            obj = transactor.a(sQLiteTransactionType, anonymousClass2, this);
            if (obj == objF) {
                return objF;
            }
            if (!this.$isReadOnly) {
                return obj;
            }
            this.L$0 = obj;
            this.label = 4;
            objB = transactor.b(this);
            if (objB == objF) {
                return objF;
            }
            obj2 = obj;
            obj = objB;
        } else if (i11 == 3) {
            transactor = (Transactor) this.L$0;
            ResultKt.b(obj);
            if (!this.$isReadOnly) {
                return obj;
            }
            this.L$0 = obj;
            this.label = 4;
            objB = transactor.b(this);
            if (objB == objF) {
                return objF;
            }
            obj2 = obj;
            obj = objB;
        } else {
            if (i11 != 4) {
                if (i11 != 5) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
                return obj;
            }
            obj2 = this.L$0;
            ResultKt.b(obj);
        }
        if (!((Boolean) obj).booleanValue()) {
            this.$this_internalPerform.y().x();
        }
        return obj2;
        if (!((Boolean) obj).booleanValue()) {
            InvalidationTracker invalidationTrackerY = this.$this_internalPerform.y();
            this.L$0 = transactor2;
            this.L$1 = sQLiteTransactionType2;
            this.label = 2;
            if (invalidationTrackerY.D(this) == objF) {
                return objF;
            }
        }
        Transactor transactor5 = transactor2;
        sQLiteTransactionType = sQLiteTransactionType2;
        transactor = transactor5;
        AnonymousClass1 anonymousClass3 = new AnonymousClass1(null, this.$block$inlined);
        this.L$0 = transactor;
        this.L$1 = null;
        this.label = 3;
        obj = transactor.a(sQLiteTransactionType, anonymousClass3, this);
        if (obj == objF) {
            return objF;
        }
        if (!this.$isReadOnly) {
            return obj;
        }
        this.L$0 = obj;
        this.label = 4;
        objB = transactor.b(this);
        if (objB == objF) {
            return objF;
        }
        obj2 = obj;
        obj = objB;
        if (!((Boolean) obj).booleanValue()) {
            this.$this_internalPerform.y().x();
        }
        return obj2;
    }
}
