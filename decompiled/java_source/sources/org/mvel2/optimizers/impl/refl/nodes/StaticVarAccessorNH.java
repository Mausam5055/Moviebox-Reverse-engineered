package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Field;
import k10.c;
import org.mvel2.OptimizationFailure;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes7.dex */
public class StaticVarAccessorNH implements AccessorNode {
    Field field;
    private AccessorNode nextNode;
    private c nullHandler;

    public StaticVarAccessorNH(Field field, c cVar) {
        this.field = field;
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
            Object obj3 = this.field.get(obj);
            if (obj3 != null) {
                AccessorNode accessorNode = this.nextNode;
                return accessorNode != null ? accessorNode.getValue(obj3, obj2, variableResolverFactory) : obj3;
            }
            this.field.getName();
            throw null;
        } catch (Exception e11) {
            throw new OptimizationFailure("unable to access static field", e11);
        }
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
                return accessorNode.setValue(this.field.get(null), obj2, variableResolverFactory, obj3);
            }
            this.field.set(null, obj3);
            return obj3;
        } catch (Exception e11) {
            throw new RuntimeException("error accessing static variable", e11);
        }
    }
}
