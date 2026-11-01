package com.iab.omid.library.mmadbridge.walking;

import android.view.View;
import com.iab.omid.library.mmadbridge.internal.e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import oe.h;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashMap f33751a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashMap f33752b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HashMap f33753c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashSet f33754d = new HashSet();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final HashSet f33755e = new HashSet();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final HashSet f33756f = new HashSet();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final HashMap f33757g = new HashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final HashSet f33758h = new HashSet();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Map f33759i = new WeakHashMap();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f33760j;

    /* JADX INFO: renamed from: com.iab.omid.library.mmadbridge.walking.a$a, reason: collision with other inner class name */
    public static class C0462a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final e f33761a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ArrayList f33762b = new ArrayList();

        public C0462a(e eVar, String str) {
            this.f33761a = eVar;
            b(str);
        }

        public e a() {
            return this.f33761a;
        }

        public void b(String str) {
            this.f33762b.add(str);
        }

        public ArrayList c() {
            return this.f33762b;
        }
    }

    private Boolean b(View view) {
        if (view.hasWindowFocus()) {
            this.f33759i.remove(view);
            return Boolean.FALSE;
        }
        if (this.f33759i.containsKey(view)) {
            return (Boolean) this.f33759i.get(view);
        }
        Map map = this.f33759i;
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
            String strA = h.a(view);
            if (strA != null) {
                return strA;
            }
            hashSet.add(view);
            Object parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        this.f33754d.addAll(hashSet);
        return null;
    }

    private void e(com.iab.omid.library.mmadbridge.adsession.h hVar) {
        Iterator it = hVar.o().iterator();
        while (it.hasNext()) {
            f((e) it.next(), hVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void f(e eVar, com.iab.omid.library.mmadbridge.adsession.h hVar) {
        View view = (View) eVar.c().get();
        if (view == null) {
            return;
        }
        C0462a c0462a = (C0462a) this.f33752b.get(view);
        if (c0462a != null) {
            c0462a.b(hVar.s());
        } else {
            this.f33752b.put(view, new C0462a(eVar, hVar.s()));
        }
    }

    public View a(String str) {
        return (View) this.f33753c.get(str);
    }

    public void d() {
        this.f33751a.clear();
        this.f33752b.clear();
        this.f33753c.clear();
        this.f33754d.clear();
        this.f33755e.clear();
        this.f33756f.clear();
        this.f33757g.clear();
        this.f33760j = false;
        this.f33758h.clear();
    }

    public C0462a g(View view) {
        C0462a c0462a = (C0462a) this.f33752b.get(view);
        if (c0462a != null) {
            this.f33752b.remove(view);
        }
        return c0462a;
    }

    public String h(String str) {
        return (String) this.f33757g.get(str);
    }

    public HashSet i() {
        return this.f33756f;
    }

    public String j(View view) {
        if (this.f33751a.size() == 0) {
            return null;
        }
        String str = (String) this.f33751a.get(view);
        if (str != null) {
            this.f33751a.remove(view);
        }
        return str;
    }

    public HashSet k() {
        return this.f33755e;
    }

    public boolean l(String str) {
        return this.f33758h.contains(str);
    }

    public c m(View view) {
        if (this.f33754d.contains(view)) {
            return c.PARENT_VIEW;
        }
        return this.f33760j ? c.OBSTRUCTION_VIEW : c.UNDERLYING_VIEW;
    }

    public void n() {
        this.f33760j = true;
    }

    public void o() {
        com.iab.omid.library.mmadbridge.internal.c cVarE = com.iab.omid.library.mmadbridge.internal.c.e();
        if (cVarE != null) {
            for (com.iab.omid.library.mmadbridge.adsession.h hVar : cVarE.a()) {
                View viewN = hVar.n();
                if (hVar.q()) {
                    String strS = hVar.s();
                    if (viewN != null) {
                        boolean zE = h.e(viewN);
                        if (zE) {
                            this.f33758h.add(strS);
                        }
                        String strC = c(viewN, zE);
                        if (strC == null) {
                            this.f33755e.add(strS);
                            this.f33751a.put(viewN, strS);
                            e(hVar);
                        } else if (strC != "noWindowFocus") {
                            this.f33756f.add(strS);
                            this.f33753c.put(strS, viewN);
                            this.f33757g.put(strS, strC);
                        }
                    } else {
                        this.f33756f.add(strS);
                        this.f33757g.put(strS, "noAdView");
                    }
                }
            }
        }
    }

    public boolean p(View view) {
        if (!this.f33759i.containsKey(view)) {
            return true;
        }
        this.f33759i.put(view, Boolean.TRUE);
        return false;
    }
}
