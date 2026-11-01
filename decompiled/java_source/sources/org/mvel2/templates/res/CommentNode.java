package org.mvel2.templates.res;

import org.mvel2.integration.VariableResolverFactory;
import r10.d;
import s10.c;

/* JADX INFO: loaded from: classes7.dex */
public class CommentNode extends Node {
    public CommentNode() {
    }

    public CommentNode(int i11, String str, char[] cArr, int i12, int i13) {
        this.name = str;
        this.cEnd = i13;
        this.end = i13;
    }

    public CommentNode(int i11, String str, char[] cArr, int i12, int i13, Node node) {
        this.begin = i11;
        this.cEnd = i13;
        this.end = i13;
        this.next = node;
    }

    @Override // org.mvel2.templates.res.Node
    public boolean demarcate(Node node, char[] cArr) {
        return false;
    }

    @Override // org.mvel2.templates.res.Node
    public Object eval(d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        Node node = this.next;
        if (node != null) {
            return node.eval(dVar, cVar, obj, variableResolverFactory);
        }
        return null;
    }
}
