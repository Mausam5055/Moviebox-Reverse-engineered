package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Array;
import org.mvel2.b;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;

/* JADX INFO: loaded from: classes7.dex */
public class ArrayAccessorNest implements AccessorNode {
    private Class baseComponentType;
    private ExecutableStatement index;
    private AccessorNode nextNode;
    private boolean requireConversion;

    public ArrayAccessorNest() {
    }

    public ArrayAccessorNest(String str) {
        this.index = (ExecutableStatement) m.H0(str.toCharArray());
    }

    public ArrayAccessorNest(ExecutableStatement executableStatement) {
        this.index = executableStatement;
    }

    public ExecutableStatement getIndex() {
        return this.index;
    }

    @Override // org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Class getKnownEgressType() {
        return this.baseComponentType;
    }

    @Override // org.mvel2.compiler.AccessorNode
    public AccessorNode getNextNode() {
        return this.nextNode;
    }

    @Override // org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        AccessorNode accessorNode = this.nextNode;
        return accessorNode != null ? accessorNode.getValue(((Object[]) obj)[((Integer) this.index.getValue(obj, obj2, variableResolverFactory)).intValue()], obj2, variableResolverFactory) : ((Object[]) obj)[((Integer) this.index.getValue(obj, obj2, variableResolverFactory)).intValue()];
    }

    public void setIndex(ExecutableStatement executableStatement) {
        this.index = executableStatement;
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
            return accessorNode.setValue(((Object[]) obj)[((Integer) this.index.getValue(obj, obj2, variableResolverFactory)).intValue()], obj2, variableResolverFactory, obj3);
        }
        if (this.baseComponentType == null) {
            Class<?> clsI = m.I(obj.getClass());
            this.baseComponentType = clsI;
            this.requireConversion = (clsI == obj3.getClass() || this.baseComponentType.isAssignableFrom(obj3.getClass())) ? false : true;
        }
        if (!this.requireConversion) {
            Array.set(obj, ((Integer) this.index.getValue(obj, obj2, variableResolverFactory)).intValue(), obj3);
            return obj3;
        }
        Object objB = b.b(obj3, this.baseComponentType);
        Array.set(obj, ((Integer) this.index.getValue(obj, obj2, variableResolverFactory)).intValue(), objB);
        return objB;
    }

    public String toString() {
        return "Array Accessor -> [" + this.index + "]";
    }
}
