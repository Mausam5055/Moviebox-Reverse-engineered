package mb;

import com.google.firebase.components.DependencyException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
final class c0 implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set f69451a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set f69452b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set f69453c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Set f69454d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Set f69455e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Set f69456f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final e f69457g;

    private static class a implements fc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Set f69458a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final fc.c f69459b;

        public a(Set set, fc.c cVar) {
            this.f69458a = set;
            this.f69459b = cVar;
        }
    }

    c0(c cVar, e eVar) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        for (r rVar : cVar.g()) {
            if (rVar.e()) {
                if (rVar.g()) {
                    hashSet4.add(rVar.c());
                } else {
                    hashSet.add(rVar.c());
                }
            } else if (rVar.d()) {
                hashSet3.add(rVar.c());
            } else if (rVar.g()) {
                hashSet5.add(rVar.c());
            } else {
                hashSet2.add(rVar.c());
            }
        }
        if (!cVar.k().isEmpty()) {
            hashSet.add(b0.b(fc.c.class));
        }
        this.f69451a = Collections.unmodifiableSet(hashSet);
        this.f69452b = Collections.unmodifiableSet(hashSet2);
        this.f69453c = Collections.unmodifiableSet(hashSet3);
        this.f69454d = Collections.unmodifiableSet(hashSet4);
        this.f69455e = Collections.unmodifiableSet(hashSet5);
        this.f69456f = cVar.k();
        this.f69457g = eVar;
    }

    @Override // mb.e
    public Object a(Class cls) {
        if (!this.f69451a.contains(b0.b(cls))) {
            throw new DependencyException(String.format("Attempting to request an undeclared dependency %s.", cls));
        }
        Object objA = this.f69457g.a(cls);
        return !cls.equals(fc.c.class) ? objA : new a(this.f69456f, (fc.c) objA);
    }

    @Override // mb.e
    public ic.b b(b0 b0Var) {
        if (this.f69455e.contains(b0Var)) {
            return this.f69457g.b(b0Var);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Provider<Set<%s>>.", b0Var));
    }

    @Override // mb.e
    public Object c(b0 b0Var) {
        if (this.f69451a.contains(b0Var)) {
            return this.f69457g.c(b0Var);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency %s.", b0Var));
    }

    @Override // mb.e
    public /* synthetic */ Set d(Class cls) {
        return d.e(this, cls);
    }

    @Override // mb.e
    public Set e(b0 b0Var) {
        if (this.f69454d.contains(b0Var)) {
            return this.f69457g.e(b0Var);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Set<%s>.", b0Var));
    }

    @Override // mb.e
    public ic.b f(Class cls) {
        return g(b0.b(cls));
    }

    @Override // mb.e
    public ic.b g(b0 b0Var) {
        if (this.f69452b.contains(b0Var)) {
            return this.f69457g.g(b0Var);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Provider<%s>.", b0Var));
    }

    @Override // mb.e
    public ic.a h(b0 b0Var) {
        if (this.f69453c.contains(b0Var)) {
            return this.f69457g.h(b0Var);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Deferred<%s>.", b0Var));
    }

    @Override // mb.e
    public ic.a i(Class cls) {
        return h(b0.b(cls));
    }
}
