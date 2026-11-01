package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Field;
import org.mvel2.b;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.n;

/* JADX INFO: loaded from: classes7.dex */
public class FieldAccessor implements AccessorNode {
    private boolean coercionRequired = false;
    private Field field;
    private AccessorNode nextNode;
    private boolean primitive;

    public FieldAccessor() {
    }

    public FieldAccessor(Field field) {
        this.field = field;
        this.primitive = field.getType().isPrimitive();
    }

    public Field getField() {
        return this.field;
    }

    @Override // org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Class getKnownEgressType() {
        return this.field.getClass();
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
            throw new RuntimeException("unable to access field: " + this.field.getName(), e11);
        }
    }

    public void setField(Field field) {
        this.field = field;
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
            try {
                Object obj4 = this.field.get(obj);
                if (obj3 == null && this.primitive) {
                    obj3 = n.g(this.field.getType());
                }
                return accessorNode.setValue(obj4, obj2, variableResolverFactory, obj3);
            } catch (Exception e11) {
                throw new RuntimeException("unable to access field", e11);
            }
        }
        boolean z10 = this.coercionRequired;
        try {
            if (!z10) {
                this.field.set(obj, obj3);
                return obj3;
            }
            Field field = this.field;
            Object objB = b.b(obj, field.getClass());
            field.set(obj, objB);
            return objB;
        } catch (IllegalArgumentException e12) {
            if (z10) {
                throw new RuntimeException("unable to bind property", e12);
            }
            this.coercionRequired = true;
            return setValue(obj, obj2, variableResolverFactory, obj3);
        } catch (Exception e13) {
            throw new RuntimeException("unable to access field", e13);
        }
    }
}
