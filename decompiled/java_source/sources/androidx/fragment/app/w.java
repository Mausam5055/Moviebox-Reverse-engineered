package androidx.fragment.app;

import android.view.ViewGroup;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.p009lifecycle.Lifecycle;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h f9476a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ClassLoader f9477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ArrayList f9478c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f9479d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f9480e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f9481f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f9482g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f9483h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    boolean f9484i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    boolean f9485j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    String f9486k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f9487l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    CharSequence f9488m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f9489n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    CharSequence f9490o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    ArrayList f9491p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    ArrayList f9492q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    boolean f9493r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    ArrayList f9494s;

    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f9495a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Fragment f9496b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f9497c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f9498d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f9499e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f9500f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f9501g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        Lifecycle.State f9502h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        Lifecycle.State f9503i;

        a() {
        }

        a(int i11, Fragment fragment) {
            this.f9495a = i11;
            this.f9496b = fragment;
            this.f9497c = false;
            Lifecycle.State state = Lifecycle.State.RESUMED;
            this.f9502h = state;
            this.f9503i = state;
        }

        a(int i11, Fragment fragment, Lifecycle.State state) {
            this.f9495a = i11;
            this.f9496b = fragment;
            this.f9497c = false;
            this.f9502h = fragment.mMaxState;
            this.f9503i = state;
        }

        a(int i11, Fragment fragment, boolean z10) {
            this.f9495a = i11;
            this.f9496b = fragment;
            this.f9497c = z10;
            Lifecycle.State state = Lifecycle.State.RESUMED;
            this.f9502h = state;
            this.f9503i = state;
        }

        a(a aVar) {
            this.f9495a = aVar.f9495a;
            this.f9496b = aVar.f9496b;
            this.f9497c = aVar.f9497c;
            this.f9498d = aVar.f9498d;
            this.f9499e = aVar.f9499e;
            this.f9500f = aVar.f9500f;
            this.f9501g = aVar.f9501g;
            this.f9502h = aVar.f9502h;
            this.f9503i = aVar.f9503i;
        }
    }

    @Deprecated
    public w() {
        this.f9478c = new ArrayList();
        this.f9485j = true;
        this.f9493r = false;
        this.f9476a = null;
        this.f9477b = null;
    }

    w(h hVar, ClassLoader classLoader) {
        this.f9478c = new ArrayList();
        this.f9485j = true;
        this.f9493r = false;
        this.f9476a = hVar;
        this.f9477b = classLoader;
    }

    w(h hVar, ClassLoader classLoader, w wVar) {
        this(hVar, classLoader);
        Iterator it = wVar.f9478c.iterator();
        while (it.hasNext()) {
            this.f9478c.add(new a((a) it.next()));
        }
        this.f9479d = wVar.f9479d;
        this.f9480e = wVar.f9480e;
        this.f9481f = wVar.f9481f;
        this.f9482g = wVar.f9482g;
        this.f9483h = wVar.f9483h;
        this.f9484i = wVar.f9484i;
        this.f9485j = wVar.f9485j;
        this.f9486k = wVar.f9486k;
        this.f9489n = wVar.f9489n;
        this.f9490o = wVar.f9490o;
        this.f9487l = wVar.f9487l;
        this.f9488m = wVar.f9488m;
        if (wVar.f9491p != null) {
            ArrayList arrayList = new ArrayList();
            this.f9491p = arrayList;
            arrayList.addAll(wVar.f9491p);
        }
        if (wVar.f9492q != null) {
            ArrayList arrayList2 = new ArrayList();
            this.f9492q = arrayList2;
            arrayList2.addAll(wVar.f9492q);
        }
        this.f9493r = wVar.f9493r;
    }

    public w b(int i11, Fragment fragment) {
        o(i11, fragment, null, 1);
        return this;
    }

    public w c(int i11, Fragment fragment, String str) {
        o(i11, fragment, str, 1);
        return this;
    }

    w d(ViewGroup viewGroup, Fragment fragment, String str) {
        fragment.mContainer = viewGroup;
        return c(viewGroup.getId(), fragment, str);
    }

    public w e(Fragment fragment, String str) {
        o(0, fragment, str, 1);
        return this;
    }

    void f(a aVar) {
        this.f9478c.add(aVar);
        aVar.f9498d = this.f9479d;
        aVar.f9499e = this.f9480e;
        aVar.f9500f = this.f9481f;
        aVar.f9501g = this.f9482g;
    }

    public w g(String str) {
        if (!this.f9485j) {
            throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
        }
        this.f9484i = true;
        this.f9486k = str;
        return this;
    }

    public w h(Fragment fragment) {
        f(new a(7, fragment));
        return this;
    }

    public abstract int i();

    public abstract int j();

    public abstract void k();

    public abstract void l();

    public w m(Fragment fragment) {
        f(new a(6, fragment));
        return this;
    }

    public w n() {
        if (this.f9484i) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.f9485j = false;
        return this;
    }

    void o(int i11, Fragment fragment, String str, int i12) {
        String str2 = fragment.mPreviousWho;
        if (str2 != null) {
            FragmentStrictMode.f(fragment, str2);
        }
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        if (str != null) {
            String str3 = fragment.mTag;
            if (str3 != null && !str.equals(str3)) {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.mTag + " now " + str);
            }
            fragment.mTag = str;
        }
        if (i11 != 0) {
            if (i11 == -1) {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            }
            int i13 = fragment.mFragmentId;
            if (i13 != 0 && i13 != i11) {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.mFragmentId + " now " + i11);
            }
            fragment.mFragmentId = i11;
            fragment.mContainerId = i11;
        }
        f(new a(i12, fragment));
    }

    public w p(Fragment fragment) {
        f(new a(4, fragment));
        return this;
    }

    public boolean q() {
        return this.f9478c.isEmpty();
    }

    public w r(Fragment fragment) {
        f(new a(3, fragment));
        return this;
    }

    public w s(int i11, Fragment fragment) {
        return t(i11, fragment, null);
    }

    public w t(int i11, Fragment fragment, String str) {
        if (i11 == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        o(i11, fragment, str, 2);
        return this;
    }

    public w u(int i11, int i12, int i13, int i14) {
        this.f9479d = i11;
        this.f9480e = i12;
        this.f9481f = i13;
        this.f9482g = i14;
        return this;
    }

    public w v(Fragment fragment, Lifecycle.State state) {
        f(new a(10, fragment, state));
        return this;
    }

    public w w(Fragment fragment) {
        f(new a(8, fragment));
        return this;
    }

    public w x(boolean z10) {
        this.f9493r = z10;
        return this;
    }

    public w y(Fragment fragment) {
        f(new a(5, fragment));
        return this;
    }
}
