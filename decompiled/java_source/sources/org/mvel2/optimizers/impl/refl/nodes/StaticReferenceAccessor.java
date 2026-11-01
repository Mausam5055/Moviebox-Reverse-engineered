package org.mvel2.optimizers.impl.refl.nodes;

import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes7.dex */
public class StaticReferenceAccessor implements AccessorNode {
    Object literal;
    private AccessorNode nextNode;

    public StaticReferenceAccessor() {
    }

    public StaticReferenceAccessor(Object obj) {
        this.literal = obj;
    }

    @Override // org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Class getKnownEgressType() {
        return this.literal.getClass();
    }

    public Object getLiteral() {
        return this.literal;
    }

    @Override // org.mvel2.compiler.AccessorNode
    public AccessorNode getNextNode() {
        return this.nextNode;
    }

    @Override // org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        AccessorNode accessorNode = this.nextNode;
        return accessorNode != null ? accessorNode.getValue(this.literal, obj2, variableResolverFactory) : this.literal;
    }

    public void setLiteral(Object obj) {
        this.literal = obj;
    }

    @Override // org.mvel2.compiler.AccessorNode
    public AccessorNode setNextNode(AccessorNode accessorNode) {
        this.nextNode = accessorNode;
        return accessorNode;
    }

    @Override // org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        return this.nextNode.setValue(this.literal, obj2, variableResolverFactory, obj3);
    }
}
