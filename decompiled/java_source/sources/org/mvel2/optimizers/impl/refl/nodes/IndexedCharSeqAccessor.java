package org.mvel2.optimizers.impl.refl.nodes;

import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes7.dex */
public class IndexedCharSeqAccessor implements AccessorNode {
    private int index;
    private AccessorNode nextNode;

    public IndexedCharSeqAccessor() {
    }

    public IndexedCharSeqAccessor(int i11) {
        this.index = i11;
    }

    public int getIndex() {
        return this.index;
    }

    @Override // org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Class getKnownEgressType() {
        return Character.class;
    }

    @Override // org.mvel2.compiler.AccessorNode
    public AccessorNode getNextNode() {
        return this.nextNode;
    }

    @Override // org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        AccessorNode accessorNode = this.nextNode;
        return accessorNode != null ? accessorNode.getValue(Character.valueOf(((String) obj).charAt(this.index)), obj2, variableResolverFactory) : Character.valueOf(((String) obj).charAt(this.index));
    }

    public void setIndex(int i11) {
        this.index = i11;
    }

    @Override // org.mvel2.compiler.AccessorNode
    public AccessorNode setNextNode(AccessorNode accessorNode) {
        this.nextNode = accessorNode;
        return accessorNode;
    }

    @Override // org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        return this.nextNode.setValue(Character.valueOf(((String) obj).charAt(this.index)), obj2, variableResolverFactory, obj3);
    }

    public String toString() {
        return "Array Accessor -> [" + this.index + "]";
    }
}
