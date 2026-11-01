package org.mvel2.templates.res;

import java.io.Serializable;
import org.mvel2.ParserContext;
import org.mvel2.d;
import org.mvel2.integration.VariableResolverFactory;
import s10.c;

/* JADX INFO: loaded from: classes7.dex */
public class CompiledCodeNode extends Node {

    /* JADX INFO: renamed from: ce, reason: collision with root package name */
    private Serializable f72021ce;

    public CompiledCodeNode() {
    }

    public CompiledCodeNode(int i11, String str, char[] cArr, int i12, int i13, ParserContext parserContext) {
        this.begin = i11;
        this.name = str;
        this.contents = cArr;
        this.cStart = i12;
        int i14 = i13 - 1;
        this.cEnd = i14;
        this.end = i13;
        this.f72021ce = d.g(cArr, i12, i14 - i12, parserContext);
    }

    @Override // org.mvel2.templates.res.Node
    public boolean demarcate(Node node, char[] cArr) {
        return false;
    }

    @Override // org.mvel2.templates.res.Node
    public Object eval(r10.d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        d.t(this.f72021ce, obj, variableResolverFactory);
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
