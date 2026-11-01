package com.mbridge.msdk.thrid.okhttp.internal.connection;

import com.mbridge.msdk.thrid.okhttp.a0;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<a0> f37955a = new LinkedHashSet();

    public synchronized void a(a0 a0Var) {
        this.f37955a.remove(a0Var);
    }

    public synchronized void b(a0 a0Var) {
        this.f37955a.add(a0Var);
    }

    public synchronized boolean c(a0 a0Var) {
        return this.f37955a.contains(a0Var);
    }
}
