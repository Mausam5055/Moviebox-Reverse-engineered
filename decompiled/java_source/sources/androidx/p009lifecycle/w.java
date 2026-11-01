package androidx.p009lifecycle;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.j1;
import kotlinx.coroutines.flow.y0;

/* JADX INFO: loaded from: classes.dex */
public class w extends Lifecycle {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final a f9659k = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f9660b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private k.a f9661c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Lifecycle.State f9662d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final WeakReference f9663e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f9664f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f9665g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f9666h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ArrayList f9667i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final y0 f9668j;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Lifecycle.State a(Lifecycle.State state1, Lifecycle.State state) {
            Intrinsics.h(state1, "state1");
            return (state == null || state.compareTo(state1) >= 0) ? state1 : state;
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Lifecycle.State f9669a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private r f9670b;

        public b(t tVar, Lifecycle.State initialState) {
            Intrinsics.h(initialState, "initialState");
            Intrinsics.e(tVar);
            this.f9670b = y.f(tVar);
            this.f9669a = initialState;
        }

        public final void a(u uVar, Lifecycle.Event event) {
            Intrinsics.h(event, "event");
            Lifecycle.State targetState = event.getTargetState();
            this.f9669a = w.f9659k.a(this.f9669a, targetState);
            r rVar = this.f9670b;
            Intrinsics.e(uVar);
            rVar.onStateChanged(uVar, event);
            this.f9669a = targetState;
        }

