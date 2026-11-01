package androidx.databinding;

import android.util.Log;
import android.view.View;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class MergedDataBinderMapper extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Set f8530a = new HashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List f8531b = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List f8532c = new CopyOnWriteArrayList();

    private boolean e() {
        boolean z10 = false;
        for (String str : this.f8532c) {
            try {
                Class<?> cls = Class.forName(str);
                if (e.class.isAssignableFrom(cls)) {
                    d((e) cls.newInstance());
                    this.f8532c.remove(str);
                    z10 = true;
                }
            } catch (ClassNotFoundException unused) {
            } catch (IllegalAccessException e11) {
                Log.e("MergedDataBinderMapper", "unable to add feature mapper for " + str, e11);
            } catch (InstantiationException e12) {
                Log.e("MergedDataBinderMapper", "unable to add feature mapper for " + str, e12);
            }
        }
        return z10;
    }

    @Override // androidx.databinding.e
    public ViewDataBinding b(f fVar, View view, int i11) {
        Iterator it = this.f8531b.iterator();
        while (it.hasNext()) {
            ((e) it.next()).b(fVar, view, i11);
        }
        if (e()) {
            b(fVar, view, i11);
        }
        return null;
    }

    @Override // androidx.databinding.e
    public int c(String str) {
        Iterator it = this.f8531b.iterator();
        while (it.hasNext()) {
            int iC = ((e) it.next()).c(str);
            if (iC != 0) {
                return iC;
            }
        }
        if (e()) {
            return c(str);
        }
        return 0;
    }

    public void d(e eVar) {
        if (this.f8530a.add(eVar.getClass())) {
            this.f8531b.add(eVar);
            Iterator it = eVar.a().iterator();
            while (it.hasNext()) {
                d((e) it.next());
            }
        }
    }
}
