package org.mvel2.templates.res;

import java.io.Serializable;
import org.mvel2.ParserContext;
import org.mvel2.d;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;
import s10.c;

/* JADX INFO: loaded from: classes7.dex */
public class CompiledIfNode extends IfNode {

    /* JADX INFO: renamed from: ce, reason: collision with root package name */
    private Serializable f72026ce;

    public CompiledIfNode(int i11, String str, char[] cArr, int i12, int i13, ParserContext parserContext) {
        super(i11, str, cArr, i12, i13);
        while (true) {
            int i14 = this.cEnd;
            if (i14 <= this.cStart || !m.q0(cArr[i14])) {
                break;
            } else {
                this.cEnd--;
            }
        }
        int i15 = this.cStart;
        int i16 = this.cEnd;
        if (i15 != i16) {
            this.f72026ce = d.g(cArr, i15, i16 - i12, parserContext);
        }
    }

    @Override // org.mvel2.templates.res.IfNode, org.mvel2.templates.res.Node
    public Object eval(r10.d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        Serializable serializable = this.f72026ce;
        if (serializable == null || ((Boolean) d.u(serializable, obj, variableResolverFactory, Boolean.class)).booleanValue()) {
            return this.trueNode.eval(dVar, cVar, obj, variableResolverFactory);
        }
        Node node = this.next;
        if (node != null) {
            return node.eval(dVar, cVar, obj, variableResolverFactory);
        }
        return null;
    }
}
