package org.jsoup.select;

import java.util.Iterator;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.j;

/* JADX INFO: loaded from: classes7.dex */
public abstract class d {
    public static NodeFilter.FilterResult a(NodeFilter nodeFilter, j jVar) {
        j jVarM = jVar;
        int i11 = 0;
        while (jVarM != null) {
            NodeFilter.FilterResult filterResultB = nodeFilter.b(jVarM, i11);
            if (filterResultB == NodeFilter.FilterResult.STOP) {
                return filterResultB;
            }
            if (filterResultB != NodeFilter.FilterResult.CONTINUE || jVarM.n() <= 0) {
                while (jVarM.A() == null && i11 > 0) {
                    NodeFilter.FilterResult filterResult = NodeFilter.FilterResult.CONTINUE;
                    if ((filterResultB == filterResult || filterResultB == NodeFilter.FilterResult.SKIP_CHILDREN) && (filterResultB = nodeFilter.a(jVarM, i11)) == NodeFilter.FilterResult.STOP) {
                        return filterResultB;
                    }
                    j jVarJ = jVarM.J();
                    i11--;
                    if (filterResultB == NodeFilter.FilterResult.REMOVE) {
                        jVarM.L();
                    }
                    filterResultB = filterResult;
                    jVarM = jVarJ;
                }
                if ((filterResultB == NodeFilter.FilterResult.CONTINUE || filterResultB == NodeFilter.FilterResult.SKIP_CHILDREN) && (filterResultB = nodeFilter.a(jVarM, i11)) == NodeFilter.FilterResult.STOP) {
                    return filterResultB;
                }
                if (jVarM == jVar) {
                    return filterResultB;
                }
                j jVarA = jVarM.A();
                if (filterResultB == NodeFilter.FilterResult.REMOVE) {
                    jVarM.L();
                }
                jVarM = jVarA;
            } else {
                jVarM = jVarM.m(0);
                i11++;
            }
        }
        return NodeFilter.FilterResult.CONTINUE;
    }

    public static void b(NodeFilter nodeFilter, Elements elements) {
        org.jsoup.helper.d.j(nodeFilter);
        org.jsoup.helper.d.j(elements);
        Iterator<Element> it = elements.iterator();
        while (it.hasNext() && a(nodeFilter, it.next()) != NodeFilter.FilterResult.STOP) {
        }
    }

    public static void c(f10.a aVar, j jVar) {
        j jVarM = jVar;
        int i11 = 0;
        while (jVarM != null) {
            aVar.b(jVarM, i11);
            if (jVarM.n() > 0) {
                jVarM = jVarM.m(0);
                i11++;
            } else {
                while (jVarM.A() == null && i11 > 0) {
                    aVar.a(jVarM, i11);
                    jVarM = jVarM.J();
                    i11--;
                }
                aVar.a(jVarM, i11);
                if (jVarM == jVar) {
                    return;
                } else {
                    jVarM = jVarM.A();
                }
            }
        }
    }

    public static void d(f10.a aVar, Elements elements) {
        org.jsoup.helper.d.j(aVar);
        org.jsoup.helper.d.j(elements);
        Iterator<Element> it = elements.iterator();
        while (it.hasNext()) {
            c(aVar, it.next());
        }
    }
}
