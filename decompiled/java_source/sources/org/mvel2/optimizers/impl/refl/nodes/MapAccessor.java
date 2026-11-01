package org.mvel2.optimizers.impl.refl.nodes;

import java.util.Map;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes7.dex */
public class MapAccessor implements AccessorNode {
    private AccessorNode nextNode;
    private Object property;

    public MapAccessor() {
    }

    public MapAccessor(Object obj) {
        this.property = obj;
    }

    @Override // org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Class getKnownEgressType() {
        return Object.class;
    }

    @Override // org.mvel2.compiler.AccessorNode
    public AccessorNode getNextNode() {
        return this.nextNode;
    }

    public Object getProperty() {
        return this.property;
    }

    @Override // org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        AccessorNode accessorNode = this.nextNode;
        return accessorNode != null ? accessorNode.getValue(((Map) obj).get(this.property), obj2, variableResolverFactory) : ((Map) obj).get(this.property);
    }

    @Override // org.mvel2.compiler.AccessorNode
    public AccessorNode setNextNode(AccessorNode accessorNode) {
        this.nextNode = accessorNode;
        return accessorNode;
    }

    public void setProperty(Object obj) {
        this.property = obj;
    }

    @Override // org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        AccessorNode accessorNode = this.nextNode;
        if (accessorNode != null) {
            return accessorNode.setValue(((Map) obj).get(this.property), obj2, variableResolverFactory, obj3);
        }
        ((Map) obj).put(this.property, obj3);
        return obj3;
    }

    public String toString() {
        return "Map Accessor -> [" + this.property + "]";
    }
}
