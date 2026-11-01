package com.bykv.vk.openvk.preload.a;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class g extends i implements Iterable<i> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<i> f20529a = new ArrayList();

    @Override // com.bykv.vk.openvk.preload.a.i
    public final Number a() {
        if (this.f20529a.size() == 1) {
            return this.f20529a.get(0).a();
        }
        throw new IllegalStateException();
    }

    public final void a(i iVar) {
        if (iVar == null) {
            iVar = k.f20530a;
        }
        this.f20529a.add(iVar);
    }

    @Override // com.bykv.vk.openvk.preload.a.i
    public final String b() {
        if (this.f20529a.size() == 1) {
            return this.f20529a.get(0).b();
        }
        throw new IllegalStateException();
    }

    @Override // com.bykv.vk.openvk.preload.a.i
    public final boolean c() {
        if (this.f20529a.size() == 1) {
            return this.f20529a.get(0).c();
        }
        throw new IllegalStateException();
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof g) && ((g) obj).f20529a.equals(this.f20529a);
        }
        return true;
    }

    public final int hashCode() {
        return this.f20529a.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator<i> iterator() {
        return this.f20529a.iterator();
    }
}
