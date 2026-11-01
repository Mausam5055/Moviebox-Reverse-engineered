package com.google.common.collect;

import com.google.common.base.Equivalence;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes4.dex */
public final class MapMaker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f30540a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f30541b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f30542c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    MapMakerInternalMap.Strength f30543d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    MapMakerInternalMap.Strength f30544e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Equivalence f30545f;

    enum Dummy {
        VALUE
    }

    public MapMaker a(int i11) {
        int i12 = this.f30542c;
        com.google.common.base.m.w(i12 == -1, "concurrency level was already set to %s", i12);
        com.google.common.base.m.d(i11 > 0);
        this.f30542c = i11;
        return this;
    }

    int b() {
        int i11 = this.f30542c;
        if (i11 == -1) {
            return 4;
        }
        return i11;
    }

    int c() {
        int i11 = this.f30541b;
        if (i11 == -1) {
            return 16;
        }
        return i11;
    }

    Equivalence d() {
        return (Equivalence) com.google.common.base.h.a(this.f30545f, e().defaultEquivalence());
    }

    MapMakerInternalMap.Strength e() {
        return (MapMakerInternalMap.Strength) com.google.common.base.h.a(this.f30543d, MapMakerInternalMap.Strength.STRONG);
    }

    MapMakerInternalMap.Strength f() {
        return (MapMakerInternalMap.Strength) com.google.common.base.h.a(this.f30544e, MapMakerInternalMap.Strength.STRONG);
    }

    public MapMaker g(int i11) {
        int i12 = this.f30541b;
        com.google.common.base.m.w(i12 == -1, "initial capacity was already set to %s", i12);
        com.google.common.base.m.d(i11 >= 0);
        this.f30541b = i11;
        return this;
    }

    MapMaker h(Equivalence equivalence) {
        Equivalence equivalence2 = this.f30545f;
        com.google.common.base.m.x(equivalence2 == null, "key equivalence was already set to %s", equivalence2);
        this.f30545f = (Equivalence) com.google.common.base.m.o(equivalence);
        this.f30540a = true;
        return this;
    }

    public ConcurrentMap i() {
        return !this.f30540a ? new ConcurrentHashMap(c(), 0.75f, b()) : MapMakerInternalMap.create(this);
    }

    MapMaker j(MapMakerInternalMap.Strength strength) {
        MapMakerInternalMap.Strength strength2 = this.f30543d;
        com.google.common.base.m.x(strength2 == null, "Key strength was already set to %s", strength2);
        this.f30543d = (MapMakerInternalMap.Strength) com.google.common.base.m.o(strength);
        if (strength != MapMakerInternalMap.Strength.STRONG) {
            this.f30540a = true;
        }
        return this;
    }

    MapMaker k(MapMakerInternalMap.Strength strength) {
        MapMakerInternalMap.Strength strength2 = this.f30544e;
        com.google.common.base.m.x(strength2 == null, "Value strength was already set to %s", strength2);
        this.f30544e = (MapMakerInternalMap.Strength) com.google.common.base.m.o(strength);
        if (strength != MapMakerInternalMap.Strength.STRONG) {
            this.f30540a = true;
        }
        return this;
    }

    public MapMaker l() {
        return j(MapMakerInternalMap.Strength.WEAK);
    }

    public String toString() {
        com.google.common.base.h.b bVarB = com.google.common.base.h.b(this);
        int i11 = this.f30541b;
        if (i11 != -1) {
            bVarB.b("initialCapacity", i11);
        }
        int i12 = this.f30542c;
        if (i12 != -1) {
            bVarB.b("concurrencyLevel", i12);
        }
        MapMakerInternalMap.Strength strength = this.f30543d;
        if (strength != null) {
            bVarB.d("keyStrength", com.google.common.base.a.e(strength.toString()));
        }
        MapMakerInternalMap.Strength strength2 = this.f30544e;
        if (strength2 != null) {
            bVarB.d("valueStrength", com.google.common.base.a.e(strength2.toString()));
        }
        if (this.f30545f != null) {
            bVarB.j("keyEquivalence");
        }
        return bVarB.toString();
    }
}
