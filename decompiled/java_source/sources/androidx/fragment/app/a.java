package androidx.fragment.app;

import android.util.Log;
import androidx.p009lifecycle.Lifecycle;
import java.io.PrintWriter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
final class a extends w implements FragmentManager.m {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final FragmentManager f9422t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    boolean f9423u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    int f9424v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    boolean f9425w;

    a(FragmentManager fragmentManager) {
        super(fragmentManager.w0(), fragmentManager.z0() != null ? fragmentManager.z0().f().getClassLoader() : null);
        this.f9424v = -1;
        this.f9425w = false;
        this.f9422t = fragmentManager;
    }

    a(a aVar) {
        super(aVar.f9422t.w0(), aVar.f9422t.z0() != null ? aVar.f9422t.z0().f().getClassLoader() : null, aVar);
        this.f9424v = -1;
        this.f9425w = false;
        this.f9422t = aVar.f9422t;
        this.f9423u = aVar.f9423u;
        this.f9424v = aVar.f9424v;
        this.f9425w = aVar.f9425w;
    }

    void A() {
        int size = this.f9478c.size() - 1;
        while (size >= 0) {
            w.a aVar = (w.a) this.f9478c.get(size);
            if (aVar.f9497c) {
                if (aVar.f9495a == 8) {
                    aVar.f9497c = false;
                    this.f9478c.remove(size - 1);
                    size--;
                } else {
                    int i11 = aVar.f9496b.mContainerId;
                    aVar.f9495a = 2;
                    aVar.f9497c = false;
                    for (int i12 = size - 1; i12 >= 0; i12--) {
                        w.a aVar2 = (w.a) this.f9478c.get(i12);
                        if (aVar2.f9497c && aVar2.f9496b.mContainerId == i11) {
                            this.f9478c.remove(i12);
                            size--;
                        }
                    }
                }
            }
            size--;
        }
    }

    int B(boolean z10) {
        if (this.f9423u) {
            throw new IllegalStateException("commit already called");
        }
        if (FragmentManager.M0(2)) {
            Log.v("FragmentManager", "Commit: " + this);
            PrintWriter printWriter = new PrintWriter(new a0("FragmentManager"));
            C("  ", printWriter);
            printWriter.close();
        }
        this.f9423u = true;
        if (this.f9484i) {
            this.f9424v = this.f9422t.m();
        } else {
            this.f9424v = -1;
        }
        this.f9422t.a0(this, z10);
        return this.f9424v;
    }

    public void C(String str, PrintWriter printWriter) {
        D(str, printWriter, true);
    }

