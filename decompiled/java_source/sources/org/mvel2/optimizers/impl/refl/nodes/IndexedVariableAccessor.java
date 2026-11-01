package org.mvel2.optimizers.impl.refl.nodes;

import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes7.dex */
public class IndexedVariableAccessor implements AccessorNode {
    private AccessorNode nextNode;
    private int register;

    public IndexedVariableAccessor(int i11) {
        this.register = i11;
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
        AccessorNode accessorNode = this.nextNode;
        return accessorNode != null ? accessorNode.getValue(variableResolverFactory.getIndexedVariableResolver(this.register).getValue(), obj2, variableResolverFactory) : variableResolverFactory.getIndexedVariableResolver(this.register).getValue();
    }

    @Override // org.mvel2.compiler.AccessorNode
    public AccessorNode setNextNode(AccessorNode accessorNode) {
        this.nextNode = accessorNode;
        return accessorNode;
    }

    @Override // org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        AccessorNode accessorNode = this.nextNode;
        if (accessorNode != null) {
            return accessorNode.setValue(variableResolverFactory.getIndexedVariableResolver(this.register).getValue(), obj2, variableResolverFactory, obj3);
        }
        variableResolverFactory.getIndexedVariableResolver(this.register).setValue(obj3);
        return obj3;
    }
}
