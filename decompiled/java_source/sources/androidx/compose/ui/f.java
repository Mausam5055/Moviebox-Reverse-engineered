package androidx.compose.ui;

import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.ObserverNodeOwnerScope;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.v1;

/* JADX INFO: loaded from: classes.dex */
public interface f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f4178a = a.f4179b;

    public static final class a implements f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ a f4179b = new a();

        private a() {
        }

        @Override // androidx.compose.ui.f
        public Object b(Object obj, Function2 function2) {
            return obj;
        }

        @Override // androidx.compose.ui.f
        public boolean c(Function1 function1) {
            return true;
        }

        @Override // androidx.compose.ui.f
        public f e(f fVar) {
            return fVar;
        }

        public String toString() {
            return "Modifier";
        }
    }

    public interface b extends f {
    }

    public static abstract class c implements androidx.compose.ui.node.f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private n0 f4181b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f4182c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private c f4184e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private c f4185f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private ObserverNodeOwnerScope f4186g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private NodeCoordinator f4187h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private boolean f4188i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private boolean f4189j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private boolean f4190k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private boolean f4191l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private boolean f4192m;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private c f4180a = this;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f4183d = -1;

        public final void A1(boolean z10) {
            this.f4189j = z10;
        }

        public final void B1(Function0 function0) {
            androidx.compose.ui.node.g.n(this).registerOnEndApplyChangesListener(function0);
        }

        public void C1(NodeCoordinator nodeCoordinator) {
            this.f4187h = nodeCoordinator;
        }

        public final int a1() {
            return this.f4183d;
        }

        public final c b1() {
            return this.f4185f;
        }

        public final NodeCoordinator c1() {
            return this.f4187h;
        }

        public final n0 d1() {
            n0 n0Var = this.f4181b;
            if (n0Var != null) {
                return n0Var;
            }
            n0 n0VarA = o0.a(androidx.compose.ui.node.g.n(this).getCoroutineContext().plus(v1.a((t1) androidx.compose.ui.node.g.n(this).getCoroutineContext().get(t1.f67996l1))));
            this.f4181b = n0VarA;
            return n0VarA;
        }

        public final boolean e1() {
            return this.f4188i;
        }

        public final int f1() {
            return this.f4182c;
        }

        public final ObserverNodeOwnerScope g1() {
            return this.f4186g;
        }

        @Override // androidx.compose.ui.node.f
        public final c getNode() {
            return this.f4180a;
        }

        public final c h1() {
            return this.f4184e;
        }

        public boolean i1() {
            return true;
        }

        public final boolean j1() {
            return this.f4189j;
        }

        public final boolean k1() {
            return this.f4192m;
        }

        public void l1() {
            if (this.f4192m) {
                g0.a.b("node attached multiple times");
            }
            if (!(this.f4187h != null)) {
                g0.a.b("attach invoked on a node without a coordinator");
            }
            this.f4192m = true;
            this.f4190k = true;
        }

        public void m1() {
            if (!this.f4192m) {
                g0.a.b("Cannot detach a node that is not attached");
            }
            if (this.f4190k) {
                g0.a.b("Must run runAttachLifecycle() before markAsDetached()");
            }
            if (this.f4191l) {
                g0.a.b("Must run runDetachLifecycle() before markAsDetached()");
            }
            this.f4192m = false;
            n0 n0Var = this.f4181b;
            if (n0Var != null) {
                o0.c(n0Var, new ModifierNodeDetachedCancellationException());
                this.f4181b = null;
            }
        }

        public void n1() {
        }

        public void o1() {
        }

        public void p1() {
        }

        public void q1() {
            if (!this.f4192m) {
                g0.a.b("reset() called on an unattached node");
            }
            p1();
        }

        public void r1() {
            if (!this.f4192m) {
                g0.a.b("Must run markAsAttached() prior to runAttachLifecycle");
            }
            if (!this.f4190k) {
                g0.a.b("Must run runAttachLifecycle() only once after markAsAttached()");
            }
            this.f4190k = false;
            n1();
            this.f4191l = true;
        }

        public void s1() {
            if (!this.f4192m) {
                g0.a.b("node detached multiple times");
            }
            if (!(this.f4187h != null)) {
                g0.a.b("detach invoked on a node without a coordinator");
            }
            if (!this.f4191l) {
                g0.a.b("Must run runDetachLifecycle() once after runAttachLifecycle() and before markAsDetached()");
            }
            this.f4191l = false;
            o1();
        }

        public final void t1(int i11) {
            this.f4183d = i11;
        }

        public void u1(c cVar) {
            this.f4180a = cVar;
        }

        public final void v1(c cVar) {
            this.f4185f = cVar;
        }

        public final void w1(boolean z10) {
            this.f4188i = z10;
        }

        public final void x1(int i11) {
            this.f4182c = i11;
        }

        public final void y1(ObserverNodeOwnerScope observerNodeOwnerScope) {
            this.f4186g = observerNodeOwnerScope;
        }

        public final void z1(c cVar) {
            this.f4184e = cVar;
        }
    }

    Object b(Object obj, Function2 function2);

    boolean c(Function1 function1);

    f e(f fVar);
}
