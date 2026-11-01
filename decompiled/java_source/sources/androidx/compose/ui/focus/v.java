package androidx.compose.ui.focus;

import androidx.collection.n0;
import androidx.collection.v0;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final n0 f4253a = v0.d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.compose.runtime.collection.b f4254b = new androidx.compose.runtime.collection.b(new Function0[16], 0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f4255c;

    /* JADX INFO: Access modifiers changed from: private */
    public final void f() {
        this.f4255c = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g() {
        this.f4253a.h();
        int i11 = 0;
        this.f4255c = false;
        androidx.compose.runtime.collection.b bVar = this.f4254b;
        int iN = bVar.n();
        if (iN > 0) {
            Object[] objArrM = bVar.m();
            do {
                ((Function0) objArrM[i11]).invoke();
                i11++;
            } while (i11 < iN);
        }
        this.f4254b.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:14:0x0042 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:15:0x0044 A[LOOP:0: B:5:0x000d->B:15:0x0044, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:19:0x0047 A[EDGE_INSN: B:19:0x0047->B:16:0x0047 BREAK  A[LOOP:0: B:5:0x000d->B:15:0x0044], SYNTHETIC] */
    public final void h() {
        n0 n0Var = this.f4253a;
        Object[] objArr = n0Var.f2345b;
        long[] jArr = n0Var.f2344a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i11 = 0;
            while (true) {
                long j11 = jArr[i11];
                if ((((~j11) << 7) & j11 & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i11 != length) {
                        break;
                        break;
                    }
                    i11++;
                } else {
                    int i12 = 8 - ((~(i11 - length)) >>> 31);
                    for (int i13 = 0; i13 < i12; i13++) {
                        if ((255 & j11) < 128) {
                            ((FocusTargetNode) objArr[(i11 << 3) + i13]).H1();
                        }
                        j11 >>= 8;
                    }
                    if (i12 != 8) {
                        break;
                    } else if (i11 != length) {
                        break;
                    } else {
                        i11++;
                    }
                }
            }
        }
        this.f4253a.h();
        this.f4255c = false;
        this.f4254b.h();
    }

    public final FocusStateImpl i(FocusTargetNode focusTargetNode) {
        return (FocusStateImpl) this.f4253a.b(focusTargetNode);
    }

    public final void j(FocusTargetNode focusTargetNode, FocusStateImpl focusStateImpl) {
        n0 n0Var = this.f4253a;
        if (focusStateImpl != null) {
            n0Var.r(focusTargetNode, focusStateImpl);
        } else {
            g0.a.c("requires a non-null focus state");
            throw new KotlinNothingValueException();
        }
    }
}
