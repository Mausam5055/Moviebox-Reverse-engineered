package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Field;
import org.mvel2.b;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes7.dex */
public class DynamicFieldAccessor implements AccessorNode {
    private Field field;
    private AccessorNode nextNode;
    private Class targetType;

    public DynamicFieldAccessor() {
    }

    public DynamicFieldAccessor(Field field) {
        setField(field);
    }

    public Field getField() {
        return this.field;
    }

    @Override // org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Class getKnownEgressType() {
        return this.targetType;
    }

    @Override // org.mvel2.compiler.AccessorNode
    public AccessorNode getNextNode() {
        return this.nextNode;
    }

    @Override // org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        try {
            AccessorNode accessorNode = this.nextNode;
            return accessorNode != null ? accessorNode.getValue(this.field.get(obj), obj2, variableResolverFactory) : this.field.get(obj);
        } catch (Exception e11) {
            throw new RuntimeException("unable to access field", e11);
        }
    }

    public void setField(Field field) {
        this.field = field;
        this.targetType = field.getType();
    }

    @Override // org.mvel2.compiler.AccessorNode
    public AccessorNode setNextNode(AccessorNode accessorNode) {
        this.nextNode = accessorNode;
        return accessorNode;
    }

    @Override // org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        try {
            AccessorNode accessorNode = this.nextNode;
            if (accessorNode != null) {
                return accessorNode.setValue(this.field.get(obj), obj2, variableResolverFactory, obj3);
            }
            this.field.set(obj, b.b(obj3, this.targetType));
            return obj3;
        } catch (Exception e11) {
            throw new RuntimeException("unable to access field", e11);
        }
    }
}
