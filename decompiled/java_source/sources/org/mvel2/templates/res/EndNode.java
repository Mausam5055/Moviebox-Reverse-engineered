package org.mvel2.templates.res;

import org.mvel2.integration.VariableResolverFactory;
import r10.d;
import s10.c;

/* JADX INFO: loaded from: classes7.dex */
public class EndNode extends Node {
    @Override // org.mvel2.templates.res.Node
    public boolean demarcate(Node node, char[] cArr) {
        return false;
    }

    @Override // org.mvel2.templates.res.Node
    public Object eval(d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        return cVar.toString();
    }

    public String toString() {
        return "EndNode";
    }
}