    public void D(String str, PrintWriter printWriter, boolean z10) {
        String str2;
        if (z10) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f9486k);
            printWriter.print(" mIndex=");
            printWriter.print(this.f9424v);
            printWriter.print(" mCommitted=");
            printWriter.println(this.f9423u);
            if (this.f9483h != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f9483h));
            }
            if (this.f9479d != 0 || this.f9480e != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f9479d));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f9480e));
            }
            if (this.f9481f != 0 || this.f9482g != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f9481f));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f9482g));
            }
            if (this.f9487l != 0 || this.f9488m != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f9487l));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f9488m);
            }
            if (this.f9489n != 0 || this.f9490o != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.f9489n));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.f9490o);
            }
        }
        if (this.f9478c.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = this.f9478c.size();
        for (int i11 = 0; i11 < size; i11++) {
            w.a aVar = (w.a) this.f9478c.get(i11);
            switch (aVar.f9495a) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + aVar.f9495a;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i11);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(aVar.f9496b);
            if (z10) {
                if (aVar.f9498d != 0 || aVar.f9499e != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(aVar.f9498d));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(aVar.f9499e));
                }
                if (aVar.f9500f != 0 || aVar.f9501g != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(aVar.f9500f));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(aVar.f9501g));
                }
            }
        }
    }

    void E() {
        int size = this.f9478c.size();
        for (int i11 = 0; i11 < size; i11++) {
            w.a aVar = (w.a) this.f9478c.get(i11);
            Fragment fragment = aVar.f9496b;
            if (fragment != null) {
                fragment.mBeingSaved = this.f9425w;
                fragment.setPopDirection(false);
                fragment.setNextTransition(this.f9483h);
                fragment.setSharedElementNames(this.f9491p, this.f9492q);
            }
            switch (aVar.f9495a) {
                case 1:
                    fragment.setAnimations(aVar.f9498d, aVar.f9499e, aVar.f9500f, aVar.f9501g);
                    this.f9422t.D1(fragment, false);
                    this.f9422t.j(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.f9495a);
                case 3:
                    fragment.setAnimations(aVar.f9498d, aVar.f9499e, aVar.f9500f, aVar.f9501g);
                    this.f9422t.q1(fragment);
                    break;
                case 4:
                    fragment.setAnimations(aVar.f9498d, aVar.f9499e, aVar.f9500f, aVar.f9501g);
                    this.f9422t.J0(fragment);
                    break;
                case 5:
                    fragment.setAnimations(aVar.f9498d, aVar.f9499e, aVar.f9500f, aVar.f9501g);
                    this.f9422t.D1(fragment, false);
                    this.f9422t.K1(fragment);
                    break;
                case 6:
                    fragment.setAnimations(aVar.f9498d, aVar.f9499e, aVar.f9500f, aVar.f9501g);
                    this.f9422t.y(fragment);
                    break;
                case 7:
                    fragment.setAnimations(aVar.f9498d, aVar.f9499e, aVar.f9500f, aVar.f9501g);
                    this.f9422t.D1(fragment, false);
                    this.f9422t.o(fragment);
                    break;
                case 8:
                    this.f9422t.I1(fragment);
                    break;
                case 9:
                    this.f9422t.I1(null);
                    break;
                case 10:
                    this.f9422t.H1(fragment, aVar.f9503i);
                    break;
            }
        }
    }

    void F() {
        for (int size = this.f9478c.size() - 1; size >= 0; size--) {
            w.a aVar = (w.a) this.f9478c.get(size);
            Fragment fragment = aVar.f9496b;
            if (fragment != null) {
                fragment.mBeingSaved = this.f9425w;
                fragment.setPopDirection(true);
                fragment.setNextTransition(FragmentManager.x1(this.f9483h));
                fragment.setSharedElementNames(this.f9492q, this.f9491p);
            }
            switch (aVar.f9495a) {
                case 1:
                    fragment.setAnimations(aVar.f9498d, aVar.f9499e, aVar.f9500f, aVar.f9501g);
                    this.f9422t.D1(fragment, true);
                    this.f9422t.q1(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.f9495a);
                case 3:
                    fragment.setAnimations(aVar.f9498d, aVar.f9499e, aVar.f9500f, aVar.f9501g);
                    this.f9422t.j(fragment);
                    break;
                case 4:
                    fragment.setAnimations(aVar.f9498d, aVar.f9499e, aVar.f9500f, aVar.f9501g);
                    this.f9422t.K1(fragment);
                    break;
                case 5:
                    fragment.setAnimations(aVar.f9498d, aVar.f9499e, aVar.f9500f, aVar.f9501g);
                    this.f9422t.D1(fragment, true);
                    this.f9422t.J0(fragment);
                    break;
                case 6:
                    fragment.setAnimations(aVar.f9498d, aVar.f9499e, aVar.f9500f, aVar.f9501g);
                    this.f9422t.o(fragment);
                    break;
                case 7:
                    fragment.setAnimations(aVar.f9498d, aVar.f9499e, aVar.f9500f, aVar.f9501g);
                    this.f9422t.D1(fragment, true);
                    this.f9422t.y(fragment);
                    break;
                case 8:
                    this.f9422t.I1(null);
                    break;
                case 9:
                    this.f9422t.I1(fragment);
                    break;
                case 10:
                    this.f9422t.H1(fragment, aVar.f9502h);
                    break;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00b6  */
    Fragment G(ArrayList arrayList, Fragment fragment) {
        Fragment fragment2 = fragment;
        int i11 = 0;
        while (i11 < this.f9478c.size()) {
            w.a aVar = (w.a) this.f9478c.get(i11);
            int i12 = aVar.f9495a;
            if (i12 == 1) {
                arrayList.add(aVar.f9496b);
            } else if (i12 == 2) {
                Fragment fragment3 = aVar.f9496b;
                int i13 = fragment3.mContainerId;
                boolean z10 = false;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    Fragment fragment4 = (Fragment) arrayList.get(size);
                    if (fragment4.mContainerId == i13) {
                        if (fragment4 == fragment3) {
                            z10 = true;
                        } else {
                            if (fragment4 == fragment2) {
                                this.f9478c.add(i11, new w.a(9, fragment4, true));
                                i11++;
                                fragment2 = null;
                            }
                            w.a aVar2 = new w.a(3, fragment4, true);
                            aVar2.f9498d = aVar.f9498d;
                            aVar2.f9500f = aVar.f9500f;
                            aVar2.f9499e = aVar.f9499e;
                            aVar2.f9501g = aVar.f9501g;
                            this.f9478c.add(i11, aVar2);
                            arrayList.remove(fragment4);
                            i11++;
                        }
                    }
                }
                if (z10) {
                    this.f9478c.remove(i11);
                    i11--;
                } else {
                    aVar.f9495a = 1;
                    aVar.f9497c = true;
                    arrayList.add(fragment3);
                }
            } else if (i12 == 3 || i12 == 6) {
                arrayList.remove(aVar.f9496b);
                Fragment fragment5 = aVar.f9496b;
                if (fragment5 == fragment2) {
                    this.f9478c.add(i11, new w.a(9, fragment5));
                    i11++;
                    fragment2 = null;
                }
            } else if (i12 == 7) {
                arrayList.add(aVar.f9496b);
            } else if (i12 == 8) {
                this.f9478c.add(i11, new w.a(9, fragment2, true));
                aVar.f9497c = true;
                i11++;
                fragment2 = aVar.f9496b;
            }
            i11++;
        }
        return fragment2;
    }

    public String H() {
        return this.f9486k;
    }

    public void I() {
        if (this.f9494s != null) {
            for (int i11 = 0; i11 < this.f9494s.size(); i11++) {
                ((Runnable) this.f9494s.get(i11)).run();
            }
            this.f9494s = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0027  */
    /* JADX WARN: Code duplicated, block: B:14:0x002d  */
    Fragment J(ArrayList arrayList, Fragment fragment) {
        for (int size = this.f9478c.size() - 1; size >= 0; size--) {
            w.a aVar = (w.a) this.f9478c.get(size);
            int i11 = aVar.f9495a;
            if (i11 == 1) {
                arrayList.remove(aVar.f9496b);
            } else if (i11 != 3) {
                switch (i11) {
                    case 6:
                        arrayList.add(aVar.f9496b);
                        break;
                    case 7:
                        arrayList.remove(aVar.f9496b);
                        break;
                    case 8:
                        fragment = null;
                        break;
                    case 9:
                        fragment = aVar.f9496b;
                        break;
                    case 10:
                        aVar.f9503i = aVar.f9502h;
                        break;
                }
            } else {
                arrayList.add(aVar.f9496b);
            }
        }
        return fragment;
    }

    @Override // androidx.fragment.app.FragmentManager.m
    public boolean a(ArrayList arrayList, ArrayList arrayList2) {
        if (FragmentManager.M0(2)) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.f9484i) {
            return true;
        }
        this.f9422t.i(this);
        return true;
    }

    @Override // androidx.fragment.app.w
    public int i() {
        return B(false);
    }

    @Override // androidx.fragment.app.w
    public int j() {
        return B(true);
    }

    @Override // androidx.fragment.app.w
    public void k() {
        n();
        this.f9422t.d0(this, false);
    }

    @Override // androidx.fragment.app.w
    public void l() {
        n();
        this.f9422t.d0(this, true);
    }

    @Override // androidx.fragment.app.w
    public w m(Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.f9422t) {
            return super.m(fragment);
        }
        throw new IllegalStateException("Cannot detach Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override // androidx.fragment.app.w
    void o(int i11, Fragment fragment, String str, int i12) {
        super.o(i11, fragment, str, i12);
        fragment.mFragmentManager = this.f9422t;
    }

    @Override // androidx.fragment.app.w
    public w p(Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.f9422t) {
            return super.p(fragment);
        }
        throw new IllegalStateException("Cannot hide Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override // androidx.fragment.app.w
    public boolean q() {
        return this.f9478c.isEmpty();
    }

    @Override // androidx.fragment.app.w
    public w r(Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.f9422t) {
            return super.r(fragment);
        }
        throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append("BackStackEntry{");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.f9424v >= 0) {
            sb2.append(" #");
            sb2.append(this.f9424v);
        }
        if (this.f9486k != null) {
            sb2.append(" ");
            sb2.append(this.f9486k);
        }
        sb2.append("}");
        return sb2.toString();
    }

    @Override // androidx.fragment.app.w
    public w v(Fragment fragment, Lifecycle.State state) {
        if (fragment.mFragmentManager != this.f9422t) {
            throw new IllegalArgumentException("Cannot setMaxLifecycle for Fragment not attached to FragmentManager " + this.f9422t);
        }
        if (state == Lifecycle.State.INITIALIZED && fragment.mState > -1) {
            throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + state + " after the Fragment has been created");
        }
        if (state != Lifecycle.State.DESTROYED) {
            return super.v(fragment, state);
        }
        throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + state + ". Use remove() to remove the fragment from the FragmentManager and trigger its destruction.");
    }

    @Override // androidx.fragment.app.w
    public w w(Fragment fragment) {
        FragmentManager fragmentManager;
        if (fragment == null || (fragmentManager = fragment.mFragmentManager) == null || fragmentManager == this.f9422t) {
            return super.w(fragment);
        }
        throw new IllegalStateException("Cannot setPrimaryNavigation for Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override // androidx.fragment.app.w
    public w y(Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.f9422t) {
            return super.y(fragment);
        }
        throw new IllegalStateException("Cannot show Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    void z(int i11) {
        if (this.f9484i) {
            if (FragmentManager.M0(2)) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i11);
            }
            int size = this.f9478c.size();
            for (int i12 = 0; i12 < size; i12++) {
                w.a aVar = (w.a) this.f9478c.get(i12);
                Fragment fragment = aVar.f9496b;
                if (fragment != null) {
                    fragment.mBackStackNesting += i11;
                    if (FragmentManager.M0(2)) {
                        Log.v("FragmentManager", "Bump nesting of " + aVar.f9496b + " to " + aVar.f9496b.mBackStackNesting);
                    }
                }
            }
        }
    }
}
