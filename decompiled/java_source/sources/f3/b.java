package f3;

import android.util.Pair;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.i0;
import androidx.media3.common.util.j0;
import androidx.media3.common.y;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import l2.e0;
import l2.f0;
import l2.k0;
import l2.v0;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final byte[] f62148a = a1.u0("OpusHead");

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f62149a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f62150b;

        public a(long j11, long j12) {
            this.f62149a = j11;
            this.f62150b = j12;
        }
    }

    /* JADX INFO: renamed from: f3.b$b, reason: collision with other inner class name */
    private static final class C0755b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f62151a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f62152b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f62153c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f62154d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final boolean f62155e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final j0 f62156f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final j0 f62157g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f62158h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f62159i;

        public C0755b(j0 j0Var, j0 j0Var2, boolean z10) throws ParserException {
            this.f62157g = j0Var;
            this.f62156f = j0Var2;
            this.f62155e = z10;
            j0Var2.W(12);
            this.f62151a = j0Var2.L();
            j0Var.W(12);
            this.f62159i = j0Var.L();
            l2.u.a(j0Var.q() == 1, "first_chunk must be 1");
            this.f62152b = -1;
        }

        public boolean a() {
            int i11 = this.f62152b + 1;
            this.f62152b = i11;
            if (i11 == this.f62151a) {
                return false;
            }
            this.f62154d = this.f62155e ? this.f62156f.O() : this.f62156f.J();
            if (this.f62152b == this.f62158h) {
                this.f62153c = this.f62157g.L();
                this.f62157g.X(4);
                int i12 = this.f62159i - 1;
                this.f62159i = i12;
                this.f62158h = i12 > 0 ? this.f62157g.L() - 1 : -1;
            }
            return true;
        }
    }

    private static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f62160a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final byte[] f62161b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final long f62162c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final long f62163d;

        public c(String str, byte[] bArr, long j11, long j12) {
            this.f62160a = str;
            this.f62161b = bArr;
            this.f62162c = j11;
            this.f62163d = j12;
        }
    }

    private static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final g f62164a;

        public d(g gVar) {
            this.f62164a = gVar;
        }
    }

    private static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f62165a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f62166b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f62167c;

        public e(long j11, long j12, String str) {
            this.f62165a = j11;
            this.f62166b = j12;
            this.f62167c = str;
        }
    }

    private interface f {
        int a();

        int getSampleCount();

        int readNextSampleSize();
    }

    private static final class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final boolean f62168a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f62169b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f62170c;

        public g(boolean z10, boolean z11, boolean z12) {
            this.f62168a = z10;
            this.f62169b = z11;
            this.f62170c = z12;
        }
    }

    private static final class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final u[] f62171a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public androidx.media3.common.r f62172b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f62173c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f62174d = 0;

        public h(int i11) {
            this.f62171a = new u[i11];
        }
    }

    static final class i implements f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f62175a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f62176b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final j0 f62177c;

        public i(androidx.media3.container.d.c cVar, androidx.media3.common.r rVar) {
            j0 j0Var = cVar.f10587b;
            this.f62177c = j0Var;
            j0Var.W(12);
            int iL = j0Var.L();
            if (MimeTypes.AUDIO_RAW.equals(rVar.f10161o)) {
                int iK0 = a1.k0(rVar.G, rVar.E);
                if (iL == 0 || iL % iK0 != 0) {
                    androidx.media3.common.util.u.h("BoxParsers", "Audio sample size mismatch. stsd sample size: " + iK0 + ", stsz sample size: " + iL);
                    iL = iK0;
                }
            }
            this.f62175a = iL == 0 ? -1 : iL;
            this.f62176b = j0Var.L();
        }

        @Override // f3.b.f
        public int a() {
            return this.f62175a;
        }

        @Override // f3.b.f
        public int getSampleCount() {
            return this.f62176b;
        }

        @Override // f3.b.f
        public int readNextSampleSize() {
            int i11 = this.f62175a;
            return i11 == -1 ? this.f62177c.L() : i11;
        }
    }

    static final class j implements f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final j0 f62178a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f62179b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f62180c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f62181d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f62182e;

        public j(androidx.media3.container.d.c cVar) {
            j0 j0Var = cVar.f10587b;
            this.f62178a = j0Var;
            j0Var.W(12);
            this.f62180c = j0Var.L() & 255;
            this.f62179b = j0Var.L();
        }

        @Override // f3.b.f
        public int a() {
            return -1;
        }

        @Override // f3.b.f
        public int getSampleCount() {
            return this.f62179b;
        }

        @Override // f3.b.f
        public int readNextSampleSize() {
            int i11 = this.f62180c;
            if (i11 == 8) {
                return this.f62178a.H();
            }
            if (i11 == 16) {
                return this.f62178a.P();
            }
            int i12 = this.f62181d;
            this.f62181d = i12 + 1;
            if (i12 % 2 != 0) {
                return this.f62182e & 15;
            }
            int iH = this.f62178a.H();
            this.f62182e = iH;
            return (iH & 240) >> 4;
        }
    }

    private static final class k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f62183a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f62184b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f62185c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f62186d;

        public k(int i11, long j11, int i12, int i13) {
            this.f62183a = i11;
            this.f62184b = j11;
            this.f62185c = i12;
            this.f62186d = i13;
        }
    }

    static final class l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final d f62187a;

        public l(d dVar) {
            this.f62187a = dVar;
        }

        public boolean b() {
            d dVar = this.f62187a;
            return dVar != null && dVar.f62164a.f62168a && this.f62187a.f62164a.f62169b;
        }
    }

    public static w A(t tVar, androidx.media3.container.d.b bVar, e0 e0Var) throws ParserException {
        f jVar;
        boolean z10;
        int iL;
        int iL2;
        int iL3;
        int i11;
        int i12;
        long[] jArr;
        int[] iArr;
        long[] jArrCopyOf;
        int[] iArrCopyOf;
        int i13;
        boolean z11;
        int i14;
        t tVarA;
        int[] iArr2;
        long[] jArr2;
        int[] iArr3;
        long j11;
        long j12;
        int i15;
        int i16;
        int iQ;
        int i17;
        int[] iArr4;
        int[] iArr5;
        int i18;
        t tVarA2 = tVar;
        androidx.media3.container.d.c cVarE = bVar.e(1937011578);
        if (cVarE != null) {
            jVar = new i(cVarE, tVarA2.f62297g);
        } else {
            androidx.media3.container.d.c cVarE2 = bVar.e(1937013298);
            if (cVarE2 == null) {
                throw ParserException.createForMalformedContainer("Track has no sample table size information", null);
            }
            jVar = new j(cVarE2);
        }
        int sampleCount = jVar.getSampleCount();
        if (sampleCount == 0) {
            return new w(tVar, new long[0], new int[0], 0, new long[0], new int[0], 0L);
        }
        if (tVarA2.f62292b == 2) {
            long j13 = tVarA2.f62296f;
            if (j13 > 0) {
                tVarA2 = tVarA2.a(tVarA2.f62297g.b().b0(sampleCount / (j13 / 1000000.0f)).N());
            }
        }
        androidx.media3.container.d.c cVarE3 = bVar.e(1937007471);
        if (cVarE3 == null) {
            cVarE3 = (androidx.media3.container.d.c) androidx.media3.common.util.a.e(bVar.e(1668232756));
            z10 = true;
        } else {
            z10 = false;
        }
        j0 j0Var = cVarE3.f10587b;
        j0 j0Var2 = ((androidx.media3.container.d.c) androidx.media3.common.util.a.e(bVar.e(1937011555))).f10587b;
        j0 j0Var3 = ((androidx.media3.container.d.c) androidx.media3.common.util.a.e(bVar.e(1937011827))).f10587b;
        androidx.media3.container.d.c cVarE4 = bVar.e(1937011571);
        j0 j0Var4 = cVarE4 != null ? cVarE4.f10587b : null;
        androidx.media3.container.d.c cVarE5 = bVar.e(1668576371);
        j0 j0Var5 = cVarE5 != null ? cVarE5.f10587b : null;
        C0755b c0755b = new C0755b(j0Var2, j0Var, z10);
        j0Var3.W(12);
        int iL4 = j0Var3.L() - 1;
        int iL5 = j0Var3.L();
        int iL6 = j0Var3.L();
        if (j0Var5 != null) {
            j0Var5.W(12);
            iL = j0Var5.L();
        } else {
            iL = 0;
        }
        if (j0Var4 != null) {
            j0Var4.W(12);
            iL3 = j0Var4.L();
            if (iL3 > 0) {
                iL2 = j0Var4.L() - 1;
            } else {
                iL2 = -1;
                j0Var4 = null;
            }
        } else {
            iL2 = -1;
            iL3 = 0;
        }
        int iA = jVar.a();
        String str = tVarA2.f62297g.f10161o;
        if (iA != -1 && (MimeTypes.AUDIO_RAW.equals(str) || MimeTypes.AUDIO_MLAW.equals(str) || MimeTypes.AUDIO_ALAW.equals(str)) && iL4 == 0 && iL == 0 && iL3 == 0) {
            int i19 = c0755b.f62151a;
            long[] jArr3 = new long[i19];
            int[] iArr6 = new int[i19];
            while (c0755b.a()) {
                int i20 = c0755b.f62152b;
                jArr3[i20] = c0755b.f62154d;
                iArr6[i20] = c0755b.f62153c;
            }
            f3.d.b bVarA = f3.d.a(iA, jArr3, iArr6, iL6);
            jArr = bVarA.f62192a;
            int[] iArr7 = bVarA.f62193b;
            int i21 = bVarA.f62194c;
            long[] jArr4 = bVarA.f62195d;
            int[] iArr8 = bVarA.f62196e;
            long j14 = bVarA.f62197f;
            j12 = bVarA.f62198g;
            tVarA = tVarA2;
            iArr2 = iArr7;
            i11 = i21;
            jArr2 = jArr4;
            iArr3 = iArr8;
            j11 = j14;
        } else {
            long[] jArr5 = new long[sampleCount];
            int[] iArr9 = new int[sampleCount];
            long[] jArr6 = new long[sampleCount];
            int[] iArr10 = new int[sampleCount];
            int i22 = iL4;
            int iL7 = iL2;
            int i23 = iL;
            i11 = 0;
            int i24 = 0;
            int iQ2 = 0;
            int iL8 = 0;
            long j15 = 0;
            long j16 = 0;
            long j17 = 0;
            t tVar2 = tVarA2;
            int i25 = 0;
            while (true) {
                if (i25 >= sampleCount) {
                    i12 = iL3;
                    jArr = jArr5;
                    iArr = iArr9;
                    jArrCopyOf = jArr6;
                    iArrCopyOf = iArr10;
                    i13 = i24;
                    break;
                }
                long j18 = j16;
                int i26 = i24;
                boolean zA = true;
                while (i26 == 0) {
                    zA = c0755b.a();
                    if (!zA) {
                        break;
                    }
                    int i27 = iL6;
                    long j19 = c0755b.f62154d;
                    i26 = c0755b.f62153c;
                    j18 = j19;
                    iL6 = i27;
                    iL3 = iL3;
                    sampleCount = sampleCount;
                }
                int i28 = sampleCount;
                int i29 = iL6;
                i12 = iL3;
                if (!zA) {
                    androidx.media3.common.util.u.h("BoxParsers", "Unexpected end of chunk data");
                    long[] jArrCopyOf2 = Arrays.copyOf(jArr5, i25);
                    int[] iArrCopyOf2 = Arrays.copyOf(iArr9, i25);
                    jArrCopyOf = Arrays.copyOf(jArr6, i25);
                    iArrCopyOf = Arrays.copyOf(iArr10, i25);
                    jArr = jArrCopyOf2;
                    iArr = iArrCopyOf2;
                    sampleCount = i25;
                    i13 = i26;
                    break;
                }
                if (j0Var5 != null) {
                    while (iL8 == 0 && i23 > 0) {
                        iL8 = j0Var5.L();
                        iQ2 = j0Var5.q();
                        i23--;
                    }
                    iL8--;
                }
                int i30 = iQ2;
                jArr5[i25] = j18;
                int nextSampleSize = jVar.readNextSampleSize();
                iArr9[i25] = nextSampleSize;
                C0755b c0755b2 = c0755b;
                f fVar = jVar;
                j17 += (long) nextSampleSize;
                if (nextSampleSize > i11) {
                    i11 = nextSampleSize;
                }
                jArr6[i25] = j15 + ((long) i30);
                iArr10[i25] = j0Var4 == null ? 1 : 0;
                if (i25 == iL7) {
                    iArr10[i25] = 1;
                    i16 = i12 - 1;
                    if (i16 > 0) {
                        iL7 = ((j0) androidx.media3.common.util.a.e(j0Var4)).L() - 1;
                    }
                    i15 = iL7;
                } else {
                    i15 = iL7;
                    i16 = i12;
                }
                j15 += (long) i29;
                iL5--;
                if (iL5 != 0 || i22 <= 0) {
                    iQ = i29;
                    i17 = i22;
                } else {
                    int iL9 = j0Var3.L();
                    iQ = j0Var3.q();
                    i17 = i22 - 1;
                    iL5 = iL9;
                }
                int i31 = iQ;
                long j20 = j18 + ((long) iArr9[i25]);
                i24 = i26 - 1;
                i25++;
                j16 = j20;
                iQ2 = i30;
                iL7 = i15;
                sampleCount = i28;
                c0755b = c0755b2;
                int i32 = i17;
                iL6 = i31;
                i22 = i32;
                iL3 = i16;
                jVar = fVar;
            }
            long j21 = j15 + ((long) iQ2);
            if (j0Var5 == null) {
                z11 = true;
                break;
            }
            while (true) {
                if (i23 <= 0) {
                    z11 = true;
                    break;
                }
                if (j0Var5.L() != 0) {
                    z11 = false;
                    break;
                }
                j0Var5.q();
                i23--;
            }
            if (i12 == 0 && iL5 == 0 && i13 == 0 && i22 == 0) {
                i14 = iL8;
                if (i14 == 0 && z11) {
                    tVarA = tVar2;
                }
                iArr2 = iArr;
                jArr2 = jArrCopyOf;
                iArr3 = iArrCopyOf;
                j11 = j21;
                j12 = j17;
            } else {
                i14 = iL8;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Inconsistent stbl box for track ");
            tVarA = tVar2;
            sb2.append(tVarA.f62291a);
            sb2.append(": remainingSynchronizationSamples ");
            sb2.append(i12);
            sb2.append(", remainingSamplesAtTimestampDelta ");
            sb2.append(iL5);
            sb2.append(", remainingSamplesInChunk ");
            sb2.append(i13);
            sb2.append(", remainingTimestampDeltaChanges ");
            sb2.append(i22);
            sb2.append(", remainingSamplesAtTimestampOffset ");
            sb2.append(i14);
            sb2.append(!z11 ? ", ctts invalid" : "");
            androidx.media3.common.util.u.h("BoxParsers", sb2.toString());
            iArr2 = iArr;
            jArr2 = jArrCopyOf;
            iArr3 = iArrCopyOf;
            j11 = j21;
            j12 = j17;
        }
        long j22 = tVarA.f62296f;
        if (j22 > 0) {
            long jG1 = a1.g1(j12 * 8, 1000000L, j22, RoundingMode.HALF_DOWN);
            if (jG1 > 0 && jG1 < 2147483647L) {
                tVarA = tVarA.a(tVarA.f62297g.b().Q((int) jG1).N());
            }
        }
        int[] iArr11 = iArr3;
        long jE1 = a1.e1(j11, 1000000L, tVarA.f62293c);
        long[] jArr7 = tVarA.f62299i;
        if (jArr7 == null) {
            a1.f1(jArr2, 1000000L, tVarA.f62293c);
            return new w(tVarA, jArr, iArr2, i11, jArr2, iArr11, jE1);
        }
        if (jArr7.length == 1 && tVarA.f62292b == 1 && jArr2.length >= 2) {
            long j23 = ((long[]) androidx.media3.common.util.a.e(tVarA.f62300j))[0];
            iArr4 = iArr11;
            long jE2 = a1.e1(tVarA.f62299i[0], tVarA.f62293c, tVarA.f62294d) + j23;
            if (b(jArr2, j11, j23, jE2)) {
                long j24 = j11 - jE2;
                long jE3 = a1.e1(j23 - jArr2[0], tVarA.f62297g.F, tVarA.f62293c);
                long jE4 = a1.e1(j24, tVarA.f62297g.F, tVarA.f62293c);
                if ((jE3 != 0 || jE4 != 0) && jE3 <= 2147483647L && jE4 <= 2147483647L) {
                    e0Var.f68565a = (int) jE3;
                    e0Var.f68566b = (int) jE4;
                    a1.f1(jArr2, 1000000L, tVarA.f62293c);
                    return new w(tVarA, jArr, iArr2, i11, jArr2, iArr4, a1.e1(tVarA.f62299i[0], 1000000L, tVarA.f62294d));
                }
            }
        } else {
            iArr4 = iArr11;
        }
        long[] jArr8 = tVarA.f62299i;
        if (jArr8.length == 1 && jArr8[0] == 0) {
            long j25 = ((long[]) androidx.media3.common.util.a.e(tVarA.f62300j))[0];
            for (int i33 = 0; i33 < jArr2.length; i33++) {
                jArr2[i33] = a1.e1(jArr2[i33] - j25, 1000000L, tVarA.f62293c);
            }
            return new w(tVarA, jArr, iArr2, i11, jArr2, iArr4, a1.e1(j11 - j25, 1000000L, tVarA.f62293c));
        }
        boolean z12 = tVarA.f62292b == 1;
        int[] iArr12 = new int[jArr8.length];
        int[] iArr13 = new int[jArr8.length];
        long[] jArr9 = (long[]) androidx.media3.common.util.a.e(tVarA.f62300j);
        boolean z13 = false;
        int i34 = 0;
        int i35 = 0;
        int i36 = 0;
        while (true) {
            long[] jArr10 = tVarA.f62299i;
            if (i34 >= jArr10.length) {
                break;
            }
            int i37 = i11;
            long j26 = jArr9[i34];
            if (j26 != -1) {
                boolean z14 = z13;
                long jE5 = a1.e1(jArr10[i34], tVarA.f62293c, tVarA.f62294d);
                iArr12[i34] = a1.h(jArr2, j26, true, true);
                long j27 = j26 + jE5;
                iArr13[i34] = a1.d(jArr2, j27, z12, false);
                int i38 = iArr12[i34];
                while (true) {
                    i18 = iArr12[i34];
                    if (i18 < 0 || (iArr4[i18] & 1) != 0) {
                        break;
                    }
                    iArr12[i34] = i18 - 1;
                }
                if (i18 < 0) {
                    iArr12[i34] = i38;
                    while (true) {
                        int i39 = iArr12[i34];
                        if (i39 >= iArr13[i34] || (iArr4[i39] & 1) != 0) {
                            break;
                        }
                        iArr12[i34] = i39 + 1;
                    }
                }
                if (tVarA.f62292b == 2 && iArr12[i34] != iArr13[i34]) {
                    while (true) {
                        int i40 = iArr13[i34];
                        if (i40 >= jArr2.length - 1 || jArr2[i40 + 1] > j27) {
                            break;
                        }
                        iArr13[i34] = i40 + 1;
                    }
                }
                int i41 = iArr13[i34];
                int i42 = iArr12[i34];
                i35 += i41 - i42;
                z13 = z14 | (i36 != i42);
                i36 = i41;
            }
            i34++;
            jArr9 = jArr9;
            iArr2 = iArr2;
            i11 = i37;
            sampleCount = sampleCount;
        }
        int[] iArr14 = iArr2;
        int i43 = i11;
        int i44 = 0;
        boolean z15 = z13 | (i35 != sampleCount);
        long[] jArr11 = z15 ? new long[i35] : jArr;
        int[] iArr15 = z15 ? new int[i35] : iArr14;
        int i45 = z15 ? 0 : i43;
        int[] iArr16 = z15 ? new int[i35] : iArr4;
        long[] jArr12 = new long[i35];
        boolean z16 = false;
        int i46 = 0;
        int i47 = i45;
        long j28 = 0;
        while (i44 < tVarA.f62299i.length) {
            long j29 = tVarA.f62300j[i44];
            int i48 = iArr12[i44];
            int[] iArr17 = iArr12;
            int i49 = iArr13[i44];
            if (z15) {
                int i50 = i49 - i48;
                System.arraycopy(jArr, i48, jArr11, i46, i50);
                System.arraycopy(iArr14, i48, iArr15, i46, i50);
                iArr5 = iArr4;
                System.arraycopy(iArr5, i48, iArr16, i46, i50);
            } else {
                iArr5 = iArr4;
            }
            boolean z17 = z16;
            iArr4 = iArr5;
            int i51 = i47;
            while (i48 < i49) {
                int i52 = i49;
                int i53 = i44;
                long jE6 = a1.e1(j28, 1000000L, tVarA.f62294d);
                long j30 = j28;
                long jE7 = a1.e1(jArr2[i48] - j29, 1000000L, tVarA.f62293c);
                if (jE7 < 0) {
                    z17 = true;
                }
                jArr12[i46] = jE6 + jE7;
                if (z15 && iArr15[i46] > i51) {
                    i51 = iArr14[i48];
                }
                i46++;
                i48++;
                j28 = j30;
                i44 = i53;
                i49 = i52;
            }
            int i54 = i44;
            j28 += tVarA.f62299i[i54];
            i44 = i54 + 1;
            i47 = i51;
            z16 = z17;
            iArr12 = iArr17;
            iArr13 = iArr13;
            jArr = jArr;
        }
        long jE8 = a1.e1(j28, 1000000L, tVarA.f62294d);
        if (z16) {
            tVarA = tVarA.a(tVarA.f62297g.b().c0(true).N());
        }
        return new w(tVarA, jArr11, iArr15, i47, jArr12, iArr16, jE8);
    }

    private static d B(j0 j0Var, int i11, int i12) throws ParserException {
        j0Var.W(i11 + 8);
        int iF = j0Var.f();
        while (iF - i11 < i12) {
            j0Var.W(iF);
            int iQ = j0Var.q();
            l2.u.a(iQ > 0, "childAtomSize must be positive");
            if (j0Var.q() == 1937011305) {
                j0Var.X(4);
                int iH = j0Var.H();
                return new d(new g((iH & 1) == 1, (iH & 2) == 2, (iH & 8) == 8));
            }
            iF += iQ;
        }
        return null;
    }

    private static h C(j0 j0Var, int i11, int i12, String str, DrmInitData drmInitData, boolean z10) throws ParserException {
        int i13;
        j0Var.W(12);
        int iQ = j0Var.q();
        h hVar = new h(iQ);
        for (int i14 = 0; i14 < iQ; i14++) {
            int iF = j0Var.f();
            int iQ2 = j0Var.q();
            l2.u.a(iQ2 > 0, "childAtomSize must be positive");
            int iQ3 = j0Var.q();
            if (iQ3 == 1635148593 || iQ3 == 1635148595 || iQ3 == 1701733238 || iQ3 == 1831958048 || iQ3 == 1836070006 || iQ3 == 1752589105 || iQ3 == 1751479857 || iQ3 == 1932670515 || iQ3 == 1211250227 || iQ3 == 1748121139 || iQ3 == 1987063864 || iQ3 == 1987063865 || iQ3 == 1635135537 || iQ3 == 1685479798 || iQ3 == 1685479729 || iQ3 == 1685481573 || iQ3 == 1685481521 || iQ3 == 1634760241) {
                i13 = iF;
                K(j0Var, iQ3, i13, iQ2, i11, str, i12, drmInitData, hVar, i14);
            } else if (iQ3 == 1836069985 || iQ3 == 1701733217 || iQ3 == 1633889587 || iQ3 == 1700998451 || iQ3 == 1633889588 || iQ3 == 1835823201 || iQ3 == 1685353315 || iQ3 == 1685353317 || iQ3 == 1685353320 || iQ3 == 1685353324 || iQ3 == 1685353336 || iQ3 == 1935764850 || iQ3 == 1935767394 || iQ3 == 1819304813 || iQ3 == 1936684916 || iQ3 == 1953984371 || iQ3 == 778924082 || iQ3 == 778924083 || iQ3 == 1835557169 || iQ3 == 1835560241 || iQ3 == 1634492771 || iQ3 == 1634492791 || iQ3 == 1970037111 || iQ3 == 1332770163 || iQ3 == 1716281667 || iQ3 == 1767992678) {
                i13 = iF;
                h(j0Var, iQ3, iF, iQ2, i11, str, z10, drmInitData, hVar, i14);
            } else {
                if (iQ3 == 1414810956 || iQ3 == 1954034535 || iQ3 == 2004251764 || iQ3 == 1937010800 || iQ3 == 1664495672) {
                    D(j0Var, iQ3, iF, iQ2, i11, str, hVar);
                } else if (iQ3 == 1835365492) {
                    u(j0Var, iQ3, iF, i11, hVar);
                } else if (iQ3 == 1667329389) {
                    hVar.f62172b = new androidx.media3.common.r.b().e0(i11).u0(MimeTypes.APPLICATION_CAMERA_MOTION).N();
                }
                i13 = iF;
            }
            j0Var.W(i13 + iQ2);
        }
        return hVar;
    }

    private static void D(j0 j0Var, int i11, int i12, int i13, int i14, String str, h hVar) {
        j0Var.W(i12 + 16);
        String str2 = MimeTypes.APPLICATION_TTML;
        ImmutableList immutableListOf = null;
        long j11 = Long.MAX_VALUE;
        if (i11 != 1414810956) {
            if (i11 == 1954034535) {
                int i15 = i13 - 16;
                byte[] bArr = new byte[i15];
                j0Var.l(bArr, 0, i15);
                immutableListOf = ImmutableList.of(bArr);
                str2 = MimeTypes.APPLICATION_TX3G;
            } else if (i11 == 2004251764) {
                str2 = MimeTypes.APPLICATION_MP4VTT;
            } else if (i11 == 1937010800) {
                j11 = 0;
            } else {
                if (i11 != 1664495672) {
                    throw new IllegalStateException();
                }
                hVar.f62174d = 1;
                str2 = MimeTypes.APPLICATION_MP4CEA608;
            }
        }
        hVar.f62172b = new androidx.media3.common.r.b().e0(i14).u0(str2).j0(str).y0(j11).g0(immutableListOf).N();
    }

    private static k E(j0 j0Var) {
        long j11;
        int i11;
        j0Var.W(8);
        int iP = p(j0Var.q());
        j0Var.X(iP == 0 ? 8 : 16);
        int iQ = j0Var.q();
        j0Var.X(4);
        int iF = j0Var.f();
        int i12 = iP == 0 ? 4 : 8;
        int i13 = 0;
        while (true) {
            j11 = C.TIME_UNSET;
            if (i13 >= i12) {
                j0Var.X(i12);
                break;
            }
            if (j0Var.e()[iF + i13] != -1) {
                long J = iP == 0 ? j0Var.J() : j0Var.O();
                if (J == 0) {
                    break;
                }
                j11 = J;
                break;
            }
            i13++;
        }
        j0Var.X(10);
        int iP2 = j0Var.P();
        j0Var.X(4);
        int iQ2 = j0Var.q();
        int iQ3 = j0Var.q();
        j0Var.X(4);
        int iQ4 = j0Var.q();
        int iQ5 = j0Var.q();
        if (iQ2 == 0 && iQ3 == 65536 && iQ4 == -65536 && iQ5 == 0) {
            i11 = 90;
        } else if (iQ2 == 0 && iQ3 == -65536 && iQ4 == 65536 && iQ5 == 0) {
            i11 = 270;
        } else {
            i11 = (iQ2 == -65536 && iQ3 == 0 && iQ4 == 0 && iQ5 == -65536) ? 180 : 0;
        }
        return new k(iQ, j11, iP2, i11);
    }

    public static t F(androidx.media3.container.d.b bVar, androidx.media3.container.d.c cVar, long j11, DrmInitData drmInitData, boolean z10, boolean z11) throws ParserException {
        long[] jArr;
        long[] jArr2;
        androidx.media3.common.r rVarN;
        androidx.media3.container.d.b bVarD;
        Pair pairL;
        androidx.media3.container.d.b bVar2 = (androidx.media3.container.d.b) androidx.media3.common.util.a.e(bVar.d(1835297121));
        int iE = e(q(((androidx.media3.container.d.c) androidx.media3.common.util.a.e(bVar2.e(1751411826))).f10587b));
        if (iE == -1) {
            return null;
        }
        k kVarE = E(((androidx.media3.container.d.c) androidx.media3.common.util.a.e(bVar.e(1953196132))).f10587b);
        long jE1 = C.TIME_UNSET;
        long j12 = j11 == C.TIME_UNSET ? kVarE.f62184b : j11;
        long j13 = v(cVar.f10587b).f10592c;
        if (j12 != C.TIME_UNSET) {
            jE1 = a1.e1(j12, 1000000L, j13);
        }
        long j14 = jE1;
        androidx.media3.container.d.b bVar3 = (androidx.media3.container.d.b) androidx.media3.common.util.a.e(((androidx.media3.container.d.b) androidx.media3.common.util.a.e(bVar2.d(1835626086))).d(1937007212));
        e eVarS = s(((androidx.media3.container.d.c) androidx.media3.common.util.a.e(bVar2.e(1835296868))).f10587b);
        androidx.media3.container.d.c cVarE = bVar3.e(1937011556);
        if (cVarE == null) {
            throw ParserException.createForMalformedContainer("Malformed sample table (stbl) missing sample description (stsd)", null);
        }
        h hVarC = C(cVarE.f10587b, kVarE.f62183a, kVarE.f62186d, eVarS.f62167c, drmInitData, z11);
        if (z10 || (bVarD = bVar.d(1701082227)) == null || (pairL = l(bVarD)) == null) {
            jArr = null;
            jArr2 = null;
        } else {
            long[] jArr3 = (long[]) pairL.first;
            jArr2 = (long[]) pairL.second;
            jArr = jArr3;
        }
        if (hVarC.f62172b == null) {
            return null;
        }
        if (kVarE.f62185c != 0) {
            androidx.media3.container.c cVar2 = new androidx.media3.container.c(kVarE.f62185c);
            androidx.media3.common.r.b bVarB = hVarC.f62172b.b();
            androidx.media3.common.x xVar = hVarC.f62172b.f10158l;
            rVarN = bVarB.n0(xVar != null ? xVar.a(cVar2) : new androidx.media3.common.x(cVar2)).N();
        } else {
            rVarN = hVarC.f62172b;
        }
        return new t(kVarE.f62183a, iE, eVarS.f62165a, j13, j14, eVarS.f62166b, rVarN, hVarC.f62174d, hVarC.f62171a, hVarC.f62173c, jArr, jArr2);
    }

    public static List G(androidx.media3.container.d.b bVar, e0 e0Var, long j11, DrmInitData drmInitData, boolean z10, boolean z11, com.google.common.base.f fVar) {
        t tVar;
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < bVar.f10586d.size(); i11++) {
            androidx.media3.container.d.b bVar2 = (androidx.media3.container.d.b) bVar.f10586d.get(i11);
            if (bVar2.f10583a == 1953653099 && (tVar = (t) fVar.apply(F(bVar2, (androidx.media3.container.d.c) androidx.media3.common.util.a.e(bVar.e(1836476516)), j11, drmInitData, z10, z11))) != null) {
                arrayList.add(A(tVar, (androidx.media3.container.d.b) androidx.media3.common.util.a.e(((androidx.media3.container.d.b) androidx.media3.common.util.a.e(((androidx.media3.container.d.b) androidx.media3.common.util.a.e(bVar2.d(1835297121))).d(1835626086))).d(1937007212)), e0Var));
            }
        }
        return arrayList;
    }

    public static androidx.media3.common.x H(androidx.media3.container.d.c cVar) {
        j0 j0Var = cVar.f10587b;
        j0Var.W(8);
        androidx.media3.common.x xVar = new androidx.media3.common.x(new androidx.media3.common.x.a[0]);
        while (j0Var.a() >= 8) {
            int iF = j0Var.f();
            int iQ = j0Var.q();
            int iQ2 = j0Var.q();
            if (iQ2 == 1835365473) {
                j0Var.W(iF);
                xVar = xVar.b(I(j0Var, iF + iQ));
            } else if (iQ2 == 1936553057) {
                j0Var.W(iF);
                xVar = xVar.b(r.b(j0Var, iF + iQ));
            } else if (iQ2 == -1451722374) {
                xVar = xVar.b(L(j0Var));
            }
            j0Var.W(iF + iQ);
        }
        return xVar;
    }

    private static androidx.media3.common.x I(j0 j0Var, int i11) {
        j0Var.X(8);
        f(j0Var);
        while (j0Var.f() < i11) {
            int iF = j0Var.f();
            int iQ = j0Var.q();
            if (j0Var.q() == 1768715124) {
                j0Var.W(iF);
                return r(j0Var, iF + iQ);
            }
            j0Var.W(iF + iQ);
        }
        return null;
    }

    static l J(j0 j0Var, int i11, int i12) throws ParserException {
        j0Var.W(i11 + 8);
        int iF = j0Var.f();
        d dVarB = null;
        while (iF - i11 < i12) {
            j0Var.W(iF);
            int iQ = j0Var.q();
            l2.u.a(iQ > 0, "childAtomSize must be positive");
            if (j0Var.q() == 1702454643) {
                dVarB = B(j0Var, iF, iQ);
            }
            iF += iQ;
        }
        if (dVarB == null) {
            return null;
        }
        return new l(dVarB);
    }

    private static void K(j0 j0Var, int i11, int i12, int i13, int i14, String str, int i15, DrmInitData drmInitData, h hVar, int i16) throws ParserException {
        String str2;
        DrmInitData drmInitData2;
        int i17;
        int i18;
        float f11;
        int i19;
        int i20;
        int i21;
        int i22 = i12;
        int i23 = i13;
        DrmInitData drmInitDataCopyWithSchemeType = drmInitData;
        h hVar2 = hVar;
        j0Var.W(i22 + 16);
        j0Var.X(16);
        int iP = j0Var.P();
        int iP2 = j0Var.P();
        j0Var.X(50);
        int iF = j0Var.f();
        int iIntValue = i11;
        if (iIntValue == 1701733238) {
            Pair pairY = y(j0Var, i22, i23);
            if (pairY != null) {
                iIntValue = ((Integer) pairY.first).intValue();
                drmInitDataCopyWithSchemeType = drmInitDataCopyWithSchemeType == null ? null : drmInitDataCopyWithSchemeType.copyWithSchemeType(((u) pairY.second).f62304b);
                hVar2.f62171a[i16] = (u) pairY.second;
            }
            j0Var.W(iF);
        }
        String str3 = MimeTypes.VIDEO_H263;
        if (iIntValue == 1831958048) {
            str2 = MimeTypes.VIDEO_MPEG;
        } else {
            str2 = iIntValue == 1211250227 ? MimeTypes.VIDEO_H263 : null;
        }
        float fW = 1.0f;
        int i24 = 8;
        int i25 = 8;
        List listOf = null;
        String str4 = null;
        byte[] bArrX = null;
        int i26 = -1;
        int i27 = -1;
        int i28 = -1;
        int i29 = -1;
        int i30 = -1;
        int iK = -1;
        ByteBuffer byteBufferA = null;
        a aVarJ = null;
        c cVarM = null;
        androidx.media3.container.g.k kVar = null;
        boolean z10 = false;
        while (iF - i22 < i23) {
            j0Var.W(iF);
            int iF2 = j0Var.f();
            int iQ = j0Var.q();
            if (iQ == 0 && j0Var.f() - i22 == i23) {
                break;
            }
            l2.u.a(iQ > 0, "childAtomSize must be positive");
            int iQ2 = j0Var.q();
            if (iQ2 == 1635148611) {
                l2.u.a(str2 == null, null);
                j0Var.W(iF2 + 8);
                l2.d dVarB = l2.d.b(j0Var);
                List list = dVarB.f68528a;
                hVar2.f62173c = dVarB.f68529b;
                if (!z10) {
                    fW = dVarB.f68538k;
                }
                String str5 = dVarB.f68539l;
                int i31 = dVarB.f68537j;
                int i32 = dVarB.f68534g;
                int i33 = dVarB.f68535h;
                int i34 = dVarB.f68536i;
                int i35 = dVarB.f68532e;
                int i36 = dVarB.f68533f;
                drmInitData2 = drmInitDataCopyWithSchemeType;
                i27 = i31;
                i30 = i33;
                iK = i34;
                i24 = i35;
                listOf = list;
                str2 = MimeTypes.VIDEO_H264;
                str4 = str5;
                i17 = i32;
                i25 = i36;
            } else {
                if (iQ2 == 1752589123) {
                    l2.u.a(str2 == null, null);
                    j0Var.W(iF2 + 8);
                    f0 f0VarA = f0.a(j0Var);
                    List list2 = f0VarA.f68567a;
                    hVar2.f62173c = f0VarA.f68568b;
                    if (!z10) {
                        fW = f0VarA.f68578l;
                    }
                    int i37 = f0VarA.f68579m;
                    int i38 = f0VarA.f68569c;
                    String str6 = f0VarA.f68580n;
                    int i39 = f0VarA.f68577k;
                    listOf = list2;
                    if (i39 != -1) {
                        i26 = i39;
                    }
                    int i40 = f0VarA.f68574h;
                    int i41 = f0VarA.f68575i;
                    int i42 = f0VarA.f68576j;
                    int i43 = f0VarA.f68572f;
                    int i44 = f0VarA.f68573g;
                    kVar = f0VarA.f68581o;
                    drmInitData2 = drmInitDataCopyWithSchemeType;
                    iP2 = iP2;
                    iIntValue = iIntValue;
                    i30 = i41;
                    iK = i42;
                    i24 = i43;
                    i27 = i37;
                    str2 = MimeTypes.VIDEO_H265;
                    i28 = i38;
                    i17 = i40;
                    str4 = str6;
                    i25 = i44;
                } else {
                    drmInitData2 = drmInitDataCopyWithSchemeType;
                    if (iQ2 == 1818785347) {
                        l2.u.a(MimeTypes.VIDEO_H265.equals(str2), "lhvC must follow hvcC atom");
                        androidx.media3.container.g.k kVar2 = kVar;
                        l2.u.a(kVar2 != null && kVar2.f10646b.size() >= 2, "must have at least two layers");
                        j0Var.W(iF2 + 8);
                        f0 f0VarC = f0.c(j0Var, (androidx.media3.container.g.k) androidx.media3.common.util.a.e(kVar2));
                        l2.u.a(hVar2.f62173c == f0VarC.f68568b, "nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms");
                        int i45 = f0VarC.f68574h;
                        i17 = i29;
                        if (i45 != -1) {
                            l2.u.a(i17 == i45, "colorSpace must be the same for both views");
                        }
                        int i46 = f0VarC.f68575i;
                        int i47 = i30;
                        if (i46 != -1) {
                            l2.u.a(i47 == i46, "colorRange must be the same for both views");
                        }
                        int i48 = f0VarC.f68576j;
                        if (i48 != -1) {
                            int i49 = iK;
                            i21 = i49;
                            l2.u.a(i49 == i48, "colorTransfer must be the same for both views");
                        } else {
                            i21 = iK;
                        }
                        l2.u.a(i24 == f0VarC.f68572f, "bitdepthLuma must be the same for both views");
                        l2.u.a(i25 == f0VarC.f68573g, "bitdepthChroma must be the same for both views");
                        List list3 = listOf;
                        if (list3 != null) {
                            listOf = ImmutableList.builder().l(list3).l(f0VarC.f68567a).e();
                        } else {
                            listOf = list3;
                            l2.u.a(false, "initializationData must be already set from hvcC atom");
                        }
                        kVar = kVar2;
                        str2 = "video/mv-hevc";
                        i30 = i47;
                        iK = i21;
                        str4 = f0VarC.f68580n;
                    } else {
                        List listH = listOf;
                        i17 = i29;
                        i30 = i30;
                        iK = iK;
                        androidx.media3.container.g.k kVar3 = kVar;
                        if (iQ2 == 1986361461) {
                            l lVarJ = J(j0Var, iF2, iQ);
                            if (lVarJ == null || lVarJ.f62187a == null) {
                                i20 = i26;
                                i26 = i20;
                            } else if (kVar3 == null || kVar3.f10646b.size() < 2) {
                                i20 = i26;
                                if (i20 == -1) {
                                    i26 = lVarJ.f62187a.f62164a.f62170c ? 5 : 4;
                                } else {
                                    i26 = i20;
                                }
                            } else {
                                l2.u.a(lVarJ.b(), "both eye views must be marked as available");
                                l2.u.a(!lVarJ.f62187a.f62164a.f62170c, "for MV-HEVC, eye_views_reversed must be set to false");
                                i20 = i26;
                                i26 = i20;
                            }
                            kVar = kVar3;
                            iP2 = iP2;
                            iIntValue = iIntValue;
                            listOf = listH;
                            i30 = i30;
                            iK = iK;
                        } else {
                            int i50 = i26;
                            if (iQ2 == 1685480259 || iQ2 == 1685485123) {
                                i18 = i50;
                                iP2 = iP2;
                                iIntValue = iIntValue;
                                i25 = i25;
                                f11 = fW;
                                i24 = i24;
                                i19 = iK;
                                l2.o oVarA = l2.o.a(j0Var);
                                if (oVarA != null) {
                                    str2 = "video/dolby-vision";
                                    str4 = oVarA.f68654c;
                                }
                            } else if (iQ2 == 1987076931) {
                                l2.u.a(str2 == null, null);
                                String str7 = iIntValue == 1987063864 ? MimeTypes.VIDEO_VP8 : MimeTypes.VIDEO_VP9;
                                j0Var.W(iF2 + 12);
                                byte bH = (byte) j0Var.H();
                                byte bH2 = (byte) j0Var.H();
                                int iH = j0Var.H();
                                i25 = iH >> 4;
                                byte b11 = (byte) ((iH >> 1) & 7);
                                if (str7.equals(MimeTypes.VIDEO_VP9)) {
                                    listH = androidx.media3.common.util.j.h(bH, bH2, (byte) i25, b11);
                                }
                                boolean z11 = (iH & 1) != 0;
                                int iH2 = j0Var.H();
                                int iH3 = j0Var.H();
                                int iJ = androidx.media3.common.i.j(iH2);
                                i30 = z11 ? 1 : 2;
                                iK = androidx.media3.common.i.k(iH3);
                                str2 = str7;
                                iP2 = iP2;
                                i24 = i25;
                                kVar = kVar3;
                                i17 = iJ;
                                listOf = listH;
                                i26 = i50;
                                iIntValue = iIntValue;
                            } else if (iQ2 == 1635135811) {
                                int i51 = iQ - 8;
                                byte[] bArr = new byte[i51];
                                j0Var.l(bArr, 0, i51);
                                listOf = ImmutableList.of(bArr);
                                j0Var.W(iF2 + 8);
                                androidx.media3.common.i iVarI = i(j0Var);
                                int i52 = iVarI.f10075e;
                                int i53 = iVarI.f10076f;
                                i17 = iVarI.f10071a;
                                int i54 = iVarI.f10072b;
                                iK = iVarI.f10073c;
                                i24 = i52;
                                iP2 = iP2;
                                iIntValue = iIntValue;
                                i30 = i54;
                                kVar = kVar3;
                                i26 = i50;
                                i25 = i53;
                                str2 = "video/av01";
                            } else if (iQ2 == 1668050025) {
                                if (byteBufferA == null) {
                                    byteBufferA = a();
                                }
                                ByteBuffer byteBuffer = byteBufferA;
                                byteBuffer.position(21);
                                byteBuffer.putShort(j0Var.D());
                                byteBuffer.putShort(j0Var.D());
                                byteBufferA = byteBuffer;
                                iP2 = iP2;
                                iIntValue = iIntValue;
                                kVar = kVar3;
                                listOf = listH;
                                i30 = i30;
                                iK = iK;
                                i26 = i50;
                            } else {
                                if (iQ2 == 1835295606) {
                                    if (byteBufferA == null) {
                                        byteBufferA = a();
                                    }
                                    ByteBuffer byteBuffer2 = byteBufferA;
                                    short sD = j0Var.D();
                                    short sD2 = j0Var.D();
                                    iIntValue = iIntValue;
                                    short sD3 = j0Var.D();
                                    short sD4 = j0Var.D();
                                    int i55 = i25;
                                    short sD5 = j0Var.D();
                                    int i56 = i24;
                                    short sD6 = j0Var.D();
                                    i18 = i50;
                                    short sD7 = j0Var.D();
                                    float f12 = fW;
                                    short sD8 = j0Var.D();
                                    long J = j0Var.J();
                                    long J2 = j0Var.J();
                                    iP2 = iP2;
                                    byteBuffer2.position(1);
                                    byteBuffer2.putShort(sD5);
                                    byteBuffer2.putShort(sD6);
                                    byteBuffer2.putShort(sD);
                                    byteBuffer2.putShort(sD2);
                                    byteBuffer2.putShort(sD3);
                                    byteBuffer2.putShort(sD4);
                                    byteBuffer2.putShort(sD7);
                                    byteBuffer2.putShort(sD8);
                                    byteBuffer2.putShort((short) (J / 10000));
                                    byteBuffer2.putShort((short) (J2 / 10000));
                                    byteBufferA = byteBuffer2;
                                    i25 = i55;
                                    i24 = i56;
                                    listOf = listH;
                                    fW = f12;
                                } else {
                                    i18 = i50;
                                    iP2 = iP2;
                                    iIntValue = iIntValue;
                                    i25 = i25;
                                    f11 = fW;
                                    i24 = i24;
                                    if (iQ2 == 1681012275) {
                                        l2.u.a(str2 == null, null);
                                        str2 = str3;
                                    } else if (iQ2 == 1702061171) {
                                        l2.u.a(str2 == null, null);
                                        cVarM = m(j0Var, iF2);
                                        String str8 = cVarM.f62160a;
                                        byte[] bArr2 = cVarM.f62161b;
                                        listOf = bArr2 != null ? ImmutableList.of(bArr2) : listH;
                                        str2 = str8;
                                        fW = f11;
                                    } else if (iQ2 == 1651798644) {
                                        aVarJ = j(j0Var, iF2);
                                    } else {
                                        if (iQ2 == 1885434736) {
                                            fW = w(j0Var, iF2);
                                            i25 = i25;
                                            i24 = i24;
                                            listOf = listH;
                                            i30 = i30;
                                            iK = iK;
                                            z10 = true;
                                        } else if (iQ2 == 1937126244) {
                                            bArrX = x(j0Var, iF2, iQ);
                                        } else if (iQ2 == 1936995172) {
                                            int iH4 = j0Var.H();
                                            j0Var.X(3);
                                            if (iH4 == 0) {
                                                int iH5 = j0Var.H();
                                                if (iH5 == 0) {
                                                    i18 = 0;
                                                } else if (iH5 == 1) {
                                                    i18 = 1;
                                                } else if (iH5 == 2) {
                                                    i18 = 2;
                                                } else if (iH5 == 3) {
                                                    i18 = 3;
                                                }
                                            }
                                        } else if (iQ2 == 1634760259) {
                                            int i57 = iQ - 12;
                                            byte[] bArr3 = new byte[i57];
                                            j0Var.W(iF2 + 12);
                                            j0Var.l(bArr3, 0, i57);
                                            listOf = ImmutableList.of(bArr3);
                                            androidx.media3.common.i iVarG = g(new j0(bArr3));
                                            int i58 = iVarG.f10075e;
                                            int i59 = iVarG.f10076f;
                                            int i60 = iVarG.f10071a;
                                            int i61 = iVarG.f10072b;
                                            iK = iVarG.f10073c;
                                            i24 = i58;
                                            i25 = i59;
                                            i30 = i61;
                                            fW = f11;
                                            i17 = i60;
                                            str2 = "video/apv";
                                            kVar = kVar3;
                                            i26 = i18;
                                        } else if (iQ2 == 1668246642) {
                                            i19 = iK;
                                            if (i17 == -1 && i19 == -1) {
                                                int iQ3 = j0Var.q();
                                                if (iQ3 == 1852009592 || iQ3 == 1852009571) {
                                                    int iP3 = j0Var.P();
                                                    int iP4 = j0Var.P();
                                                    j0Var.X(2);
                                                    boolean z12 = iQ == 19 && (j0Var.H() & 128) != 0;
                                                    int iJ2 = androidx.media3.common.i.j(iP3);
                                                    int i62 = z12 ? 1 : 2;
                                                    i25 = i25;
                                                    i24 = i24;
                                                    listOf = listH;
                                                    fW = f11;
                                                    iK = androidx.media3.common.i.k(iP4);
                                                    i30 = i62;
                                                    i17 = iJ2;
                                                } else {
                                                    androidx.media3.common.util.u.h("BoxParsers", "Unsupported color type: " + androidx.media3.container.d.a(iQ3));
                                                }
                                            }
                                        } else {
                                            i19 = iK;
                                        }
                                        int i63 = i18;
                                        kVar = kVar3;
                                        i26 = i63;
                                    }
                                    listOf = listH;
                                    fW = f11;
                                }
                                int i64 = i18;
                                kVar = kVar3;
                                i26 = i64;
                            }
                            i25 = i25;
                            i24 = i24;
                            listOf = listH;
                            i30 = i30;
                            fW = f11;
                            iK = i19;
                            int i65 = i18;
                            kVar = kVar3;
                            i26 = i65;
                        }
                    }
                }
                iF += iQ;
                i22 = i12;
                i23 = i13;
                hVar2 = hVar;
                iIntValue = iIntValue;
                drmInitDataCopyWithSchemeType = drmInitData2;
                iP2 = iP2;
                i29 = i17;
                str3 = str3;
            }
            iF += iQ;
            i22 = i12;
            i23 = i13;
            hVar2 = hVar;
            iIntValue = iIntValue;
            drmInitDataCopyWithSchemeType = drmInitData2;
            iP2 = iP2;
            i29 = i17;
            str3 = str3;
        }
        DrmInitData drmInitData3 = drmInitDataCopyWithSchemeType;
        int i66 = iP2;
        float f13 = fW;
        List list4 = listOf;
        int i67 = i26;
        int i68 = i29;
        int i69 = i30;
        int i70 = iK;
        int i71 = i25;
        int i72 = i24;
        if (str2 == null) {
            return;
        }
        androidx.media3.common.r.b bVarT = new androidx.media3.common.r.b().e0(i14).u0(str2).S(str4).B0(iP).d0(i66).q0(f13).t0(i15).r0(bArrX).x0(i67).g0(list4).l0(i27).m0(i28).Y(drmInitData3).j0(str).T(new androidx.media3.common.i.b().d(i68).c(i69).e(i70).f(byteBufferA != null ? byteBufferA.array() : null).g(i72).b(i71).a());
        if (aVarJ != null) {
            bVarT.Q(Ints.n(aVarJ.f62149a)).p0(Ints.n(aVarJ.f62150b));
        } else if (cVarM != null) {
            bVarT.Q(Ints.n(cVarM.f62162c)).p0(Ints.n(cVarM.f62163d));
        }
        hVar.f62172b = bVarT.N();
    }

    private static androidx.media3.common.x L(j0 j0Var) {
        short sD = j0Var.D();
        j0Var.X(2);
        String strE = j0Var.E(sD);
        int iMax = Math.max(strE.lastIndexOf(43), strE.lastIndexOf(45));
        try {
            return new androidx.media3.common.x(new androidx.media3.container.e(Float.parseFloat(strE.substring(0, iMax)), Float.parseFloat(strE.substring(iMax, strE.length() - 1))));
        } catch (IndexOutOfBoundsException | NumberFormatException unused) {
            return null;
        }
    }

    private static ByteBuffer a() {
        return ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
    }

    private static boolean b(long[] jArr, long j11, long j12, long j13) {
        int length = jArr.length - 1;
        return jArr[0] <= j12 && j12 < jArr[a1.p(4, 0, length)] && jArr[a1.p(jArr.length - 4, 0, length)] < j13 && j13 <= j11;
    }

    private static int c(j0 j0Var, int i11, int i12, int i13) throws ParserException {
        int iF = j0Var.f();
        l2.u.a(iF >= i12, null);
        while (iF - i12 < i13) {
            j0Var.W(iF);
            int iQ = j0Var.q();
            l2.u.a(iQ > 0, "childAtomSize must be positive");
            if (j0Var.q() == i11) {
                return iF;
            }
            iF += iQ;
        }
        return -1;
    }

    private static String d(int i11) {
        char[] cArr = {(char) (((i11 >> 10) & 31) + 96), (char) (((i11 >> 5) & 31) + 96), (char) ((i11 & 31) + 96)};
        for (int i12 = 0; i12 < 3; i12++) {
            char c11 = cArr[i12];
            if (c11 < 'a' || c11 > 'z') {
                return null;
            }
        }
        return new String(cArr);
    }

    private static int e(int i11) {
        if (i11 == 1936684398) {
            return 1;
        }
        if (i11 == 1986618469) {
            return 2;
        }
        if (i11 == 1952807028 || i11 == 1935832172 || i11 == 1937072756 || i11 == 1668047728) {
            return 3;
        }
        return i11 == 1835365473 ? 5 : -1;
    }

    public static void f(j0 j0Var) {
        int iF = j0Var.f();
        j0Var.X(4);
        if (j0Var.q() != 1751411826) {
            iF += 4;
        }
        j0Var.W(iF);
    }

    private static androidx.media3.common.i g(j0 j0Var) {
        androidx.media3.common.i.b bVar = new androidx.media3.common.i.b();
        i0 i0Var = new i0(j0Var.e());
        i0Var.p(j0Var.f() * 8);
        i0Var.s(1);
        int iH = i0Var.h(8);
        for (int i11 = 0; i11 < iH; i11++) {
            i0Var.s(1);
            int iH2 = i0Var.h(8);
            for (int i12 = 0; i12 < iH2; i12++) {
                i0Var.r(6);
                boolean zG = i0Var.g();
                i0Var.q();
                i0Var.s(11);
                i0Var.r(4);
                int iH3 = i0Var.h(4) + 8;
                bVar.g(iH3);
                bVar.b(iH3);
                i0Var.s(1);
                if (zG) {
                    int iH4 = i0Var.h(8);
                    int iH5 = i0Var.h(8);
                    i0Var.s(1);
                    bVar.d(androidx.media3.common.i.j(iH4)).c(i0Var.g() ? 1 : 2).e(androidx.media3.common.i.k(iH5));
                }
            }
        }
        return bVar.a();
    }

    /* JADX WARN: Code duplicated, block: B:143:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:145:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:146:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:149:0x01fa  */
    /* JADX WARN: Code duplicated, block: B:151:0x0212  */
    /* JADX WARN: Code duplicated, block: B:152:0x0225  */
    /* JADX WARN: Code duplicated, block: B:155:0x0243  */
    /* JADX WARN: Code duplicated, block: B:156:0x0249  */
    /* JADX WARN: Code duplicated, block: B:159:0x0265  */
    /* JADX WARN: Code duplicated, block: B:161:0x026c  */
    /* JADX WARN: Code duplicated, block: B:163:0x0279  */
    /* JADX WARN: Code duplicated, block: B:165:0x0281  */
    /* JADX WARN: Code duplicated, block: B:166:0x0286  */
    /* JADX WARN: Code duplicated, block: B:167:0x0291  */
    /* JADX WARN: Code duplicated, block: B:172:0x029d  */
    /* JADX WARN: Code duplicated, block: B:215:0x0436  */
    /* JADX WARN: Code duplicated, block: B:217:0x0439  */
    /* JADX WARN: Code duplicated, block: B:219:0x0440  */
    /* JADX WARN: Code duplicated, block: B:221:0x044e  */
    /* JADX WARN: Code duplicated, block: B:223:0x0456  */
    /* JADX WARN: Code duplicated, block: B:224:0x045b  */
    /* JADX WARN: Code duplicated, block: B:226:0x0463  */
    /* JADX WARN: Code duplicated, block: B:246:0x0471 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:247:0x0471 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:39:0x008d  */
    /* JADX WARN: Code duplicated, block: B:95:0x0156  */
    private static void h(j0 j0Var, int i11, int i12, int i13, int i14, String str, boolean z10, DrmInitData drmInitData, h hVar, int i15) throws ParserException {
        int iP;
        int i16;
        int i17;
        int iL;
        int iRound;
        String str2;
        int i18;
        String str3;
        List listOf;
        c cVarM;
        int iQ;
        boolean z11;
        int iQ2;
        int iC;
        byte[] bArr;
        char c11;
        ImmutableList immutableListOf;
        int iH;
        byte[] bArr2;
        int iH2;
        int i19;
        byte[] bArr3;
        int iIntValue = i11;
        int i20 = i12;
        int i21 = i13;
        DrmInitData drmInitDataCopyWithSchemeType = drmInitData;
        j0Var.W(i20 + 16);
        if (z10) {
            iP = j0Var.P();
            j0Var.X(6);
        } else {
            j0Var.X(8);
            iP = 0;
        }
        if (iP == 0 || iP == 1) {
            int iP2 = j0Var.P();
            j0Var.X(6);
            int I = j0Var.I();
            j0Var.W(j0Var.f() - 4);
            int iQ3 = j0Var.q();
            if (iP == 1) {
                j0Var.X(16);
            }
            i16 = iQ3;
            i17 = -1;
            iL = iP2;
            iRound = I;
        } else {
            if (iP != 2) {
                return;
            }
            j0Var.X(16);
            iRound = (int) Math.round(j0Var.o());
            iL = j0Var.L();
            j0Var.X(4);
            int iL2 = j0Var.L();
            int iL3 = j0Var.L();
            boolean z12 = (iL3 & 1) != 0;
            boolean z13 = (iL3 & 2) != 0;
            if (z12) {
                if (iL2 == 32) {
                    i17 = 4;
                } else {
                    i17 = -1;
                }
            } else if (iL2 == 8) {
                i17 = 3;
            } else if (iL2 == 16) {
                i17 = z13 ? ASTNode.DEOP : 2;
            } else if (iL2 == 24) {
                i17 = z13 ? 1342177280 : 21;
            } else if (iL2 == 32) {
                i17 = z13 ? 1610612736 : 22;
            } else {
                i17 = -1;
            }
            j0Var.X(8);
            i16 = 0;
        }
        if (iIntValue == 1767992678) {
            iRound = -1;
            iL = -1;
        } else {
            if (iIntValue != 1935764850) {
                iRound = iIntValue == 1935767394 ? 16000 : 8000;
            }
            iL = 1;
        }
        int iF = j0Var.f();
        if (iIntValue == 1701733217) {
            Pair pairY = y(j0Var, i20, i21);
            if (pairY != null) {
                iIntValue = ((Integer) pairY.first).intValue();
                drmInitDataCopyWithSchemeType = drmInitDataCopyWithSchemeType == null ? null : drmInitDataCopyWithSchemeType.copyWithSchemeType(((u) pairY.second).f62304b);
                hVar.f62171a[i15] = (u) pairY.second;
            }
            j0Var.W(iF);
        }
        String str4 = "audio/mhm1";
        if (iIntValue == 1633889587) {
            str2 = MimeTypes.AUDIO_AC3;
        } else if (iIntValue == 1700998451) {
            str2 = MimeTypes.AUDIO_E_AC3;
        } else if (iIntValue == 1633889588) {
            str2 = "audio/ac4";
        } else if (iIntValue == 1685353315) {
            str2 = MimeTypes.AUDIO_DTS;
        } else if (iIntValue == 1685353320 || iIntValue == 1685353324) {
            str2 = MimeTypes.AUDIO_DTS_HD;
        } else if (iIntValue == 1685353317) {
            str2 = MimeTypes.AUDIO_DTS_EXPRESS;
        } else if (iIntValue == 1685353336) {
            str2 = "audio/vnd.dts.uhd;profile=p2";
        } else if (iIntValue == 1935764850) {
            str2 = MimeTypes.AUDIO_AMR_NB;
        } else {
            if (iIntValue != 1935767394) {
                if (iIntValue == 1936684916) {
                    str2 = MimeTypes.AUDIO_RAW;
                    i18 = 2;
                } else if (iIntValue == 1953984371) {
                    str2 = MimeTypes.AUDIO_RAW;
                    i18 = ASTNode.DEOP;
                } else if (iIntValue == 1819304813) {
                    if (i17 == -1) {
                        str2 = MimeTypes.AUDIO_RAW;
                        i18 = 2;
                    } else {
                        str2 = MimeTypes.AUDIO_RAW;
                    }
                } else if (iIntValue == 778924082 || iIntValue == 778924083) {
                    str2 = MimeTypes.AUDIO_MPEG;
                } else if (iIntValue == 1835557169) {
                    str2 = "audio/mha1";
                } else if (iIntValue == 1835560241) {
                    i18 = i17;
                    str2 = "audio/mhm1";
                } else if (iIntValue == 1634492771) {
                    str2 = MimeTypes.AUDIO_ALAC;
                } else if (iIntValue == 1634492791) {
                    str2 = MimeTypes.AUDIO_ALAW;
                } else if (iIntValue == 1970037111) {
                    str2 = MimeTypes.AUDIO_MLAW;
                } else if (iIntValue == 1332770163) {
                    str2 = MimeTypes.AUDIO_OPUS;
                } else if (iIntValue == 1716281667) {
                    str2 = MimeTypes.AUDIO_FLAC;
                } else if (iIntValue == 1835823201) {
                    str2 = MimeTypes.AUDIO_TRUEHD;
                } else if (iIntValue == 1767992678) {
                    str2 = "audio/iamf";
                } else {
                    i18 = i17;
                    str2 = null;
                }
                int i22 = i18;
                str3 = null;
                listOf = null;
                cVarM = null;
                a aVarJ = null;
                while (iF - i20 < i21) {
                    j0Var.W(iF);
                    iQ = j0Var.q();
                    if (iQ > 0) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    l2.u.a(z11, "childAtomSize must be positive");
                    iQ2 = j0Var.q();
                    if (iQ2 == 1835557187) {
                        j0Var.W(iF + 8);
                        j0Var.X(1);
                        iH2 = j0Var.H();
                        j0Var.X(1);
                        if (Objects.equals(str2, str4)) {
                            i19 = 0;
                            str3 = String.format("mhm1.%02X", Integer.valueOf(iH2));
                        } else {
                            i19 = 0;
                            str3 = String.format("mha1.%02X", Integer.valueOf(iH2));
                        }
                        int iP3 = j0Var.P();
                        bArr3 = new byte[iP3];
                        j0Var.l(bArr3, i19, iP3);
                        if (listOf == null) {
                            listOf = ImmutableList.of(bArr3);
                        } else {
                            listOf = ImmutableList.of(bArr3, (byte[]) listOf.get(i19));
                        }
                    } else {
                        str4 = str4;
                        if (iQ2 == 1835557200) {
                            j0Var.W(iF + 8);
                            iH = j0Var.H();
                            if (iH > 0) {
                                bArr2 = new byte[iH];
                                j0Var.l(bArr2, 0, iH);
                                if (listOf == null) {
                                    listOf = ImmutableList.of(bArr2);
                                } else {
                                    listOf = ImmutableList.of((byte[]) listOf.get(0), bArr2);
                                }
                            }
                        } else {
                            if (iQ2 != 1702061171 || (z10 && iQ2 == 2002876005)) {
                                if (iQ2 == 1702061171) {
                                    iC = iF;
                                } else {
                                    iC = c(j0Var, 1702061171, iF, iQ);
                                }
                                if (iC != -1) {
                                    cVarM = m(j0Var, iC);
                                    str2 = cVarM.f62160a;
                                    bArr = cVarM.f62161b;
                                    if (bArr != null) {
                                        if (MimeTypes.AUDIO_VORBIS.equals(str2)) {
                                            listOf = v0.e(bArr);
                                        } else {
                                            if (MimeTypes.AUDIO_AAC.equals(str2)) {
                                                l2.a.b bVarE = l2.a.e(bArr);
                                                iRound = bVarE.f68483a;
                                                iL = bVarE.f68484b;
                                                str3 = bVarE.f68485c;
                                            }
                                            listOf = ImmutableList.of(bArr);
                                        }
                                    }
                                }
                            } else if (iQ2 == 1651798644) {
                                aVarJ = j(j0Var, iF);
                            } else if (iQ2 == 1684103987) {
                                c11 = '\b';
                                j0Var.W(iF + 8);
                                hVar.f62172b = l2.b.d(j0Var, Integer.toString(i14), str, drmInitDataCopyWithSchemeType);
                            } else {
                                c11 = '\b';
                                if (iQ2 == 1684366131) {
                                    j0Var.W(iF + 8);
                                    hVar.f62172b = l2.b.h(j0Var, Integer.toString(i14), str, drmInitDataCopyWithSchemeType);
                                } else if (iQ2 == 1684103988) {
                                    j0Var.W(iF + 8);
                                    hVar.f62172b = l2.c.d(j0Var, Integer.toString(i14), str, drmInitDataCopyWithSchemeType);
                                } else if (iQ2 == 1684892784) {
                                    if (i16 <= 0) {
                                        throw ParserException.createForMalformedContainer("Invalid sample rate for Dolby TrueHD MLP stream: " + i16, null);
                                    }
                                    iRound = i16;
                                    iL = 2;
                                } else if (iQ2 == 1684305011 || iQ2 == 1969517683) {
                                    hVar.f62172b = new androidx.media3.common.r.b().e0(i14).u0(str2).R(iL).v0(iRound).Y(drmInitDataCopyWithSchemeType).j0(str).N();
                                } else if (iQ2 == 1682927731) {
                                    int i23 = iQ - 8;
                                    byte[] bArr4 = f62148a;
                                    byte[] bArrCopyOf = Arrays.copyOf(bArr4, bArr4.length + i23);
                                    j0Var.W(iF + 8);
                                    j0Var.l(bArrCopyOf, bArr4.length, i23);
                                    listOf = k0.a(bArrCopyOf);
                                } else {
                                    if (iQ2 == 1684425825) {
                                        byte[] bArr5 = new byte[iQ - 8];
                                        bArr5[0] = 102;
                                        bArr5[1] = 76;
                                        bArr5[2] = 97;
                                        bArr5[3] = 67;
                                        j0Var.W(iF + 12);
                                        j0Var.l(bArr5, 4, iQ - 12);
                                        immutableListOf = ImmutableList.of(bArr5);
                                    } else if (iQ2 == 1634492771) {
                                        int i24 = iQ - 12;
                                        byte[] bArr6 = new byte[i24];
                                        j0Var.W(iF + 12);
                                        j0Var.l(bArr6, 0, i24);
                                        Pair pairU = androidx.media3.common.util.j.u(bArr6);
                                        int iIntValue2 = ((Integer) pairU.first).intValue();
                                        int iIntValue3 = ((Integer) pairU.second).intValue();
                                        listOf = ImmutableList.of(bArr6);
                                        iRound = iIntValue2;
                                        iL = iIntValue3;
                                    } else if (iQ2 == 1767990114) {
                                        j0Var.W(iF + 9);
                                        int iM = j0Var.M();
                                        byte[] bArr7 = new byte[iM];
                                        j0Var.l(bArr7, 0, iM);
                                        immutableListOf = ImmutableList.of(bArr7);
                                    }
                                    listOf = immutableListOf;
                                }
                            }
                            iF += iQ;
                            i20 = i12;
                            i21 = i13;
                            str4 = str4;
                        }
                    }
                    iF += iQ;
                    i20 = i12;
                    i21 = i13;
                    str4 = str4;
                }
                if (hVar.f62172b == null || str2 == null) {
                }
                androidx.media3.common.r.b bVarJ0 = new androidx.media3.common.r.b().e0(i14).u0(str2).S(str3).R(iL).v0(iRound).o0(i22).g0(listOf).Y(drmInitDataCopyWithSchemeType).j0(str);
                if (cVarM != null) {
                    bVarJ0.Q(Ints.n(cVarM.f62162c)).p0(Ints.n(cVarM.f62163d));
                } else if (aVarJ != null) {
                    bVarJ0.Q(Ints.n(aVarJ.f62149a)).p0(Ints.n(aVarJ.f62150b));
                }
                hVar.f62172b = bVarJ0.N();
                return;
            }
            str2 = MimeTypes.AUDIO_AMR_WB;
        }
        i18 = i17;
        int i25 = i18;
        str3 = null;
        listOf = null;
        cVarM = null;
        a aVarJ2 = null;
        while (iF - i20 < i21) {
            j0Var.W(iF);
            iQ = j0Var.q();
            if (iQ > 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            l2.u.a(z11, "childAtomSize must be positive");
            iQ2 = j0Var.q();
            if (iQ2 == 1835557187) {
                j0Var.W(iF + 8);
                j0Var.X(1);
                iH2 = j0Var.H();
                j0Var.X(1);
                if (Objects.equals(str2, str4)) {
                    i19 = 0;
                    str3 = String.format("mhm1.%02X", Integer.valueOf(iH2));
                } else {
                    i19 = 0;
                    str3 = String.format("mha1.%02X", Integer.valueOf(iH2));
                }
                int iP4 = j0Var.P();
                bArr3 = new byte[iP4];
                j0Var.l(bArr3, i19, iP4);
                if (listOf == null) {
                    listOf = ImmutableList.of(bArr3);
                } else {
                    listOf = ImmutableList.of(bArr3, (byte[]) listOf.get(i19));
                }
            } else {
                str4 = str4;
                if (iQ2 == 1835557200) {
                    j0Var.W(iF + 8);
                    iH = j0Var.H();
                    if (iH > 0) {
                        bArr2 = new byte[iH];
                        j0Var.l(bArr2, 0, iH);
                        if (listOf == null) {
                            listOf = ImmutableList.of(bArr2);
                        } else {
                            listOf = ImmutableList.of((byte[]) listOf.get(0), bArr2);
                        }
                    }
                } else {
                    if (iQ2 != 1702061171) {
                        if (iQ2 == 1702061171) {
                            iC = iF;
                        } else {
                            iC = c(j0Var, 1702061171, iF, iQ);
                        }
                        if (iC != -1) {
                            cVarM = m(j0Var, iC);
                            str2 = cVarM.f62160a;
                            bArr = cVarM.f62161b;
                            if (bArr != null) {
                                if (MimeTypes.AUDIO_VORBIS.equals(str2)) {
                                    listOf = v0.e(bArr);
                                } else {
                                    if (MimeTypes.AUDIO_AAC.equals(str2)) {
                                        l2.a.b bVarE2 = l2.a.e(bArr);
                                        iRound = bVarE2.f68483a;
                                        iL = bVarE2.f68484b;
                                        str3 = bVarE2.f68485c;
                                    }
                                    listOf = ImmutableList.of(bArr);
                                }
                            }
                        }
                    } else {
                        if (iQ2 == 1702061171) {
                            iC = iF;
                        } else {
                            iC = c(j0Var, 1702061171, iF, iQ);
                        }
                        if (iC != -1) {
                            cVarM = m(j0Var, iC);
                            str2 = cVarM.f62160a;
                            bArr = cVarM.f62161b;
                            if (bArr != null) {
                                if (MimeTypes.AUDIO_VORBIS.equals(str2)) {
                                    listOf = v0.e(bArr);
                                } else {
                                    if (MimeTypes.AUDIO_AAC.equals(str2)) {
                                        l2.a.b bVarE3 = l2.a.e(bArr);
                                        iRound = bVarE3.f68483a;
                                        iL = bVarE3.f68484b;
                                        str3 = bVarE3.f68485c;
                                    }
                                    listOf = ImmutableList.of(bArr);
                                }
                            }
                        }
                    }
                    iF += iQ;
                    i20 = i12;
                    i21 = i13;
                    str4 = str4;
                }
            }
            iF += iQ;
            i20 = i12;
            i21 = i13;
            str4 = str4;
        }
        if (hVar.f62172b == null) {
        }
    }

    private static androidx.media3.common.i i(j0 j0Var) {
        androidx.media3.common.i.b bVar = new androidx.media3.common.i.b();
        i0 i0Var = new i0(j0Var.e());
        i0Var.p(j0Var.f() * 8);
        i0Var.s(1);
        int iH = i0Var.h(3);
        i0Var.r(6);
        boolean zG = i0Var.g();
        boolean zG2 = i0Var.g();
        if (iH == 2 && zG) {
            bVar.g(zG2 ? 12 : 10);
            bVar.b(zG2 ? 12 : 10);
        } else if (iH <= 2) {
            bVar.g(zG ? 10 : 8);
            bVar.b(zG ? 10 : 8);
        }
        i0Var.r(13);
        i0Var.q();
        int iH2 = i0Var.h(4);
        if (iH2 != 1) {
            androidx.media3.common.util.u.f("BoxParsers", "Unsupported obu_type: " + iH2);
            return bVar.a();
        }
        if (i0Var.g()) {
            androidx.media3.common.util.u.f("BoxParsers", "Unsupported obu_extension_flag");
            return bVar.a();
        }
        boolean zG3 = i0Var.g();
        i0Var.q();
        if (zG3 && i0Var.h(8) > 127) {
            androidx.media3.common.util.u.f("BoxParsers", "Excessive obu_size");
            return bVar.a();
        }
        int iH3 = i0Var.h(3);
        i0Var.q();
        if (i0Var.g()) {
            androidx.media3.common.util.u.f("BoxParsers", "Unsupported reduced_still_picture_header");
            return bVar.a();
        }
        if (i0Var.g()) {
            androidx.media3.common.util.u.f("BoxParsers", "Unsupported timing_info_present_flag");
            return bVar.a();
        }
        if (i0Var.g()) {
            androidx.media3.common.util.u.f("BoxParsers", "Unsupported initial_display_delay_present_flag");
            return bVar.a();
        }
        int iH4 = i0Var.h(5);
        boolean z10 = false;
        for (int i11 = 0; i11 <= iH4; i11++) {
            i0Var.r(12);
            if (i0Var.h(5) > 7) {
                i0Var.q();
            }
        }
        int iH5 = i0Var.h(4);
        int iH6 = i0Var.h(4);
        i0Var.r(iH5 + 1);
        i0Var.r(iH6 + 1);
        if (i0Var.g()) {
            i0Var.r(7);
        }
        i0Var.r(7);
        boolean zG4 = i0Var.g();
        if (zG4) {
            i0Var.r(2);
        }
        if ((i0Var.g() ? 2 : i0Var.h(1)) > 0 && !i0Var.g()) {
            i0Var.r(1);
        }
        if (zG4) {
            i0Var.r(3);
        }
        i0Var.r(3);
        boolean zG5 = i0Var.g();
        if (iH3 == 2 && zG5) {
            i0Var.q();
        }
        if (iH3 != 1 && i0Var.g()) {
            z10 = true;
        }
        if (i0Var.g()) {
            int iH7 = i0Var.h(8);
            int iH8 = i0Var.h(8);
            bVar.d(androidx.media3.common.i.j(iH7)).c(((z10 || iH7 != 1 || iH8 != 13 || i0Var.h(8) != 0) ? i0Var.h(1) : 1) != 1 ? 2 : 1).e(androidx.media3.common.i.k(iH8));
        }
        return bVar.a();
    }

    private static a j(j0 j0Var, int i11) {
        j0Var.W(i11 + 8);
        j0Var.X(4);
        return new a(j0Var.J(), j0Var.J());
    }

    static Pair k(j0 j0Var, int i11, int i12) throws ParserException {
        int i13 = i11 + 8;
        int i14 = -1;
        int i15 = 0;
        String strE = null;
        Integer numValueOf = null;
        while (i13 - i11 < i12) {
            j0Var.W(i13);
            int iQ = j0Var.q();
            int iQ2 = j0Var.q();
            if (iQ2 == 1718775137) {
                numValueOf = Integer.valueOf(j0Var.q());
            } else if (iQ2 == 1935894637) {
                j0Var.X(4);
                strE = j0Var.E(4);
            } else if (iQ2 == 1935894633) {
                i14 = i13;
                i15 = iQ;
            }
            i13 += iQ;
        }
        if (!C.CENC_TYPE_cenc.equals(strE) && !C.CENC_TYPE_cbc1.equals(strE) && !C.CENC_TYPE_cens.equals(strE) && !C.CENC_TYPE_cbcs.equals(strE)) {
            return null;
        }
        l2.u.a(numValueOf != null, "frma atom is mandatory");
        l2.u.a(i14 != -1, "schi atom is mandatory");
        u uVarZ = z(j0Var, i14, i15, strE);
        l2.u.a(uVarZ != null, "tenc atom is mandatory");
        return Pair.create(numValueOf, (u) a1.i(uVarZ));
    }

    private static Pair l(androidx.media3.container.d.b bVar) {
        androidx.media3.container.d.c cVarE = bVar.e(1701606260);
        if (cVarE == null) {
            return null;
        }
        j0 j0Var = cVarE.f10587b;
        j0Var.W(8);
        int iP = p(j0Var.q());
        int iL = j0Var.L();
        long[] jArr = new long[iL];
        long[] jArr2 = new long[iL];
        for (int i11 = 0; i11 < iL; i11++) {
            jArr[i11] = iP == 1 ? j0Var.O() : j0Var.J();
            jArr2[i11] = iP == 1 ? j0Var.A() : j0Var.q();
            if (j0Var.D() != 1) {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
            j0Var.X(2);
        }
        return Pair.create(jArr, jArr2);
    }

    private static c m(j0 j0Var, int i11) {
        j0Var.W(i11 + 12);
        j0Var.X(1);
        n(j0Var);
        j0Var.X(2);
        int iH = j0Var.H();
        if ((iH & 128) != 0) {
            j0Var.X(2);
        }
        if ((iH & 64) != 0) {
            j0Var.X(j0Var.H());
        }
        if ((iH & 32) != 0) {
            j0Var.X(2);
        }
        j0Var.X(1);
        n(j0Var);
        String strH = y.h(j0Var.H());
        if (MimeTypes.AUDIO_MPEG.equals(strH) || MimeTypes.AUDIO_DTS.equals(strH) || MimeTypes.AUDIO_DTS_HD.equals(strH)) {
            return new c(strH, null, -1L, -1L);
        }
        j0Var.X(4);
        long J = j0Var.J();
        long J2 = j0Var.J();
        j0Var.X(1);
        int iN = n(j0Var);
        byte[] bArr = new byte[iN];
        j0Var.l(bArr, 0, iN);
        return new c(strH, bArr, J2 > 0 ? J2 : -1L, J > 0 ? J : -1L);
    }

    private static int n(j0 j0Var) {
        int iH = j0Var.H();
        int i11 = iH & 127;
        while ((iH & 128) == 128) {
            iH = j0Var.H();
            i11 = (i11 << 7) | (iH & 127);
        }
        return i11;
    }

    public static int o(int i11) {
        return i11 & 16777215;
    }

    public static int p(int i11) {
        return (i11 >> 24) & 255;
    }

    private static int q(j0 j0Var) {
        j0Var.W(16);
        return j0Var.q();
    }

    private static androidx.media3.common.x r(j0 j0Var, int i11) {
        j0Var.X(8);
        ArrayList arrayList = new ArrayList();
        while (j0Var.f() < i11) {
            androidx.media3.common.x.a aVarD = f3.j.d(j0Var);
            if (aVarD != null) {
                arrayList.add(aVarD);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new androidx.media3.common.x(arrayList);
    }

    private static e s(j0 j0Var) {
        long jE1;
        j0Var.W(8);
        int iP = p(j0Var.q());
        j0Var.X(iP == 0 ? 8 : 16);
        long J = j0Var.J();
        int iF = j0Var.f();
        int i11 = iP == 0 ? 4 : 8;
        int i12 = 0;
        while (true) {
            if (i12 >= i11) {
                j0Var.X(i11);
                break;
            }
            if (j0Var.e()[iF + i12] != -1) {
                long J2 = iP == 0 ? j0Var.J() : j0Var.O();
                if (J2 == 0) {
                    break;
                }
                jE1 = a1.e1(J2, 1000000L, J);
                return new e(J, jE1, d(j0Var.P()));
            }
            i12++;
        }
        jE1 = -9223372036854775807L;
        return new e(J, jE1, d(j0Var.P()));
    }

    public static androidx.media3.common.x t(androidx.media3.container.d.b bVar) {
        androidx.media3.container.d.c cVarE = bVar.e(1751411826);
        androidx.media3.container.d.c cVarE2 = bVar.e(1801812339);
        androidx.media3.container.d.c cVarE3 = bVar.e(1768715124);
        if (cVarE == null || cVarE2 == null || cVarE3 == null || q(cVarE.f10587b) != 1835299937) {
            return null;
        }
        j0 j0Var = cVarE2.f10587b;
        j0Var.W(12);
        int iQ = j0Var.q();
        String[] strArr = new String[iQ];
        for (int i11 = 0; i11 < iQ; i11++) {
            int iQ2 = j0Var.q();
            j0Var.X(4);
            strArr[i11] = j0Var.E(iQ2 - 8);
        }
        j0 j0Var2 = cVarE3.f10587b;
        j0Var2.W(8);
        ArrayList arrayList = new ArrayList();
        while (j0Var2.a() > 8) {
            int iF = j0Var2.f();
            int iQ3 = j0Var2.q();
            int iQ4 = j0Var2.q() - 1;
            if (iQ4 < 0 || iQ4 >= iQ) {
                androidx.media3.common.util.u.h("BoxParsers", "Skipped metadata with unknown key index: " + iQ4);
            } else {
                androidx.media3.container.b bVarI = f3.j.i(j0Var2, iF + iQ3, strArr[iQ4]);
                if (bVarI != null) {
                    arrayList.add(bVarI);
                }
            }
            j0Var2.W(iF + iQ3);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new androidx.media3.common.x(arrayList);
    }

    private static void u(j0 j0Var, int i11, int i12, int i13, h hVar) {
        j0Var.W(i12 + 16);
        if (i11 == 1835365492) {
            j0Var.B();
            String strB = j0Var.B();
            if (strB != null) {
                hVar.f62172b = new androidx.media3.common.r.b().e0(i13).u0(strB).N();
            }
        }
    }

    public static androidx.media3.container.f v(j0 j0Var) {
        long jA;
        long jA2;
        j0Var.W(8);
        if (p(j0Var.q()) == 0) {
            jA = j0Var.J();
            jA2 = j0Var.J();
        } else {
            jA = j0Var.A();
            jA2 = j0Var.A();
        }
        return new androidx.media3.container.f(jA, jA2, j0Var.J());
    }

    private static float w(j0 j0Var, int i11) {
        j0Var.W(i11 + 8);
        return j0Var.L() / j0Var.L();
    }

    private static byte[] x(j0 j0Var, int i11, int i12) {
        int i13 = i11 + 8;
        while (i13 - i11 < i12) {
            j0Var.W(i13);
            int iQ = j0Var.q();
            if (j0Var.q() == 1886547818) {
                return Arrays.copyOfRange(j0Var.e(), i13, iQ + i13);
            }
            i13 += iQ;
        }
        return null;
    }

    private static Pair y(j0 j0Var, int i11, int i12) throws ParserException {
        Pair pairK;
        int iF = j0Var.f();
        while (iF - i11 < i12) {
            j0Var.W(iF);
            int iQ = j0Var.q();
            l2.u.a(iQ > 0, "childAtomSize must be positive");
            if (j0Var.q() == 1936289382 && (pairK = k(j0Var, iF, iQ)) != null) {
                return pairK;
            }
            iF += iQ;
        }
        return null;
    }

    private static u z(j0 j0Var, int i11, int i12, String str) {
        int i13;
        int i14;
        int i15 = i11 + 8;
        while (true) {
            byte[] bArr = null;
            if (i15 - i11 >= i12) {
                return null;
            }
            j0Var.W(i15);
            int iQ = j0Var.q();
            if (j0Var.q() == 1952804451) {
                int iP = p(j0Var.q());
                j0Var.X(1);
                if (iP == 0) {
                    j0Var.X(1);
                    i14 = 0;
                    i13 = 0;
                } else {
                    int iH = j0Var.H();
                    i13 = iH & 15;
                    i14 = (iH & 240) >> 4;
                }
                boolean z10 = j0Var.H() == 1;
                int iH2 = j0Var.H();
                byte[] bArr2 = new byte[16];
                j0Var.l(bArr2, 0, 16);
                if (z10 && iH2 == 0) {
                    int iH3 = j0Var.H();
                    bArr = new byte[iH3];
                    j0Var.l(bArr, 0, iH3);
                }
                return new u(z10, str, iH2, bArr2, i14, i13, bArr);
            }
            i15 += iQ;
        }
    }
}
