package com.iab.omid.library.bytedance2.walking;

import android.view.View;
import com.iab.omid.library.bytedance2.internal.e;
import com.iab.omid.library.bytedance2.utils.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashMap<View, String> f33509a = new HashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashMap<View, C0457a> f33510b = new HashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HashMap<String, View> f33511c = new HashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashSet<View> f33512d = new HashSet<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final HashSet<String> f33513e = new HashSet<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final HashSet<String> f33514f = new HashSet<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final HashMap<String, String> f33515g = new HashMap<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Map<View, Boolean> f33516h = new WeakHashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f33517i;

    /* JADX INFO: renamed from: com.iab.omid.library.bytedance2.walking.a$a, reason: collision with other inner class name */
    public static class C0457a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final e f33518a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ArrayList<String> f33519b = new ArrayList<>();

        public C0457a(e eVar, String str) {
            this.f33518a = eVar;
            a(str);
        }

        public e a() {
            return this.f33518a;
        }

        public void a(String str) {
            this.f33519b.add(str);
        }

        public ArrayList<String> b() {
            return this.f33519b;
        }
    }

    private String a(View view) {
        if (!view.isAttachedToWindow()) {
            return "notAttached";
        }
        if (b(view).booleanValue()) {
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
        this.f33512d.addAll(hashSet);
        return null;
    }

    private void a(com.iab.omid.library.bytedance2.adsession.a aVar) {
        Iterator<e> it = aVar.d().iterator();
        while (it.hasNext()) {
            a(it.next(), aVar);
        }
    }

    private void a(e eVar, com.iab.omid.library.bytedance2.adsession.a aVar) {
        View view = eVar.c().get();
        if (view == null) {
            return;
        }
        C0457a c0457a = this.f33510b.get(view);
        if (c0457a != null) {
            c0457a.a(aVar.getAdSessionId());
        } else {
            this.f33510b.put(view, new C0457a(eVar, aVar.getAdSessionId()));
        }
    }

    private Boolean b(View view) {
        if (view.hasWindowFocus()) {
            this.f33516h.remove(view);
            return Boolean.FALSE;
        }
        if (this.f33516h.containsKey(view)) {
            return this.f33516h.get(view);
        }
        Map<View, Boolean> map = this.f33516h;
        Boolean bool = Boolean.FALSE;
        map.put(view, bool);
        return bool;
    }

    public View a(String str) {
        return this.f33511c.get(str);
    }

    public void a() {
        this.f33509a.clear();
        this.f33510b.clear();
        this.f33511c.clear();
        this.f33512d.clear();
        this.f33513e.clear();
        this.f33514f.clear();
        this.f33515g.clear();
        this.f33517i = false;
    }

    public String b(String str) {
        return this.f33515g.get(str);
    }

    public HashSet<String> b() {
        return this.f33514f;
    }

    public C0457a c(View view) {
        C0457a c0457a = this.f33510b.get(view);
        if (c0457a != null) {
            this.f33510b.remove(view);
        }
        return c0457a;
    }

    public HashSet<String> c() {
        return this.f33513e;
    }

    public String d(View view) {
        if (this.f33509a.size() == 0) {
            return null;
        }
        String str = this.f33509a.get(view);
        if (str != null) {
            this.f33509a.remove(view);
        }
        return str;
    }

    public void d() {
        this.f33517i = true;
    }

    public c e(View view) {
        if (this.f33512d.contains(view)) {
            return c.PARENT_VIEW;
        }
        return this.f33517i ? c.OBSTRUCTION_VIEW : c.UNDERLYING_VIEW;
    }

    public void e() {
        com.iab.omid.library.bytedance2.internal.c cVarC = com.iab.omid.library.bytedance2.internal.c.c();
        if (cVarC != null) {
            for (com.iab.omid.library.bytedance2.adsession.a aVar : cVarC.a()) {
                View viewC = aVar.c();
                if (aVar.f()) {
                    String adSessionId = aVar.getAdSessionId();
                    if (viewC != null) {
                        String strA = a(viewC);
                        if (strA == null) {
                            this.f33513e.add(adSessionId);
                            this.f33509a.put(viewC, adSessionId);
                            a(aVar);
                        } else if (strA != "noWindowFocus") {
                            this.f33514f.add(adSessionId);
                            this.f33511c.put(adSessionId, viewC);
                            this.f33515g.put(adSessionId, strA);
                        }
                    } else {
                        this.f33514f.add(adSessionId);
                        this.f33515g.put(adSessionId, "noAdView");
                    }
                }
            }
        }
    }

    public boolean f(View view) {
        if (!this.f33516h.containsKey(view)) {
            return true;
        }
        this.f33516h.put(view, Boolean.TRUE);
        return false;
    }
}
