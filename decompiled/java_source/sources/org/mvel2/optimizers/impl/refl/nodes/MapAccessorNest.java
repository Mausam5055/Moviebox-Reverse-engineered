package org.mvel2.optimizers.impl.refl.nodes;

import java.util.Map;
import org.mvel2.b;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;

/* JADX INFO: loaded from: classes7.dex */
public class MapAccessorNest implements AccessorNode {
    private Class conversionType;
    private AccessorNode nextNode;
    private ExecutableStatement property;

    public MapAccessorNest() {
    }

    public MapAccessorNest(String str, Class cls) {
        this.property = (ExecutableStatement) m.H0(str.toCharArray());
        this.conversionType = cls;
    }

    public MapAccessorNest(ExecutableStatement executableStatement, Class cls) {
        this.property = executableStatement;
        this.conversionType = cls;
    }

    @Override // org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Class getKnownEgressType() {
        return Object.class;
    }

    @Override // org.mvel2.compiler.AccessorNode
    public AccessorNode getNextNode() {
        return this.nextNode;
    }

    public ExecutableStatement getProperty() {
        return this.property;
    }

    @Override // org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        AccessorNode accessorNode = this.nextNode;
        return accessorNode != null ? accessorNode.getValue(((Map) obj).get(this.property.getValue(obj2, obj2, variableResolverFactory)), obj2, variableResolverFactory) : ((Map) obj).get(this.property.getValue(obj2, obj2, variableResolverFactory));
    }

    @Override // org.mvel2.compiler.AccessorNode
    public AccessorNode setNextNode(AccessorNode accessorNode) {
        this.nextNode = accessorNode;
        return accessorNode;
    }

    public void setProperty(ExecutableStatement executableStatement) {
        this.property = executableStatement;
    }

    @Override // org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        AccessorNode accessorNode = this.nextNode;
        if (accessorNode != null) {
            return accessorNode.setValue(((Map) obj).get(this.property.getValue(obj, obj2, variableResolverFactory)), obj2, variableResolverFactory, obj3);
        }
        if (this.conversionType == null) {
            ((Map) obj).put(this.property.getValue(obj, obj2, variableResolverFactory), obj3);
            return obj3;
        }
        Map map = (Map) obj;
        Object value = this.property.getValue(obj, obj2, variableResolverFactory);
        Object objB = b.b(obj3, this.conversionType);
        map.put(value, objB);
        return objB;
    }

    public String toString() {
        return "Map Accessor -> [" + this.property + "]";
    }
}
