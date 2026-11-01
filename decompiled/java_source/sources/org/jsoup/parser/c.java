package org.jsoup.parser;

/* JADX INFO: loaded from: classes7.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f71829a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f71830b;

    c(int i11, String str) {
        this.f71829a = i11;
        this.f71830b = str;
    }

    c(int i11, String str, Object... objArr) {
        this.f71830b = String.format(str, objArr);
        this.f71829a = i11;
    }

    public String toString() {
        return this.f71829a + ": " + this.f71830b;
    }
}
