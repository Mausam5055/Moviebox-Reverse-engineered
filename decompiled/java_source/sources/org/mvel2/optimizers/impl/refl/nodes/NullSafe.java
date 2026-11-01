package org.mvel2.optimizers.impl.refl.nodes;

import org.mvel2.ParserContext;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.optimizers.b;

/* JADX INFO: loaded from: classes7.dex */
public class NullSafe implements AccessorNode {
    private char[] expr;
    private AccessorNode nextNode;
    private int offset;
    private ParserContext pCtx;
    private int start;

    public NullSafe(char[] cArr, int i11, int i12, ParserContext parserContext) {
        this.expr = cArr;
        this.start = i11;
        this.offset = i12;
        this.pCtx = parserContext;
    }

    @Override // org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Class getKnownEgressType() {
        return Object.class;
    }

    @Override // org.mvel2.compiler.AccessorNode
    public AccessorNode getNextNode() {
        return this.nextNode;
    }

    @Override // org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (obj == null) {
            return null;
        }
        if (this.nextNode == null) {
            final org.mvel2.compiler.a aVarOptimizeAccessor = b.b(b.f71995b).optimizeAccessor(this.pCtx, this.expr, this.start, this.offset, obj, obj2, variableResolverFactory, true, obj.getClass());
            this.nextNode = new AccessorNode() { // from class: org.mvel2.optimizers.impl.refl.nodes.NullSafe.1
                @Override // org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
                public Class getKnownEgressType() {
                    return aVarOptimizeAccessor.getKnownEgressType();
                }

                @Override // org.mvel2.compiler.AccessorNode
                public AccessorNode getNextNode() {
                    return null;
                }

                @Override // org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
                public Object getValue(Object obj3, Object obj4, VariableResolverFactory variableResolverFactory2) {
                    return aVarOptimizeAccessor.getValue(obj3, obj4, variableResolverFactory2);
                }

                @Override // org.mvel2.compiler.AccessorNode
                public AccessorNode setNextNode(AccessorNode accessorNode) {
                    return null;
                }

                @Override // org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
                public Object setValue(Object obj3, Object obj4, VariableResolverFactory variableResolverFactory2, Object obj5) {
                    return aVarOptimizeAccessor.setValue(obj3, obj4, variableResolverFactory2, obj5);
                }
            };
        }
        return this.nextNode.getValue(obj, obj2, variableResolverFactory);
    }

    @Override // org.mvel2.compiler.AccessorNode
    public AccessorNode setNextNode(AccessorNode accessorNode) {
        this.nextNode = accessorNode;
        return accessorNode;
    }

    @Override // org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        if (obj == null) {
            return null;
        }
        return this.nextNode.setValue(obj, obj2, variableResolverFactory, obj3);
    }
}
