package kotlinx.coroutines.flow;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\b\u001a\u00020\u0007*\b\u0012\u0004\u0012\u00020\u00010\u00002\u0015\u0010\u0006\u001a\u00110\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005H\n¢\u0006\u0004\b\b\u0010\t"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lkotlinx/coroutines/flow/SharingCommand;", "", "Lkotlin/ParameterName;", "name", AppMeasurementSdk.ConditionalUserProperty.VALUE, "count", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;I)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.StartedWhileSubscribed$command$1", f = "SharingStarted.kt", l = {174, 176, 178, 179, 181}, m = "invokeSuspend")
final class StartedWhileSubscribed$command$1 extends SuspendLambda implements Function3<c, Integer, Continuation<? super Unit>, Object> {
    /* synthetic */ int I$0;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ StartedWhileSubscribed this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    StartedWhileSubscribed$command$1(StartedWhileSubscribed startedWhileSubscribed, Continuation<? super StartedWhileSubscribed$command$1> continuation) {
        super(3, continuation);
        this.this$0 = startedWhileSubscribed;
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
        return invoke((c) obj, ((Number) obj2).intValue(), (Continuation<? super Unit>) obj3);
    }

    public final Object invoke(c cVar, int i11, Continuation<? super Unit> continuation) {
        StartedWhileSubscribed$command$1 startedWhileSubscribed$command$1 = new StartedWhileSubscribed$command$1(this.this$0, continuation);
        startedWhileSubscribed$command$1.L$0 = cVar;
        startedWhileSubscribed$command$1.I$0 = i11;
        return startedWhileSubscribed$command$1.invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0070  */
    /* JADX WARN: Code duplicated, block: B:28:0x007c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:31:0x008d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:34:0x009b A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        c cVar;
        SharingCommand sharingCommand;
        long j11;
        SharingCommand sharingCommand2;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 != 1) {
                if (i11 == 2) {
                    cVar = (c) this.L$0;
                    ResultKt.b(obj);
                    if (this.this$0.f67769c > 0) {
                        sharingCommand = SharingCommand.STOP;
                        this.L$0 = cVar;
                        this.label = 3;
                        if (cVar.emit(sharingCommand, this) == objF) {
                            return objF;
                        }
                        j11 = this.this$0.f67769c;
                        this.L$0 = cVar;
                        this.label = 4;
                        if (kotlinx.coroutines.u0.a(j11, this) == objF) {
                            return objF;
                        }
                    }
                } else if (i11 == 3) {
                    cVar = (c) this.L$0;
                    ResultKt.b(obj);
                    j11 = this.this$0.f67769c;
                    this.L$0 = cVar;
                    this.label = 4;
                    if (kotlinx.coroutines.u0.a(j11, this) == objF) {
                        return objF;
                    }
                } else if (i11 == 4) {
                    cVar = (c) this.L$0;
                    ResultKt.b(obj);
                } else if (i11 != 5) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                sharingCommand2 = SharingCommand.STOP_AND_RESET_REPLAY_CACHE;
                this.L$0 = null;
                this.label = 5;
                if (cVar.emit(sharingCommand2, this) == objF) {
                    return objF;
                }
            }
            ResultKt.b(obj);
        } else {
            ResultKt.b(obj);
            cVar = (c) this.L$0;
            if (this.I$0 > 0) {
                SharingCommand sharingCommand3 = SharingCommand.START;
                this.label = 1;
                if (cVar.emit(sharingCommand3, this) == objF) {
                    return objF;
                }
            } else {
                long j12 = this.this$0.f67768b;
                this.L$0 = cVar;
                this.label = 2;
                if (kotlinx.coroutines.u0.a(j12, this) == objF) {
                    return objF;
                }
                if (this.this$0.f67769c > 0) {
                    sharingCommand = SharingCommand.STOP;
                    this.L$0 = cVar;
                    this.label = 3;
                    if (cVar.emit(sharingCommand, this) == objF) {
                        return objF;
                    }
                    j11 = this.this$0.f67769c;
                    this.L$0 = cVar;
                    this.label = 4;
                    if (kotlinx.coroutines.u0.a(j11, this) == objF) {
                        return objF;
                    }
                }
                sharingCommand2 = SharingCommand.STOP_AND_RESET_REPLAY_CACHE;
                this.L$0 = null;
                this.label = 5;
                if (cVar.emit(sharingCommand2, this) == objF) {
                    return objF;
                }
            }
        }
        return Unit.f67061a;
    }
}
