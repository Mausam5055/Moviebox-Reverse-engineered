package org.mvel2.templates.res;

import java.io.Serializable;
import org.mvel2.ParserContext;
import org.mvel2.d;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.templates.CompiledTemplate;
import r10.a;
import s10.c;

/* JADX INFO: loaded from: classes7.dex */
public class CompiledDeclareNode extends Node {

    /* JADX INFO: renamed from: ce, reason: collision with root package name */
    private Serializable f72022ce;
    private Node nestedNode;

    public CompiledDeclareNode(int i11, String str, char[] cArr, int i12, int i13, ParserContext parserContext) {
        this.begin = i11;
        this.name = str;
        this.contents = cArr;
        this.cStart = i12;
        int i14 = i13 - 1;
        this.cEnd = i14;
        this.end = i13;
        this.f72022ce = d.g(cArr, i12, i14 - i12, parserContext);
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
    public Object eval(r10.d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        if (dVar.h() == null) {
            dVar.k(new a());
        }
        dVar.h().b((String) d.u(this.f72022ce, obj, variableResolverFactory, String.class), new CompiledTemplate(dVar.j(), this.nestedNode));
        Node node = this.next;
        if (node != null) {
            return node.eval(dVar, cVar, obj, variableResolverFactory);
        }
        return null;
    }
}
