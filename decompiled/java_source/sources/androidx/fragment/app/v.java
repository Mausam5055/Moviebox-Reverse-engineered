package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList f9472a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashMap f9473b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HashMap f9474c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private r f9475d;

    v() {
    }

    void A(r rVar) {
        this.f9475d = rVar;
    }

    FragmentState B(String str, FragmentState fragmentState) {
        return fragmentState != null ? (FragmentState) this.f9474c.put(str, fragmentState) : (FragmentState) this.f9474c.remove(str);
    }

    void a(Fragment fragment) {
        if (this.f9472a.contains(fragment)) {
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
        synchronized (this.f9472a) {
            this.f9472a.add(fragment);
        }
        fragment.mAdded = true;
    }

    void b() {
        this.f9473b.values().removeAll(Collections.singleton(null));
    }

    boolean c(String str) {
        return this.f9473b.get(str) != null;
    }

    void d(int i11) {
        for (u uVar : this.f9473b.values()) {
            if (uVar != null) {
                uVar.u(i11);
            }
        }
    }

    void e(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String str2 = str + "    ";
        if (!this.f9473b.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (u uVar : this.f9473b.values()) {
                printWriter.print(str);
                if (uVar != null) {
                    Fragment fragmentK = uVar.k();
                    printWriter.println(fragmentK);
                    fragmentK.dump(str2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        int size = this.f9472a.size();
        if (size > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i11 = 0; i11 < size; i11++) {
                Fragment fragment = (Fragment) this.f9472a.get(i11);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i11);
                printWriter.print(": ");
                printWriter.println(fragment.toString());
            }
        }
    }

    Fragment f(String str) {
        u uVar = (u) this.f9473b.get(str);
        if (uVar != null) {
            return uVar.k();
        }
        return null;
    }

    Fragment g(int i11) {
        for (int size = this.f9472a.size() - 1; size >= 0; size--) {
            Fragment fragment = (Fragment) this.f9472a.get(size);
            if (fragment != null && fragment.mFragmentId == i11) {
                return fragment;
            }
        }
        for (u uVar : this.f9473b.values()) {
            if (uVar != null) {
                Fragment fragmentK = uVar.k();
                if (fragmentK.mFragmentId == i11) {
                    return fragmentK;
                }
            }
        }
        return null;
    }

    Fragment h(String str) {
        if (str != null) {
            for (int size = this.f9472a.size() - 1; size >= 0; size--) {
                Fragment fragment = (Fragment) this.f9472a.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        if (str == null) {
            return null;
        }
        for (u uVar : this.f9473b.values()) {
            if (uVar != null) {
                Fragment fragmentK = uVar.k();
                if (str.equals(fragmentK.mTag)) {
                    return fragmentK;
                }
            }
        }
        return null;
    }

    Fragment i(String str) {
        Fragment fragmentFindFragmentByWho;
        for (u uVar : this.f9473b.values()) {
            if (uVar != null && (fragmentFindFragmentByWho = uVar.k().findFragmentByWho(str)) != null) {
                return fragmentFindFragmentByWho;
            }
        }
        return null;
    }

    int j(Fragment fragment) {
        View view;
        View view2;
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup == null) {
            return -1;
        }
        int iIndexOf = this.f9472a.indexOf(fragment);
        for (int i11 = iIndexOf - 1; i11 >= 0; i11--) {
            Fragment fragment2 = (Fragment) this.f9472a.get(i11);
            if (fragment2.mContainer == viewGroup && (view2 = fragment2.mView) != null) {
                return viewGroup.indexOfChild(view2) + 1;
            }
        }
        while (true) {
            iIndexOf++;
            if (iIndexOf >= this.f9472a.size()) {
                return -1;
            }
            Fragment fragment3 = (Fragment) this.f9472a.get(iIndexOf);
            if (fragment3.mContainer == viewGroup && (view = fragment3.mView) != null) {
                return viewGroup.indexOfChild(view);
            }
        }
    }

    List k() {
        ArrayList arrayList = new ArrayList();
        for (u uVar : this.f9473b.values()) {
            if (uVar != null) {
                arrayList.add(uVar);
            }
        }
        return arrayList;
    }

    List l() {
        ArrayList arrayList = new ArrayList();
        for (u uVar : this.f9473b.values()) {
            if (uVar != null) {
                arrayList.add(uVar.k());
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    ArrayList m() {
        return new ArrayList(this.f9474c.values());
    }

    u n(String str) {
        return (u) this.f9473b.get(str);
    }

    List o() {
        ArrayList arrayList;
        if (this.f9472a.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.f9472a) {
            arrayList = new ArrayList(this.f9472a);
        }
        return arrayList;
    }

    r p() {
        return this.f9475d;
    }

    FragmentState q(String str) {
        return (FragmentState) this.f9474c.get(str);
    }

    void r(u uVar) {
        Fragment fragmentK = uVar.k();
        if (c(fragmentK.mWho)) {
            return;
        }
        this.f9473b.put(fragmentK.mWho, uVar);
        if (fragmentK.mRetainInstanceChangedWhileDetached) {
            if (fragmentK.mRetainInstance) {
                this.f9475d.b(fragmentK);
            } else {
                this.f9475d.l(fragmentK);
            }
            fragmentK.mRetainInstanceChangedWhileDetached = false;
        }
        if (FragmentManager.M0(2)) {
            Log.v("FragmentManager", "Added fragment to active set " + fragmentK);
        }
    }

    void s(u uVar) {
        Fragment fragmentK = uVar.k();
        if (fragmentK.mRetainInstance) {
            this.f9475d.l(fragmentK);
        }
        if (((u) this.f9473b.put(fragmentK.mWho, null)) != null && FragmentManager.M0(2)) {
            Log.v("FragmentManager", "Removed fragment from active set " + fragmentK);
        }
    }

    void t() {
        Iterator it = this.f9472a.iterator();
        while (it.hasNext()) {
            u uVar = (u) this.f9473b.get(((Fragment) it.next()).mWho);
            if (uVar != null) {
                uVar.m();
            }
        }
        for (u uVar2 : this.f9473b.values()) {
            if (uVar2 != null) {
                uVar2.m();
                Fragment fragmentK = uVar2.k();
                if (fragmentK.mRemoving && !fragmentK.isInBackStack()) {
                    if (fragmentK.mBeingSaved && !this.f9474c.containsKey(fragmentK.mWho)) {
                        uVar2.s();
                    }
                    s(uVar2);
                }
            }
        }
    }

    void u(Fragment fragment) {
        synchronized (this.f9472a) {
            this.f9472a.remove(fragment);
        }
        fragment.mAdded = false;
    }

    void v() {
        this.f9473b.clear();
    }

    void w(List list) {
        this.f9472a.clear();
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                Fragment fragmentF = f(str);
                if (fragmentF == null) {
                    throw new IllegalStateException("No instantiated fragment for (" + str + ")");
                }
                if (FragmentManager.M0(2)) {
                    Log.v("FragmentManager", "restoreSaveState: added (" + str + "): " + fragmentF);
                }
                a(fragmentF);
            }
        }
    }

    void x(ArrayList arrayList) {
        this.f9474c.clear();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            FragmentState fragmentState = (FragmentState) it.next();
            this.f9474c.put(fragmentState.f9368b, fragmentState);
        }
    }

    ArrayList y() {
        ArrayList arrayList = new ArrayList(this.f9473b.size());
        for (u uVar : this.f9473b.values()) {
            if (uVar != null) {
                Fragment fragmentK = uVar.k();
                uVar.s();
                arrayList.add(fragmentK.mWho);
                if (FragmentManager.M0(2)) {
                    Log.v("FragmentManager", "Saved state of " + fragmentK + ": " + fragmentK.mSavedFragmentState);
                }
            }
        }
        return arrayList;
    }

    ArrayList z() {
        synchronized (this.f9472a) {
            try {
                if (this.f9472a.isEmpty()) {
                    return null;
                }
                ArrayList arrayList = new ArrayList(this.f9472a.size());
                for (Fragment fragment : this.f9472a) {
                    arrayList.add(fragment.mWho);
                    if (FragmentManager.M0(2)) {
                        Log.v("FragmentManager", "saveAllState: adding fragment (" + fragment.mWho + "): " + fragment);
                    }
                }
                return arrayList;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
