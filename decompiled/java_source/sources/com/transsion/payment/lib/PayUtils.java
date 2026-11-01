package com.transsion.payment.lib;

import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.i;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.u0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class PayUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PayUtils f47768a = new PayUtils();

    private PayUtils() {
    }

    public static /* synthetic */ Object b(PayUtils payUtils, long j11, int i11, Function1 function1, Continuation continuation, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            j11 = 3000;
        }
        return payUtils.a(j11, (i12 & 2) != 0 ? 2 : i11, function1, continuation);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(5:12|33|38|21|(1:23)(1:24)) */
    /* JADX WARN: Code duplicated, block: B:23:0x0066 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0067  */
    /* JADX WARN: Code duplicated, block: B:30:0x0078  */
    /* JADX WARN: Code duplicated, block: B:32:0x00a8 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:34:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0072, code lost:
    
        r14 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0073, code lost:
    
        r7 = r10;
        r10 = r12;
        r11 = r7;
     */
    /* JADX WARN: Instruction removed from duplicated block: B:30:0x0078, please report this as an issue */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a6 -> B:33:0x00a9). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(long j11, int i11, Function1 function1, Continuation continuation) throws Exception {
        PayUtils$retryWithBackoff$1 payUtils$retryWithBackoff$1;
        long j12;
        int i12;
        if (continuation instanceof PayUtils$retryWithBackoff$1) {
            payUtils$retryWithBackoff$1 = (PayUtils$retryWithBackoff$1) continuation;
            int i13 = payUtils$retryWithBackoff$1.label;
            if ((i13 & Integer.MIN_VALUE) != 0) {
                payUtils$retryWithBackoff$1.label = i13 - Integer.MIN_VALUE;
            } else {
                payUtils$retryWithBackoff$1 = new PayUtils$retryWithBackoff$1(this, continuation);
            }
        } else {
            payUtils$retryWithBackoff$1 = new PayUtils$retryWithBackoff$1(this, continuation);
        }
        Object objG = payUtils$retryWithBackoff$1.result;
        Object objF = IntrinsicsKt.f();
        int i14 = payUtils$retryWithBackoff$1.label;
        if (i14 == 0) {
            ResultKt.b(objG);
            i0 i0VarA = y0.a();
            PayUtils$retryWithBackoff$2 payUtils$retryWithBackoff$2 = new PayUtils$retryWithBackoff$2(function1, null);
            payUtils$retryWithBackoff$1.L$0 = function1;
            payUtils$retryWithBackoff$1.J$0 = j11;
            payUtils$retryWithBackoff$1.I$0 = i11;
            payUtils$retryWithBackoff$1.label = 1;
            objG = i.g(i0VarA, payUtils$retryWithBackoff$2, payUtils$retryWithBackoff$1);
            if (objG == objF) {
                return objF;
            }
            long j13 = j11;
            i12 = i11;
            j12 = j13;
        } else if (i14 == 1) {
            i12 = payUtils$retryWithBackoff$1.I$0;
            j12 = payUtils$retryWithBackoff$1.J$0;
            function1 = (Function1) payUtils$retryWithBackoff$1.L$0;
            try {
                ResultKt.b(objG);
            } catch (Exception e11) {
                Exception e12 = e11;
                if (i12 <= 0) {
                    System.out.println((Object) "All retry attempts exhausted");
                    throw e12;
                }
                System.out.println((Object) ("Action failed: " + e12.getMessage() + ". Retries left: " + i12));
                payUtils$retryWithBackoff$1.L$0 = function1;
                payUtils$retryWithBackoff$1.J$0 = j12;
                payUtils$retryWithBackoff$1.I$0 = i12;
                payUtils$retryWithBackoff$1.label = 2;
                if (u0.a(j12, payUtils$retryWithBackoff$1) == objF) {
                    return objF;
                }
                i11 = i12 - 1;
                j11 = j12 * ((long) 2);
                i0 i0VarA2 = y0.a();
                PayUtils$retryWithBackoff$2 payUtils$retryWithBackoff$3 = new PayUtils$retryWithBackoff$2(function1, null);
                payUtils$retryWithBackoff$1.L$0 = function1;
                payUtils$retryWithBackoff$1.J$0 = j11;
                payUtils$retryWithBackoff$1.I$0 = i11;
                payUtils$retryWithBackoff$1.label = 1;
                objG = i.g(i0VarA2, payUtils$retryWithBackoff$3, payUtils$retryWithBackoff$1);
                if (objG == objF) {
                    return objF;
                }
                long j14 = j11;
                i12 = i11;
                j12 = j14;
            }
        } else {
            if (i14 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i12 = payUtils$retryWithBackoff$1.I$0;
            j12 = payUtils$retryWithBackoff$1.J$0;
            function1 = (Function1) payUtils$retryWithBackoff$1.L$0;
            ResultKt.b(objG);
            i11 = i12 - 1;
            j11 = j12 * ((long) 2);
            i0 i0VarA3 = y0.a();
            PayUtils$retryWithBackoff$2 payUtils$retryWithBackoff$4 = new PayUtils$retryWithBackoff$2(function1, null);
            payUtils$retryWithBackoff$1.L$0 = function1;
            payUtils$retryWithBackoff$1.J$0 = j11;
            payUtils$retryWithBackoff$1.I$0 = i11;
            payUtils$retryWithBackoff$1.label = 1;
            objG = i.g(i0VarA3, payUtils$retryWithBackoff$4, payUtils$retryWithBackoff$1);
            if (objG == objF) {
                return objF;
            }
            long j15 = j11;
            i12 = i11;
            j12 = j15;
        }
        System.out.println((Object) "Action succeeded");
        return objG;
    }
}
