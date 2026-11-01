package f3;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media3.common.util.j0;
import l2.q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f62290a = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153, 1769172332, 1885955686};

    private static boolean a(int i11, boolean z10) {
        if ((i11 >>> 8) == 3368816) {
            return true;
        }
        if (i11 == 1751476579 && z10) {
            return true;
        }
        for (int i12 : f62290a) {
            if (i12 == i11) {
                return true;
            }
        }
        return false;
    }

    public static q0 b(l2.s sVar) {
        return c(sVar, true, false);
    }

    /* JADX WARN: Code duplicated, block: B:77:0x011a  */
    /* JADX WARN: Code duplicated, block: B:79:0x011d  */
    /* JADX WARN: Code duplicated, block: B:81:0x0121 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:82:0x0123  */
    /* JADX WARN: Code duplicated, block: B:83:0x0126  */
    /* JADX WARN: Code duplicated, block: B:85:0x0129 A[RETURN] */
    private static q0 c(l2.s sVar, boolean z10, boolean z11) {
        int i11;
        int i12;
        int i13;
        boolean z12;
        int[] iArr;
        long length = sVar.getLength();
        long j11 = -1;
        long j12 = PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
        if (length != -1 && length <= PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) {
            j12 = length;
        }
        int i14 = (int) j12;
        j0 j0Var = new j0(64);
        int i15 = 0;
        int i16 = 0;
        boolean z13 = false;
        while (true) {
            if (i16 < i14) {
                j0Var.S(8);
                if (sVar.peekFully(j0Var.e(), i15, 8, true)) {
                    long J = j0Var.J();
                    int iQ = j0Var.q();
                    if (J == 1) {
                        sVar.peekFully(j0Var.e(), 8, 8);
                        i12 = 16;
                        j0Var.V(16);
                        J = j0Var.A();
                    } else {
                        if (J == 0) {
                            long length2 = sVar.getLength();
                            if (length2 != j11) {
                                J = (length2 - sVar.getPeekPosition()) + ((long) 8);
                            }
                        }
                        i12 = 8;
                    }
                    long j13 = J;
                    long j14 = i12;
                    if (j13 < j14) {
                        return new a(iQ, j13, i12);
                    }
                    i16 += i12;
                    if (iQ == 1836019574) {
                        i14 += (int) j13;
                        if (length != -1 && i14 > length) {
                            i14 = (int) length;
                        }
                    } else if (iQ == 1836019558 || iQ == 1836475768) {
                        i11 = 1;
                    } else {
                        long j15 = length;
                        if (iQ == 1835295092) {
                            z13 = true;
                        }
                        if ((((long) i16) + j13) - j14 >= i14) {
                            i11 = 0;
                        } else {
                            int i17 = (int) (j13 - j14);
                            i16 += i17;
                            if (iQ != 1718909296) {
                                i13 = 0;
                                if (i17 != 0) {
                                    sVar.advancePeekPosition(i17);
                                }
                            } else {
                                if (i17 < 8) {
                                    return new a(iQ, i17, 8);
                                }
                                j0Var.S(i17);
                                i13 = 0;
                                sVar.peekFully(j0Var.e(), 0, i17);
                                int iQ2 = j0Var.q();
                                if (a(iQ2, z11)) {
                                    z13 = true;
                                }
                                j0Var.X(4);
                                int iA = j0Var.a() / 4;
                                if (!z13 && iA > 0) {
                                    iArr = new int[iA];
                                    int i18 = 0;
                                    while (true) {
                                        if (i18 >= iA) {
                                            z12 = z13;
                                            break;
                                        }
                                        int iQ3 = j0Var.q();
                                        iArr[i18] = iQ3;
                                        if (a(iQ3, z11)) {
                                            z12 = true;
                                            break;
                                        }
                                        i18++;
                                    }
                                } else {
                                    z12 = z13;
                                    iArr = null;
                                }
                                if (!z12) {
                                    return new x(iQ2, iArr);
                                }
                                z13 = z12;
                            }
                            i15 = i13;
                            length = j15;
                        }
                    }
                    j11 = -1;
                }
                if (!z13) {
                    return o.f62277a;
                }
                if (z10 != i11) {
                    return i11 != 0 ? i.f62243b : i.f62244c;
                }
                return null;
            }
            i11 = i15;
            if (!z13) {
                return o.f62277a;
            }
            if (z10 != i11) {
                if (i11 != 0) {
                }
            }
            return null;
        }
    }

    public static q0 d(l2.s sVar, boolean z10) {
        return c(sVar, false, z10);
    }
}
