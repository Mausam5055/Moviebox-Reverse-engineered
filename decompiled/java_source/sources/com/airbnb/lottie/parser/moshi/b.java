package com.airbnb.lottie.parser.moshi;

import java.io.EOFException;
import java.io.IOException;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;

/* JADX INFO: loaded from: classes2.dex */
final class b extends JsonReader {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final ByteString f17938n = ByteString.encodeUtf8("'\\");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final ByteString f17939o = ByteString.encodeUtf8("\"\\");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final ByteString f17940p = ByteString.encodeUtf8("{}[]:, \n\t\r\f/\\;#=");

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final ByteString f17941q = ByteString.encodeUtf8("\n\r");

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final ByteString f17942r = ByteString.encodeUtf8("*/");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final BufferedSource f17943h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Buffer f17944i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f17945j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f17946k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f17947l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f17948m;

    b(BufferedSource bufferedSource) {
        if (bufferedSource == null) {
            throw new NullPointerException("source == null");
        }
        this.f17943h = bufferedSource;
        this.f17944i = bufferedSource.getBufferField();
        u(6);
    }

    private void V() throws JsonEncodingException {
        if (!this.f17934e) {
            throw U("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private int Z() throws IOException {
        int[] iArr = this.f17931b;
        int i11 = this.f17930a;
        int i12 = iArr[i11 - 1];
        if (i12 == 1) {
            iArr[i11 - 1] = 2;
        } else if (i12 == 2) {
            int iD0 = d0(true);
            this.f17944i.readByte();
            if (iD0 != 44) {
                if (iD0 != 59) {
                    if (iD0 != 93) {
                        throw U("Unterminated array");
                    }
                    this.f17945j = 4;
                    return 4;
                }
                V();
            }
        } else {
            if (i12 == 3 || i12 == 5) {
                iArr[i11 - 1] = 4;
                if (i12 == 5) {
                    int iD1 = d0(true);
                    this.f17944i.readByte();
                    if (iD1 != 44) {
                        if (iD1 != 59) {
                            if (iD1 != 125) {
                                throw U("Unterminated object");
                            }
                            this.f17945j = 2;
                            return 2;
                        }
                        V();
                    }
                }
                int iD2 = d0(true);
                if (iD2 == 34) {
                    this.f17944i.readByte();
                    this.f17945j = 13;
                    return 13;
                }
                if (iD2 == 39) {
                    this.f17944i.readByte();
                    V();
                    this.f17945j = 12;
                    return 12;
                }
                if (iD2 != 125) {
                    V();
                    if (!c0((char) iD2)) {
                        throw U("Expected name");
                    }
                    this.f17945j = 14;
                    return 14;
                }
                if (i12 == 5) {
                    throw U("Expected name");
                }
                this.f17944i.readByte();
                this.f17945j = 2;
                return 2;
            }
            if (i12 == 4) {
                iArr[i11 - 1] = 5;
                int iD3 = d0(true);
                this.f17944i.readByte();
                if (iD3 != 58) {
                    if (iD3 != 61) {
                        throw U("Expected ':'");
                    }
                    V();
                    if (this.f17943h.request(1L) && this.f17944i.getByte(0L) == 62) {
                        this.f17944i.readByte();
                    }
                }
            } else if (i12 == 6) {
                iArr[i11 - 1] = 7;
            } else if (i12 == 7) {
                if (d0(false) == -1) {
                    this.f17945j = 18;
                    return 18;
                }
                V();
            } else if (i12 == 8) {
                throw new IllegalStateException("JsonReader is closed");
            }
        }
        int iD4 = d0(true);
        if (iD4 == 34) {
            this.f17944i.readByte();
            this.f17945j = 9;
            return 9;
        }
        if (iD4 == 39) {
            V();
            this.f17944i.readByte();
            this.f17945j = 8;
            return 8;
        }
        if (iD4 != 44 && iD4 != 59) {
            if (iD4 == 91) {
                this.f17944i.readByte();
                this.f17945j = 3;
                return 3;
            }
            if (iD4 != 93) {
                if (iD4 == 123) {
                    this.f17944i.readByte();
                    this.f17945j = 1;
                    return 1;
                }
                int iK0 = k0();
                if (iK0 != 0) {
                    return iK0;
                }
                int iL0 = l0();
                if (iL0 != 0) {
                    return iL0;
                }
                if (!c0(this.f17944i.getByte(0L))) {
                    throw U("Expected value");
                }
                V();
                this.f17945j = 10;
                return 10;
            }
            if (i12 == 1) {
                this.f17944i.readByte();
                this.f17945j = 4;
                return 4;
            }
        }
        if (i12 != 1 && i12 != 2) {
            throw U("Unexpected value");
        }
        V();
        this.f17945j = 7;
        return 7;
    }

    private int a0(String str, JsonReader.a aVar) {
        int length = aVar.f17936a.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (str.equals(aVar.f17936a[i11])) {
                this.f17945j = 0;
                this.f17932c[this.f17930a - 1] = str;
                return i11;
            }
        }
        return -1;
    }

    private boolean c0(int i11) throws JsonEncodingException {
        if (i11 == 9 || i11 == 10 || i11 == 12 || i11 == 13 || i11 == 32) {
            return false;
        }
        if (i11 != 35) {
            if (i11 == 44) {
                return false;
            }
            if (i11 != 47 && i11 != 61) {
                if (i11 == 123 || i11 == 125 || i11 == 58) {
                    return false;
                }
                if (i11 != 59) {
                    switch (i11) {
                        case 91:
                        case 93:
                            return false;
                        case 92:
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        V();
        return false;
    }

    private int d0(boolean z10) throws IOException {
        byte b11;
        while (true) {
            int i11 = 0;
            while (true) {
                int i12 = i11 + 1;
                if (!this.f17943h.request(i12)) {
                    if (z10) {
                        throw new EOFException("End of input");
                    }
                    return -1;
                }
                b11 = this.f17944i.getByte(i11);
                if (b11 == 10 || b11 == 32 || b11 == 13 || b11 == 9) {
                    i11 = i12;
                }
            }
            this.f17944i.skip(i11);
            if (b11 == 47) {
                if (!this.f17943h.request(2L)) {
                    return b11;
                }
                V();
                byte b12 = this.f17944i.getByte(1L);
                if (b12 == 42) {
                    this.f17944i.readByte();
                    this.f17944i.readByte();
                    if (!p0()) {
                        throw U("Unterminated comment");
                    }
                } else {
                    if (b12 != 47) {
                        return b11;
                    }
                    this.f17944i.readByte();
                    this.f17944i.readByte();
                    q0();
                }
            } else {
                if (b11 != 35) {
                    return b11;
                }
                V();
                q0();
            }
        }
    }

    private String g0(ByteString byteString) throws IOException {
        StringBuilder sb2 = null;
        while (true) {
            long jIndexOfElement = this.f17943h.indexOfElement(byteString);
            if (jIndexOfElement == -1) {
                throw U("Unterminated string");
            }
            if (this.f17944i.getByte(jIndexOfElement) != 92) {
                if (sb2 == null) {
                    String utf8 = this.f17944i.readUtf8(jIndexOfElement);
                    this.f17944i.readByte();
                    return utf8;
                }
                sb2.append(this.f17944i.readUtf8(jIndexOfElement));
                this.f17944i.readByte();
                return sb2.toString();
            }
            if (sb2 == null) {
                sb2 = new StringBuilder();
            }
            sb2.append(this.f17944i.readUtf8(jIndexOfElement));
            this.f17944i.readByte();
            sb2.append(m0());
        }
    }

    private String h0() throws IOException {
        long jIndexOfElement = this.f17943h.indexOfElement(f17940p);
        return jIndexOfElement != -1 ? this.f17944i.readUtf8(jIndexOfElement) : this.f17944i.readUtf8();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private int k0() throws EOFException {
        String str;
        String str2;
        int i11;
        byte b11 = this.f17944i.getByte(0L);
        if (b11 == 116 || b11 == 84) {
            str = "true";
            str2 = "TRUE";
            i11 = 5;
        } else if (b11 == 102 || b11 == 70) {
            str = "false";
            str2 = "FALSE";
            i11 = 6;
        } else {
            if (b11 != 110 && b11 != 78) {
                return 0;
            }
            str = "null";
            str2 = "NULL";
            i11 = 7;
        }
        int length = str.length();
        int i12 = 1;
        while (i12 < length) {
            int i13 = i12 + 1;
            if (!this.f17943h.request(i13)) {
                return 0;
            }
            byte b12 = this.f17944i.getByte(i12);
            if (b12 != str.charAt(i12) && b12 != str2.charAt(i12)) {
                return 0;
            }
            i12 = i13;
        }
        if (this.f17943h.request(length + 1) && c0(this.f17944i.getByte(length))) {
            return 0;
        }
        this.f17944i.skip(length);
        this.f17945j = i11;
        return i11;
    }

    private int l0() throws EOFException {
        char c11;
        boolean z10 = true;
        long j11 = 0;
        int i11 = 0;
        char c12 = 0;
        boolean z11 = false;
        boolean z12 = true;
        while (true) {
            int i12 = i11 + 1;
            if (!this.f17943h.request(i12)) {
                break;
            }
            byte b11 = this.f17944i.getByte(i11);
            if (b11 != 43) {
                if (b11 == 69 || b11 == 101) {
                    if (c12 != 2 && c12 != 4) {
                        return 0;
                    }
                    c12 = 5;
                } else if (b11 == 45) {
                    c11 = 6;
                    if (c12 == 0) {
                        c12 = 1;
                        z11 = true;
                    } else if (c12 != 5) {
                        return 0;
                    }
                } else if (b11 != 46) {
                    if (b11 < 48 || b11 > 57) {
                        if (!c0(b11)) {
                            break;
                        }
                        return 0;
                    }
                    if (c12 == z10 || c12 == 0) {
                        j11 = -(b11 - 48);
                        c12 = 2;
                    } else if (c12 == 2) {
                        if (j11 == 0) {
                            return 0;
                        }
                        long j12 = (10 * j11) - ((long) (b11 - 48));
                        z12 &= j11 > okio.internal.Buffer.OVERFLOW_ZONE || (j11 == okio.internal.Buffer.OVERFLOW_ZONE && j12 < j11);
                        j11 = j12;
                    } else if (c12 == 3) {
                        c12 = 4;
                    } else if (c12 == 5 || c12 == 6) {
                        c12 = 7;
                    }
                } else {
                    if (c12 != 2) {
                        return 0;
                    }
                    c12 = 3;
                }
                i11 = i12;
                z10 = true;
            } else {
                c11 = 6;
                if (c12 != 5) {
                    return 0;
                }
            }
            c12 = c11;
            i11 = i12;
            z10 = true;
        }
        if (c12 == 2 && z12 && ((j11 != Long.MIN_VALUE || z11) && (j11 != 0 || !z11))) {
            if (!z11) {
                j11 = -j11;
            }
            this.f17946k = j11;
            this.f17944i.skip(i11);
            this.f17945j = 16;
            return 16;
        }
        if (c12 != 2 && c12 != 4 && c12 != 7) {
            return 0;
        }
        this.f17947l = i11;
        this.f17945j = 17;
        return 17;
    }

    private char m0() throws JsonEncodingException, EOFException {
        int i11;
        if (!this.f17943h.request(1L)) {
            throw U("Unterminated escape sequence");
        }
        byte b11 = this.f17944i.readByte();
        if (b11 == 10 || b11 == 34 || b11 == 39 || b11 == 47 || b11 == 92) {
            return (char) b11;
        }
        if (b11 == 98) {
            return '\b';
        }
        if (b11 == 102) {
            return '\f';
        }
        if (b11 == 110) {
            return '\n';
        }
        if (b11 == 114) {
            return '\r';
        }
        if (b11 == 116) {
            return '\t';
        }
        if (b11 != 117) {
            if (this.f17934e) {
                return (char) b11;
            }
            throw U("Invalid escape sequence: \\" + ((char) b11));
        }
        if (!this.f17943h.request(4L)) {
            throw new EOFException("Unterminated escape sequence at path " + getPath());
        }
        char c11 = 0;
        for (int i12 = 0; i12 < 4; i12++) {
            byte b12 = this.f17944i.getByte(i12);
            char c12 = (char) (c11 << 4);
            if (b12 >= 48 && b12 <= 57) {
                i11 = b12 - 48;
            } else if (b12 >= 97 && b12 <= 102) {
                i11 = b12 - 87;
            } else {
                if (b12 < 65 || b12 > 70) {
                    throw U("\\u" + this.f17944i.readUtf8(4L));
                }
                i11 = b12 - 55;
            }
            c11 = (char) (c12 + i11);
        }
        this.f17944i.skip(4L);
        return c11;
    }

    private void o0(ByteString byteString) throws IOException {
        while (true) {
            long jIndexOfElement = this.f17943h.indexOfElement(byteString);
            if (jIndexOfElement == -1) {
                throw U("Unterminated string");
            }
            if (this.f17944i.getByte(jIndexOfElement) != 92) {
                this.f17944i.skip(jIndexOfElement + 1);
                return;
            } else {
                this.f17944i.skip(jIndexOfElement + 1);
                m0();
            }
        }
    }

    private boolean p0() throws IOException {
        BufferedSource bufferedSource = this.f17943h;
        ByteString byteString = f17942r;
        long jIndexOf = bufferedSource.indexOf(byteString);
        boolean z10 = jIndexOf != -1;
        Buffer buffer = this.f17944i;
        buffer.skip(z10 ? jIndexOf + ((long) byteString.size()) : buffer.size());
        return z10;
    }

    private void q0() throws IOException {
        long jIndexOfElement = this.f17943h.indexOfElement(f17941q);
        Buffer buffer = this.f17944i;
        buffer.skip(jIndexOfElement != -1 ? jIndexOfElement + 1 : buffer.size());
    }

    private void r0() throws IOException {
        long jIndexOfElement = this.f17943h.indexOfElement(f17940p);
        Buffer buffer = this.f17944i;
        if (jIndexOfElement == -1) {
            jIndexOfElement = buffer.size();
        }
        buffer.skip(jIndexOfElement);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f17945j = 0;
        this.f17931b[0] = 8;
        this.f17930a = 1;
        this.f17944i.clear();
        this.f17943h.close();
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void d() throws IOException {
        int iZ = this.f17945j;
        if (iZ == 0) {
            iZ = Z();
        }
        if (iZ == 3) {
            u(1);
            this.f17933d[this.f17930a - 1] = 0;
            this.f17945j = 0;
        } else {
            throw new JsonDataException("Expected BEGIN_ARRAY but was " + t() + " at path " + getPath());
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void h() throws IOException {
        int iZ = this.f17945j;
        if (iZ == 0) {
            iZ = Z();
        }
        if (iZ == 1) {
            u(3);
            this.f17945j = 0;
            return;
        }
        throw new JsonDataException("Expected BEGIN_OBJECT but was " + t() + " at path " + getPath());
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void k() throws IOException {
        int iZ = this.f17945j;
        if (iZ == 0) {
            iZ = Z();
        }
        if (iZ != 4) {
            throw new JsonDataException("Expected END_ARRAY but was " + t() + " at path " + getPath());
        }
        int i11 = this.f17930a;
        this.f17930a = i11 - 1;
        int[] iArr = this.f17933d;
        int i12 = i11 - 2;
        iArr[i12] = iArr[i12] + 1;
        this.f17945j = 0;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void l() throws IOException {
        int iZ = this.f17945j;
        if (iZ == 0) {
            iZ = Z();
        }
        if (iZ != 2) {
            throw new JsonDataException("Expected END_OBJECT but was " + t() + " at path " + getPath());
        }
        int i11 = this.f17930a;
        int i12 = i11 - 1;
        this.f17930a = i12;
        this.f17932c[i12] = null;
        int[] iArr = this.f17933d;
        int i13 = i11 - 2;
        iArr[i13] = iArr[i13] + 1;
        this.f17945j = 0;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public boolean m() throws IOException {
        int iZ = this.f17945j;
        if (iZ == 0) {
            iZ = Z();
        }
        return (iZ == 2 || iZ == 4 || iZ == 18) ? false : true;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public boolean n() throws IOException {
        int iZ = this.f17945j;
        if (iZ == 0) {
            iZ = Z();
        }
        if (iZ == 5) {
            this.f17945j = 0;
            int[] iArr = this.f17933d;
            int i11 = this.f17930a - 1;
            iArr[i11] = iArr[i11] + 1;
            return true;
        }
        if (iZ == 6) {
            this.f17945j = 0;
            int[] iArr2 = this.f17933d;
            int i12 = this.f17930a - 1;
            iArr2[i12] = iArr2[i12] + 1;
            return false;
        }
        throw new JsonDataException("Expected a boolean but was " + t() + " at path " + getPath());
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public double o() throws IOException {
        int iZ = this.f17945j;
        if (iZ == 0) {
            iZ = Z();
        }
        if (iZ == 16) {
            this.f17945j = 0;
            int[] iArr = this.f17933d;
            int i11 = this.f17930a - 1;
            iArr[i11] = iArr[i11] + 1;
            return this.f17946k;
        }
        if (iZ == 17) {
            this.f17948m = this.f17944i.readUtf8(this.f17947l);
        } else if (iZ == 9) {
            this.f17948m = g0(f17939o);
        } else if (iZ == 8) {
            this.f17948m = g0(f17938n);
        } else if (iZ == 10) {
            this.f17948m = h0();
        } else if (iZ != 11) {
            throw new JsonDataException("Expected a double but was " + t() + " at path " + getPath());
        }
        this.f17945j = 11;
        try {
            double d11 = Double.parseDouble(this.f17948m);
            if (this.f17934e || !(Double.isNaN(d11) || Double.isInfinite(d11))) {
                this.f17948m = null;
                this.f17945j = 0;
                int[] iArr2 = this.f17933d;
                int i12 = this.f17930a - 1;
                iArr2[i12] = iArr2[i12] + 1;
                return d11;
            }
            throw new JsonEncodingException("JSON forbids NaN and infinities: " + d11 + " at path " + getPath());
        } catch (NumberFormatException unused) {
            throw new JsonDataException("Expected a double but was " + this.f17948m + " at path " + getPath());
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public int p() throws IOException {
        int iZ = this.f17945j;
        if (iZ == 0) {
            iZ = Z();
        }
        if (iZ == 16) {
            long j11 = this.f17946k;
            int i11 = (int) j11;
            if (j11 == i11) {
                this.f17945j = 0;
                int[] iArr = this.f17933d;
                int i12 = this.f17930a - 1;
                iArr[i12] = iArr[i12] + 1;
                return i11;
            }
            throw new JsonDataException("Expected an int but was " + this.f17946k + " at path " + getPath());
        }
        if (iZ == 17) {
            this.f17948m = this.f17944i.readUtf8(this.f17947l);
        } else if (iZ == 9 || iZ == 8) {
            String strG0 = iZ == 9 ? g0(f17939o) : g0(f17938n);
            this.f17948m = strG0;
            try {
                int i13 = Integer.parseInt(strG0);
                this.f17945j = 0;
                int[] iArr2 = this.f17933d;
                int i14 = this.f17930a - 1;
                iArr2[i14] = iArr2[i14] + 1;
                return i13;
            } catch (NumberFormatException unused) {
            }
        } else if (iZ != 11) {
            throw new JsonDataException("Expected an int but was " + t() + " at path " + getPath());
        }
        this.f17945j = 11;
        try {
            double d11 = Double.parseDouble(this.f17948m);
            int i15 = (int) d11;
            if (i15 == d11) {
                this.f17948m = null;
                this.f17945j = 0;
                int[] iArr3 = this.f17933d;
                int i16 = this.f17930a - 1;
                iArr3[i16] = iArr3[i16] + 1;
                return i15;
            }
            throw new JsonDataException("Expected an int but was " + this.f17948m + " at path " + getPath());
        } catch (NumberFormatException unused2) {
            throw new JsonDataException("Expected an int but was " + this.f17948m + " at path " + getPath());
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public String q() throws IOException {
        String strG0;
        int iZ = this.f17945j;
        if (iZ == 0) {
            iZ = Z();
        }
        if (iZ == 14) {
            strG0 = h0();
        } else if (iZ == 13) {
            strG0 = g0(f17939o);
        } else if (iZ == 12) {
            strG0 = g0(f17938n);
        } else {
            if (iZ != 15) {
                throw new JsonDataException("Expected a name but was " + t() + " at path " + getPath());
            }
            strG0 = this.f17948m;
        }
        this.f17945j = 0;
        this.f17932c[this.f17930a - 1] = strG0;
        return strG0;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public String r() throws IOException {
        String utf8;
        int iZ = this.f17945j;
        if (iZ == 0) {
            iZ = Z();
        }
        if (iZ == 10) {
            utf8 = h0();
        } else if (iZ == 9) {
            utf8 = g0(f17939o);
        } else if (iZ == 8) {
            utf8 = g0(f17938n);
        } else if (iZ == 11) {
            utf8 = this.f17948m;
            this.f17948m = null;
        } else if (iZ == 16) {
            utf8 = Long.toString(this.f17946k);
        } else {
            if (iZ != 17) {
                throw new JsonDataException("Expected a string but was " + t() + " at path " + getPath());
            }
            utf8 = this.f17944i.readUtf8(this.f17947l);
        }
        this.f17945j = 0;
        int[] iArr = this.f17933d;
        int i11 = this.f17930a - 1;
        iArr[i11] = iArr[i11] + 1;
        return utf8;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public JsonReader.Token t() throws IOException {
        int iZ = this.f17945j;
        if (iZ == 0) {
            iZ = Z();
        }
        switch (iZ) {
            case 1:
                return JsonReader.Token.BEGIN_OBJECT;
            case 2:
                return JsonReader.Token.END_OBJECT;
            case 3:
                return JsonReader.Token.BEGIN_ARRAY;
            case 4:
                return JsonReader.Token.END_ARRAY;
            case 5:
            case 6:
                return JsonReader.Token.BOOLEAN;
            case 7:
                return JsonReader.Token.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonReader.Token.STRING;
            case 12:
            case 13:
            case 14:
            case 15:
                return JsonReader.Token.NAME;
            case 16:
            case 17:
                return JsonReader.Token.NUMBER;
            case 18:
                return JsonReader.Token.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    public String toString() {
        return "JsonReader(" + this.f17943h + ")";
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public int v(JsonReader.a aVar) throws IOException {
        int iZ = this.f17945j;
        if (iZ == 0) {
            iZ = Z();
        }
        if (iZ < 12 || iZ > 15) {
            return -1;
        }
        if (iZ == 15) {
            return a0(this.f17948m, aVar);
        }
        int iSelect = this.f17943h.select(aVar.f17937b);
        if (iSelect != -1) {
            this.f17945j = 0;
            this.f17932c[this.f17930a - 1] = aVar.f17936a[iSelect];
            return iSelect;
        }
        String str = this.f17932c[this.f17930a - 1];
        String strQ = q();
        int iA0 = a0(strQ, aVar);
        if (iA0 == -1) {
            this.f17945j = 15;
            this.f17948m = strQ;
            this.f17932c[this.f17930a - 1] = str;
        }
        return iA0;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void w() throws IOException {
        if (this.f17935f) {
            throw new JsonDataException("Cannot skip unexpected " + t() + " at " + getPath());
        }
        int iZ = this.f17945j;
        if (iZ == 0) {
            iZ = Z();
        }
        if (iZ == 14) {
            r0();
        } else if (iZ == 13) {
            o0(f17939o);
        } else if (iZ == 12) {
            o0(f17938n);
        } else if (iZ != 15) {
            throw new JsonDataException("Expected a name but was " + t() + " at path " + getPath());
        }
        this.f17945j = 0;
        this.f17932c[this.f17930a - 1] = "null";
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void x() throws IOException {
        if (this.f17935f) {
            throw new JsonDataException("Cannot skip unexpected " + t() + " at " + getPath());
        }
        int i11 = 0;
        do {
            int iZ = this.f17945j;
            if (iZ == 0) {
                iZ = Z();
            }
            if (iZ == 3) {
                u(1);
            } else {
                if (iZ == 1) {
                    u(3);
                } else if (iZ == 4) {
                    i11--;
                    if (i11 < 0) {
                        throw new JsonDataException("Expected a value but was " + t() + " at path " + getPath());
                    }
                    this.f17930a--;
                } else if (iZ == 2) {
                    i11--;
                    if (i11 < 0) {
                        throw new JsonDataException("Expected a value but was " + t() + " at path " + getPath());
                    }
                    this.f17930a--;
                } else if (iZ == 14 || iZ == 10) {
                    r0();
                } else if (iZ == 9 || iZ == 13) {
                    o0(f17939o);
                } else if (iZ == 8 || iZ == 12) {
                    o0(f17938n);
                } else if (iZ == 17) {
                    this.f17944i.skip(this.f17947l);
                } else if (iZ == 18) {
                    throw new JsonDataException("Expected a value but was " + t() + " at path " + getPath());
                }
                this.f17945j = 0;
            }
            i11++;
            this.f17945j = 0;
        } while (i11 != 0);
        int[] iArr = this.f17933d;
        int i12 = this.f17930a;
        int i13 = i12 - 1;
        iArr[i13] = iArr[i13] + 1;
        this.f17932c[i12 - 1] = "null";
    }
}
