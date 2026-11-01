package com.iab.omid.library.vungle.walking;

import android.view.View;
import com.iab.omid.library.vungle.internal.e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import ue.h;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashMap f33861a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashMap f33862b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HashMap f33863c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashSet f33864d = new HashSet();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final HashSet f33865e = new HashSet();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final HashSet f33866f = new HashSet();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final HashMap f33867g = new HashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final HashSet f33868h = new HashSet();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Map f33869i = new WeakHashMap();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f33870j;

    /* JADX INFO: renamed from: com.iab.omid.library.vungle.walking.a$a, reason: collision with other inner class name */
    public static class C0464a {
        public abstract e a();

        public abstract ArrayList b();
    }

    private Boolean b(View view) {
        if (view.hasWindowFocus()) {
            this.f33869i.remove(view);
            return Boolean.FALSE;
        }
        if (this.f33869i.containsKey(view)) {
            return (Boolean) this.f33869i.get(view);
        }
        Map map = this.f33869i;
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
        this.f33864d.addAll(hashSet);
        return null;
    }

    private void e(com.iab.omid.library.vungle.adsession.h hVar) {
        Iterator it = hVar.m().iterator();
        while (it.hasNext()) {
            android.support.v4.media.session.c.a(it.next());
            f(null, hVar);
        }
    }

    private void f(e eVar, com.iab.omid.library.vungle.adsession.h hVar) {
        throw null;
    }

    public View a(String str) {
        return (View) this.f33863c.get(str);
    }

    public void d() {
        this.f33861a.clear();
        this.f33862b.clear();
        this.f33863c.clear();
        this.f33864d.clear();
        this.f33865e.clear();
        this.f33866f.clear();
        this.f33867g.clear();
        this.f33870j = false;
        this.f33868h.clear();
    }

    public C0464a g(View view) {
        return (C0464a) this.f33862b.get(view);
    }

    public String h(String str) {
        return (String) this.f33867g.get(str);
    }

    public HashSet i() {
        return this.f33866f;
    }

    public String j(View view) {
        if (this.f33861a.size() == 0) {
            return null;
        }
        String str = (String) this.f33861a.get(view);
        if (str != null) {
            this.f33861a.remove(view);
        }
        return str;
    }

    public HashSet k() {
        return this.f33865e;
    }

    public boolean l(String str) {
        return this.f33868h.contains(str);
    }

    public c m(View view) {
        if (this.f33864d.contains(view)) {
            return c.PARENT_VIEW;
        }
        return this.f33870j ? c.OBSTRUCTION_VIEW : c.UNDERLYING_VIEW;
    }

    public void n() {
        this.f33870j = true;
    }

    public void o() {
        com.iab.omid.library.vungle.internal.c cVarE = com.iab.omid.library.vungle.internal.c.e();
        if (cVarE != null) {
            for (com.iab.omid.library.vungle.adsession.h hVar : cVarE.a()) {
                View viewL = hVar.l();
                if (hVar.o()) {
                    String strJ = hVar.j();
                    if (viewL != null) {
                        boolean zE = h.e(viewL);
                        if (zE) {
                            this.f33868h.add(strJ);
                        }
                        String strC = c(viewL, zE);
                        if (strC == null) {
                            this.f33865e.add(strJ);
                            this.f33861a.put(viewL, strJ);
                            e(hVar);
                        } else if (strC != "noWindowFocus") {
                            this.f33866f.add(strJ);
                            this.f33863c.put(strJ, viewL);
                            this.f33867g.put(strJ, strC);
                        }
                    } else {
                        this.f33866f.add(strJ);
                        this.f33867g.put(strJ, "noAdView");
                    }
                }
            }
        }
    }

    public boolean p(View view) {
        if (!this.f33869i.containsKey(view)) {
            return true;
        }
        this.f33869i.put(view, Boolean.TRUE);
        return false;
    }
}
