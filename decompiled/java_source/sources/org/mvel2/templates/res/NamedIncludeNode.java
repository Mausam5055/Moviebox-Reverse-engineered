package org.mvel2.templates.res;

import org.mvel2.integration.VariableResolverFactory;
import s10.c;
import s10.d;

/* JADX INFO: loaded from: classes7.dex */
public class NamedIncludeNode extends Node {
    int includeOffset;
    int includeStart;
    int preOffset;
    int preStart;

    public NamedIncludeNode(int i11, String str, char[] cArr, int i12, int i13) {
        this.begin = i11;
        this.name = str;
        this.contents = cArr;
        this.cStart = i12;
        this.cEnd = i13 - 1;
        this.end = i13;
        int iA = d.a(cArr, 0);
        int i14 = this.cStart;
        this.includeStart = i14;
        this.includeOffset = iA - i14;
        int i15 = iA + 1;
        this.preStart = i15;
        this.preOffset = this.cEnd - i15;
    }

    @Override // org.mvel2.templates.res.Node
    public boolean demarcate(Node node, char[] cArr) {
        return false;
    }

    @Override // org.mvel2.templates.res.Node
    public Object eval(r10.d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        int i11 = this.preOffset;
        if (i11 != 0) {
            org.mvel2.d.q(this.contents, this.preStart, i11, obj, variableResolverFactory);
        }
        Node node = this.next;
        return node != null ? node.eval(dVar, cVar.append(String.valueOf(r10.d.d(dVar.h().a((String) org.mvel2.d.r(this.contents, this.includeStart, this.includeOffset, obj, variableResolverFactory, String.class)), obj, variableResolverFactory))), obj, variableResolverFactory) : cVar.append(String.valueOf(r10.d.d(dVar.h().a((String) org.mvel2.d.r(this.contents, this.includeStart, this.includeOffset, obj, variableResolverFactory, String.class)), obj, variableResolverFactory)));
    }
}
