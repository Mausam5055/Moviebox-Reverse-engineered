package com.airbnb.lottie;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class q0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f17953a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Throwable f17954b;

    public q0(Object obj) {
        this.f17953a = obj;
        this.f17954b = null;
    }

    public q0(Throwable th2) {
        this.f17954b = th2;
        this.f17953a = null;
    }

    public Throwable a() {
        return this.f17954b;
    }

    public Object b() {
        return this.f17953a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q0)) {
            return false;
        }
        q0 q0Var = (q0) obj;
        if (b() != null && b().equals(q0Var.b())) {
            return true;
        }
        if (a() == null || q0Var.a() == null) {
            return false;
        }
        return a().toString().equals(a().toString());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{b(), a()});
    }
}
