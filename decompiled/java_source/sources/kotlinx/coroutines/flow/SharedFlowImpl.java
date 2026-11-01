package kotlinx.coroutines.flow;

import java.util.Arrays;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.channels.BufferOverflow;

/* JADX INFO: loaded from: classes.dex */
public class SharedFlowImpl extends kotlinx.coroutines.flow.internal.a implements x0, kotlinx.coroutines.flow.b, kotlinx.coroutines.flow.internal.j {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f67753e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f67754f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final BufferOverflow f67755g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Object[] f67756h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f67757i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f67758j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f67759k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f67760l;

    /* JADX INFO: loaded from: classes7.dex */
    private static final class a implements kotlinx.coroutines.a1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SharedFlowImpl f67761a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f67762b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Object f67763c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final Continuation f67764d;

        public a(SharedFlowImpl sharedFlowImpl, long j11, Object obj, Continuation continuation) {
            this.f67761a = sharedFlowImpl;
            this.f67762b = j11;
            this.f67763c = obj;
            this.f67764d = continuation;
        }

        @Override // kotlinx.coroutines.a1
        public void dispose() {
            this.f67761a.z(this);
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f67765a;

        static {
            int[] iArr = new int[BufferOverflow.values().length];
            try {
                iArr[BufferOverflow.SUSPEND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BufferOverflow.DROP_LATEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BufferOverflow.DROP_OLDEST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f67765a = iArr;
        }
    }

    public SharedFlowImpl(int i11, int i12, BufferOverflow bufferOverflow) {
        this.f67753e = i11;
        this.f67754f = i12;
        this.f67755g = bufferOverflow;
    }

    private final void A() {
        if (this.f67754f != 0 || this.f67760l > 1) {
            Object[] objArr = this.f67756h;
            Intrinsics.e(objArr);
            while (this.f67760l > 0 && d1.f(objArr, (L() + ((long) Q())) - 1) == d1.f67776a) {
                this.f67760l--;
                d1.g(objArr, L() + ((long) Q()), null);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x009a A[Catch: all -> 0x0042, TryCatch #1 {all -> 0x0042, blocks: (B:15:0x003b, B:32:0x0092, B:34:0x009a, B:38:0x00ad, B:39:0x00b0, B:22:0x005d), top: B:48:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00ad A[Catch: all -> 0x0042, TryCatch #1 {all -> 0x0042, blocks: (B:15:0x003b, B:32:0x0092, B:34:0x009a, B:38:0x00ad, B:39:0x00b0, B:22:0x005d), top: B:48:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00c0 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:52:0x00ab A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object, kotlinx.coroutines.flow.c] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r5v1, types: [kotlinx.coroutines.flow.internal.a] */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.lang.Object, kotlinx.coroutines.flow.SharedFlowImpl] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r8v21 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Type inference failed for: r9v0, types: [kotlinx.coroutines.flow.c] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v17 */
    /* JADX WARN: Type inference failed for: r9v18 */
    /* JADX WARN: Type inference failed for: r9v19 */
    /* JADX WARN: Type inference failed for: r9v2, types: [kotlinx.coroutines.flow.internal.c] */
    /* JADX WARN: Type inference failed for: r9v20 */
    /* JADX WARN: Type inference failed for: r9v21 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5, types: [java.lang.Object, kotlinx.coroutines.flow.e1] */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v9, types: [kotlinx.coroutines.flow.e1] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00be -> B:16:0x003e). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:34:0x009a
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    static /* synthetic */ java.lang.Object B(kotlinx.coroutines.flow.SharedFlowImpl r8, kotlinx.coroutines.flow.c r9, kotlin.coroutines.Continuation r10) {
        /*
            boolean r0 = r10 instanceof kotlinx.coroutines.flow.SharedFlowImpl$collect$1
            if (r0 == 0) goto L13
            r0 = r10
            kotlinx.coroutines.flow.SharedFlowImpl$collect$1 r0 = (kotlinx.coroutines.flow.SharedFlowImpl$collect$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.SharedFlowImpl$collect$1 r0 = new kotlinx.coroutines.flow.SharedFlowImpl$collect$1
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.f()
            int r2 = r0.label
            r3 = 3
            r4 = 2
            if (r2 == 0) goto L77
            r8 = 1
            if (r2 == r8) goto L61
            if (r2 == r4) goto L4d
            if (r2 != r3) goto L45
            java.lang.Object r8 = r0.L$3
            kotlinx.coroutines.t1 r8 = (kotlinx.coroutines.t1) r8
            java.lang.Object r9 = r0.L$2
            kotlinx.coroutines.flow.e1 r9 = (kotlinx.coroutines.flow.e1) r9
            java.lang.Object r2 = r0.L$1
            kotlinx.coroutines.flow.c r2 = (kotlinx.coroutines.flow.c) r2
            java.lang.Object r5 = r0.L$0
            kotlinx.coroutines.flow.SharedFlowImpl r5 = (kotlinx.coroutines.flow.SharedFlowImpl) r5
            kotlin.ResultKt.b(r10)     // Catch: java.lang.Throwable -> L42
        L3e:
            r10 = r2
            r2 = r8
            r8 = r5
            goto L8f
        L42:
            r8 = move-exception
            goto Lc4
        L45:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L4d:
            java.lang.Object r8 = r0.L$3
            kotlinx.coroutines.t1 r8 = (kotlinx.coroutines.t1) r8
            java.lang.Object r9 = r0.L$2
            kotlinx.coroutines.flow.e1 r9 = (kotlinx.coroutines.flow.e1) r9
            java.lang.Object r2 = r0.L$1
            kotlinx.coroutines.flow.c r2 = (kotlinx.coroutines.flow.c) r2
            java.lang.Object r5 = r0.L$0
            kotlinx.coroutines.flow.SharedFlowImpl r5 = (kotlinx.coroutines.flow.SharedFlowImpl) r5
            kotlin.ResultKt.b(r10)     // Catch: java.lang.Throwable -> L42
            goto L92
        L61:
            java.lang.Object r8 = r0.L$2
            r9 = r8
            kotlinx.coroutines.flow.e1 r9 = (kotlinx.coroutines.flow.e1) r9
            java.lang.Object r8 = r0.L$1
            kotlinx.coroutines.flow.c r8 = (kotlinx.coroutines.flow.c) r8
            java.lang.Object r2 = r0.L$0
            kotlinx.coroutines.flow.SharedFlowImpl r2 = (kotlinx.coroutines.flow.SharedFlowImpl) r2
            kotlin.ResultKt.b(r10)     // Catch: java.lang.Throwable -> L74
            r10 = r8
            r8 = r2
            goto L83
        L74:
            r8 = move-exception
            r5 = r2
            goto Lc4
        L77:
            kotlin.ResultKt.b(r10)
            kotlinx.coroutines.flow.internal.c r10 = r8.i()
            kotlinx.coroutines.flow.e1 r10 = (kotlinx.coroutines.flow.e1) r10
            r7 = r10
            r10 = r9
            r9 = r7
        L83:
            kotlin.coroutines.CoroutineContext r2 = r0.getF67179a()     // Catch: java.lang.Throwable -> Lc1
            kotlinx.coroutines.t1$b r5 = kotlinx.coroutines.t1.f67996l1     // Catch: java.lang.Throwable -> Lc1
            kotlin.coroutines.CoroutineContext$Element r2 = r2.get(r5)     // Catch: java.lang.Throwable -> Lc1
            kotlinx.coroutines.t1 r2 = (kotlinx.coroutines.t1) r2     // Catch: java.lang.Throwable -> Lc1
        L8f:
            r5 = r8
            r8 = r2
            r2 = r10
        L92:
            java.lang.Object r10 = r5.V(r9)     // Catch: java.lang.Throwable -> L42
            kotlinx.coroutines.internal.z r6 = kotlinx.coroutines.flow.d1.f67776a     // Catch: java.lang.Throwable -> L42
            if (r10 != r6) goto Lab
            r0.L$0 = r5     // Catch: java.lang.Throwable -> L42
            r0.L$1 = r2     // Catch: java.lang.Throwable -> L42
            r0.L$2 = r9     // Catch: java.lang.Throwable -> L42
            r0.L$3 = r8     // Catch: java.lang.Throwable -> L42
            r0.label = r4     // Catch: java.lang.Throwable -> L42
            java.lang.Object r10 = r5.y(r9, r0)     // Catch: java.lang.Throwable -> L42
            if (r10 != r1) goto L92
            return r1
        Lab:
            if (r8 == 0) goto Lb0
            kotlinx.coroutines.v1.j(r8)     // Catch: java.lang.Throwable -> L42
        Lb0:
            r0.L$0 = r5     // Catch: java.lang.Throwable -> L42
            r0.L$1 = r2     // Catch: java.lang.Throwable -> L42
            r0.L$2 = r9     // Catch: java.lang.Throwable -> L42
            r0.L$3 = r8     // Catch: java.lang.Throwable -> L42
            r0.label = r3     // Catch: java.lang.Throwable -> L42
            java.lang.Object r10 = r2.emit(r10, r0)     // Catch: java.lang.Throwable -> L42
            if (r10 != r1) goto L3e
            return r1
        Lc1:
            r10 = move-exception
            r5 = r8
            r8 = r10
        Lc4:
            r5.l(r9)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.SharedFlowImpl.B(kotlinx.coroutines.flow.SharedFlowImpl, kotlinx.coroutines.flow.c, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final void C(long j11) {
        kotlinx.coroutines.flow.internal.c[] cVarArr;
        if (((kotlinx.coroutines.flow.internal.a) this).f67804b != 0 && (cVarArr = ((kotlinx.coroutines.flow.internal.a) this).f67803a) != null) {
            for (kotlinx.coroutines.flow.internal.c cVar : cVarArr) {
                if (cVar != null) {
                    e1 e1Var = (e1) cVar;
                    long j12 = e1Var.f67777a;
                    if (j12 >= 0 && j12 < j11) {
                        e1Var.f67777a = j11;
                    }
                }
            }
        }
        this.f67758j = j11;
    }

    private final void F() {
        Object[] objArr = this.f67756h;
        Intrinsics.e(objArr);
        d1.g(objArr, L(), null);
        this.f67759k--;
        long jL = L() + 1;
        if (this.f67757i < jL) {
            this.f67757i = jL;
        }
        if (this.f67758j < jL) {
            C(jL);
        }
    }

    static /* synthetic */ Object G(SharedFlowImpl sharedFlowImpl, Object obj, Continuation continuation) {
        Object objH;
        return (!sharedFlowImpl.b(obj) && (objH = sharedFlowImpl.H(obj, continuation)) == IntrinsicsKt.f()) ? objH : Unit.f67061a;
    }

    private final Object H(Object obj, Continuation continuation) {
        Continuation[] continuationArrJ;
        a aVar;
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        Continuation[] continuationArrJ2 = kotlinx.coroutines.flow.internal.b.f67807a;
        synchronized (this) {
            try {
                if (S(obj)) {
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuationImpl.resumeWith(Result.m454constructorimpl(Unit.f67061a));
                    continuationArrJ = J(continuationArrJ2);
                    aVar = null;
                } else {
                    a aVar2 = new a(this, ((long) Q()) + L(), obj, cancellableContinuationImpl);
                    I(aVar2);
                    this.f67760l++;
                    if (this.f67754f == 0) {
                        continuationArrJ2 = J(continuationArrJ2);
                    }
                    continuationArrJ = continuationArrJ2;
                    aVar = aVar2;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (aVar != null) {
            kotlinx.coroutines.q.a(cancellableContinuationImpl, aVar);
        }
        for (Continuation continuation2 : continuationArrJ) {
            if (continuation2 != null) {
                Result.Companion companion2 = Result.INSTANCE;
                continuation2.resumeWith(Result.m454constructorimpl(Unit.f67061a));
            }
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return result == IntrinsicsKt.f() ? result : Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void I(Object obj) {
        int iQ = Q();
        Object[] objArrR = this.f67756h;
        if (objArrR == null) {
            objArrR = R(null, 0, 2);
        } else if (iQ >= objArrR.length) {
            objArrR = R(objArrR, iQ, objArrR.length * 2);
        }
        d1.g(objArrR, L() + ((long) iQ), obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [kotlin.coroutines.Continuation[]] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v3, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r6v3 */
    public final Continuation[] J(Continuation[] continuationArr) {
        kotlinx.coroutines.flow.internal.c[] cVarArr;
        e1 e1Var;
        Continuation continuation;
        int length = continuationArr.length;
        if (((kotlinx.coroutines.flow.internal.a) this).f67804b != 0 && (cVarArr = ((kotlinx.coroutines.flow.internal.a) this).f67803a) != null) {
            int length2 = cVarArr.length;
            int i11 = 0;
            while (i11 < length2) {
                kotlinx.coroutines.flow.internal.c cVar = cVarArr[i11];
                if (cVar == null || (continuation = (e1Var = (e1) cVar).f67778b) == null || U(e1Var) < 0) {
                    continuationArr = continuationArr;
                } else {
                    if (length >= continuationArr.length) {
                        continuationArr = continuationArr;
                        continuationArr = continuationArr;
                        Object[] objArrCopyOf = Arrays.copyOf((Object[]) continuationArr, Math.max(2, continuationArr.length * 2));
                        Intrinsics.g(objArrCopyOf, "copyOf(...)");
                        continuationArr = objArrCopyOf;
                    }
                    continuationArr = continuationArr;
                    continuationArr = continuationArr;
                    ((Continuation[]) continuationArr)[length] = continuation;
                    e1Var.f67778b = null;
                    length++;
                }
                i11++;
                continuationArr = continuationArr;
            }
            continuationArr = continuationArr;
        }
        return (Continuation[]) continuationArr;
    }

    private final long K() {
        return L() + ((long) this.f67759k);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long L() {
        return Math.min(this.f67758j, this.f67757i);
    }

    private final Object N(long j11) {
        Object[] objArr = this.f67756h;
        Intrinsics.e(objArr);
        Object objF = d1.f(objArr, j11);
        return objF instanceof a ? ((a) objF).f67763c : objF;
    }

    private final long O() {
        return L() + ((long) this.f67759k) + ((long) this.f67760l);
    }

    private final int P() {
        return (int) ((L() + ((long) this.f67759k)) - this.f67757i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int Q() {
        return this.f67759k + this.f67760l;
    }

    private final Object[] R(Object[] objArr, int i11, int i12) {
        if (i12 <= 0) {
            throw new IllegalStateException("Buffer size overflow");
        }
        Object[] objArr2 = new Object[i12];
        this.f67756h = objArr2;
        if (objArr == null) {
            return objArr2;
        }
        long jL = L();
        for (int i13 = 0; i13 < i11; i13++) {
            long j11 = ((long) i13) + jL;
            d1.g(objArr2, j11, d1.f(objArr, j11));
        }
        return objArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean S(Object obj) {
        if (m() == 0) {
            return T(obj);
        }
        if (this.f67759k >= this.f67754f && this.f67758j <= this.f67757i) {
            int i11 = b.f67765a[this.f67755g.ordinal()];
            if (i11 == 1) {
                return false;
            }
            if (i11 == 2) {
                return true;
            }
            if (i11 != 3) {
                throw new NoWhenBranchMatchedException();
            }
        }
        I(obj);
        int i12 = this.f67759k + 1;
        this.f67759k = i12;
        if (i12 > this.f67754f) {
            F();
        }
        if (P() > this.f67753e) {
            W(this.f67757i + 1, this.f67758j, K(), O());
        }
        return true;
    }

    private final boolean T(Object obj) {
        if (this.f67753e == 0) {
            return true;
        }
        I(obj);
        int i11 = this.f67759k + 1;
        this.f67759k = i11;
        if (i11 > this.f67753e) {
            F();
        }
        this.f67758j = L() + ((long) this.f67759k);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long U(e1 e1Var) {
        long j11 = e1Var.f67777a;
        if (j11 < K()) {
            return j11;
        }
        if (this.f67754f <= 0 && j11 <= L() && this.f67760l != 0) {
            return j11;
        }
        return -1L;
    }

    private final Object V(e1 e1Var) {
        Object obj;
        Continuation[] continuationArrX = kotlinx.coroutines.flow.internal.b.f67807a;
        synchronized (this) {
            try {
                long jU = U(e1Var);
                if (jU < 0) {
                    obj = d1.f67776a;
                } else {
                    long j11 = e1Var.f67777a;
                    Object objN = N(jU);
                    e1Var.f67777a = jU + 1;
                    continuationArrX = X(j11);
                    obj = objN;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        for (Continuation continuation : continuationArrX) {
            if (continuation != null) {
                Result.Companion companion = Result.INSTANCE;
                continuation.resumeWith(Result.m454constructorimpl(Unit.f67061a));
            }
        }
        return obj;
    }

    private final void W(long j11, long j12, long j13, long j14) {
        long jMin = Math.min(j12, j11);
        for (long jL = L(); jL < jMin; jL++) {
            Object[] objArr = this.f67756h;
            Intrinsics.e(objArr);
            d1.g(objArr, jL, null);
        }
        this.f67757i = j11;
        this.f67758j = j12;
        this.f67759k = (int) (j13 - jMin);
        this.f67760l = (int) (j14 - j13);
    }

    private final Object y(e1 e1Var, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        synchronized (this) {
            try {
                if (U(e1Var) < 0) {
                    e1Var.f67778b = cancellableContinuationImpl;
                } else {
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuationImpl.resumeWith(Result.m454constructorimpl(Unit.f67061a));
                }
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return result == IntrinsicsKt.f() ? result : Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void z(a aVar) {
        synchronized (this) {
            if (aVar.f67762b < L()) {
                return;
            }
            Object[] objArr = this.f67756h;
            Intrinsics.e(objArr);
            if (d1.f(objArr, aVar.f67762b) != aVar) {
                return;
            }
            d1.g(objArr, aVar.f67762b, d1.f67776a);
            A();
            Unit unit = Unit.f67061a;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.a
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public e1 j() {
        return new e1();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.a
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public e1[] k(int i11) {
        return new e1[i11];
    }

    protected final Object M() {
        Object[] objArr = this.f67756h;
        Intrinsics.e(objArr);
        return d1.f(objArr, (this.f67757i + ((long) P())) - 1);
    }

    public final Continuation[] X(long j11) {
        long j12;
        long j13;
        long j14;
        kotlinx.coroutines.flow.internal.c[] cVarArr;
        if (j11 > this.f67758j) {
            return kotlinx.coroutines.flow.internal.b.f67807a;
        }
        long jL = L();
        long j15 = ((long) this.f67759k) + jL;
        if (this.f67754f == 0 && this.f67760l > 0) {
            j15++;
        }
        if (((kotlinx.coroutines.flow.internal.a) this).f67804b != 0 && (cVarArr = ((kotlinx.coroutines.flow.internal.a) this).f67803a) != null) {
            for (kotlinx.coroutines.flow.internal.c cVar : cVarArr) {
                if (cVar != null) {
                    long j16 = ((e1) cVar).f67777a;
                    if (j16 >= 0 && j16 < j15) {
                        j15 = j16;
                    }
                }
            }
        }
        if (j15 <= this.f67758j) {
            return kotlinx.coroutines.flow.internal.b.f67807a;
        }
        long jK = K();
        int iMin = m() > 0 ? Math.min(this.f67760l, this.f67754f - ((int) (jK - j15))) : this.f67760l;
        Continuation[] continuationArr = kotlinx.coroutines.flow.internal.b.f67807a;
        long j17 = ((long) this.f67760l) + jK;
        if (iMin > 0) {
            continuationArr = new Continuation[iMin];
            Object[] objArr = this.f67756h;
            Intrinsics.e(objArr);
            long j18 = jK;
            int i11 = 0;
            while (true) {
                if (jK >= j17) {
                    j12 = j15;
                    j13 = j17;
                    break;
                }
                Object objF = d1.f(objArr, jK);
                j12 = j15;
                kotlinx.coroutines.internal.z zVar = d1.f67776a;
                if (objF != zVar) {
                    Intrinsics.f(objF, "null cannot be cast to non-null type kotlinx.coroutines.flow.SharedFlowImpl.Emitter");
                    a aVar = (a) objF;
                    int i12 = i11 + 1;
                    j13 = j17;
                    continuationArr[i11] = aVar.f67764d;
                    d1.g(objArr, jK, zVar);
                    d1.g(objArr, j18, aVar.f67763c);
                    j14 = 1;
                    j18++;
                    if (i12 >= iMin) {
                        break;
                    }
                    i11 = i12;
                } else {
                    j13 = j17;
                    j14 = 1;
                }
                jK += j14;
                j15 = j12;
                j17 = j13;
            }
            jK = j18;
        } else {
            j12 = j15;
            j13 = j17;
        }
        int i13 = (int) (jK - jL);
        long j19 = m() == 0 ? jK : j12;
        long jMax = Math.max(this.f67757i, jK - ((long) Math.min(this.f67753e, i13)));
        if (this.f67754f == 0 && jMax < j13) {
            Object[] objArr2 = this.f67756h;
            Intrinsics.e(objArr2);
            if (Intrinsics.c(d1.f(objArr2, jMax), d1.f67776a)) {
                jK++;
                jMax++;
            }
        }
        W(jMax, j19, jK, j13);
        A();
        return !(continuationArr.length == 0) ? J(continuationArr) : continuationArr;
    }

    public final long Y() {
        long j11 = this.f67757i;
        if (j11 < this.f67758j) {
            this.f67758j = j11;
        }
        return j11;
    }

    @Override // kotlinx.coroutines.flow.c1, kotlinx.coroutines.flow.b
    public Object a(c cVar, Continuation continuation) {
        return B(this, cVar, continuation);
    }

    @Override // kotlinx.coroutines.flow.x0
    public boolean b(Object obj) {
        int i11;
        boolean z10;
        Continuation[] continuationArrJ = kotlinx.coroutines.flow.internal.b.f67807a;
        synchronized (this) {
            if (S(obj)) {
                continuationArrJ = J(continuationArrJ);
                z10 = true;
            } else {
                z10 = false;
            }
        }
        for (Continuation continuation : continuationArrJ) {
            if (continuation != null) {
                Result.Companion companion = Result.INSTANCE;
                continuation.resumeWith(Result.m454constructorimpl(Unit.f67061a));
            }
        }
        return z10;
    }

    @Override // kotlinx.coroutines.flow.internal.j
    public kotlinx.coroutines.flow.b d(CoroutineContext coroutineContext, int i11, BufferOverflow bufferOverflow) {
        return d1.e(this, coroutineContext, i11, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.x0, kotlinx.coroutines.flow.c
    public Object emit(Object obj, Continuation continuation) {
        return G(this, obj, continuation);
    }

    @Override // kotlinx.coroutines.flow.x0
    public void f() {
        synchronized (this) {
            W(K(), this.f67758j, K(), O());
            Unit unit = Unit.f67061a;
        }
    }
}
