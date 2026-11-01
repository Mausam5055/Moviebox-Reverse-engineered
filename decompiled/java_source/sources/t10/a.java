package t10;

import s10.c;

/* JADX INFO: loaded from: classes7.dex */
public class a implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private StringBuilder f75989a;

    public a(StringBuilder sb2) {
        this.f75989a = sb2;
    }

    @Override // s10.c
    public c append(CharSequence charSequence) {
        this.f75989a.append(charSequence);
        return this;
    }

    public String toString() {
        return this.f75989a.toString();
    }
}
