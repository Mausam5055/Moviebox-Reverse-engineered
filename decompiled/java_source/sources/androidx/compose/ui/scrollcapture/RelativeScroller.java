package androidx.compose.ui.scrollcapture;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function2;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
final class RelativeScroller {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f5898a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Function2 f5899b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f5900c;

    public RelativeScroller(int i11, Function2 function2) {
        this.f5898a = i11;
        this.f5899b = function2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e(float f11, Continuation continuation) throws Throwable {
        RelativeScroller$scrollBy$1 relativeScroller$scrollBy$1;
        RelativeScroller relativeScroller;
        if (continuation instanceof RelativeScroller$scrollBy$1) {
            relativeScroller$scrollBy$1 = (RelativeScroller$scrollBy$1) continuation;
            int i11 = relativeScroller$scrollBy$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                relativeScroller$scrollBy$1.label = i11 - Integer.MIN_VALUE;
            } else {
                relativeScroller$scrollBy$1 = new RelativeScroller$scrollBy$1(this, continuation);
            }
        } else {
            relativeScroller$scrollBy$1 = new RelativeScroller$scrollBy$1(this, continuation);
        }
        Object objInvoke = relativeScroller$scrollBy$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = relativeScroller$scrollBy$1.label;
        if (i12 == 0) {
            ResultKt.b(objInvoke);
            Function2 function2 = this.f5899b;
            Float fC = Boxing.c(f11);
            relativeScroller$scrollBy$1.L$0 = this;
            relativeScroller$scrollBy$1.label = 1;
            objInvoke = function2.invoke(fC, relativeScroller$scrollBy$1);
            if (objInvoke == objF) {
                return objF;
            }
            relativeScroller = this;
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            relativeScroller = (RelativeScroller) relativeScroller$scrollBy$1.L$0;
            ResultKt.b(objInvoke);
        }
        relativeScroller.f5900c += ((Number) objInvoke).floatValue();
        return Unit.f67061a;
    }

    public final float b() {
        return this.f5900c;
    }

    public final int c(int i11) {
        return RangesKt.m(i11 - MathKt.d(this.f5900c), 0, this.f5898a);
    }

    public final void d() {
        this.f5900c = 0.0f;
    }

    public final Object f(int i11, int i12, Continuation continuation) throws Throwable {
        if (i11 > i12) {
            throw new IllegalArgumentException(("Expected min=" + i11 + " ≤ max=" + i12).toString());
        }
        int i13 = i12 - i11;
        int i14 = this.f5898a;
        if (i13 > i14) {
            throw new IllegalArgumentException(("Expected range (" + i13 + ") to be ≤ viewportSize=" + this.f5898a).toString());
        }
        float f11 = i11;
        float f12 = this.f5900c;
        if (f11 >= f12 && i12 <= i14 + f12) {
            return Unit.f67061a;
        }
        if (f11 >= f12) {
            i11 = i12 - i14;
        }
        Object objG = g(i11, continuation);
        return objG == IntrinsicsKt.f() ? objG : Unit.f67061a;
    }

    public final Object g(float f11, Continuation continuation) throws Throwable {
        Object objE = e(f11 - this.f5900c, continuation);
        return objE == IntrinsicsKt.f() ? objE : Unit.f67061a;
    }
}
