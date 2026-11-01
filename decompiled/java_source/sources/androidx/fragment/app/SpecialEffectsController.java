package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.fragment.R$id;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
abstract class SpecialEffectsController {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ViewGroup f9406a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ArrayList f9407b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final ArrayList f9408c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f9409d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f9410e = false;

    static class Operation {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private State f9411a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private LifecycleImpact f9412b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Fragment f9413c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final List f9414d = new ArrayList();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final HashSet f9415e = new HashSet();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f9416f = false;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f9417g = false;

        enum LifecycleImpact {
            NONE,
            ADDING,
            REMOVING
        }

        enum State {
            REMOVED,
            VISIBLE,
            GONE,
            INVISIBLE;

            @NonNull
            static State from(int i11) {
                if (i11 == 0) {
                    return VISIBLE;
                }
                if (i11 == 4) {
                    return INVISIBLE;
                }
                if (i11 == 8) {
                    return GONE;
                }
                throw new IllegalArgumentException("Unknown visibility " + i11);
            }

            @NonNull
            static State from(@NonNull View view) {
                return (view.getAlpha() == 0.0f && view.getVisibility() == 0) ? INVISIBLE : from(view.getVisibility());
            }

            void applyState(@NonNull View view) {
                int i11 = a.f9419a[ordinal()];
                if (i11 == 1) {
                    ViewGroup viewGroup = (ViewGroup) view.getParent();
                    if (viewGroup != null) {
                        if (FragmentManager.M0(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Removing view " + view + " from container " + viewGroup);
                        }
                        viewGroup.removeView(view);
                        return;
                    }
                    return;
                }
                if (i11 == 2) {
                    if (FragmentManager.M0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to VISIBLE");
                    }
                    view.setVisibility(0);
                    return;
                }
                if (i11 == 3) {
                    if (FragmentManager.M0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to GONE");
                    }
                    view.setVisibility(8);
                    return;
                }
                if (i11 != 4) {
                    return;
                }
                if (FragmentManager.M0(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to INVISIBLE");
                }
                view.setVisibility(4);
            }
        }

        class a implements androidx.core.os.e.a {
            a() {
            }

            @Override // androidx.core.os.e.a
            public void onCancel() {
                Operation.this.b();
            }
        }

        Operation(State state, LifecycleImpact lifecycleImpact, Fragment fragment, androidx.core.os.e eVar) {
            this.f9411a = state;
            this.f9412b = lifecycleImpact;
            this.f9413c = fragment;
            eVar.b(new a());
        }

        final void a(Runnable runnable) {
            this.f9414d.add(runnable);
        }

        final void b() {
            if (h()) {
                return;
            }
            this.f9416f = true;
            if (this.f9415e.isEmpty()) {
                c();
                return;
            }
            Iterator it = new ArrayList(this.f9415e).iterator();
            while (it.hasNext()) {
                ((androidx.core.os.e) it.next()).a();
            }
        }

        public void c() {
            if (this.f9417g) {
                return;
            }
            if (FragmentManager.M0(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: " + this + " has called complete.");
            }
            this.f9417g = true;
            Iterator it = this.f9414d.iterator();
            while (it.hasNext()) {
                ((Runnable) it.next()).run();
            }
        }

        public final void d(androidx.core.os.e eVar) {
            if (this.f9415e.remove(eVar) && this.f9415e.isEmpty()) {
                c();
            }
        }

        public State e() {
            return this.f9411a;
        }

        public final Fragment f() {
            return this.f9413c;
        }

        LifecycleImpact g() {
            return this.f9412b;
        }

        final boolean h() {
            return this.f9416f;
        }

        final boolean i() {
            return this.f9417g;
        }

        public final void j(androidx.core.os.e eVar) {
            l();
            this.f9415e.add(eVar);
        }

        final void k(State state, LifecycleImpact lifecycleImpact) {
            int i11 = a.f9420b[lifecycleImpact.ordinal()];
            if (i11 == 1) {
                if (this.f9411a == State.REMOVED) {
                    if (FragmentManager.M0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: For fragment " + this.f9413c + " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = " + this.f9412b + " to ADDING.");
                    }
                    this.f9411a = State.VISIBLE;
                    this.f9412b = LifecycleImpact.ADDING;
                    return;
                }
                return;
            }
            if (i11 == 2) {
                if (FragmentManager.M0(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + this.f9413c + " mFinalState = " + this.f9411a + " -> REMOVED. mLifecycleImpact  = " + this.f9412b + " to REMOVING.");
                }
                this.f9411a = State.REMOVED;
                this.f9412b = LifecycleImpact.REMOVING;
                return;
            }
            if (i11 == 3 && this.f9411a != State.REMOVED) {
                if (FragmentManager.M0(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + this.f9413c + " mFinalState = " + this.f9411a + " -> " + state + ". ");
                }
                this.f9411a = state;
            }
        }

        abstract void l();

        public String toString() {
            return "Operation {" + Integer.toHexString(System.identityHashCode(this)) + "} {mFinalState = " + this.f9411a + "} {mLifecycleImpact = " + this.f9412b + "} {mFragment = " + this.f9413c + "}";
        }
    }

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f9419a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f9420b;

        static {
            int[] iArr = new int[Operation.LifecycleImpact.values().length];
            f9420b = iArr;
            try {
                iArr[Operation.LifecycleImpact.ADDING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9420b[Operation.LifecycleImpact.REMOVING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f9420b[Operation.LifecycleImpact.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[Operation.State.values().length];
            f9419a = iArr2;
            try {
                iArr2[Operation.State.REMOVED.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f9419a[Operation.State.VISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f9419a[Operation.State.GONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f9419a[Operation.State.INVISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    private static class b extends Operation {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final u f9421h;

        b(Operation.State state, Operation.LifecycleImpact lifecycleImpact, u uVar, androidx.core.os.e eVar) {
            super(state, lifecycleImpact, uVar.k(), eVar);
            this.f9421h = uVar;
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Operation
        public void c() {
            super.c();
            this.f9421h.m();
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Operation
        void l() {
            if (g() != Operation.LifecycleImpact.ADDING) {
                if (g() == Operation.LifecycleImpact.REMOVING) {
                    Fragment fragmentK = this.f9421h.k();
                    View viewRequireView = fragmentK.requireView();
                    if (FragmentManager.M0(2)) {
                        Log.v("FragmentManager", "Clearing focus " + viewRequireView.findFocus() + " on view " + viewRequireView + " for Fragment " + fragmentK);
                    }
                    viewRequireView.clearFocus();
                    return;
                }
                return;
            }
            Fragment fragmentK2 = this.f9421h.k();
            View viewFindFocus = fragmentK2.mView.findFocus();
            if (viewFindFocus != null) {
                fragmentK2.setFocusedView(viewFindFocus);
                if (FragmentManager.M0(2)) {
                    Log.v("FragmentManager", "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + fragmentK2);
                }
            }
            View viewRequireView2 = f().requireView();
            if (viewRequireView2.getParent() == null) {
                this.f9421h.b();
                viewRequireView2.setAlpha(0.0f);
            }
            if (viewRequireView2.getAlpha() == 0.0f && viewRequireView2.getVisibility() == 0) {
                viewRequireView2.setVisibility(4);
            }
            viewRequireView2.setAlpha(fragmentK2.getPostOnViewCreatedAlpha());
        }
    }

    SpecialEffectsController(ViewGroup viewGroup) {
        this.f9406a = viewGroup;
    }

    private void a(Operation.State state, Operation.LifecycleImpact lifecycleImpact, u uVar) {
        synchronized (this.f9407b) {
            try {
                androidx.core.os.e eVar = new androidx.core.os.e();
                Operation operationH = h(uVar.k());
                if (operationH != null) {
                    operationH.k(state, lifecycleImpact);
                    return;
                }
                final b bVar = new b(state, lifecycleImpact, uVar, eVar);
                this.f9407b.add(bVar);
                bVar.a(new Runnable() { // from class: androidx.fragment.app.SpecialEffectsController.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (SpecialEffectsController.this.f9407b.contains(bVar)) {
                            bVar.e().applyState(bVar.f().mView);
                        }
                    }
                });
                bVar.a(new Runnable() { // from class: androidx.fragment.app.SpecialEffectsController.2
                    @Override // java.lang.Runnable
                    public void run() {
                        SpecialEffectsController.this.f9407b.remove(bVar);
                        SpecialEffectsController.this.f9408c.remove(bVar);
                    }
                });
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private Operation h(Fragment fragment) {
        for (Operation operation : this.f9407b) {
            if (operation.f().equals(fragment) && !operation.h()) {
                return operation;
            }
        }
        return null;
    }

    private Operation i(Fragment fragment) {
        for (Operation operation : this.f9408c) {
            if (operation.f().equals(fragment) && !operation.h()) {
                return operation;
            }
        }
        return null;
    }

    static SpecialEffectsController n(ViewGroup viewGroup, FragmentManager fragmentManager) {
        return o(viewGroup, fragmentManager.E0());
    }

    static SpecialEffectsController o(ViewGroup viewGroup, b0 b0Var) {
        Object tag = viewGroup.getTag(R$id.special_effects_controller_view_tag);
        if (tag instanceof SpecialEffectsController) {
            return (SpecialEffectsController) tag;
        }
        SpecialEffectsController specialEffectsControllerA = b0Var.a(viewGroup);
        viewGroup.setTag(R$id.special_effects_controller_view_tag, specialEffectsControllerA);
        return specialEffectsControllerA;
    }

    private void q() {
        for (Operation operation : this.f9407b) {
            if (operation.g() == Operation.LifecycleImpact.ADDING) {
                operation.k(Operation.State.from(operation.f().requireView().getVisibility()), Operation.LifecycleImpact.NONE);
            }
        }
    }

    void b(Operation.State state, u uVar) {
        if (FragmentManager.M0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing add operation for fragment " + uVar.k());
        }
        a(state, Operation.LifecycleImpact.ADDING, uVar);
    }

    void c(u uVar) {
        if (FragmentManager.M0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing hide operation for fragment " + uVar.k());
        }
        a(Operation.State.GONE, Operation.LifecycleImpact.NONE, uVar);
    }

    void d(u uVar) {
        if (FragmentManager.M0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing remove operation for fragment " + uVar.k());
        }
        a(Operation.State.REMOVED, Operation.LifecycleImpact.REMOVING, uVar);
    }

    void e(u uVar) {
        if (FragmentManager.M0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing show operation for fragment " + uVar.k());
        }
        a(Operation.State.VISIBLE, Operation.LifecycleImpact.NONE, uVar);
    }

    abstract void f(List list, boolean z10);

    void g() {
        if (this.f9410e) {
            return;
        }
        if (!ViewCompat.isAttachedToWindow(this.f9406a)) {
            j();
            this.f9409d = false;
            return;
        }
        synchronized (this.f9407b) {
            try {
                if (!this.f9407b.isEmpty()) {
                    ArrayList<Operation> arrayList = new ArrayList(this.f9408c);
                    this.f9408c.clear();
                    for (Operation operation : arrayList) {
                        if (FragmentManager.M0(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Cancelling operation " + operation);
                        }
                        operation.b();
                        if (!operation.i()) {
                            this.f9408c.add(operation);
                        }
                    }
                    q();
                    ArrayList arrayList2 = new ArrayList(this.f9407b);
                    this.f9407b.clear();
                    this.f9408c.addAll(arrayList2);
                    if (FragmentManager.M0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Executing pending operations");
                    }
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        ((Operation) it.next()).l();
                    }
                    f(arrayList2, this.f9409d);
                    this.f9409d = false;
                    if (FragmentManager.M0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Finished executing pending operations");
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    void j() {
        if (FragmentManager.M0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Forcing all operations to complete");
        }
        boolean zIsAttachedToWindow = ViewCompat.isAttachedToWindow(this.f9406a);
        synchronized (this.f9407b) {
            try {
                q();
                Iterator it = this.f9407b.iterator();
                while (it.hasNext()) {
                    ((Operation) it.next()).l();
                }
                for (Operation operation : new ArrayList(this.f9408c)) {
                    if (FragmentManager.M0(2)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("SpecialEffectsController: ");
                        sb2.append(zIsAttachedToWindow ? "" : "Container " + this.f9406a + " is not attached to window. ");
                        sb2.append("Cancelling running operation ");
                        sb2.append(operation);
                        Log.v("FragmentManager", sb2.toString());
                    }
                    operation.b();
                }
                for (Operation operation2 : new ArrayList(this.f9407b)) {
                    if (FragmentManager.M0(2)) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("SpecialEffectsController: ");
                        sb3.append(zIsAttachedToWindow ? "" : "Container " + this.f9406a + " is not attached to window. ");
                        sb3.append("Cancelling pending operation ");
                        sb3.append(operation2);
                        Log.v("FragmentManager", sb3.toString());
                    }
                    operation2.b();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    void k() {
        if (this.f9410e) {
            if (FragmentManager.M0(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: Forcing postponed operations");
            }
            this.f9410e = false;
            g();
        }
    }

    Operation.LifecycleImpact l(u uVar) {
        Operation operationH = h(uVar.k());
        Operation.LifecycleImpact lifecycleImpactG = operationH != null ? operationH.g() : null;
        Operation operationI = i(uVar.k());
        return (operationI == null || !(lifecycleImpactG == null || lifecycleImpactG == Operation.LifecycleImpact.NONE)) ? lifecycleImpactG : operationI.g();
    }

    public ViewGroup m() {
        return this.f9406a;
    }

    void p() {
        synchronized (this.f9407b) {
            try {
                q();
                this.f9410e = false;
                for (int size = this.f9407b.size() - 1; size >= 0; size--) {
                    Operation operation = (Operation) this.f9407b.get(size);
                    Operation.State stateFrom = Operation.State.from(operation.f().mView);
                    Operation.State stateE = operation.e();
                    Operation.State state = Operation.State.VISIBLE;
                    if (stateE == state && stateFrom != state) {
                        this.f9410e = operation.f().isPostponed();
                        break;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    void r(boolean z10) {
        this.f9409d = z10;
    }
}
