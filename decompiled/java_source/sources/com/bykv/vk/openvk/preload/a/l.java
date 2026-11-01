package com.bykv.vk.openvk.preload.a;

import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class l extends i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.b.g<String, i> f20531a = new com.bykv.vk.openvk.preload.a.b.g<>();

    public final void a(String str, i iVar) {
        com.bykv.vk.openvk.preload.a.b.g<String, i> gVar = this.f20531a;
        if (iVar == null) {
            iVar = k.f20530a;
        }
        gVar.put(str, iVar);
    }

    public final Set<Map.Entry<String, i>> d() {
        return this.f20531a.entrySet();
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof l) && ((l) obj).f20531a.equals(this.f20531a);
        }
        return true;
    }

    public final int hashCode() {
        return this.f20531a.hashCode();
    }
}
