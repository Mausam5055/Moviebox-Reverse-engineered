package com.transsion.mbwidget.data;

import com.transsion.moviedetailapi.bean.Subject;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f46266a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Subject f46267b;

    public b(int i11, Subject subject) {
        Intrinsics.h(subject, "subject");
        this.f46266a = i11;
        this.f46267b = subject;
    }

    public final int a() {
        return this.f46266a;
    }

    public final Subject b() {
        return this.f46267b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f46266a == bVar.f46266a && Intrinsics.c(this.f46267b, bVar.f46267b);
    }

    public int hashCode() {
        return (this.f46266a * 31) + this.f46267b.hashCode();
    }

    public String toString() {
        return "ShowItem(position=" + this.f46266a + ", subject=" + this.f46267b + ")";
    }
}
