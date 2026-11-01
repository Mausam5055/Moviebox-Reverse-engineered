package androidx.compose.material.ripple;

import androidx.collection.n0;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.x1;
import androidx.compose.ui.node.o;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class CommonRippleNode extends RippleNode {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final n0 f3441y;

    private CommonRippleNode(p.g gVar, boolean z10, float f11, x1 x1Var, Function0 function0) {
        super(gVar, z10, f11, x1Var, function0, null);
        this.f3441y = new n0(0, 1, null);
    }

    public /* synthetic */ CommonRippleNode(p.g gVar, boolean z10, float f11, x1 x1Var, Function0 function0, DefaultConstructorMarker defaultConstructorMarker) {
        this(gVar, z10, f11, x1Var, function0);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x004c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:15:0x004e A[LOOP:0: B:5:0x0013->B:15:0x004e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:23:0x0051 A[EDGE_INSN: B:23:0x0051->B:16:0x0051 BREAK  A[LOOP:0: B:5:0x0013->B:15:0x004e], SYNTHETIC] */
    @Override // androidx.compose.material.ripple.RippleNode
    public void I1(p.k.b bVar, long j11, float f11) {
        n0 n0Var = this.f3441y;
        Object[] objArr = n0Var.f2345b;
        Object[] objArr2 = n0Var.f2346c;
        long[] jArr = n0Var.f2344a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i11 = 0;
            while (true) {
                long j12 = jArr[i11];
                if ((((~j12) << 7) & j12 & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i11 != length) {
                        break;
                        break;
                    }
                    i11++;
                } else {
                    int i12 = 8 - ((~(i11 - length)) >>> 31);
                    for (int i13 = 0; i13 < i12; i13++) {
                        if ((255 & j12) < 128) {
                            int i14 = (i11 << 3) + i13;
                            ((RippleAnimation) objArr2[i14]).h();
                        }
                        j12 >>= 8;
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
        RippleAnimation rippleAnimation = new RippleAnimation(K1() ? y.g.d(bVar.a()) : null, f11, K1(), null);
        this.f3441y.r(bVar, rippleAnimation);
        kotlinx.coroutines.k.d(d1(), null, null, new CommonRippleNode$addRipple$2(rippleAnimation, this, bVar, null), 3, null);
        o.a(this);
    }

    @Override // androidx.compose.material.ripple.RippleNode
    public void J1(z.g gVar) {
        float f11;
        float fD = ((c) L1().invoke()).d();
        if (fD == 0.0f) {
            return;
        }
        n0 n0Var = this.f3441y;
        Object[] objArr = n0Var.f2345b;
        Object[] objArr2 = n0Var.f2346c;
        long[] jArr = n0Var.f2344a;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i11 = 0;
        while (true) {
            long j11 = jArr[i11];
            if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i12 = 8;
                int i13 = 8 - ((~(i11 - length)) >>> 31);
                long j12 = j11;
                int i14 = 0;
                while (i14 < i13) {
                    if ((j12 & 255) < 128) {
                        int i15 = (i11 << 3) + i14;
                        ((RippleAnimation) objArr2[i15]).e(gVar, u1.k(M1(), fD, 0.0f, 0.0f, 0.0f, 14, null));
                    }
                    j12 >>= i12;
                    i14++;
                    i12 = i12;
                    fD = fD;
                    i13 = i13;
                }
                f11 = fD;
                if (i13 != i12) {
                    return;
                }
            } else {
                f11 = fD;
            }
            if (i11 == length) {
                return;
            }
            i11++;
            fD = f11;
        }
    }

    @Override // androidx.compose.material.ripple.RippleNode
    public void P1(p.k.b bVar) {
        RippleAnimation rippleAnimation = (RippleAnimation) this.f3441y.b(bVar);
        if (rippleAnimation != null) {
            rippleAnimation.h();
        }
    }

    @Override // androidx.compose.ui.f.c
    public void o1() {
        this.f3441y.h();
    }
}
