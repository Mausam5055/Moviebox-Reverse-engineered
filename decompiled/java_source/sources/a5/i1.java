package a5;

import com.alibaba.fastjson.serializer.SerializerFeature;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class i1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected List f246a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected List f247b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected List f248c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected List f249d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected List f250e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected List f251f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected List f252g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected List f253h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected boolean f254i = true;

    public void b(h1 h1Var) {
        if (h1Var == null) {
            return;
        }
        if (h1Var instanceof q) {
            g().add((q) h1Var);
        }
        if (h1Var instanceof i) {
            f().add((i) h1Var);
        }
    }

    public boolean c(o0 o0Var, Object obj, String str, Object obj2) {
        List list = o0Var.f248c;
        if (list != null) {
            Iterator it = list.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                throw null;
            }
        }
        List list2 = this.f248c;
        if (list2 == null) {
            return true;
        }
        Iterator it2 = list2.iterator();
        if (!it2.hasNext()) {
            return true;
        }
        android.support.v4.media.session.c.a(it2.next());
        throw null;
    }

    public boolean e(o0 o0Var, Object obj, String str) {
        List list = o0Var.f251f;
        if (list != null) {
            Iterator it = list.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                throw null;
            }
        }
        List list2 = this.f251f;
        if (list2 == null) {
            return true;
        }
        Iterator it2 = list2.iterator();
        if (!it2.hasNext()) {
            return true;
        }
        android.support.v4.media.session.c.a(it2.next());
        throw null;
    }

    public List f() {
        if (this.f247b == null) {
            this.f247b = new ArrayList();
            this.f254i = false;
        }
        return this.f247b;
    }

    public List g() {
        if (this.f246a == null) {
            this.f246a = new ArrayList();
            this.f254i = false;
        }
        return this.f246a;
    }

    protected String h(o0 o0Var, Object obj, String str, Object obj2) {
        List list = o0Var.f250e;
        if (list != null) {
            Iterator it = list.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                throw null;
            }
        }
        List list2 = this.f250e;
        if (list2 != null) {
            Iterator it2 = list2.iterator();
            if (it2.hasNext()) {
                android.support.v4.media.session.c.a(it2.next());
                throw null;
            }
        }
        return str;
    }

    protected Object i(o0 o0Var, p pVar, Object obj, String str, Object obj2, int i11) {
        boolean z10;
        if (obj2 != null) {
            int i12 = o0Var.f296k.f269c;
            SerializerFeature serializerFeature = SerializerFeature.WriteNonStringValueAsString;
            if ((SerializerFeature.isEnabled(i12, i11, serializerFeature) || !(pVar == null || (pVar.a() & serializerFeature.mask) == 0)) && (((z10 = obj2 instanceof Number)) || (obj2 instanceof Boolean))) {
                String strB = (!z10 || pVar == null) ? null : pVar.b();
                obj2 = strB != null ? new DecimalFormat(strB).format(obj2) : obj2.toString();
            } else if (pVar != null && pVar.c()) {
                obj2 = com.alibaba.fastjson.a.parse((String) obj2);
            }
        }
        List list = o0Var.f249d;
        if (list != null) {
            Iterator it = list.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                throw null;
            }
        }
        List list2 = this.f249d;
        if (list2 != null) {
            Iterator it2 = list2.iterator();
            if (it2.hasNext()) {
                android.support.v4.media.session.c.a(it2.next());
                throw null;
            }
        }
        List list3 = o0Var.f253h;
        if (list3 != null) {
            Iterator it3 = list3.iterator();
            if (it3.hasNext()) {
                android.support.v4.media.session.c.a(it3.next());
                throw null;
            }
        }
        List list4 = this.f253h;
        if (list4 != null) {
            Iterator it4 = list4.iterator();
            if (it4.hasNext()) {
                android.support.v4.media.session.c.a(it4.next());
                throw null;
            }
        }
        return obj2;
    }
}
