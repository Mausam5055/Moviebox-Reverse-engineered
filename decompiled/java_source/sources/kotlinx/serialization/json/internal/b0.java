package kotlinx.serialization.json.internal;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes7.dex */
public final class b0 implements h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private char[] f68290a = h.f68306a.b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f68291b;

    private final void d(int i11, int i12, String str) {
        byte b11;
        int length = str.length();
        while (i11 < length) {
            int iF = f(i12, 2);
            char cCharAt = str.charAt(i11);
            if (cCharAt >= o0.a().length || (b11 = o0.a()[cCharAt]) == 0) {
                int i13 = iF + 1;
                this.f68290a[iF] = cCharAt;
                i12 = i13;
            } else if (b11 == 1) {
                String str2 = o0.b()[cCharAt];
                Intrinsics.e(str2);
                int iF2 = f(iF, str2.length());
                str2.getChars(0, str2.length(), this.f68290a, iF2);
                i12 = iF2 + str2.length();
                this.f68291b = i12;
            } else {
                char[] cArr = this.f68290a;
                cArr[iF] = '\\';
                cArr[iF + 1] = (char) b11;
                i12 = iF + 2;
                this.f68291b = i12;
            }
            i11++;
        }
        int iF3 = f(i12, 1);
        this.f68290a[iF3] = '\"';
        this.f68291b = iF3 + 1;
    }

    private final void e(int i11) {
        f(this.f68291b, i11);
    }

    private final int f(int i11, int i12) {
        int i13 = i12 + i11;
        char[] cArr = this.f68290a;
        if (cArr.length <= i13) {
            char[] cArrCopyOf = Arrays.copyOf(cArr, RangesKt.f(i13, i11 * 2));
            Intrinsics.g(cArrCopyOf, "copyOf(this, newSize)");
            this.f68290a = cArrCopyOf;
        }
        return i11;
    }

    @Override // kotlinx.serialization.json.internal.h0
    public void a(char c11) {
        e(1);
        char[] cArr = this.f68290a;
        int i11 = this.f68291b;
        this.f68291b = i11 + 1;
        cArr[i11] = c11;
    }

    @Override // kotlinx.serialization.json.internal.h0
    public void b(String text) {
        Intrinsics.h(text, "text");
        e(text.length() + 2);
        char[] cArr = this.f68290a;
        int i11 = this.f68291b;
        int i12 = i11 + 1;
        cArr[i11] = '\"';
        int length = text.length();
        text.getChars(0, length, cArr, i12);
        int i13 = length + i12;
        for (int i14 = i12; i14 < i13; i14++) {
            char c11 = cArr[i14];
            if (c11 < o0.a().length && o0.a()[c11] != 0) {
                d(i14 - i12, i14, text);
                return;
            }
        }
        cArr[i13] = '\"';
        this.f68291b = i13 + 1;
    }

    @Override // kotlinx.serialization.json.internal.h0
    public void c(String text) {
        Intrinsics.h(text, "text");
        int length = text.length();
        if (length == 0) {
            return;
        }
        e(length);
        text.getChars(0, text.length(), this.f68290a, this.f68291b);
        this.f68291b += length;
    }

    public void g() {
        h.f68306a.a(this.f68290a);
    }

    public String toString() {
        return new String(this.f68290a, 0, this.f68291b);
    }

    @Override // kotlinx.serialization.json.internal.h0
    public void writeLong(long j11) {
        c(String.valueOf(j11));
    }
}
