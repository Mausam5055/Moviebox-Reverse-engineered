package org.mvel2.templates.res;

import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.templates.CompiledTemplate;
import r10.a;
import r10.d;
import s10.c;

/* JADX INFO: loaded from: classes7.dex */
public class DeclareNode extends Node {
    private Node nestedNode;

    public DeclareNode(int i11, String str, char[] cArr, int i12, int i13) {
        this.begin = i11;
        this.name = str;
        this.contents = cArr;
        this.cStart = i12;
        this.cEnd = i13 - 1;
        this.end = i13;
    }

    @Override // org.mvel2.templates.res.Node
    public boolean demarcate(Node node, char[] cArr) {
        Node node2 = this.next;
        this.nestedNode = node2;
        while (node2.getNext() != null) {
            node2 = node2.next;
        }
        node2.next = new EndNode();
        this.next = this.terminus;
        return false;
    }

    @Override // org.mvel2.templates.res.Node
    public Object eval(d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        if (dVar.h() == null) {
            dVar.k(new a());
        }
        r10.c cVarH = dVar.h();
        char[] cArr = this.contents;
        int i11 = this.cStart;
        cVarH.b((String) org.mvel2.d.r(cArr, i11, this.cEnd - i11, obj, variableResolverFactory, String.class), new CompiledTemplate(dVar.j(), this.nestedNode));
        Node node = this.next;
        if (node != null) {
            return node.eval(dVar, cVar, obj, variableResolverFactory);
        }
        return null;
    }
}
