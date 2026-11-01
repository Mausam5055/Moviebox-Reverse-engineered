package androidx.compose.foundation.gestures;

import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import o0.z;

/* JADX INFO: loaded from: classes.dex */
final class ScrollableNestedScrollConnection implements androidx.compose.ui.input.nestedscroll.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ScrollingLogic f2689a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f2690b;

    public ScrollableNestedScrollConnection(ScrollingLogic scrollingLogic, boolean z10) {
        this.f2689a = scrollingLogic;
        this.f2690b = z10;
    }

    @Override // androidx.compose.ui.input.nestedscroll.b
    public /* synthetic */ long B0(long j11, int i11) {
        return androidx.compose.ui.input.nestedscroll.a.d(this, j11, i11);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.compose.ui.input.nestedscroll.b
    public Object G(long j11, long j12, Continuation continuation) throws Throwable {
        ScrollableNestedScrollConnection$onPostFling$1 scrollableNestedScrollConnection$onPostFling$1;
        long jA;
        if (continuation instanceof ScrollableNestedScrollConnection$onPostFling$1) {
            scrollableNestedScrollConnection$onPostFling$1 = (ScrollableNestedScrollConnection$onPostFling$1) continuation;
            int i11 = scrollableNestedScrollConnection$onPostFling$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                scrollableNestedScrollConnection$onPostFling$1.label = i11 - Integer.MIN_VALUE;
            } else {
                scrollableNestedScrollConnection$onPostFling$1 = new ScrollableNestedScrollConnection$onPostFling$1(this, continuation);
            }
        } else {
            scrollableNestedScrollConnection$onPostFling$1 = new ScrollableNestedScrollConnection$onPostFling$1(this, continuation);
        }
        Object objN = scrollableNestedScrollConnection$onPostFling$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = scrollableNestedScrollConnection$onPostFling$1.label;
        if (i12 == 0) {
            ResultKt.b(objN);
            if (this.f2690b) {
                ScrollingLogic scrollingLogic = this.f2689a;
                scrollableNestedScrollConnection$onPostFling$1.J$0 = j12;
                scrollableNestedScrollConnection$onPostFling$1.label = 1;
                objN = scrollingLogic.n(j12, scrollableNestedScrollConnection$onPostFling$1);
                if (objN == objF) {
                    return objF;
                }
            } else {
                jA = z.f70637b.a();
            }
            return z.b(jA);
        }
        if (i12 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        j12 = scrollableNestedScrollConnection$onPostFling$1.J$0;
        ResultKt.b(objN);
        jA = z.k(j12, ((z) objN).n());
        return z.b(jA);
    }

    @Override // androidx.compose.ui.input.nestedscroll.b
    public /* synthetic */ Object I0(long j11, Continuation continuation) {
        return androidx.compose.ui.input.nestedscroll.a.c(this, j11, continuation);
    }

    public final void a(boolean z10) {
        this.f2690b = z10;
    }

    @Override // androidx.compose.ui.input.nestedscroll.b
    public long g0(long j11, long j12, int i11) {
        return this.f2690b ? this.f2689a.r(j12) : y.g.f78470b.c();
    }
}
