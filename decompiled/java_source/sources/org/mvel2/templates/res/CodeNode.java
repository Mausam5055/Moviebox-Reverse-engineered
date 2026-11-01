package org.mvel2.templates.res;

import org.mvel2.integration.VariableResolverFactory;
import r10.d;
import s10.c;

/* JADX INFO: loaded from: classes7.dex */
public class CodeNode extends Node {
    private int offset;
    private int start;

    public CodeNode() {
    }

    public CodeNode(int i11, String str, char[] cArr, int i12, int i13) {
        this.begin = i11;
        this.name = str;
        this.contents = cArr;
        this.start = i12;
        this.offset = (i13 - i12) - 1;
    }

    public CodeNode(int i11, String str, char[] cArr, int i12, int i13, Node node) {
        this.name = str;
        this.begin = i11;
        this.next = node;
        this.start = i12;
        this.offset = (i13 - i12) - 1;
    }

    @Override // org.mvel2.templates.res.Node
    public boolean demarcate(Node node, char[] cArr) {
        return false;
    }

    @Override // org.mvel2.templates.res.Node
    public Object eval(d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        org.mvel2.d.q(this.contents, this.start, this.offset, obj, variableResolverFactory);
        Node node = this.next;
        if (node != null) {
            return node.eval(dVar, cVar, obj, variableResolverFactory);
        }
        return null;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("CodeNode:");
        sb2.append(this.name);
        sb2.append("{");
        char[] cArr = this.contents;
        sb2.append(cArr == null ? "" : new String(cArr));
        sb2.append("} (start=");
        sb2.append(this.begin);
        sb2.append(";end=");
        sb2.append(this.end);
        sb2.append(")");
        return sb2.toString();
    }
}
