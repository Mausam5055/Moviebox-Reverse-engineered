package com.squareup.okhttp.internal;

import com.squareup.okhttp.Route;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set f40307a = new LinkedHashSet();

    public synchronized void a(Route route) {
        this.f40307a.remove(route);
    }

    public synchronized void b(Route route) {
        this.f40307a.add(route);
    }

    public synchronized boolean c(Route route) {
        return this.f40307a.contains(route);
    }
}
