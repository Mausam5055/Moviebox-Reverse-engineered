package org.mvel2;

/* JADX INFO: loaded from: classes7.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private char[] f71954a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f71955b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f71956c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f71957d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f71958e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f71959f;

    public c(char[] cArr, int i11, boolean z10, String str) {
        this.f71954a = cArr;
        this.f71955b = i11;
        this.f71956c = z10;
        this.f71957d = str;
        a();
    }

    public void a() {
        char[] cArr;
        if ((this.f71958e != 0 && this.f71959f != 0) || (cArr = this.f71954a) == null || cArr.length == 0) {
            return;
        }
        int i11 = 1;
        int i12 = 1;
        for (int i13 = 0; i13 < this.f71955b; i13++) {
            char c11 = this.f71954a[i13];
            if (c11 == '\n') {
                i11++;
                i12 = 0;
            } else if (c11 != '\r') {
                i12++;
            }
        }
        this.f71958e = i11;
        this.f71959f = i12;
    }

    public int b() {
        return this.f71959f;
    }

    public int c() {
        return this.f71955b;
    }

    public char[] d() {
        return this.f71954a;
    }

    public int e() {
        return this.f71958e;
    }

    public String f() {
        return this.f71957d;
    }

    public boolean g() {
        return this.f71956c;
    }

    public void h(int i11) {
        this.f71959f = i11;
    }

    public void i(int i11) {
        this.f71955b = i11;
    }

    public void j(char[] cArr) {
        this.f71954a = cArr;
    }

    public void k(int i11) {
        this.f71958e = i11;
    }

    public String toString() {
        if (this.f71956c) {
            return "(" + this.f71958e + "," + this.f71959f + ") " + this.f71957d;
        }
        return "(" + this.f71958e + "," + this.f71959f + ") WARNING: " + this.f71957d;
    }
}
