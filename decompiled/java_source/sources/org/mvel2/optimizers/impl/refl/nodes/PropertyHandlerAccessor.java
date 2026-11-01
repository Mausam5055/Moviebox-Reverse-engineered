package org.mvel2.optimizers.impl.refl.nodes;

import k10.c;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.d;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes7.dex */
public class PropertyHandlerAccessor extends BaseAccessor {
    private Class conversionType;
    private c propertyHandler;
    private String propertyName;

    public PropertyHandlerAccessor(String str, Class cls, c cVar) {
        this.propertyName = str;
        this.conversionType = cls;
    }

    @Override // org.mvel2.optimizers.impl.refl.nodes.BaseAccessor, org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Class getKnownEgressType() {
        return Object.class;
    }

    @Override // org.mvel2.optimizers.impl.refl.nodes.BaseAccessor, org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (!this.conversionType.isAssignableFrom(obj.getClass())) {
            AccessorNode accessorNode = this.nextNode;
            return accessorNode != null ? accessorNode.getValue(d.y(this.propertyName, obj), obj2, variableResolverFactory) : d.y(this.propertyName, obj);
        }
        try {
            if (this.nextNode != null) {
                throw null;
            }
            throw null;
        } catch (Exception e11) {
            throw new RuntimeException("unable to access field", e11);
        }
    }

    @Override // org.mvel2.optimizers.impl.refl.nodes.BaseAccessor, org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        this.nextNode.getClass();
        throw null;
    }
}
