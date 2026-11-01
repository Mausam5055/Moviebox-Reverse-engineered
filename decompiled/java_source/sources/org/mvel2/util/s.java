package org.mvel2.util;

import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes7.dex */
public class s implements CharSequence {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private char[] f72093a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f72094b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f72095c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private byte[] f72096d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f72097e;

    public s() {
        this.f72095c = 0;
        this.f72094b = 15;
        this.f72093a = new char[15];
    }

    public s(String str) {
        this.f72095c = 0;
        char[] charArray = str.toCharArray();
        this.f72093a = charArray;
        int length = charArray.length;
        this.f72095c = length;
        this.f72094b = length;
    }

    private void f(int i11) {
        if (this.f72094b == 0) {
            this.f72094b = 15;
        }
        int i12 = this.f72094b + (i11 * 2);
        this.f72094b = i12;
        char[] cArr = new char[i12];
        System.arraycopy(this.f72093a, 0, cArr, 0, this.f72095c);
        this.f72093a = cArr;
    }

    public s a(char c11) {
        int i11 = this.f72095c;
        if (i11 >= this.f72094b) {
            f(i11);
        }
        char[] cArr = this.f72093a;
        int i12 = this.f72095c;
        this.f72095c = i12 + 1;
        cArr[i12] = c11;
        return this;
    }

    public s b(CharSequence charSequence) {
        if (charSequence.length() > this.f72094b - this.f72095c) {
            f(charSequence.length());
        }
        for (int i11 = 0; i11 < charSequence.length(); i11++) {
            this.f72093a[this.f72095c] = charSequence.charAt(i11);
            this.f72095c++;
        }
        return this;
    }

    public s c(Object obj) {
        return d(String.valueOf(obj));
    }

    @Override // java.lang.CharSequence
    public char charAt(int i11) {
        return this.f72093a[i11];
    }

    public s d(String str) {
        if (str == null) {
            return this;
        }
        int length = str.length();
        if (length > this.f72094b - this.f72095c) {
            f(length);
        }
        str.getChars(0, length, this.f72093a, this.f72095c);
        this.f72095c += length;
        return this;
    }

    public s e(char[] cArr, int i11, int i12) {
        if (i12 > this.f72094b - this.f72095c) {
            f(i12);
        }
        int i13 = i12 + i11;
        while (i11 < i13) {
            char[] cArr2 = this.f72093a;
            int i14 = this.f72095c;
            this.f72095c = i14 + 1;
            cArr2[i14] = cArr[i11];
            i11++;
        }
        return this;
    }

    public CharSequence g(int i11, int i12) {
        return new String(this.f72093a, i11, i12 - i11);
    }

    public char[] h() {
        String str;
        if (this.f72096d == null) {
            int i11 = this.f72095c;
            char[] cArr = new char[i11];
            System.arraycopy(this.f72093a, 0, cArr, 0, i11);
            return cArr;
        }
        if (this.f72097e == null) {
            this.f72097e = System.getProperty("file.encoding");
        }
        try {
            str = new String(this.f72096d, this.f72097e);
        } catch (UnsupportedEncodingException unused) {
            str = new String(this.f72096d);
        }
        return str.toCharArray();
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.f72095c;
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i11, int i12) {
        return g(i11, i12);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        if (this.f72096d == null) {
            int i11 = this.f72095c;
            return i11 == this.f72094b ? new String(this.f72093a) : new String(this.f72093a, 0, i11);
        }
        if (this.f72097e == null) {
            this.f72097e = System.getProperty("file.encoding");
        }
        try {
            return new String(this.f72096d, 0, this.f72095c, this.f72097e);
        } catch (UnsupportedEncodingException unused) {
            return new String(this.f72096d, 0, this.f72095c);
        }
    }
}
