package k0;

import android.text.Layout;
import android.text.TextUtils;
import java.text.Bidi;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
public final class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Layout f66526a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f66527b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f66528c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean[] f66529d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private char[] f66530e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f66531f;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f66532a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f66533b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f66534c;

        public a(int i11, int i12, boolean z10) {
            this.f66532a = i11;
            this.f66533b = i12;
            this.f66534c = z10;
        }

        public final int a() {
            return this.f66533b;
        }

        public final int b() {
            return this.f66532a;
        }

        public final boolean c() {
            return this.f66534c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f66532a == aVar.f66532a && this.f66533b == aVar.f66533b && this.f66534c == aVar.f66534c;
        }

        public int hashCode() {
            return (((this.f66532a * 31) + this.f66533b) * 31) + androidx.compose.foundation.e.a(this.f66534c);
        }

        public String toString() {
            return "BidiRun(start=" + this.f66532a + ", end=" + this.f66533b + ", isRtl=" + this.f66534c + ')';
        }
    }

    public f0(Layout layout) {
        this.f66526a = layout;
        ArrayList arrayList = new ArrayList();
        int length = 0;
        do {
            int iN0 = StringsKt.n0(this.f66526a.getText(), '\n', length, false, 4, null);
            length = iN0 < 0 ? this.f66526a.getText().length() : iN0 + 1;
            arrayList.add(Integer.valueOf(length));
        } while (length < this.f66526a.getText().length());
        this.f66527b = arrayList;
        int size = arrayList.size();
        ArrayList arrayList2 = new ArrayList(size);
        for (int i11 = 0; i11 < size; i11++) {
            arrayList2.add(null);
        }
        this.f66528c = arrayList2;
        this.f66529d = new boolean[this.f66527b.size()];
        this.f66531f = this.f66527b.size();
    }

    private final float b(int i11, boolean z10) {
        int i12 = RangesKt.i(i11, this.f66526a.getLineEnd(this.f66526a.getLineForOffset(i11)));
        return z10 ? this.f66526a.getPrimaryHorizontal(i12) : this.f66526a.getSecondaryHorizontal(i12);
    }

    private final int i(int i11, int i12) {
        while (i11 > i12 && g(this.f66526a.getText().charAt(i11 - 1))) {
            i11--;
        }
        return i11;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0062  */
    public final Bidi a(int i11) {
        Bidi bidi;
        if (this.f66529d[i11]) {
            return (Bidi) this.f66528c.get(i11);
        }
        int iIntValue = i11 == 0 ? 0 : ((Number) this.f66527b.get(i11 - 1)).intValue();
        int iIntValue2 = ((Number) this.f66527b.get(i11)).intValue();
        int i12 = iIntValue2 - iIntValue;
        char[] cArr = this.f66530e;
        if (cArr == null || cArr.length < i12) {
            cArr = new char[i12];
        }
        char[] cArr2 = cArr;
        TextUtils.getChars(this.f66526a.getText(), iIntValue, iIntValue2, cArr2, 0);
        if (Bidi.requiresBidi(cArr2, 0, i12)) {
            bidi = new Bidi(cArr2, 0, null, 0, i12, h(i11) ? 1 : 0);
            if (bidi.getRunCount() == 1) {
                bidi = null;
            }
        } else {
            bidi = null;
        }
        this.f66528c.set(i11, bidi);
        this.f66529d[i11] = true;
        if (bidi != null) {
            char[] cArr3 = this.f66530e;
            cArr2 = cArr2 == cArr3 ? null : cArr3;
        }
        this.f66530e = cArr2;
        return bidi;
    }

    public final float c(int i11, boolean z10, boolean z11) {
        int i12 = i11;
        if (!z11) {
            return b(i11, z10);
        }
        int iA = e0.a(this.f66526a, i12, z11);
        int lineStart = this.f66526a.getLineStart(iA);
        int lineEnd = this.f66526a.getLineEnd(iA);
        if (i12 != lineStart && i12 != lineEnd) {
            return b(i11, z10);
        }
        if (i12 == 0 || i12 == this.f66526a.getText().length()) {
            return b(i11, z10);
        }
        int iE = e(i12, z11);
        boolean zH = h(iE);
        int i13 = i(lineEnd, lineStart);
        int iF = f(iE);
        int i14 = lineStart - iF;
        int i15 = i13 - iF;
        Bidi bidiA = a(iE);
        Bidi bidiCreateLineBidi = bidiA != null ? bidiA.createLineBidi(i14, i15) : null;
        boolean z12 = false;
        if (bidiCreateLineBidi == null || bidiCreateLineBidi.getRunCount() == 1) {
            boolean zIsRtlCharAt = this.f66526a.isRtlCharAt(lineStart);
            if (z10 || zH == zIsRtlCharAt) {
                zH = !zH;
            }
            if (i12 == lineStart) {
                z12 = zH;
            } else if (!zH) {
                z12 = true;
            }
            Layout layout = this.f66526a;
            return z12 ? layout.getLineLeft(iA) : layout.getLineRight(iA);
        }
        int runCount = bidiCreateLineBidi.getRunCount();
        a[] aVarArr = new a[runCount];
        for (int i16 = 0; i16 < runCount; i16++) {
            aVarArr[i16] = new a(bidiCreateLineBidi.getRunStart(i16) + lineStart, bidiCreateLineBidi.getRunLimit(i16) + lineStart, bidiCreateLineBidi.getRunLevel(i16) % 2 == 1);
        }
        int runCount2 = bidiCreateLineBidi.getRunCount();
        byte[] bArr = new byte[runCount2];
        for (int i17 = 0; i17 < runCount2; i17++) {
            bArr[i17] = (byte) bidiCreateLineBidi.getRunLevel(i17);
        }
        Bidi.reorderVisually(bArr, 0, aVarArr, 0, runCount);
        int i18 = -1;
        if (i12 == lineStart) {
            for (int i19 = 0; i19 < runCount; i19++) {
                if (aVarArr[i19].b() == i12) {
                    i18 = i19;
                    break;
                }
            }
            a aVar = aVarArr[i18];
            if (z10 || zH == aVar.c()) {
                zH = !zH;
            }
            if (i18 == 0 && zH) {
                return this.f66526a.getLineLeft(iA);
            }
            if (i18 != ArraysKt.b0(aVarArr) || zH) {
                return zH ? this.f66526a.getPrimaryHorizontal(aVarArr[i18 - 1].b()) : this.f66526a.getPrimaryHorizontal(aVarArr[i18 + 1].b());
            }
            return this.f66526a.getLineRight(iA);
        }
        if (i12 > i13) {
            i12 = i(i12, lineStart);
        }
        for (int i20 = 0; i20 < runCount; i20++) {
            if (aVarArr[i20].a() == i12) {
                i18 = i20;
                break;
            }
        }
        a aVar2 = aVarArr[i18];
        if (!z10 && zH != aVar2.c()) {
            zH = !zH;
        }
        if (i18 == 0 && zH) {
            return this.f66526a.getLineLeft(iA);
        }
        if (i18 != ArraysKt.b0(aVarArr) || zH) {
            return zH ? this.f66526a.getPrimaryHorizontal(aVarArr[i18 - 1].a()) : this.f66526a.getPrimaryHorizontal(aVarArr[i18 + 1].a());
        }
        return this.f66526a.getLineRight(iA);
    }

    public final int d(int i11) {
        return i(this.f66526a.getLineEnd(i11), this.f66526a.getLineStart(i11));
    }

    public final int e(int i11, boolean z10) {
        int iK = CollectionsKt.k(this.f66527b, Integer.valueOf(i11), 0, 0, 6, null);
        int i12 = iK < 0 ? -(iK + 1) : iK + 1;
        if (z10 && i12 > 0) {
            int i13 = i12 - 1;
            if (i11 == ((Number) this.f66527b.get(i13)).intValue()) {
                return i13;
            }
        }
        return i12;
    }

    public final int f(int i11) {
        if (i11 == 0) {
            return 0;
        }
        return ((Number) this.f66527b.get(i11 - 1)).intValue();
    }

    public final boolean g(char c11) {
        return c11 == ' ' || c11 == '\n' || c11 == 5760 || (Intrinsics.j(c11, 8192) >= 0 && Intrinsics.j(c11, 8202) <= 0 && c11 != 8199) || c11 == 8287 || c11 == 12288;
    }

    public final boolean h(int i11) {
        return this.f66526a.getParagraphDirection(this.f66526a.getLineForOffset(f(i11))) == -1;
    }
}
