package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference0Impl;
import kotlinx.coroutines.p0;

/* JADX INFO: loaded from: classes.dex */
public class LockFreeLinkedListNode {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f67844a = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_next$volatile");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f67845b = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_prev$volatile");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f67846c = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_removedRef$volatile");
    private volatile /* synthetic */ Object _next$volatile = this;
    private volatile /* synthetic */ Object _prev$volatile = this;
    private volatile /* synthetic */ Object _removedRef$volatile;

    private final LockFreeLinkedListNode g() {
        Object obj;
        while (true) {
            LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) f67845b.get(this);
            LockFreeLinkedListNode lockFreeLinkedListNode2 = lockFreeLinkedListNode;
            while (true) {
                LockFreeLinkedListNode lockFreeLinkedListNode3 = null;
                while (true) {
                    obj = f67844a.get(lockFreeLinkedListNode2);
                    if (obj == this) {
                        if (lockFreeLinkedListNode != lockFreeLinkedListNode2 && !androidx.concurrent.futures.a.a(f67845b, this, lockFreeLinkedListNode, lockFreeLinkedListNode2)) {
                            break;
                        }
                        return lockFreeLinkedListNode2;
                    }
                    if (p()) {
                        return null;
                    }
                    if (!(obj instanceof t)) {
                        Intrinsics.f(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
                        lockFreeLinkedListNode3 = lockFreeLinkedListNode2;
                        lockFreeLinkedListNode2 = (LockFreeLinkedListNode) obj;
                    } else {
                        if (lockFreeLinkedListNode3 != null) {
                            break;
                        }
                        lockFreeLinkedListNode2 = (LockFreeLinkedListNode) f67845b.get(lockFreeLinkedListNode2);
                    }
                }
                if (!androidx.concurrent.futures.a.a(f67844a, lockFreeLinkedListNode3, lockFreeLinkedListNode2, ((t) obj).f67885a)) {
                    break;
                }
                lockFreeLinkedListNode2 = lockFreeLinkedListNode3;
            }
        }
    }

    private final LockFreeLinkedListNode h(LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (lockFreeLinkedListNode.p()) {
            lockFreeLinkedListNode = (LockFreeLinkedListNode) f67845b.get(lockFreeLinkedListNode);
        }
        return lockFreeLinkedListNode;
    }

    private final void i(LockFreeLinkedListNode lockFreeLinkedListNode) {
        LockFreeLinkedListNode lockFreeLinkedListNode2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f67845b;
        do {
            lockFreeLinkedListNode2 = (LockFreeLinkedListNode) atomicReferenceFieldUpdater.get(lockFreeLinkedListNode);
            if (j() != lockFreeLinkedListNode) {
                return;
            }
        } while (!androidx.concurrent.futures.a.a(f67845b, lockFreeLinkedListNode, lockFreeLinkedListNode2, this));
        if (p()) {
            lockFreeLinkedListNode.g();
        }
    }

    private final t s() {
        t tVar = (t) f67846c.get(this);
        if (tVar != null) {
            return tVar;
        }
        t tVar2 = new t(this);
        f67846c.set(this, tVar2);
        return tVar2;
    }

    public final boolean c(LockFreeLinkedListNode lockFreeLinkedListNode, int i11) {
        LockFreeLinkedListNode lockFreeLinkedListNodeL;
        do {
            lockFreeLinkedListNodeL = l();
            if (lockFreeLinkedListNodeL instanceof j) {
                return (((j) lockFreeLinkedListNodeL).f67863d & i11) == 0 && lockFreeLinkedListNodeL.c(lockFreeLinkedListNode, i11);
            }
        } while (!lockFreeLinkedListNodeL.d(lockFreeLinkedListNode, this));
        return true;
    }

    public final boolean d(LockFreeLinkedListNode lockFreeLinkedListNode, LockFreeLinkedListNode lockFreeLinkedListNode2) {
        f67845b.set(lockFreeLinkedListNode, this);
        f67844a.set(lockFreeLinkedListNode, lockFreeLinkedListNode2);
        if (!androidx.concurrent.futures.a.a(f67844a, this, lockFreeLinkedListNode2, lockFreeLinkedListNode)) {
            return false;
        }
        lockFreeLinkedListNode.i(lockFreeLinkedListNode2);
        return true;
    }

    public final boolean e(LockFreeLinkedListNode lockFreeLinkedListNode) {
        f67845b.set(lockFreeLinkedListNode, this);
        f67844a.set(lockFreeLinkedListNode, this);
        while (j() == this) {
            if (androidx.concurrent.futures.a.a(f67844a, this, this, lockFreeLinkedListNode)) {
                lockFreeLinkedListNode.i(this);
                return true;
            }
        }
        return false;
    }

    public final void f(int i11) {
        c(new j(i11), i11);
    }

    public final Object j() {
        return f67844a.get(this);
    }

    public final LockFreeLinkedListNode k() {
        LockFreeLinkedListNode lockFreeLinkedListNode;
        Object objJ = j();
        t tVar = objJ instanceof t ? (t) objJ : null;
        if (tVar != null && (lockFreeLinkedListNode = tVar.f67885a) != null) {
            return lockFreeLinkedListNode;
        }
        Intrinsics.f(objJ, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
        return (LockFreeLinkedListNode) objJ;
    }

    public final LockFreeLinkedListNode l() {
        LockFreeLinkedListNode lockFreeLinkedListNodeG = g();
        return lockFreeLinkedListNodeG == null ? h((LockFreeLinkedListNode) f67845b.get(this)) : lockFreeLinkedListNodeG;
    }

    public boolean p() {
        return j() instanceof t;
    }

    public boolean q() {
        return r() == null;
    }

    public final LockFreeLinkedListNode r() {
        Object objJ;
        LockFreeLinkedListNode lockFreeLinkedListNode;
        do {
            objJ = j();
            if (objJ instanceof t) {
                return ((t) objJ).f67885a;
            }
            if (objJ == this) {
                return (LockFreeLinkedListNode) objJ;
            }
            Intrinsics.f(objJ, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
            lockFreeLinkedListNode = (LockFreeLinkedListNode) objJ;
        } while (!androidx.concurrent.futures.a.a(f67844a, this, objJ, lockFreeLinkedListNode.s()));
        lockFreeLinkedListNode.g();
        return null;
    }

    public String toString() {
        return new PropertyReference0Impl(this) { // from class: kotlinx.coroutines.internal.LockFreeLinkedListNode.toString.1
            @Override // kotlin.jvm.internal.PropertyReference0Impl, kotlin.jvm.internal.PropertyReference0
            public Object get() {
                return p0.a(this.receiver);
            }
        } + '@' + p0.b(this);
    }
}
