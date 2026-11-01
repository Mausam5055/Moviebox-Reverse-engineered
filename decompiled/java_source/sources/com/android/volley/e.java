package com.android.volley;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f19232a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f19233b;

    public e(String str, String str2) {
        this.f19232a = str;
        this.f19233b = str2;
    }

    public final String a() {
        return this.f19232a;
    }

    public final String b() {
        return this.f19233b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        return TextUtils.equals(this.f19232a, eVar.f19232a) && TextUtils.equals(this.f19233b, eVar.f19233b);
    }

    public int hashCode() {
        return (this.f19232a.hashCode() * 31) + this.f19233b.hashCode();
    }

    public String toString() {
        return "Header[name=" + this.f19232a + ",value=" + this.f19233b + "]";
    }
}
