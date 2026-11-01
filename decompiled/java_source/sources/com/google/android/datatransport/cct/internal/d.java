package com.google.android.datatransport.cct.internal;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
final class d extends m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f24275a;

    d(List list) {
        if (list == null) {
            throw new NullPointerException("Null logRequests");
        }
        this.f24275a = list;
    }

    @Override // com.google.android.datatransport.cct.internal.m
    public List c() {
        return this.f24275a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof m) {
            return this.f24275a.equals(((m) obj).c());
        }
        return false;
    }

    public int hashCode() {
        return this.f24275a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "BatchedLogRequest{logRequests=" + this.f24275a + "}";
    }
}
