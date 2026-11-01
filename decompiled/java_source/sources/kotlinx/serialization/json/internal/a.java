package kotlinx.serialization.json.internal;

import java.util.ArrayList;
import kotlin.KotlinNothingValueException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f68286a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f68288c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final x f68287b = new x();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private StringBuilder f68289d = new StringBuilder();

    private final int B(CharSequence charSequence, int i11) {
        char cCharAt = charSequence.charAt(i11);
        if ('0' <= cCharAt && cCharAt < ':') {
            return cCharAt - '0';
        }
        if ('a' <= cCharAt && cCharAt < 'g') {
            return cCharAt - 'W';
        }
        if ('A' <= cCharAt && cCharAt < 'G') {
            return cCharAt - '7';
        }
        y(this, "Invalid toHexChar char '" + cCharAt + "' in unicode escape", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    private final String K() {
        String str = this.f68288c;
        Intrinsics.e(str);
        this.f68288c = null;
        return str;
    }

    private final boolean O() {
        return C().charAt(this.f68286a - 1) != '\"';
    }

    private final int b(int i11) {
        int iG = G(i11);
        if (iG == -1) {
            y(this, "Expected escape sequence to continue, got EOF", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        int i12 = iG + 1;
        char cCharAt = C().charAt(iG);
        if (cCharAt == 'u') {
            return d(C(), i12);
        }
        char cB = b.b(cCharAt);
        if (cB != 0) {
            this.f68289d.append(cB);
            return i12;
        }
        y(this, "Invalid escaped char '" + cCharAt + '\'', 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    private final int c(int i11, int i12) {
        e(i11, i12);
        return b(i12 + 1);
    }

    private final int d(CharSequence charSequence, int i11) {
        int i12 = i11 + 4;
        if (i12 < charSequence.length()) {
            this.f68289d.append((char) ((B(charSequence, i11) << 12) + (B(charSequence, i11 + 1) << 8) + (B(charSequence, i11 + 2) << 4) + B(charSequence, i11 + 3)));
            return i12;
        }
        this.f68286a = i11;
        v();
        if (this.f68286a + 4 < charSequence.length()) {
            return d(charSequence, this.f68286a);
        }
        y(this, "Unexpected EOF during unicode escape", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    private final boolean h(int i11) {
        int iG = G(i11);
        if (iG >= C().length() || iG == -1) {
            y(this, "EOF", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        int i12 = iG + 1;
        int iCharAt = C().charAt(iG) | ' ';
        if (iCharAt == 102) {
            j("alse", i12);
            return false;
        }
        if (iCharAt == 116) {
            j("rue", i12);
            return true;
        }
        y(this, "Expected valid boolean literal prefix, but had '" + s() + '\'', 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    private final void j(String str, int i11) {
        if (C().length() - i11 < str.length()) {
            y(this, "Unexpected end of boolean literal", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        int length = str.length();
        for (int i12 = 0; i12 < length; i12++) {
            if (str.charAt(i12) != (C().charAt(i11 + i12) | ' ')) {
                y(this, "Expected valid boolean literal prefix, but had '" + s() + '\'', 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
        }
        this.f68286a = i11 + str.length();
    }

    private final String u(int i11, int i12) {
        e(i11, i12);
        String string = this.f68289d.toString();
        Intrinsics.g(string, "escapedString.toString()");
        this.f68289d.setLength(0);
        return string;
    }

    public static /* synthetic */ Void y(a aVar, String str, int i11, String str2, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fail");
        }
        if ((i12 & 2) != 0) {
            i11 = aVar.f68286a;
        }
        if ((i12 & 4) != 0) {
            str2 = "";
        }
        return aVar.x(str, i11, str2);
    }

    public final void A(String key) {
        Intrinsics.h(key, "key");
        x("Encountered an unknown key '" + key + '\'', StringsKt.v0(J(0, this.f68286a), key, 0, false, 6, null), "Use 'ignoreUnknownKeys = true' in 'Json {}' builder to ignore unknown keys.");
        throw new KotlinNothingValueException();
    }

    protected abstract CharSequence C();

    protected final boolean D(char c11) {
        return !(c11 == '}' || c11 == ']' || c11 == ':' || c11 == ',');
    }

    public final byte E() {
        CharSequence charSequenceC = C();
        int i11 = this.f68286a;
        while (true) {
            int iG = G(i11);
            if (iG == -1) {
                this.f68286a = iG;
                return (byte) 10;
            }
            char cCharAt = charSequenceC.charAt(iG);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.f68286a = iG;
                return b.a(cCharAt);
            }
            i11 = iG + 1;
        }
    }

    public final String F(boolean z10) {
        String strQ;
        byte bE = E();
        if (z10) {
            if (bE != 1 && bE != 0) {
                return null;
            }
            strQ = s();
        } else {
            if (bE != 1) {
                return null;
            }
            strQ = q();
        }
        this.f68288c = strQ;
        return strQ;
    }

    public abstract int G(int i11);

    public final void H(boolean z10) {
        ArrayList arrayList = new ArrayList();
        byte bE = E();
        if (bE != 8 && bE != 6) {
            s();
            return;
        }
        while (true) {
            byte bE2 = E();
            if (bE2 != 1) {
                if (bE2 == 8 || bE2 == 6) {
                    arrayList.add(Byte.valueOf(bE2));
                } else if (bE2 == 9) {
                    if (((Number) CollectionsKt.u0(arrayList)).byteValue() != 8) {
                        throw w.f(this.f68286a, "found ] instead of } at path: " + this.f68287b, C());
                    }
                    CollectionsKt.L(arrayList);
                } else if (bE2 == 7) {
                    if (((Number) CollectionsKt.u0(arrayList)).byteValue() != 6) {
                        throw w.f(this.f68286a, "found } instead of ] at path: " + this.f68287b, C());
                    }
                    CollectionsKt.L(arrayList);
                } else if (bE2 == 10) {
                    y(this, "Unexpected end of input due to malformed JSON during ignoring unknown keys", 0, null, 6, null);
                    throw new KotlinNothingValueException();
                }
                m();
                if (arrayList.size() == 0) {
                    return;
                }
            } else if (z10) {
                s();
            } else {
                k();
            }
        }
    }

    public int I() {
        int iG;
        char cCharAt;
        int i11 = this.f68286a;
        while (true) {
            iG = G(i11);
            if (iG == -1 || !((cCharAt = C().charAt(iG)) == ' ' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == '\t')) {
                break;
            }
            i11 = iG + 1;
        }
        this.f68286a = iG;
        return iG;
    }

    public String J(int i11, int i12) {
        return C().subSequence(i11, i12).toString();
    }

    public abstract boolean L();

    public final boolean M() {
        int iG = G(I());
        int length = C().length() - iG;
        if (length < 4 || iG == -1) {
            return true;
        }
        for (int i11 = 0; i11 < 4; i11++) {
            if ("null".charAt(i11) != C().charAt(iG + i11)) {
                return true;
            }
        }
        if (length > 4 && b.a(C().charAt(iG + 4)) == 0) {
            return true;
        }
        this.f68286a = iG + 4;
        return false;
    }

    protected final void N(char c11) {
        int i11 = this.f68286a - 1;
        this.f68286a = i11;
        if (i11 >= 0 && c11 == '\"' && Intrinsics.c(s(), "null")) {
            x("Expected string literal but 'null' literal was found", this.f68286a - 4, "Use 'coerceInputValues = true' in 'Json {}` builder to coerce nulls to default values.");
            throw new KotlinNothingValueException();
        }
        z(b.a(c11));
        throw new KotlinNothingValueException();
    }

    protected void e(int i11, int i12) {
        this.f68289d.append(C(), i11, i12);
    }

    public abstract boolean f();

    public final boolean g() {
        return h(I());
    }

    public final boolean i() {
        boolean z10;
        int I = I();
        if (I == C().length()) {
            y(this, "EOF", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        if (C().charAt(I) == '\"') {
            I++;
            z10 = true;
        } else {
            z10 = false;
        }
        boolean zH = h(I);
        if (z10) {
            if (this.f68286a == C().length()) {
                y(this, "EOF", 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
            if (C().charAt(this.f68286a) != '\"') {
                y(this, "Expected closing quotation mark", 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
            this.f68286a++;
        }
        return zH;
    }

    public abstract String k();

    public abstract String l(String str, boolean z10);

    public abstract byte m();

    public final byte n(byte b11) {
        byte bM = m();
        if (bM == b11) {
            return bM;
        }
        z(b11);
        throw new KotlinNothingValueException();
    }

    public void o(char c11) {
        v();
        CharSequence charSequenceC = C();
        int i11 = this.f68286a;
        while (true) {
            int iG = G(i11);
            if (iG == -1) {
                this.f68286a = iG;
                N(c11);
                return;
            }
            int i12 = iG + 1;
            char cCharAt = charSequenceC.charAt(iG);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.f68286a = i12;
                if (cCharAt == c11) {
                    return;
                } else {
                    N(c11);
                }
            }
            i11 = i12;
        }
    }

    public final long p() {
        boolean z10;
        int iG = G(I());
        if (iG >= C().length() || iG == -1) {
            y(this, "EOF", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        if (C().charAt(iG) == '\"') {
            iG++;
            if (iG == C().length()) {
                y(this, "EOF", 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
            z10 = true;
        } else {
            z10 = false;
        }
        int i11 = iG;
        long j11 = 0;
        boolean z11 = true;
        boolean z12 = false;
        while (z11) {
            char cCharAt = C().charAt(i11);
            if (cCharAt != '-') {
                if (b.a(cCharAt) != 0) {
                    break;
                }
                i11++;
                z11 = i11 != C().length();
                int i12 = cCharAt - '0';
                if (i12 < 0 || i12 >= 10) {
                    y(this, "Unexpected symbol '" + cCharAt + "' in numeric literal", 0, null, 6, null);
                    throw new KotlinNothingValueException();
                }
                j11 = (j11 * ((long) 10)) - ((long) i12);
                if (j11 > 0) {
                    y(this, "Numeric value overflow", 0, null, 6, null);
                    throw new KotlinNothingValueException();
                }
            } else {
                if (i11 != iG) {
                    y(this, "Unexpected symbol '-' in numeric literal", 0, null, 6, null);
                    throw new KotlinNothingValueException();
                }
                i11++;
                z12 = true;
            }
        }
        if (iG == i11 || (z12 && iG == i11 - 1)) {
            y(this, "Expected numeric literal", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        if (z10) {
            if (!z11) {
                y(this, "EOF", 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
            if (C().charAt(i11) != '\"') {
                y(this, "Expected closing quotation mark", 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
            i11++;
        }
        this.f68286a = i11;
        if (z12) {
            return j11;
        }
        if (j11 != Long.MIN_VALUE) {
            return -j11;
        }
        y(this, "Numeric value overflow", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    public final String q() {
        return this.f68288c != null ? K() : k();
    }

    protected final String r(CharSequence source, int i11, int i12) {
        int iG;
        Intrinsics.h(source, "source");
        char cCharAt = source.charAt(i12);
        boolean z10 = false;
        while (cCharAt != '\"') {
            if (cCharAt == '\\') {
                iG = G(c(i11, i12));
                if (iG == -1) {
                    y(this, "EOF", iG, null, 4, null);
                    throw new KotlinNothingValueException();
                }
            } else {
                i12++;
                if (i12 >= source.length()) {
                    e(i11, i12);
                    iG = G(i12);
                    if (iG == -1) {
                        y(this, "EOF", iG, null, 4, null);
                        throw new KotlinNothingValueException();
                    }
                } else {
                    continue;
                }
                cCharAt = source.charAt(i12);
            }
            z10 = true;
            i11 = iG;
            i12 = i11;
            cCharAt = source.charAt(i12);
        }
        String strJ = !z10 ? J(i11, i12) : u(i11, i12);
        this.f68286a = i12 + 1;
        return strJ;
    }

    public final String s() {
        if (this.f68288c != null) {
            return K();
        }
        int I = I();
        if (I >= C().length() || I == -1) {
            y(this, "EOF", I, null, 4, null);
            throw new KotlinNothingValueException();
        }
        byte bA = b.a(C().charAt(I));
        if (bA == 1) {
            return q();
        }
        if (bA != 0) {
            y(this, "Expected beginning of the string, but got " + C().charAt(I), 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        boolean z10 = false;
        while (b.a(C().charAt(I)) == 0) {
            I++;
            if (I >= C().length()) {
                e(this.f68286a, I);
                int iG = G(I);
                if (iG == -1) {
                    this.f68286a = I;
                    return u(0, 0);
                }
                I = iG;
                z10 = true;
            }
        }
        String strJ = !z10 ? J(this.f68286a, I) : u(this.f68286a, I);
        this.f68286a = I;
        return strJ;
    }

    public final String t() {
        String strS = s();
        if (!Intrinsics.c(strS, "null") || !O()) {
            return strS;
        }
        y(this, "Unexpected 'null' value instead of string literal", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    public String toString() {
        return "JsonReader(source='" + ((Object) C()) + "', currentPosition=" + this.f68286a + ')';
    }

    public void v() {
    }

    public final void w() {
        if (m() == 10) {
            return;
        }
        y(this, "Expected EOF after parsing, but had " + C().charAt(this.f68286a - 1) + " instead", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    public final Void x(String message, int i11, String hint) {
        String str;
        Intrinsics.h(message, "message");
        Intrinsics.h(hint, "hint");
        if (hint.length() == 0) {
            str = "";
        } else {
            str = '\n' + hint;
        }
        throw w.f(i11, message + " at path: " + this.f68287b.a() + str, C());
    }

    public final Void z(byte b11) {
        String str;
        if (b11 == 1) {
            str = "quotation mark '\"'";
        } else if (b11 == 4) {
            str = "comma ','";
        } else if (b11 == 5) {
            str = "colon ':'";
        } else if (b11 == 6) {
            str = "start of the object '{'";
        } else if (b11 == 7) {
            str = "end of the object '}'";
        } else if (b11 == 8) {
            str = "start of the array '['";
        } else {
            str = b11 == 9 ? "end of the array ']'" : "valid token";
        }
        y(this, "Expected " + str + ", but had '" + ((this.f68286a == C().length() || this.f68286a <= 0) ? "EOF" : String.valueOf(C().charAt(this.f68286a - 1))) + "' instead", this.f68286a - 1, null, 4, null);
        throw new KotlinNothingValueException();
    }
}
