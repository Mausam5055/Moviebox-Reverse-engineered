package com.mbridge.msdk.tracker.network;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes5.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f38576a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f38577b;

    public g(String str, String str2) {
        this.f38576a = str;
        this.f38577b = str2;
    }

    public final String a() {
        return this.f38576a;
    }

    public final String b() {
        return this.f38577b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || g.class != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        return TextUtils.equals(this.f38576a, gVar.f38576a) && TextUtils.equals(this.f38577b, gVar.f38577b);
    }

    public int hashCode() {
        return (this.f38576a.hashCode() * 31) + this.f38577b.hashCode();
    }

    public String toString() {
        return "Header[name=" + this.f38576a + ",value=" + this.f38577b + "]";
    }
}
