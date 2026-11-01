package com.google.android.datatransport.runtime;

import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
final class p implements r8.i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set f24413a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final o f24414b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final s f24415c;

    p(Set set, o oVar, s sVar) {
        this.f24413a = set;
        this.f24414b = oVar;
        this.f24415c = sVar;
    }

    @Override // r8.i
    public r8.h a(String str, Class cls, r8.g gVar) {
        return b(str, cls, r8.c.b("proto"), gVar);
    }

    @Override // r8.i
    public r8.h b(String str, Class cls, r8.c cVar, r8.g gVar) {
        if (this.f24413a.contains(cVar)) {
            return new r(this.f24414b, str, cVar, gVar, this.f24415c);
        }
        throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", cVar, this.f24413a));
    }
}
