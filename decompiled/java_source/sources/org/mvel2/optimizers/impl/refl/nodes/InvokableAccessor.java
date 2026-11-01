package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Array;
import org.mvel2.b;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes7.dex */
public abstract class InvokableAccessor extends BaseAccessor {
    protected boolean coercionNeeded = false;
    protected int length;
    protected Class[] parameterTypes;
    protected ExecutableStatement[] parms;

    protected Object[] executeAndCoerce(Class[] clsArr, Object obj, VariableResolverFactory variableResolverFactory, boolean z10) {
        int i11;
        Object objNewInstance;
        Object[] objArr = new Object[this.length];
        int i12 = 0;
        while (true) {
            i11 = this.length;
            if (i12 >= i11 || (z10 && i12 >= i11 - 1)) {
                break;
            }
            objArr[i12] = b.b(this.parms[i12].getValue(obj, variableResolverFactory), clsArr[i12]);
            i12++;
        }
        if (z10) {
            Class<?> componentType = clsArr[i11 - 1].getComponentType();
            ExecutableStatement[] executableStatementArr = this.parms;
            if (executableStatementArr == null) {
                objNewInstance = Array.newInstance(componentType, 0);
            } else {
                Object objNewInstance2 = Array.newInstance(componentType, (executableStatementArr.length - this.length) + 1);
                int i13 = this.length - 1;
                while (true) {
                    ExecutableStatement[] executableStatementArr2 = this.parms;
                    if (i13 >= executableStatementArr2.length) {
                        break;
                    }
                    Array.set(objNewInstance2, (i13 - this.length) + 1, b.b(executableStatementArr2[i13].getValue(obj, variableResolverFactory), componentType));
                    i13++;
                }
                objNewInstance = objNewInstance2;
            }
            objArr[this.length - 1] = objNewInstance;
        }
        return objArr;
    }

    @Override // org.mvel2.optimizers.impl.refl.nodes.BaseAccessor, org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public abstract /* synthetic */ Class getKnownEgressType();

    public Class[] getParameterTypes() {
        return this.parameterTypes;
    }

    @Override // org.mvel2.optimizers.impl.refl.nodes.BaseAccessor, org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public abstract /* synthetic */ Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory);

    @Override // org.mvel2.optimizers.impl.refl.nodes.BaseAccessor, org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public abstract /* synthetic */ Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3);
}
