package org.jsoup.nodes;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Pattern;
import org.jsoup.helper.ChangeNotifyingArrayList;
import org.jsoup.select.Elements;
import org.jsoup.select.Selector;

/* JADX INFO: loaded from: classes7.dex */
public class Element extends j {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final List f71736h = Collections.emptyList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Pattern f71737i = Pattern.compile("\\s+");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private org.jsoup.parser.f f71738c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WeakReference f71739d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    List f71740e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private b f71741f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f71742g;

    private static final class NodeList extends ChangeNotifyingArrayList<j> {
        private final Element owner;

        NodeList(Element element, int i11) {
            super(i11);
            this.owner = element;
        }

        @Override // org.jsoup.helper.ChangeNotifyingArrayList
        public void onContentsChanged() {
            this.owner.C();
        }
    }

    class a implements f10.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ StringBuilder f71743a;

        a(StringBuilder sb2) {
            this.f71743a = sb2;
        }

        @Override // f10.a
        public void a(j jVar, int i11) {
            if ((jVar instanceof Element) && ((Element) jVar).H0() && (jVar.A() instanceof l) && !l.e0(this.f71743a)) {
                this.f71743a.append(' ');
            }
        }

        @Override // f10.a
        public void b(j jVar, int i11) {
            if (jVar instanceof l) {
                Element.h0(this.f71743a, (l) jVar);
            } else if (jVar instanceof Element) {
                Element element = (Element) jVar;
                if (this.f71743a.length() > 0) {
                    if ((element.H0() || element.f71738c.b().equals(TtmlNode.TAG_BR)) && !l.e0(this.f71743a)) {
                        this.f71743a.append(' ');
                    }
                }
            }
        }
    }

    public Element(org.jsoup.parser.f fVar, String str) {
        this(fVar, str, null);
    }

    public Element(org.jsoup.parser.f fVar, String str, b bVar) {
        org.jsoup.helper.d.j(fVar);
        org.jsoup.helper.d.j(str);
        this.f71740e = f71736h;
        this.f71742g = str;
        this.f71741f = bVar;
        this.f71738c = fVar;
    }

    private void D0(StringBuilder sb2) {
        Iterator it = this.f71740e.iterator();
        while (it.hasNext()) {
            ((j) it.next()).E(sb2);
        }
    }

    private static int F0(Element element, List list) {
        for (int i11 = 0; i11 < list.size(); i11++) {
            if (list.get(i11) == element) {
                return i11;
            }
        }
        return 0;
    }

    private void K0(StringBuilder sb2) {
        for (j jVar : this.f71740e) {
            if (jVar instanceof l) {
                h0(sb2, (l) jVar);
            } else if (jVar instanceof Element) {
                i0((Element) jVar, sb2);
            }
        }
    }

    static boolean O0(j jVar) {
        if (jVar != null && (jVar instanceof Element)) {
            Element elementI = (Element) jVar;
            int i11 = 0;
            while (!elementI.f71738c.h()) {
                elementI = elementI.I();
                i11++;
                if (i11 >= 6 || elementI == null) {
                }
            }
            return true;
        }
        return false;
    }

    private static void c0(Element element, Elements elements) {
        Element elementI = element.I();
        if (elementI == null || elementI.U0().equals("#root")) {
            return;
        }
        elements.add(elementI);
        c0(elementI, elements);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void h0(StringBuilder sb2, l lVar) {
        String strC0 = lVar.c0();
        if (O0(lVar.f71762a) || (lVar instanceof d)) {
            sb2.append(strC0);
        } else {
            org.jsoup.helper.c.a(sb2, strC0, l.e0(sb2));
        }
    }

    private static void i0(Element element, StringBuilder sb2) {
        if (!element.f71738c.b().equals(TtmlNode.TAG_BR) || l.e0(sb2)) {
            return;
        }
        sb2.append(" ");
    }

    private List n0() {
        List list;
        WeakReference weakReference = this.f71739d;
        if (weakReference != null && (list = (List) weakReference.get()) != null) {
            return list;
        }
        int size = this.f71740e.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i11 = 0; i11 < size; i11++) {
            j jVar = (j) this.f71740e.get(i11);
            if (jVar instanceof Element) {
                arrayList.add((Element) jVar);
            }
        }
        this.f71739d = new WeakReference(arrayList);
        return arrayList;
    }

    public boolean A0() {
        for (j jVar : this.f71740e) {
            if (jVar instanceof l) {
                if (!((l) jVar).d0()) {
                    return true;
                }
            } else if ((jVar instanceof Element) && ((Element) jVar).A0()) {
                return true;
            }
        }
        return false;
    }

    @Override // org.jsoup.nodes.j
    public String B() {
        return this.f71738c.b();
    }

    public String B0() {
        StringBuilder sbO = org.jsoup.helper.c.o();
        D0(sbO);
        boolean zL = v().l();
        String string = sbO.toString();
        return zL ? string.trim() : string;
    }

    @Override // org.jsoup.nodes.j
    void C() {
        super.C();
        this.f71739d = null;
    }

    public Element C0(String str) {
        w0();
        f0(str);
        return this;
    }

    public String E0() {
        return i().o("id");
    }

    @Override // org.jsoup.nodes.j
    void F(Appendable appendable, int i11, Document.OutputSettings outputSettings) throws IOException {
        if (outputSettings.l() && ((this.f71738c.a() || ((I() != null && I().T0().a()) || outputSettings.j())) && (!(appendable instanceof StringBuilder) || ((StringBuilder) appendable).length() > 0))) {
            z(appendable, i11, outputSettings);
        }
        appendable.append('<').append(U0());
        b bVar = this.f71741f;
        if (bVar != null) {
            bVar.s(appendable, outputSettings);
        }
        if (!this.f71740e.isEmpty() || !this.f71738c.g()) {
            appendable.append('>');
        } else if (outputSettings.m() == Document.OutputSettings.Syntax.html && this.f71738c.d()) {
            appendable.append('>');
        } else {
            appendable.append(" />");
        }
    }

    @Override // org.jsoup.nodes.j
    void G(Appendable appendable, int i11, Document.OutputSettings outputSettings) throws IOException {
        if (this.f71740e.isEmpty() && this.f71738c.g()) {
            return;
        }
        if (outputSettings.l() && !this.f71740e.isEmpty() && (this.f71738c.a() || (outputSettings.j() && (this.f71740e.size() > 1 || (this.f71740e.size() == 1 && !(this.f71740e.get(0) instanceof l)))))) {
            z(appendable, i11, outputSettings);
        }
        appendable.append("</").append(U0()).append('>');
    }

    public boolean G0(org.jsoup.select.c cVar) {
        return cVar.a((Element) R(), this);
    }

    public boolean H0() {
        return this.f71738c.c();
    }

    public Element I0() {
        if (this.f71762a == null) {
            return null;
        }
        List listN0 = I().n0();
        int iF0 = F0(this, listN0);
        org.jsoup.helper.d.j(Integer.valueOf(iF0));
        int i11 = iF0 + 1;
        if (listN0.size() > i11) {
            return (Element) listN0.get(i11);
        }
        return null;
    }

    public String J0() {
        StringBuilder sb2 = new StringBuilder();
        K0(sb2);
        return sb2.toString().trim();
    }

    @Override // org.jsoup.nodes.j
    /* JADX INFO: renamed from: L0, reason: merged with bridge method [inline-methods] */
    public final Element I() {
        return (Element) this.f71762a;
    }

    public Elements M0() {
        Elements elements = new Elements();
        c0(this, elements);
        return elements;
    }

    public Element N0(String str) {
        org.jsoup.helper.d.j(str);
        List listD = org.jsoup.parser.e.d(str, this, j());
        b(0, (j[]) listD.toArray(new j[listD.size()]));
        return this;
    }

    public Element P0() {
        if (this.f71762a == null) {
            return null;
        }
        List listN0 = I().n0();
        int iF0 = F0(this, listN0);
        org.jsoup.helper.d.j(Integer.valueOf(iF0));
        if (iF0 > 0) {
            return (Element) listN0.get(iF0 - 1);
        }
        return null;
    }

    public Element Q0(String str) {
        org.jsoup.helper.d.j(str);
        Set setQ0 = q0();
        setQ0.remove(str);
        r0(setQ0);
        return this;
    }

    public Elements R0(String str) {
        return Selector.c(str, this);
    }

    public Elements S0() {
        if (this.f71762a == null) {
            return new Elements(0);
        }
        List<Element> listN0 = I().n0();
        Elements elements = new Elements(listN0.size() - 1);
        for (Element element : listN0) {
            if (element != this) {
                elements.add(element);
            }
        }
        return elements;
    }

    public org.jsoup.parser.f T0() {
        return this.f71738c;
    }

    public String U0() {
        return this.f71738c.b();
    }

    public Element V0(String str) {
        org.jsoup.helper.d.i(str, "Tag name must not be empty.");
        this.f71738c = org.jsoup.parser.f.l(str, org.jsoup.parser.d.f71832d);
        return this;
    }

    public String W0() {
        StringBuilder sb2 = new StringBuilder();
        org.jsoup.select.d.c(new a(sb2), this);
        return sb2.toString().trim();
    }

    public Element X0(String str) {
        org.jsoup.helper.d.j(str);
        w0();
        g0(new l(str));
        return this;
    }

    public List Y0() {
        ArrayList arrayList = new ArrayList();
        for (j jVar : this.f71740e) {
            if (jVar instanceof l) {
                arrayList.add((l) jVar);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public Element Z0(String str) {
        org.jsoup.helper.d.j(str);
        Set setQ0 = q0();
        if (setQ0.contains(str)) {
            setQ0.remove(str);
        } else {
            setQ0.add(str);
        }
        r0(setQ0);
        return this;
    }

    public String a1() {
        return U0().equals("textarea") ? W0() : f(AppMeasurementSdk.ConditionalUserProperty.VALUE);
    }

    public Element b1(String str) {
        if (U0().equals("textarea")) {
            X0(str);
        } else {
            j0(AppMeasurementSdk.ConditionalUserProperty.VALUE, str);
        }
        return this;
    }

    public Element c1(String str) {
        return (Element) super.Z(str);
    }

    public Element d0(String str) {
        org.jsoup.helper.d.j(str);
        Set setQ0 = q0();
        setQ0.add(str);
        r0(setQ0);
        return this;
    }

    public Element e0(String str) {
        return (Element) super.e(str);
    }

    public Element f0(String str) {
        org.jsoup.helper.d.j(str);
        List listD = org.jsoup.parser.e.d(str, this, j());
        c((j[]) listD.toArray(new j[listD.size()]));
        return this;
    }

    public Element g0(j jVar) {
        org.jsoup.helper.d.j(jVar);
        O(jVar);
        t();
        this.f71740e.add(jVar);
        jVar.U(this.f71740e.size() - 1);
        return this;
    }

    @Override // org.jsoup.nodes.j
    public b i() {
        if (!x()) {
            this.f71741f = new b();
        }
        return this.f71741f;
    }

    @Override // org.jsoup.nodes.j
    public String j() {
        return this.f71742g;
    }

    public Element j0(String str, String str2) {
        super.g(str, str2);
        return this;
    }

    public Element k0(String str) {
        return (Element) super.k(str);
    }

    public Element l0(j jVar) {
        return (Element) super.l(jVar);
    }

    public Element m0(int i11) {
        return (Element) n0().get(i11);
    }

    @Override // org.jsoup.nodes.j
    public int n() {
        return this.f71740e.size();
    }

    public Elements o0() {
        return new Elements((List<Element>) n0());
    }

    public String p0() {
        return f("class").trim();
    }

    public Set q0() {
        LinkedHashSet linkedHashSet = new LinkedHashSet(Arrays.asList(f71737i.split(p0())));
        linkedHashSet.remove("");
        return linkedHashSet;
    }

    public Element r0(Set set) {
        org.jsoup.helper.d.j(set);
        if (set.isEmpty()) {
            i().A("class");
        } else {
            i().w("class", org.jsoup.helper.c.i(set, " "));
        }
        return this;
    }

    @Override // org.jsoup.nodes.j
    protected void s(String str) {
        this.f71742g = str;
    }

    @Override // org.jsoup.nodes.j
    public Element s0() {
        return (Element) super.s0();
    }

    @Override // org.jsoup.nodes.j
    protected List t() {
        if (this.f71740e == f71736h) {
            this.f71740e = new NodeList(this, 4);
        }
        return this.f71740e;
    }

    public String t0() {
        StringBuilder sb2 = new StringBuilder();
        for (j jVar : this.f71740e) {
            if (jVar instanceof f) {
                sb2.append(((f) jVar).c0());
            } else if (jVar instanceof e) {
                sb2.append(((e) jVar).c0());
            } else if (jVar instanceof Element) {
                sb2.append(((Element) jVar).t0());
            } else if (jVar instanceof d) {
                sb2.append(((d) jVar).c0());
            }
        }
        return sb2.toString();
    }

    @Override // org.jsoup.nodes.j
    public String toString() {
        return D();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.jsoup.nodes.j
    /* JADX INFO: renamed from: u0, reason: merged with bridge method [inline-methods] */
    public Element r(j jVar) {
        Element element = (Element) super.r(jVar);
        b bVar = this.f71741f;
        element.f71741f = bVar != null ? bVar.clone() : null;
        element.f71742g = this.f71742g;
        NodeList nodeList = new NodeList(element, this.f71740e.size());
        element.f71740e = nodeList;
        nodeList.addAll(this.f71740e);
        return element;
    }

    public int v0() {
        if (I() == null) {
            return 0;
        }
        return F0(this, I().n0());
    }

    public Element w0() {
        this.f71740e.clear();
        return this;
    }

    @Override // org.jsoup.nodes.j
    protected boolean x() {
        return this.f71741f != null;
    }

    public Elements x0() {
        return org.jsoup.select.a.a(new org.jsoup.select.c.a(), this);
    }

    public Elements y0(String str) {
        org.jsoup.helper.d.h(str);
        return org.jsoup.select.a.a(new org.jsoup.select.c.j0(e10.b.b(str)), this);
    }

    public boolean z0(String str) {
        String strO = i().o("class");
        int length = strO.length();
        int length2 = str.length();
        if (length != 0 && length >= length2) {
            if (length == length2) {
                return str.equalsIgnoreCase(strO);
            }
            boolean z10 = false;
            int i11 = 0;
            for (int i12 = 0; i12 < length; i12++) {
                if (Character.isWhitespace(strO.charAt(i12))) {
                    if (!z10) {
                        continue;
                    } else {
                        if (i12 - i11 == length2 && strO.regionMatches(true, i11, str, 0, length2)) {
                            return true;
                        }
                        z10 = false;
                    }
                } else if (!z10) {
                    i11 = i12;
                    z10 = true;
                }
            }
            if (z10 && length - i11 == length2) {
                return strO.regionMatches(true, i11, str, 0, length2);
            }
        }
        return false;
    }
}
