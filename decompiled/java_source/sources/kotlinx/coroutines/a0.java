package kotlinx.coroutines;

import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
final class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f67625a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m f67626b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function3 f67627c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f67628d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Throwable f67629e;

    public a0(Object obj, m mVar, Function3 function3, Object obj2, Throwable th2) {
        this.f67625a = obj;
        this.f67626b = mVar;
        this.f67627c = function3;
        this.f67628d = obj2;
        this.f67629e = th2;
    }

    public /* synthetic */ a0(Object obj, m mVar, Function3 function3, Object obj2, Throwable th2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, (i11 & 2) != 0 ? null : mVar, (i11 & 4) != 0 ? null : function3, (i11 & 8) != 0 ? null : obj2, (i11 & 16) != 0 ? null : th2);
    }

    public static /* synthetic */ a0 b(a0 a0Var, Object obj, m mVar, Function3 function3, Object obj2, Throwable th2, int i11, Object obj3) {
        if ((i11 & 1) != 0) {
            obj = a0Var.f67625a;
        }
        if ((i11 & 2) != 0) {
            mVar = a0Var.f67626b;
        }
        m mVar2 = mVar;
        if ((i11 & 4) != 0) {
            function3 = a0Var.f67627c;
        }
        Function3 function4 = function3;
        if ((i11 & 8) != 0) {
            obj2 = a0Var.f67628d;
        }
        Object obj4 = obj2;
        if ((i11 & 16) != 0) {
            th2 = a0Var.f67629e;
        }
        return a0Var.a(obj, mVar2, function4, obj4, th2);
    }

    public final a0 a(Object obj, m mVar, Function3 function3, Object obj2, Throwable th2) {
        return new a0(obj, mVar, function3, obj2, th2);
    }

    public final boolean c() {
        return this.f67629e != null;
    }

    public final void d(CancellableContinuationImpl cancellableContinuationImpl, Throwable th2) {
        m mVar = this.f67626b;
        if (mVar != null) {
            cancellableContinuationImpl.callCancelHandler(mVar, th2);
        }
        Function3 function3 = this.f67627c;
        if (function3 != null) {
            cancellableContinuationImpl.callOnCancellation(function3, th2, this.f67625a);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a0)) {
            return false;
        }
        a0 a0Var = (a0) obj;
        return Intrinsics.c(this.f67625a, a0Var.f67625a) && Intrinsics.c(this.f67626b, a0Var.f67626b) && Intrinsics.c(this.f67627c, a0Var.f67627c) && Intrinsics.c(this.f67628d, a0Var.f67628d) && Intrinsics.c(this.f67629e, a0Var.f67629e);
    }

    public int hashCode() {
        Object obj = this.f67625a;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        m mVar = this.f67626b;
        int iHashCode2 = (iHashCode + (mVar == null ? 0 : mVar.hashCode())) * 31;
        Function3 function3 = this.f67627c;
        int iHashCode3 = (iHashCode2 + (function3 == null ? 0 : function3.hashCode())) * 31;
        Object obj2 = this.f67628d;
        int iHashCode4 = (iHashCode3 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Throwable th2 = this.f67629e;
        return iHashCode4 + (th2 != null ? th2.hashCode() : 0);
    }

    public String toString() {
        return "CompletedContinuation(result=" + this.f67625a + ", cancelHandler=" + this.f67626b + ", onCancellation=" + this.f67627c + ", idempotentResume=" + this.f67628d + ", cancelCause=" + this.f67629e + ')';
    }
}
