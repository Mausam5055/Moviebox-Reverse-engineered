package org.mvel2.templates.res;

import org.mvel2.integration.VariableResolverFactory;
import r10.d;
import s10.c;

/* JADX INFO: loaded from: classes7.dex */
public class TerminalExpressionNode extends Node {
    public TerminalExpressionNode() {
    }

    public TerminalExpressionNode(Node node) {
        this.begin = node.begin;
        this.name = node.name;
        this.contents = node.contents;
        this.cStart = node.cStart;
        this.cEnd = node.cEnd;
    }

    @Override // org.mvel2.templates.res.Node
    public boolean demarcate(Node node, char[] cArr) {
        return false;
    }

    @Override // org.mvel2.templates.res.Node
    public Object eval(d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        char[] cArr = this.contents;
        int i11 = this.cStart;
        return org.mvel2.d.q(cArr, i11, this.cEnd - i11, obj, variableResolverFactory);
    }
}
