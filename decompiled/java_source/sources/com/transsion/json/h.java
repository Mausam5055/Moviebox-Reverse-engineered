package com.transsion.json;

import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Stack;

/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final ThreadLocal f46059n = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f46060a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private p f46061b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.transsion.json.b.p f46065f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Map f46066g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private List f46067h;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f46072m;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f46062c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Stack f46063d = new Stack();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f46064e = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private t f46068i = t.SHALLOW;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private f f46069j = new f(Collections.EMPTY_SET);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final LinkedList f46070k = new LinkedList();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final q f46071l = new q();

    static class a extends ThreadLocal {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public h initialValue() {
            return new h();
        }
    }

    private void I() {
        if (this.f46072m) {
            this.f46061b.a(",");
            if (this.f46062c) {
                this.f46061b.a("\n");
            }
            this.f46072m = false;
        }
    }

    private void J() {
        this.f46072m = false;
    }

    private com.transsion.json.b.n K() {
        return (com.transsion.json.b.n) this.f46066g.get(this.f46071l);
    }

    public static void c() {
        f46059n.remove();
    }

    private void d(char c11) {
        this.f46061b.a("\\u");
        int i11 = 0;
        int i12 = c11;
        while (i11 < 4) {
            this.f46061b.a(String.valueOf(j.f46075f[(61440 & i12) >> 12]));
            i11++;
            i12 <<= 4;
        }
    }

    private com.transsion.json.b.n p(Object obj) {
        return this.f46065f.a(obj);
    }

    public static h q() {
        return (h) f46059n.get();
    }

    public u A() {
        if (this.f46063d.isEmpty()) {
            return null;
        }
        return (u) this.f46063d.peek();
    }

    public void B() {
        this.f46063d.pop();
    }

    public void C() {
        J();
        if (this.f46062c) {
            this.f46061b.a("\n");
            this.f46064e -= 4;
            F();
        }
        this.f46061b.a("]");
        B();
    }

    public void D() {
        J();
        if (this.f46062c) {
            this.f46061b.a("\n");
            this.f46064e -= 4;
            F();
        }
        this.f46061b.a("}");
        B();
    }

    public void E() {
        this.f46072m = true;
    }

    public void F() {
        for (int i11 = 0; i11 < this.f46064e; i11++) {
            this.f46061b.a(" ");
        }
    }

    public u G() {
        u uVarA;
        I();
        if (this.f46062c && (uVarA = A()) != null && uVarA.c() == com.transsion.json.a.ARRAY) {
            F();
        }
        u uVar = new u(com.transsion.json.a.ARRAY);
        i(uVar);
        this.f46061b.a("[");
        if (this.f46062c) {
            this.f46064e += 4;
            this.f46061b.a("\n");
        }
        return uVar;
    }

    public u H() {
        u uVarA;
        I();
        if (this.f46062c && (uVarA = A()) != null && uVarA.c() == com.transsion.json.a.ARRAY) {
            F();
        }
        u uVar = new u(com.transsion.json.a.OBJECT);
        i(uVar);
        this.f46061b.a("{");
        if (this.f46062c) {
            this.f46064e += 4;
            this.f46061b.a("\n");
        }
        return uVar;
    }

    public com.transsion.json.b.n a(d dVar, Object obj) {
        com.transsion.json.b.n nVarK = K();
        if (nVarK != null) {
            return nVarK;
        }
        if (dVar != null) {
            nVarK = dVar.j();
        }
        return nVarK == null ? p(obj) : nVarK;
    }

    protected r b(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            r rVar = (r) it.next();
            if (rVar.b(this.f46071l)) {
                return rVar;
            }
        }
        return null;
    }

    public void e(com.transsion.json.b.p pVar) {
        this.f46065f = pVar;
    }

    public void f(f fVar) {
        this.f46069j = fVar;
    }

    public void g(p pVar) {
        this.f46061b = pVar;
    }

    public void h(t tVar) {
        this.f46068i = tVar;
    }

    public void i(u uVar) {
        this.f46063d.push(uVar);
    }

    public void j(Object obj) {
        com.transsion.json.b.n nVarK = K();
        if (nVarK == null) {
            nVarK = p(obj);
        }
        nVarK.a(obj);
    }

    public void k(String str) {
        this.f46060a = str;
    }

    public void l(Map map) {
        this.f46066g = map;
    }

    public void m(boolean z10) {
        this.f46062c = z10;
    }

    public boolean n(d dVar) {
        r rVarB = b(this.f46067h);
        if (rVarB != null) {
            return rVarB.a();
        }
        Boolean boolL = dVar.l();
        if (boolL != null) {
            return boolL.booleanValue();
        }
        if (dVar.o().booleanValue()) {
            return false;
        }
        if (this.f46068i != t.SHALLOW) {
            return true;
        }
        Class clsH = dVar.h();
        return (clsH.isArray() || Iterable.class.isAssignableFrom(clsH) || Map.class.isAssignableFrom(clsH)) ? false : true;
    }

    public boolean o(String str, Object obj) {
        r rVarB = b(this.f46067h);
        if (rVarB != null) {
            return rVarB.a();
        }
        String strY = ((h) f46059n.get()).y();
        if (obj == null) {
            return true;
        }
        t tVar = this.f46068i;
        t tVar2 = t.SHALLOW;
        if ((tVar != tVar2 || strY == null || this.f46071l.c() <= 1) && !(this.f46068i == tVar2 && strY == null)) {
            return true;
        }
        Class<?> cls = obj.getClass();
        return (cls.isArray() || Iterable.class.isAssignableFrom(cls)) ? false : true;
    }

    public void r(String str) {
        I();
        u uVarA = A();
        if (uVarA != null && uVarA.c() == com.transsion.json.a.ARRAY) {
            F();
        }
        this.f46061b.a(str);
    }

    public void s(List list) {
        this.f46067h = list;
    }

    public LinkedList t() {
        return this.f46070k;
    }

    public void u(String str) {
        I();
        if (this.f46062c) {
            F();
        }
        if (str != null) {
            w(str);
        } else {
            r("null");
        }
        this.f46061b.a(":");
        if (this.f46062c) {
            this.f46061b.a(" ");
        }
    }

    public p v() {
        return this.f46061b;
    }

    public void w(String str) {
        u uVarA;
        I();
        if (this.f46062c && (uVarA = A()) != null && uVarA.c() == com.transsion.json.a.ARRAY) {
            F();
        }
        this.f46061b.a("\"");
        int length = str.length();
        int iA = 0;
        for (int i11 = 0; i11 < length; i11++) {
            char cCharAt = str.charAt(i11);
            if (cCharAt == '\"') {
                iA = this.f46061b.b(str, iA, i11, "\\u0022");
            } else if (cCharAt == '&') {
                iA = this.f46061b.b(str, iA, i11, "\\u0026");
            } else if (cCharAt == '\'') {
                iA = this.f46061b.b(str, iA, i11, "\\u0027");
            } else if (cCharAt == '<') {
                iA = this.f46061b.b(str, iA, i11, "\\u003c");
            } else if (cCharAt == '>') {
                iA = this.f46061b.b(str, iA, i11, "\\u003e");
            } else if (cCharAt == '\\') {
                iA = this.f46061b.b(str, iA, i11, "\\\\");
            } else if (cCharAt == '\b') {
                iA = this.f46061b.b(str, iA, i11, "\\b");
            } else if (cCharAt == '\f') {
                iA = this.f46061b.b(str, iA, i11, "\\f");
            } else if (cCharAt == '\n') {
                iA = this.f46061b.b(str, iA, i11, "\\n");
            } else if (cCharAt == '\r') {
                iA = this.f46061b.b(str, iA, i11, "\\r");
            } else if (cCharAt == '\t') {
                iA = this.f46061b.b(str, iA, i11, "\\t");
            } else if (Character.isISOControl(cCharAt)) {
                iA = this.f46061b.a(str, iA, i11) + 1;
                d(cCharAt);
            }
        }
        if (iA < str.length()) {
            this.f46061b.a(str, iA, str.length());
        }
        this.f46061b.a("\"");
    }

    public q x() {
        return this.f46071l;
    }

    public String y() {
        return this.f46060a;
    }

    public f z() {
        return this.f46069j;
    }
}
