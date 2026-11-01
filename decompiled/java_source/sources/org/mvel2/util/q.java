package org.mvel2.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes7.dex */
public class q implements Map {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f72086a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayList f72087b;

    private class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f72088a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Object f72089b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Object f72090c;

        public a(int i11, Object obj, Object obj2) {
            this.f72088a = i11;
            this.f72089b = obj;
            this.f72090c = obj2;
        }

        public int a() {
            return this.f72088a;
        }

        public Object b() {
            return this.f72089b;
        }

        public Object c() {
            return this.f72090c;
        }

        void d(Object obj) {
            this.f72090c = obj;
        }
    }

    public q() {
        this.f72086a = new HashMap();
        this.f72087b = new ArrayList();
    }

    public q(q qVar, boolean z10) {
        this.f72087b = new ArrayList(qVar.f72087b.size());
        this.f72086a = new HashMap();
        int i11 = 0;
        if (z10) {
            for (a aVar : qVar.f72087b) {
                a aVar2 = new a(i11, aVar.b(), null);
                this.f72087b.add(aVar2);
                this.f72086a.put(aVar.b(), aVar2);
                i11++;
            }
            return;
        }
        for (a aVar3 : qVar.f72087b) {
            a aVar4 = new a(i11, aVar3.b(), aVar3.c());
            this.f72087b.add(aVar4);
            this.f72086a.put(aVar3.b(), aVar4);
            i11++;
        }
    }

    public Object a(int i11) {
        return ((a) this.f72087b.get(i11)).c();
    }

    public int c(Object obj) {
        return ((a) this.f72086a.get(obj)).a();
    }

    @Override // java.util.Map
    public void clear() {
        throw new UnsupportedOperationException("cannot clear map");
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return this.f72086a.containsKey(obj);
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return this.f72086a.containsValue(obj);
    }

    public void d(int i11, Object obj) {
        ((a) this.f72087b.get(i11)).d(obj);
    }

    @Override // java.util.Map
    public Set entrySet() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public Object get(Object obj) {
        return ((a) this.f72086a.get(obj)).c();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.f72086a.isEmpty();
    }

    @Override // java.util.Map
    public Set keySet() {
        return this.f72086a.keySet();
    }

    @Override // java.util.Map
    public Object put(Object obj, Object obj2) {
        a aVar = (a) this.f72086a.get(obj);
        if (aVar == null) {
            throw new RuntimeException("cannot add a new entry.  you must allocate a new key with addKey() first.");
        }
        this.f72087b.add(aVar);
        return ((a) this.f72086a.put(obj, aVar)).c();
    }

    @Override // java.util.Map
    public void putAll(Map map) {
    }

    @Override // java.util.Map
    public Object remove(Object obj) {
        throw new UnsupportedOperationException("cannot remove keys");
    }

    @Override // java.util.Map
    public int size() {
        return this.f72086a.size();
    }

    @Override // java.util.Map
    public Collection values() {
        throw new UnsupportedOperationException();
    }
}
