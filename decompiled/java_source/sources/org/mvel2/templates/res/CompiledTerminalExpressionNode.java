package org.mvel2.templates.res;

import java.io.Serializable;
import org.mvel2.ParserContext;
import org.mvel2.d;
import org.mvel2.integration.VariableResolverFactory;
import s10.c;

/* JADX INFO: loaded from: classes7.dex */
public class CompiledTerminalExpressionNode extends TerminalExpressionNode {

    /* JADX INFO: renamed from: ce, reason: collision with root package name */
    private Serializable f72027ce;

    public CompiledTerminalExpressionNode(Node node, ParserContext parserContext) {
        this.begin = node.begin;
        this.name = node.name;
        char[] cArr = node.contents;
        int i11 = node.cStart;
        this.f72027ce = d.g(cArr, i11, node.cEnd - i11, parserContext);
    }

    @Override // org.mvel2.templates.res.TerminalExpressionNode, org.mvel2.templates.res.Node
    public boolean demarcate(Node node, char[] cArr) {
        return false;
    }

    @Override // org.mvel2.templates.res.TerminalExpressionNode, org.mvel2.templates.res.Node
    public Object eval(r10.d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        return d.t(this.f72027ce, obj, variableResolverFactory);
    }
}
