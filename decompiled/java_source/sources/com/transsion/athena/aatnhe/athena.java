package com.transsion.athena.aatnhe;

import android.text.TextUtils;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public class athena {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f42538a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f42539b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f42540c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f42541d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f42542e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f42543f;

    public athena() {
    }

    public athena(String str, String str2, int i11, int i12, int i13, boolean z10) {
        this.f42538a = str;
        this.f42539b = str2;
        this.f42540c = i11;
        this.f42541d = i12;
        this.f42542e = i13;
        this.f42543f = z10;
    }

    public String a() {
        return this.f42538a + "-" + this.f42539b + "-" + this.f42541d + "-" + this.f42540c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof athena) {
            return TextUtils.equals(a(), ((athena) obj).a());
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.f42538a, this.f42539b, Integer.valueOf(this.f42540c), Integer.valueOf(this.f42541d), Integer.valueOf(this.f42542e), Boolean.valueOf(this.f42543f));
    }
}
