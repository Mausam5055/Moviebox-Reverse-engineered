package androidx.media;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
class i implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f9776a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f9777b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f9778c;

    i(String str, int i11, int i12) {
        this.f9776a = str;
        this.f9777b = i11;
        this.f9778c = i12;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        if (this.f9777b < 0 || iVar.f9777b < 0) {
            return TextUtils.equals(this.f9776a, iVar.f9776a) && this.f9778c == iVar.f9778c;
        }
        return TextUtils.equals(this.f9776a, iVar.f9776a) && this.f9777b == iVar.f9777b && this.f9778c == iVar.f9778c;
    }

    public int hashCode() {
        return androidx.core.util.d.b(this.f9776a, Integer.valueOf(this.f9778c));
    }
}
