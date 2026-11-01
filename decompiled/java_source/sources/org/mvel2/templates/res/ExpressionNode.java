package org.mvel2.templates.res;

import org.mvel2.integration.VariableResolverFactory;
import r10.d;
import s10.c;

/* JADX INFO: loaded from: classes7.dex */
public class ExpressionNode extends Node {
    public ExpressionNode() {
    }

    public ExpressionNode(int i11, String str, char[] cArr, int i12, int i13) {
        this.begin = i11;
        this.name = str;
        this.contents = cArr;
        this.cStart = i12;
        this.cEnd = i13 - 1;
        this.end = i13;
    }

    public ExpressionNode(int i11, String str, char[] cArr, int i12, int i13, Node node) {
        this.name = str;
        this.begin = i11;
        this.contents = cArr;
        this.cStart = i12;
        this.cEnd = i13 - 1;
        this.end = i13;
        this.next = node;
    }

    @Override // org.mvel2.templates.res.Node
    public boolean demarcate(Node node, char[] cArr) {
        return false;
    }

    @Override // org.mvel2.templates.res.Node
    public Object eval(d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        char[] cArr = this.contents;
        int i11 = this.cStart;
        cVar.append(String.valueOf(org.mvel2.d.q(cArr, i11, this.cEnd - i11, obj, variableResolverFactory)));
        Node node = this.next;
        if (node != null) {
            return node.eval(dVar, cVar, obj, variableResolverFactory);
        }
        return null;
    }

    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ExpressionNode:");
        sb2.append(this.name);
        sb2.append("{");
        char[] cArr = this.contents;
        if (cArr == null) {
            str = "";
        } else {
            int i11 = this.cStart;
            str = new String(cArr, i11, this.cEnd - i11);
        }
        sb2.append(str);
        sb2.append("} (start=");
        sb2.append(this.begin);
        sb2.append(";end=");
        sb2.append(this.end);
        sb2.append(")");
        return sb2.toString();
    }
}
