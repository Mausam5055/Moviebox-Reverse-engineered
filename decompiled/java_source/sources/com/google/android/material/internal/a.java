package com.google.android.material.internal;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f29137a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set f29138b = new HashSet();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b f29139c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f29140d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f29141e;

    /* JADX INFO: renamed from: com.google.android.material.internal.a$a, reason: collision with other inner class name */
    class C0397a implements l.a {
        C0397a() {
        }

        @Override // com.google.android.material.internal.l.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(l lVar, boolean z10) {
            if (!z10) {
                a aVar = a.this;
                if (!aVar.s(lVar, aVar.f29141e)) {
                    return;
                }
            } else if (!a.this.g(lVar)) {
                return;
            }
            a.this.n();
        }
    }

    public interface b {
        void a(Set set);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g(l lVar) {
        int id2 = lVar.getId();
        if (this.f29138b.contains(Integer.valueOf(id2))) {
            return false;
        }
        l lVar2 = (l) this.f29137a.get(Integer.valueOf(k()));
        if (lVar2 != null) {
            s(lVar2, false);
        }
        boolean zAdd = this.f29138b.add(Integer.valueOf(id2));
        if (!lVar.isChecked()) {
            lVar.setChecked(true);
        }
        return zAdd;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        b bVar = this.f29139c;
        if (bVar != null) {
            bVar.a(i());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean s(l lVar, boolean z10) {
        int id2 = lVar.getId();
        if (!this.f29138b.contains(Integer.valueOf(id2))) {
            return false;
        }
        if (z10 && this.f29138b.size() == 1 && this.f29138b.contains(Integer.valueOf(id2))) {
            lVar.setChecked(true);
            return false;
        }
        boolean zRemove = this.f29138b.remove(Integer.valueOf(id2));
        if (lVar.isChecked()) {
            lVar.setChecked(false);
        }
        return zRemove;
    }

    public void e(l lVar) {
        this.f29137a.put(Integer.valueOf(lVar.getId()), lVar);
        if (lVar.isChecked()) {
            g(lVar);
        }
        lVar.setInternalOnCheckedChangeListener(new C0397a());
    }

    public void f(int i11) {
        l lVar = (l) this.f29137a.get(Integer.valueOf(i11));
        if (lVar != null && g(lVar)) {
            n();
        }
    }

    public void h() {
        boolean zIsEmpty = this.f29138b.isEmpty();
        Iterator it = this.f29137a.values().iterator();
        while (it.hasNext()) {
            s((l) it.next(), false);
        }
        if (zIsEmpty) {
            return;
        }
        n();
    }

    public Set i() {
        return new HashSet(this.f29138b);
    }

    public List j(ViewGroup viewGroup) {
        Set setI = i();
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < viewGroup.getChildCount(); i11++) {
            View childAt = viewGroup.getChildAt(i11);
            if ((childAt instanceof l) && setI.contains(Integer.valueOf(childAt.getId()))) {
                arrayList.add(Integer.valueOf(childAt.getId()));
            }
        }
        return arrayList;
    }

    public int k() {
        if (!this.f29140d || this.f29138b.isEmpty()) {
            return -1;
        }
        return ((Integer) this.f29138b.iterator().next()).intValue();
    }

    public boolean l() {
        return this.f29141e;
    }

    public boolean m() {
        return this.f29140d;
    }

    public void o(l lVar) {
        lVar.setInternalOnCheckedChangeListener(null);
        this.f29137a.remove(Integer.valueOf(lVar.getId()));
        this.f29138b.remove(Integer.valueOf(lVar.getId()));
    }

    public void p(b bVar) {
        this.f29139c = bVar;
    }

    public void q(boolean z10) {
        this.f29141e = z10;
    }

    public void r(boolean z10) {
        if (this.f29140d != z10) {
            this.f29140d = z10;
            h();
        }
    }
}
