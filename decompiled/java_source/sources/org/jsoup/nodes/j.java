package org.jsoup.nodes;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import org.jsoup.SerializationException;
import org.jsoup.select.Elements;

/* JADX INFO: loaded from: classes7.dex */
public abstract class j implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    j f71762a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f71763b;

    class a implements f10.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f71764a;

        a(String str) {
            this.f71764a = str;
        }

        @Override // f10.a
        public void a(j jVar, int i11) {
        }

        @Override // f10.a
        public void b(j jVar, int i11) {
            jVar.s(this.f71764a);
        }
    }

    private static class b implements f10.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Appendable f71766a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Document.OutputSettings f71767b;

        b(Appendable appendable, Document.OutputSettings outputSettings) {
            this.f71766a = appendable;
            this.f71767b = outputSettings;
            outputSettings.k();
        }

        @Override // f10.a
        public void a(j jVar, int i11) {
            if (jVar.B().equals("#text")) {
                return;
            }
            try {
                jVar.G(this.f71766a, i11, this.f71767b);
            } catch (IOException e11) {
                throw new SerializationException(e11);
            }
        }

        @Override // f10.a
        public void b(j jVar, int i11) {
            try {
                jVar.F(this.f71766a, i11, this.f71767b);
            } catch (IOException e11) {
                throw new SerializationException(e11);
            }
        }
    }

    protected j() {
    }

    private void K(int i11) {
        List listT = t();
        while (i11 < listT.size()) {
            ((j) listT.get(i11)).U(i11);
            i11++;
        }
    }

    private void d(int i11, String str) {
        org.jsoup.helper.d.j(str);
        org.jsoup.helper.d.j(this.f71762a);
        List listD = org.jsoup.parser.e.d(str, I() instanceof Element ? (Element) I() : null, j());
        this.f71762a.b(i11, (j[]) listD.toArray(new j[listD.size()]));
    }

    private Element u(Element element) {
        Elements elementsO0 = element.o0();
        return elementsO0.size() > 0 ? u(elementsO0.get(0)) : element;
    }

    public j A() {
        j jVar = this.f71762a;
        if (jVar == null) {
            return null;
        }
        List listT = jVar.t();
        int i11 = this.f71763b + 1;
        if (listT.size() > i11) {
            return (j) listT.get(i11);
        }
        return null;
    }

    public abstract String B();

    void C() {
    }

    public String D() {
        StringBuilder sb2 = new StringBuilder(128);
        E(sb2);
        return sb2.toString();
    }

    protected void E(Appendable appendable) {
        org.jsoup.select.d.c(new b(appendable, v()), this);
    }

    abstract void F(Appendable appendable, int i11, Document.OutputSettings outputSettings);

    abstract void G(Appendable appendable, int i11, Document.OutputSettings outputSettings);

    public Document H() {
        j jVarR = R();
        if (jVarR instanceof Document) {
            return (Document) jVarR;
        }
        return null;
    }

    public j I() {
        return this.f71762a;
    }

    public final j J() {
        return this.f71762a;
    }

    public void L() {
        org.jsoup.helper.d.j(this.f71762a);
        this.f71762a.N(this);
    }

    public j M(String str) {
        org.jsoup.helper.d.j(str);
        i().B(str);
        return this;
    }

    protected void N(j jVar) {
        org.jsoup.helper.d.d(jVar.f71762a == this);
        int i11 = jVar.f71763b;
        t().remove(i11);
        K(i11);
        jVar.f71762a = null;
    }

    protected void O(j jVar) {
        jVar.T(this);
    }

    protected void P(j jVar, j jVar2) {
        org.jsoup.helper.d.d(jVar.f71762a == this);
        org.jsoup.helper.d.j(jVar2);
        j jVar3 = jVar2.f71762a;
        if (jVar3 != null) {
            jVar3.N(jVar2);
        }
        int i11 = jVar.f71763b;
        t().set(i11, jVar2);
        jVar2.f71762a = this;
        jVar2.U(i11);
        jVar.f71762a = null;
    }

    public void Q(j jVar) {
        org.jsoup.helper.d.j(jVar);
        org.jsoup.helper.d.j(this.f71762a);
        this.f71762a.P(this, jVar);
    }

    public j R() {
        j jVar = this;
        while (true) {
            j jVar2 = jVar.f71762a;
            if (jVar2 == null) {
                return jVar;
            }
            jVar = jVar2;
        }
    }

    public void S(String str) {
        org.jsoup.helper.d.j(str);
        X(new a(str));
    }

    protected void T(j jVar) {
        org.jsoup.helper.d.j(jVar);
        j jVar2 = this.f71762a;
        if (jVar2 != null) {
            jVar2.N(this);
        }
        this.f71762a = jVar;
    }

    protected void U(int i11) {
        this.f71763b = i11;
    }

    public int V() {
        return this.f71763b;
    }

    public List W() {
        j jVar = this.f71762a;
        if (jVar == null) {
            return Collections.emptyList();
        }
        List<j> listT = jVar.t();
        ArrayList arrayList = new ArrayList(listT.size() - 1);
        for (j jVar2 : listT) {
            if (jVar2 != this) {
                arrayList.add(jVar2);
            }
        }
        return arrayList;
    }

    public j X(f10.a aVar) {
        org.jsoup.helper.d.j(aVar);
        org.jsoup.select.d.c(aVar, this);
        return this;
    }

    public j Y() {
        org.jsoup.helper.d.j(this.f71762a);
        List listT = t();
        j jVar = listT.size() > 0 ? (j) listT.get(0) : null;
        this.f71762a.b(this.f71763b, p());
        L();
        return jVar;
    }

    public j Z(String str) {
        org.jsoup.helper.d.h(str);
        List listD = org.jsoup.parser.e.d(str, I() instanceof Element ? (Element) I() : null, j());
        j jVar = (j) listD.get(0);
        if (jVar == null || !(jVar instanceof Element)) {
            return null;
        }
        Element element = (Element) jVar;
        Element elementU = u(element);
        this.f71762a.P(this, element);
        elementU.c(this);
        if (listD.size() > 0) {
            for (int i11 = 0; i11 < listD.size(); i11++) {
                j jVar2 = (j) listD.get(i11);
                jVar2.f71762a.N(jVar2);
                element.g0(jVar2);
            }
        }
        return this;
    }

    public String a(String str) {
        org.jsoup.helper.d.h(str);
        return !w(str) ? "" : org.jsoup.helper.c.m(j(), f(str));
    }

    protected void b(int i11, j... jVarArr) {
        org.jsoup.helper.d.f(jVarArr);
        List listT = t();
        for (j jVar : jVarArr) {
            O(jVar);
        }
        listT.addAll(i11, Arrays.asList(jVarArr));
        K(i11);
    }

    protected void c(j... jVarArr) {
        List listT = t();
        for (j jVar : jVarArr) {
            O(jVar);
            listT.add(jVar);
            jVar.U(listT.size() - 1);
        }
    }

    public j e(String str) {
        d(this.f71763b + 1, str);
        return this;
    }

    public boolean equals(Object obj) {
        return this == obj;
    }

    public String f(String str) {
        org.jsoup.helper.d.j(str);
        if (!x()) {
            return "";
        }
        String strO = i().o(str);
        if (strO.length() > 0) {
            return strO;
        }
        return str.startsWith("abs:") ? a(str.substring(4)) : "";
    }

    public j g(String str, String str2) {
        i().y(str, str2);
        return this;
    }

    public abstract org.jsoup.nodes.b i();

    public abstract String j();

    public j k(String str) {
        d(this.f71763b, str);
        return this;
    }

    public j l(j jVar) {
        org.jsoup.helper.d.j(jVar);
        org.jsoup.helper.d.j(this.f71762a);
        this.f71762a.b(this.f71763b, jVar);
        return this;
    }

    public j m(int i11) {
        return (j) t().get(i11);
    }

    public abstract int n();

    public List o() {
        return Collections.unmodifiableList(t());
    }

    protected j[] p() {
        return (j[]) t().toArray(new j[n()]);
    }

    @Override // 
    /* JADX INFO: renamed from: q */
    public j s0() {
        j jVarR = r(null);
        LinkedList linkedList = new LinkedList();
        linkedList.add(jVarR);
        while (!linkedList.isEmpty()) {
            j jVar = (j) linkedList.remove();
            int iN = jVar.n();
            for (int i11 = 0; i11 < iN; i11++) {
                List listT = jVar.t();
                j jVarR2 = ((j) listT.get(i11)).r(jVar);
                listT.set(i11, jVarR2);
                linkedList.add(jVarR2);
            }
        }
        return jVarR;
    }

    protected j r(j jVar) {
        try {
            j jVar2 = (j) super.clone();
            jVar2.f71762a = jVar;
            jVar2.f71763b = jVar == null ? 0 : this.f71763b;
            return jVar2;
        } catch (CloneNotSupportedException e11) {
            throw new RuntimeException(e11);
        }
    }

    protected abstract void s(String str);

    protected abstract List t();

    public String toString() {
        return D();
    }

    Document.OutputSettings v() {
        Document documentH = H();
        if (documentH == null) {
            documentH = new Document("");
        }
        return documentH.g1();
    }

    public boolean w(String str) {
        org.jsoup.helper.d.j(str);
        if (str.startsWith("abs:")) {
            String strSubstring = str.substring(4);
            if (i().q(strSubstring) && !a(strSubstring).equals("")) {
                return true;
            }
        }
        return i().q(str);
    }

    protected abstract boolean x();

    public boolean y() {
        return this.f71762a != null;
    }

    protected void z(Appendable appendable, int i11, Document.OutputSettings outputSettings) {
        appendable.append('\n').append(org.jsoup.helper.c.l(i11 * outputSettings.i()));
    }
}
