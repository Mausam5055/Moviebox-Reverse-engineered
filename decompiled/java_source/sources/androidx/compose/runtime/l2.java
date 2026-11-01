package androidx.compose.runtime;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes.dex */
public abstract class l2 {
    /* JADX INFO: Access modifiers changed from: private */
    public static final int B(int[] iArr, int i11) {
        int i12 = i11 * 5;
        if (i12 >= iArr.length) {
            return iArr.length;
        }
        return E(iArr[i12 + 1] >> 29) + iArr[i12 + 4];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean C(int[] iArr, int i11) {
        return (iArr[(i11 * 5) + 1] & 201326592) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean D(int[] iArr, int i11) {
        return (iArr[(i11 * 5) + 1] & 67108864) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int E(int i11) {
        switch (i11) {
            case 0:
                return 0;
            case 1:
            case 2:
            case 4:
                return 1;
            case 3:
            case 5:
            case 6:
                return 2;
            default:
                return 3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int F(int[] iArr, int i11) {
        return iArr[(i11 * 5) + 4];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final c G(ArrayList arrayList, int i11, int i12) {
        int iU = U(arrayList, i11, i12);
        if (iU >= 0) {
            return (c) arrayList.get(iU);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int H(int[] iArr, int i11) {
        return iArr[(i11 * 5) + 1];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int I(int[] iArr, int i11) {
        return iArr[(i11 * 5) + 3];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean J(int[] iArr, int i11) {
        return (iArr[(i11 * 5) + 1] & ASTNode.DEOP) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean K(int[] iArr, int i11) {
        return (iArr[(i11 * 5) + 1] & ASTNode.NOJIT) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean L(int[] iArr, int i11) {
        return (iArr[(i11 * 5) + 1] & ASTNode.DISCARD) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M(int[] iArr, int i11, int i12, boolean z10, boolean z11, boolean z12, int i13, int i14) {
        int i15 = z10 ? 1073741824 : 0;
        int i16 = z11 ? ASTNode.DISCARD : 0;
        int i17 = z12 ? ASTNode.DEOP : 0;
        int i18 = i11 * 5;
        iArr[i18] = i12;
        iArr[i18 + 1] = i15 | i16 | i17;
        iArr[i18 + 2] = i13;
        iArr[i18 + 3] = 0;
        iArr[i18 + 4] = i14;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean N(int[] iArr, int i11) {
        return (iArr[(i11 * 5) + 1] & 1073741824) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int O(int[] iArr, int i11) {
        return iArr[i11 * 5];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int P(ArrayList arrayList, int i11, int i12) {
        int iU = U(arrayList, i11, i12);
        return iU >= 0 ? iU : -(iU + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int Q(int[] iArr, int i11) {
        return iArr[(i11 * 5) + 1] & 67108863;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int R(int[] iArr, int i11) {
        return iArr[(i11 * 5) + 4];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int S(int[] iArr, int i11) {
        int i12 = i11 * 5;
        return iArr[i12 + 4] + E(iArr[i12 + 1] >> 30);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int T(int[] iArr, int i11) {
        return iArr[(i11 * 5) + 2];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int U(ArrayList arrayList, int i11, int i12) {
        int size = arrayList.size() - 1;
        int i13 = 0;
        while (i13 <= size) {
            int i14 = (i13 + size) >>> 1;
            int iA = ((c) arrayList.get(i14)).a();
            if (iA < 0) {
                iA += i12;
            }
            int iJ = Intrinsics.j(iA, i11);
            if (iJ < 0) {
                i13 = i14 + 1;
            } else {
                if (iJ <= 0) {
                    return i14;
                }
                size = i14 - 1;
            }
        }
        return -(i13 + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int V(int[] iArr, int i11) {
        int i12 = i11 * 5;
        return iArr[i12 + 4] + E(iArr[i12 + 1] >> 28);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W(int[] iArr, int i11, boolean z10) {
        int i12 = (i11 * 5) + 1;
        if (z10) {
            iArr[i12] = iArr[i12] | 67108864;
        } else {
            iArr[i12] = iArr[i12] & (-67108865);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X(int[] iArr, int i11, int i12) {
        iArr[(i11 * 5) + 4] = i12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Y(int[] iArr, int i11, int i12) {
        k.O(i12 >= 0);
        iArr[(i11 * 5) + 3] = i12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z(int[] iArr, int i11, boolean z10) {
        int i12 = (i11 * 5) + 1;
        if (z10) {
            iArr[i12] = iArr[i12] | ASTNode.NOJIT;
        } else {
            iArr[i12] = iArr[i12] & (-134217729);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a0(int[] iArr, int i11, int i12) {
        k.O(i12 >= 0 && i12 < 67108863);
        int i13 = (i11 * 5) + 1;
        iArr[i13] = i12 | (iArr[i13] & (-67108864));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b0(int[] iArr, int i11, int i12) {
        iArr[(i11 * 5) + 2] = i12;
    }
}
