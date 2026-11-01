package org.mvel2.optimizers.impl.refl.nodes;

import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes7.dex */
public abstract class BaseAccessor implements AccessorNode {
    protected AccessorNode nextNode;

    @Override // org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public abstract /* synthetic */ Class getKnownEgressType();

    @Override // org.mvel2.compiler.AccessorNode
    public AccessorNode getNextNode() {
        return this.nextNode;
    }

    @Override // org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public abstract /* synthetic */ Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory);

    @Override // org.mvel2.compiler.AccessorNode
    public AccessorNode setNextNode(AccessorNode accessorNode) {
        this.nextNode = accessorNode;
        return accessorNode;
    }

    @Override // org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public abstract /* synthetic */ Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3);
}
