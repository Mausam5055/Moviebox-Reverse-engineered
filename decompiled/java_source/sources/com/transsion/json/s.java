package com.transsion.json;

/* JADX INFO: loaded from: classes.dex */
public class s implements p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final StringBuilder f46099a;

    public s(StringBuilder sb2) {
        this.f46099a = sb2;
    }

    @Override // com.transsion.json.p
    public int a(String str, int i11, int i12) {
        this.f46099a.append((CharSequence) str, i11, i12);
        return i12;
    }

    @Override // com.transsion.json.p
    public p a(String str) {
        this.f46099a.append(str);
        return this;
    }

    @Override // com.transsion.json.p
    public int b(String str, int i11, int i12, String str2) {
        this.f46099a.append((CharSequence) str, i11, i12);
        this.f46099a.append(str2);
        return i12 + 1;
    }

    public String toString() {
        return this.f46099a.toString();
    }
}
