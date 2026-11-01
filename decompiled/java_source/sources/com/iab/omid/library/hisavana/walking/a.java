package com.iab.omid.library.hisavana.walking;

import android.view.View;
import com.iab.omid.library.hisavana.adsession.h;
import com.iab.omid.library.hisavana.internal.e;
import ie.i;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashMap f33631a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashMap f33632b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HashMap f33633c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashSet f33634d = new HashSet();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final HashSet f33635e = new HashSet();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final HashSet f33636f = new HashSet();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final HashMap f33637g = new HashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final HashSet f33638h = new HashSet();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Map f33639i = new WeakHashMap();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f33640j;

    /* JADX INFO: renamed from: com.iab.omid.library.hisavana.walking.a$a, reason: collision with other inner class name */
    public static class C0460a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final e f33641a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ArrayList f33642b = new ArrayList();

        public C0460a(e eVar, String str) {
            this.f33641a = eVar;
            b(str);
        }

        public e a() {
            return this.f33641a;
        }

        public void b(String str) {
            this.f33642b.add(str);
        }

        public ArrayList c() {
            return this.f33642b;
        }
    }

    private Boolean b(View view) {
        if (view.hasWindowFocus()) {
            this.f33639i.remove(view);
            return Boolean.FALSE;
        }
        if (this.f33639i.containsKey(view)) {
            return (Boolean) this.f33639i.get(view);
        }
        Map map = this.f33639i;
        Boolean bool = Boolean.FALSE;
        map.put(view, bool);
        return bool;
    }

    private String c(View view, boolean z10) {
        if (!view.isAttachedToWindow()) {
            return "notAttached";
        }
        if (b(view).booleanValue() && !z10) {
            return "noWindowFocus";
        }
        HashSet hashSet = new HashSet();
        while (view != null) {
            String strA = i.a(view);
            if (strA != null) {
                return strA;
            }
            hashSet.add(view);
            Object parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        this.f33634d.addAll(hashSet);
        return null;
    }

    private void e(h hVar) {
        Iterator it = hVar.n().iterator();
        while (it.hasNext()) {
            f((e) it.next(), hVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void f(e eVar, h hVar) {
        View view = (View) eVar.c().get();
        if (view == null) {
            return;
        }
        C0460a c0460a = (C0460a) this.f33632b.get(view);
        if (c0460a != null) {
            c0460a.b(hVar.k());
        } else {
            this.f33632b.put(view, new C0460a(eVar, hVar.k()));
        }
    }

    public View a(String str) {
        return (View) this.f33633c.get(str);
    }

    public void d() {
        this.f33631a.clear();
        this.f33632b.clear();
        this.f33633c.clear();
        this.f33634d.clear();
        this.f33635e.clear();
        this.f33636f.clear();
        this.f33637g.clear();
        this.f33640j = false;
        this.f33638h.clear();
    }

    public C0460a g(View view) {
        C0460a c0460a = (C0460a) this.f33632b.get(view);
        if (c0460a != null) {
            this.f33632b.remove(view);
        }
        return c0460a;
    }

    public String h(String str) {
        return (String) this.f33637g.get(str);
    }

    public HashSet i() {
        return this.f33636f;
    }

    public String j(View view) {
        if (this.f33631a.size() == 0) {
            return null;
        }
        String str = (String) this.f33631a.get(view);
        if (str != null) {
            this.f33631a.remove(view);
        }
        return str;
    }

    public HashSet k() {
        return this.f33635e;
    }

    public boolean l(String str) {
        return this.f33638h.contains(str);
    }

    public c m(View view) {
        if (this.f33634d.contains(view)) {
            return c.PARENT_VIEW;
        }
        return this.f33640j ? c.OBSTRUCTION_VIEW : c.UNDERLYING_VIEW;
    }

    public void n() {
        this.f33640j = true;
    }

    public void o() {
        com.iab.omid.library.hisavana.internal.c cVarE = com.iab.omid.library.hisavana.internal.c.e();
        if (cVarE != null) {
            for (h hVar : cVarE.a()) {
                View viewM = hVar.m();
                if (hVar.p()) {
                    String strK = hVar.k();
                    if (viewM != null) {
                        boolean zE = i.e(viewM);
                        if (zE) {
                            this.f33638h.add(strK);
                        }
                        String strC = c(viewM, zE);
                        if (strC == null) {
                            this.f33635e.add(strK);
                            this.f33631a.put(viewM, strK);
                            e(hVar);
                        } else if (strC != "noWindowFocus") {
                            this.f33636f.add(strK);
                            this.f33633c.put(strK, viewM);
                            this.f33637g.put(strK, strC);
                        }
                    } else {
                        this.f33636f.add(strK);
                        this.f33637g.put(strK, "noAdView");
                    }
                }
            }
        }
    }

    public boolean p(View view) {
        if (!this.f33639i.containsKey(view)) {
            return true;
        }
        this.f33639i.put(view, Boolean.TRUE);
        return false;
    }
}
