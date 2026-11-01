package org.mvel2.templates.res;

import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;
import r10.d;
import s10.c;

/* JADX INFO: loaded from: classes7.dex */
public class IfNode extends Node {
    protected Node elseNode;
    protected Node trueNode;

    public IfNode(int i11, String str, char[] cArr, int i12, int i13) {
        super(i11, str, cArr, i12, i13);
        while (true) {
            int i14 = this.cEnd;
            if (i14 <= this.cStart || !m.q0(cArr[i14])) {
                return;
            } else {
                this.cEnd--;
            }
        }
    }

    @Override // org.mvel2.templates.res.Node
    public boolean demarcate(Node node, char[] cArr) {
        this.trueNode = this.next;
        this.next = this.terminus;
        return true;
    }

    @Override // org.mvel2.templates.res.Node
    public Object eval(d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        int i11 = this.cEnd;
        int i12 = this.cStart;
        if (i11 == i12 || ((Boolean) org.mvel2.d.r(this.contents, i12, i11 - i12, obj, variableResolverFactory, Boolean.class)).booleanValue()) {
            return this.trueNode.eval(dVar, cVar, obj, variableResolverFactory);
        }
        Node node = this.next;
        if (node != null) {
            return node.eval(dVar, cVar, obj, variableResolverFactory);
        }
        return null;
    }

    public Node getElseNode() {
        return this.elseNode;
    }

    public Node getTrueNode() {
        return this.trueNode;
    }

    public void setElseNode(ExpressionNode expressionNode) {
        this.elseNode = expressionNode;
    }

    public void setTrueNode(ExpressionNode expressionNode) {
        this.trueNode = expressionNode;
    }
}
