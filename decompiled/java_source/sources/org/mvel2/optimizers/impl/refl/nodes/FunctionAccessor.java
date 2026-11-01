package org.mvel2.optimizers.impl.refl.nodes;

import org.mvel2.ast.b;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes7.dex */
public class FunctionAccessor extends BaseAccessor {
    private b function;
    private org.mvel2.compiler.a[] parameters;

    public FunctionAccessor(b bVar, org.mvel2.compiler.a[] aVarArr) {
        this.function = bVar;
        this.parameters = aVarArr;
    }

    @Override // org.mvel2.optimizers.impl.refl.nodes.BaseAccessor, org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Class getKnownEgressType() {
        return Object.class;
    }

    @Override // org.mvel2.optimizers.impl.refl.nodes.BaseAccessor, org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        Object[] objArr;
        org.mvel2.compiler.a[] aVarArr = this.parameters;
        if (aVarArr == null || aVarArr.length == 0) {
            objArr = null;
        } else {
            int length = aVarArr.length;
            objArr = new Object[length];
            for (int i11 = 0; i11 < length; i11++) {
                objArr[i11] = this.parameters[i11].getValue(obj, obj2, variableResolverFactory);
            }
        }
        AccessorNode accessorNode = this.nextNode;
        return accessorNode != null ? accessorNode.getValue(this.function.a(obj, obj2, variableResolverFactory, objArr), obj2, variableResolverFactory) : this.function.a(obj, obj2, variableResolverFactory, objArr);
    }

    @Override // org.mvel2.optimizers.impl.refl.nodes.BaseAccessor, org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        throw new RuntimeException("can't write to function");
    }
}
