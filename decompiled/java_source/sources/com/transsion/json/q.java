package com.transsion.json;

import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final LinkedList f46095a = new LinkedList();

    public q a(String str) {
        this.f46095a.add(str);
        return this;
    }

    public List b() {
        return this.f46095a;
    }

    public int c() {
        return this.f46095a.size();
    }

    public String d() {
        return (String) this.f46095a.removeLast();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || q.class != obj.getClass()) {
            return false;
        }
        return this.f46095a.equals(((q) obj).f46095a);
    }

    public int hashCode() {
        return this.f46095a.hashCode();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("[ ");
        boolean z10 = false;
        for (String str : this.f46095a) {
            if (z10) {
                sb2.append(".");
            }
            sb2.append(str);
            z10 = true;
        }
        sb2.append(" ]");
        return sb2.toString();
    }
}
