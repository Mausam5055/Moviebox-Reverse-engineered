package kotlinx.serialization.json.internal;

import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class n0 extends a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f68337e;

    public n0(String source) {
        Intrinsics.h(source, "source");
        this.f68337e = source;
    }

    @Override // kotlinx.serialization.json.internal.a
    public int G(int i11) {
        if (i11 < C().length()) {
            return i11;
        }
        return -1;
    }

    @Override // kotlinx.serialization.json.internal.a
    public int I() {
        char cCharAt;
        int i11 = this.f68286a;
        if (i11 == -1) {
            return i11;
        }
        while (i11 < C().length() && ((cCharAt = C().charAt(i11)) == ' ' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == '\t')) {
            i11++;
        }
        this.f68286a = i11;
        return i11;
    }

    @Override // kotlinx.serialization.json.internal.a
    public boolean L() {
        int I = I();
        if (I == C().length() || I == -1 || C().charAt(I) != ',') {
            return false;
        }
        this.f68286a++;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.json.internal.a
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public String C() {
        return this.f68337e;
    }

    @Override // kotlinx.serialization.json.internal.a
    public boolean f() {
        int i11 = this.f68286a;
        if (i11 == -1) {
            return false;
        }
        while (i11 < C().length()) {
            char cCharAt = C().charAt(i11);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.f68286a = i11;
                return D(cCharAt);
            }
            i11++;
        }
        this.f68286a = i11;
        return false;
    }

    @Override // kotlinx.serialization.json.internal.a
    public String k() {
        o('\"');
        int i11 = this.f68286a;
        int iN0 = StringsKt.n0(C(), '\"', i11, false, 4, null);
        if (iN0 == -1) {
            z((byte) 1);
            throw new KotlinNothingValueException();
        }
        for (int i12 = i11; i12 < iN0; i12++) {
            if (C().charAt(i12) == '\\') {
                return r(C(), this.f68286a, i12);
            }
        }
        this.f68286a = iN0 + 1;
        String strSubstring = C().substring(i11, iN0);
        Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    @Override // kotlinx.serialization.json.internal.a
    public String l(String keyToMatch, boolean z10) {
        Intrinsics.h(keyToMatch, "keyToMatch");
        int i11 = this.f68286a;
        try {
            if (m() != 6) {
                return null;
            }
            if (!Intrinsics.c(z10 ? k() : t(), keyToMatch)) {
                return null;
            }
            if (m() != 5) {
                return null;
            }
            return z10 ? q() : t();
        } finally {
            this.f68286a = i11;
        }
    }

    @Override // kotlinx.serialization.json.internal.a
    public byte m() {
        byte bA;
        String strC = C();
        do {
            int i11 = this.f68286a;
            if (i11 == -1 || i11 >= strC.length()) {
                return (byte) 10;
            }
            int i12 = this.f68286a;
            this.f68286a = i12 + 1;
            bA = b.a(strC.charAt(i12));
        } while (bA == 3);
        return bA;
    }

    @Override // kotlinx.serialization.json.internal.a
    public void o(char c11) {
        if (this.f68286a == -1) {
            N(c11);
        }
        String strC = C();
        while (this.f68286a < strC.length()) {
            int i11 = this.f68286a;
            this.f68286a = i11 + 1;
            char cCharAt = strC.charAt(i11);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                if (cCharAt == c11) {
                    return;
                } else {
                    N(c11);
                }
            }
        }
        N(c11);
    }
}
