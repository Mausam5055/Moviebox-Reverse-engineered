package com.bykv.vk.openvk.preload.a.d;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements Closeable, Flushable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f20508a = new String[128];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f20509b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Writer f20510c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int[] f20511d = new int[32];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f20512e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f20513f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f20514g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f20515h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f20516i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f20517j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f20518k;

    static {
        for (int i11 = 0; i11 <= 31; i11++) {
            f20508a[i11] = String.format("\\u%04x", Integer.valueOf(i11));
        }
        String[] strArr = f20508a;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        f20509b = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public c(Writer writer) {
        a(6);
        this.f20514g = ":";
        this.f20518k = true;
        if (writer == null) {
            throw new NullPointerException("out == null");
        }
        this.f20510c = writer;
    }

    private c a(int i11, char c11) throws IOException {
        m();
        a(i11);
        this.f20510c.write(c11);
        return this;
    }

    private c a(int i11, int i12, char c11) throws IOException {
        int i13 = i();
        if (i13 != i12 && i13 != i11) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.f20517j != null) {
            throw new IllegalStateException("Dangling name: " + this.f20517j);
        }
        this.f20512e--;
        if (i13 == i12) {
            k();
        }
        this.f20510c.write(c11);
        return this;
    }

    private void a(int i11) {
        int i12 = this.f20512e;
        int[] iArr = this.f20511d;
        if (i12 == iArr.length) {
            this.f20511d = Arrays.copyOf(iArr, i12 << 1);
        }
        int[] iArr2 = this.f20511d;
        int i13 = this.f20512e;
        this.f20512e = i13 + 1;
        iArr2[i13] = i11;
    }

    private void b(int i11) {
        this.f20511d[this.f20512e - 1] = i11;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0034  */
    private void c(String str) throws IOException {
        String str2;
        String[] strArr = this.f20516i ? f20509b : f20508a;
        this.f20510c.write(34);
        int length = str.length();
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            char cCharAt = str.charAt(i12);
            if (cCharAt < 128) {
                str2 = strArr[cCharAt];
                if (str2 != null) {
                    if (i11 < i12) {
                        this.f20510c.write(str, i11, i12 - i11);
                    }
                    this.f20510c.write(str2);
                    i11 = i12 + 1;
                }
            } else {
                if (cCharAt == 8232) {
                    str2 = "\\u2028";
                } else if (cCharAt == 8233) {
                    str2 = "\\u2029";
                }
                if (i11 < i12) {
                    this.f20510c.write(str, i11, i12 - i11);
                }
                this.f20510c.write(str2);
                i11 = i12 + 1;
            }
        }
        if (i11 < length) {
            this.f20510c.write(str, i11, length - i11);
        }
        this.f20510c.write(34);
    }

    private int i() {
        int i11 = this.f20512e;
        if (i11 != 0) {
            return this.f20511d[i11 - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    private void j() throws IOException {
        if (this.f20517j != null) {
            l();
            c(this.f20517j);
            this.f20517j = null;
        }
    }

    private void k() throws IOException {
        if (this.f20513f == null) {
            return;
        }
        this.f20510c.write(10);
        int i11 = this.f20512e;
        for (int i12 = 1; i12 < i11; i12++) {
            this.f20510c.write(this.f20513f);
        }
    }

    private void l() throws IOException {
        int i11 = i();
        if (i11 == 5) {
            this.f20510c.write(44);
        } else if (i11 != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        k();
        b(4);
    }

    private void m() throws IOException {
        int i11 = i();
        if (i11 == 1) {
            b(2);
            k();
            return;
        }
        if (i11 == 2) {
            this.f20510c.append(',');
            k();
        } else {
            if (i11 == 4) {
                this.f20510c.append((CharSequence) this.f20514g);
                b(5);
                return;
            }
            if (i11 != 6) {
                if (i11 != 7) {
                    throw new IllegalStateException("Nesting problem.");
                }
                if (!this.f20515h) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
            }
            b(7);
        }
    }

    public final c a(long j11) throws IOException {
        j();
        m();
        this.f20510c.write(Long.toString(j11));
        return this;
    }

    public final c a(Boolean bool) throws IOException {
        if (bool == null) {
            return h();
        }
        j();
        m();
        this.f20510c.write(bool.booleanValue() ? "true" : "false");
        return this;
    }

    public final c a(Number number) throws IOException {
        if (number == null) {
            return h();
        }
        j();
        String string = number.toString();
        if (!this.f20515h && (string.equals("-Infinity") || string.equals("Infinity") || string.equals("NaN"))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was ".concat(String.valueOf(number)));
        }
        m();
        this.f20510c.append((CharSequence) string);
        return this;
    }

    public final c a(String str) throws IOException {
        if (str == null) {
            throw new NullPointerException("name == null");
        }
        if (this.f20517j != null) {
            throw new IllegalStateException();
        }
        if (this.f20512e == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.f20517j = str;
        return this;
    }

    public final void a(boolean z10) {
        this.f20515h = z10;
    }

    public final boolean a() {
        return this.f20515h;
    }

    public final c b(String str) throws IOException {
        if (str == null) {
            return h();
        }
        j();
        m();
        c(str);
        return this;
    }

    public final void b(boolean z10) {
        this.f20516i = z10;
    }

    public final boolean b() {
        return this.f20516i;
    }

    public final void c(boolean z10) {
        this.f20518k = z10;
    }

    public final boolean c() {
        return this.f20518k;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f20510c.close();
        int i11 = this.f20512e;
        if (i11 > 1 || (i11 == 1 && this.f20511d[i11 - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.f20512e = 0;
    }

    public final c d() throws IOException {
        j();
        return a(1, '[');
    }

    public final c d(boolean z10) throws IOException {
        j();
        m();
        this.f20510c.write(z10 ? "true" : "false");
        return this;
    }

    public final c e() throws IOException {
        return a(1, 2, ']');
    }

    public final c f() throws IOException {
        j();
        return a(3, '{');
    }

    @Override // java.io.Flushable
    public final void flush() throws IOException {
        if (this.f20512e == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.f20510c.flush();
    }

    public final c g() throws IOException {
        return a(3, 5, '}');
    }

    public final c h() throws IOException {
        if (this.f20517j != null) {
            if (!this.f20518k) {
                this.f20517j = null;
                return this;
            }
            j();
        }
        m();
        this.f20510c.write("null");
        return this;
    }
}
