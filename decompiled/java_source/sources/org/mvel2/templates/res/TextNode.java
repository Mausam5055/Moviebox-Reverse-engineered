package org.mvel2.templates.res;

import org.mvel2.integration.VariableResolverFactory;
import r10.d;
import s10.c;

/* JADX INFO: loaded from: classes7.dex */
public class TextNode extends Node {
    public TextNode(int i11, int i12) {
        this.begin = i11;
        this.end = i12;
    }

    public TextNode(int i11, int i12, ExpressionNode expressionNode) {
        this.begin = i11;
        this.end = i12;
        this.next = expressionNode;
    }

    @Override // org.mvel2.templates.res.Node
    public void calculateContents(char[] cArr) {
    }

    @Override // org.mvel2.templates.res.Node
    public boolean demarcate(Node node, char[] cArr) {
        return false;
    }

    @Override // org.mvel2.templates.res.Node
    public Object eval(d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        int i11 = this.end - this.begin;
        if (i11 != 0) {
            cVar.append(new String(dVar.j(), this.begin, i11));
        }
        Node node = this.next;
        if (node != null) {
            return node.eval(dVar, cVar, obj, variableResolverFactory);
        }
        return null;
    }

    public String toString() {
        return "TextNode(" + this.begin + "," + this.end + ")";
    }
}