        public final Lifecycle.State b() {
            return this.f9669a;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public w(u provider) {
        this(provider, true);
        Intrinsics.h(provider, "provider");
    }

    private w(u uVar, boolean z10) {
        this.f9660b = z10;
        this.f9661c = new k.a();
        Lifecycle.State state = Lifecycle.State.INITIALIZED;
        this.f9662d = state;
        this.f9667i = new ArrayList();
        this.f9663e = new WeakReference(uVar);
        this.f9668j = j1.a(state);
    }

    private final void e(u uVar) {
        Iterator itDescendingIterator = this.f9661c.descendingIterator();
        Intrinsics.g(itDescendingIterator, "observerMap.descendingIterator()");
        while (itDescendingIterator.hasNext() && !this.f9666h) {
            Map.Entry entry = (Map.Entry) itDescendingIterator.next();
            Intrinsics.g(entry, "next()");
            t tVar = (t) entry.getKey();
            b bVar = (b) entry.getValue();
            while (bVar.b().compareTo(this.f9662d) > 0 && !this.f9666h && this.f9661c.contains(tVar)) {
                Lifecycle.Event eventA = Lifecycle.Event.INSTANCE.a(bVar.b());
                if (eventA == null) {
                    throw new IllegalStateException("no event down from " + bVar.b());
                }
                m(eventA.getTargetState());
                bVar.a(uVar, eventA);
                l();
            }
        }
    }

    private final Lifecycle.State f(t tVar) {
        b bVar;
        Map.Entry entryJ = this.f9661c.j(tVar);
        Lifecycle.State state = null;
        Lifecycle.State stateB = (entryJ == null || (bVar = (b) entryJ.getValue()) == null) ? null : bVar.b();
        if (!this.f9667i.isEmpty()) {
            ArrayList arrayList = this.f9667i;
            state = (Lifecycle.State) arrayList.get(arrayList.size() - 1);
        }
        a aVar = f9659k;
        return aVar.a(aVar.a(this.f9662d, stateB), state);
    }

    private final void g(String str) {
        if (!this.f9660b || x.a()) {
            return;
        }
        throw new IllegalStateException(("Method " + str + " must be called on the main thread").toString());
    }

    private final void h(u uVar) {
        k.b.d dVarC = this.f9661c.c();
        Intrinsics.g(dVarC, "observerMap.iteratorWithAdditions()");
        while (dVarC.hasNext() && !this.f9666h) {
            Map.Entry entry = (Map.Entry) dVarC.next();
            t tVar = (t) entry.getKey();
            b bVar = (b) entry.getValue();
            while (bVar.b().compareTo(this.f9662d) < 0 && !this.f9666h && this.f9661c.contains(tVar)) {
                m(bVar.b());
                Lifecycle.Event eventC = Lifecycle.Event.INSTANCE.c(bVar.b());
                if (eventC == null) {
                    throw new IllegalStateException("no event up from " + bVar.b());
                }
                bVar.a(uVar, eventC);
                l();
            }
        }
    }

    private final boolean j() {
        if (this.f9661c.size() == 0) {
            return true;
        }
        Map.Entry entryA = this.f9661c.a();
        Intrinsics.e(entryA);
        Lifecycle.State stateB = ((b) entryA.getValue()).b();
        Map.Entry entryE = this.f9661c.e();
        Intrinsics.e(entryE);
        Lifecycle.State stateB2 = ((b) entryE.getValue()).b();
        return stateB == stateB2 && this.f9662d == stateB2;
    }

    private final void k(Lifecycle.State state) {
        Lifecycle.State state2 = this.f9662d;
        if (state2 == state) {
            return;
        }
        if (state2 == Lifecycle.State.INITIALIZED && state == Lifecycle.State.DESTROYED) {
            throw new IllegalStateException(("State must be at least CREATED to move to " + state + ", but was " + this.f9662d + " in component " + this.f9663e.get()).toString());
        }
        this.f9662d = state;
        if (this.f9665g || this.f9664f != 0) {
            this.f9666h = true;
            return;
        }
        this.f9665g = true;
        o();
        this.f9665g = false;
        if (this.f9662d == Lifecycle.State.DESTROYED) {
            this.f9661c = new k.a();
        }
    }

    private final void l() {
        ArrayList arrayList = this.f9667i;
        arrayList.remove(arrayList.size() - 1);
    }

    private final void m(Lifecycle.State state) {
        this.f9667i.add(state);
    }

    private final void o() {
        u uVar = (u) this.f9663e.get();
        if (uVar == null) {
            throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state.");
        }
        while (!j()) {
            this.f9666h = false;
            Lifecycle.State state = this.f9662d;
            Map.Entry entryA = this.f9661c.a();
            Intrinsics.e(entryA);
            if (state.compareTo(((b) entryA.getValue()).b()) < 0) {
                e(uVar);
            }
            Map.Entry entryE = this.f9661c.e();
            if (!this.f9666h && entryE != null && this.f9662d.compareTo(((b) entryE.getValue()).b()) > 0) {
                h(uVar);
            }
        }
        this.f9666h = false;
        this.f9668j.setValue(b());
    }

    @Override // androidx.p009lifecycle.Lifecycle
    public void a(t observer) {
        u uVar;
        Intrinsics.h(observer, "observer");
        g("addObserver");
        Lifecycle.State state = this.f9662d;
        Lifecycle.State state2 = Lifecycle.State.DESTROYED;
        if (state != state2) {
            state2 = Lifecycle.State.INITIALIZED;
        }
        b bVar = new b(observer, state2);
        if (((b) this.f9661c.g(observer, bVar)) == null && (uVar = (u) this.f9663e.get()) != null) {
            boolean z10 = this.f9664f != 0 || this.f9665g;
            Lifecycle.State stateF = f(observer);
            this.f9664f++;
            while (bVar.b().compareTo(stateF) < 0 && this.f9661c.contains(observer)) {
                m(bVar.b());
                Lifecycle.Event eventC = Lifecycle.Event.INSTANCE.c(bVar.b());
                if (eventC == null) {
                    throw new IllegalStateException("no event up from " + bVar.b());
                }
                bVar.a(uVar, eventC);
                l();
                stateF = f(observer);
            }
            if (!z10) {
                o();
            }
            this.f9664f--;
        }
    }

    @Override // androidx.p009lifecycle.Lifecycle
    public Lifecycle.State b() {
        return this.f9662d;
    }

    @Override // androidx.p009lifecycle.Lifecycle
    public void d(t observer) {
        Intrinsics.h(observer, "observer");
        g("removeObserver");
        this.f9661c.h(observer);
    }

    public void i(Lifecycle.Event event) {
        Intrinsics.h(event, "event");
        g("handleLifecycleEvent");
        k(event.getTargetState());
    }

    public void n(Lifecycle.State state) {
        Intrinsics.h(state, "state");
        g("setCurrentState");
        k(state);
    }
}
