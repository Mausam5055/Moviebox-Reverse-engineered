package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Constructor;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes7.dex */
public class ConstructorAccessor extends InvokableAccessor {
    private Constructor constructor;

    public ConstructorAccessor(Constructor constructor, ExecutableStatement[] executableStatementArr) {
        this.constructor = constructor;
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        this.parameterTypes = parameterTypes;
        this.length = parameterTypes.length;
        this.parms = executableStatementArr;
    }

    private Object[] executeAll(Object obj, VariableResolverFactory variableResolverFactory) {
        int i11 = this.length;
        if (i11 == 0) {
            return GetterAccessor.EMPTY;
        }
        Object[] objArr = new Object[i11];
        for (int i12 = 0; i12 < this.length; i12++) {
            objArr[i12] = this.parms[i12].getValue(obj, variableResolverFactory);
        }
        return objArr;
    }

    public Constructor getConstructor() {
        return this.constructor;
    }

    @Override // org.mvel2.optimizers.impl.refl.nodes.InvokableAccessor, org.mvel2.optimizers.impl.refl.nodes.BaseAccessor, org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Class getKnownEgressType() {
        return this.constructor.getClass();
    }

    public ExecutableStatement[] getParameters() {
        return this.parms;
    }

    @Override // org.mvel2.optimizers.impl.refl.nodes.InvokableAccessor, org.mvel2.optimizers.impl.refl.nodes.BaseAccessor, org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        try {
            if (!this.coercionNeeded) {
                try {
                    AccessorNode accessorNode = this.nextNode;
                    return accessorNode != null ? accessorNode.getValue(this.constructor.newInstance(executeAll(obj2, variableResolverFactory)), obj2, variableResolverFactory) : this.constructor.newInstance(executeAll(obj2, variableResolverFactory));
                } catch (IllegalArgumentException unused) {
                    this.coercionNeeded = true;
                    return getValue(obj, obj2, variableResolverFactory);
                }
            }
            AccessorNode accessorNode2 = this.nextNode;
            if (accessorNode2 != null) {
                Constructor constructor = this.constructor;
                return accessorNode2.getValue(constructor.newInstance(executeAndCoerce(this.parameterTypes, obj2, variableResolverFactory, constructor.isVarArgs())), obj2, variableResolverFactory);
            }
            Constructor constructor2 = this.constructor;
            return constructor2.newInstance(executeAndCoerce(this.parameterTypes, obj2, variableResolverFactory, constructor2.isVarArgs()));
        } catch (Exception e11) {
            throw new RuntimeException("cannot construct object", e11);
        }
    }

    @Override // org.mvel2.optimizers.impl.refl.nodes.InvokableAccessor, org.mvel2.optimizers.impl.refl.nodes.BaseAccessor, org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        return null;
    }
}
