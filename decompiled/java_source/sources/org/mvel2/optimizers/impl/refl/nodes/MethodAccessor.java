package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Method;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;

/* JADX INFO: loaded from: classes7.dex */
public class MethodAccessor extends InvokableAccessor {
    private Method method;

    public MethodAccessor() {
    }

    public MethodAccessor(Method method, ExecutableStatement[] executableStatementArr) {
        setMethod(method);
        this.parms = executableStatementArr;
    }

    private Object[] executeAll(Object obj, VariableResolverFactory variableResolverFactory, Method method) {
        Object obj2;
        int i11 = this.length;
        if (i11 == 0) {
            return GetterAccessor.EMPTY;
        }
        Object[] objArr = new Object[i11];
        for (int i12 = 0; i12 < this.length - (method.isVarArgs() ? 1 : 0); i12++) {
            objArr[i12] = this.parms[i12].getValue(obj, variableResolverFactory);
        }
        if (method.isVarArgs()) {
            ExecutableStatement[] executableStatementArr = this.parms;
            if (executableStatementArr == null) {
                objArr[this.length - 1] = new Object[0];
            } else {
                int length = executableStatementArr.length;
                int i13 = this.length;
                if (length == i13) {
                    Object value = executableStatementArr[i13 - 1].getValue(obj, variableResolverFactory);
                    int i14 = this.length - 1;
                    if (value != null && !value.getClass().isArray()) {
                        obj2 = value;
                        obj2 = value;
                        obj2 = new Object[]{value};
                    }
                    obj2 = value;
                    obj2 = value;
                    obj2 = value;
                    objArr[i14] = obj2;
                } else {
                    int length2 = (executableStatementArr.length - i13) + 1;
                    Object[] objArr2 = new Object[length2];
                    for (int i15 = 0; i15 < length2; i15++) {
                        objArr2[i15] = this.parms[(this.length - 1) + i15].getValue(obj, variableResolverFactory);
                    }
                    objArr[this.length - 1] = objArr2;
                }
            }
        }
        return objArr;
    }

    private Object executeOverrideTarget(Method method, Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        boolean z10 = this.coercionNeeded;
        try {
            if (!z10) {
                try {
                    AccessorNode accessorNode = this.nextNode;
                    return accessorNode != null ? accessorNode.getValue(method.invoke(obj, executeAll(obj2, variableResolverFactory, method)), obj2, variableResolverFactory) : method.invoke(obj, executeAll(obj2, variableResolverFactory, method));
                } catch (IllegalArgumentException e11) {
                    if (z10) {
                        throw e11;
                    }
                    this.coercionNeeded = true;
                    return executeOverrideTarget(method, obj, obj2, variableResolverFactory);
                }
            }
            try {
                AccessorNode accessorNode2 = this.nextNode;
                return accessorNode2 != null ? accessorNode2.getValue(method.invoke(obj, executeAndCoerce(method.getParameterTypes(), obj2, variableResolverFactory, method.isVarArgs())), obj2, variableResolverFactory) : method.invoke(obj, executeAndCoerce(method.getParameterTypes(), obj2, variableResolverFactory, method.isVarArgs()));
            } catch (IllegalAccessException unused) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("unable to invoke method (expected target: ");
                sb2.append(this.method.getDeclaringClass().getName());
                sb2.append("::");
                sb2.append(this.method.getName());
                sb2.append("; ");
                sb2.append("actual target: ");
                sb2.append(obj.getClass().getName());
                sb2.append("::");
                sb2.append(this.method.getName());
                sb2.append("; coercionNeeded=");
                sb2.append(this.coercionNeeded ? "yes" : "no");
                sb2.append(")");
                throw new RuntimeException(sb2.toString());
            } catch (Exception unused2) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("unable to invoke method (expected target: ");
                sb3.append(this.method.getDeclaringClass().getName());
                sb3.append("::");
                sb3.append(this.method.getName());
                sb3.append("; ");
                sb3.append("actual target: ");
                sb3.append(obj.getClass().getName());
                sb3.append("::");
                sb3.append(this.method.getName());
                sb3.append("; coercionNeeded=");
                sb3.append(this.coercionNeeded ? "yes" : "no");
                sb3.append(")");
                throw new RuntimeException(sb3.toString());
            }
        } catch (Exception e12) {
            throw new RuntimeException("unable to invoke method", e12);
        }
    }

    @Override // org.mvel2.optimizers.impl.refl.nodes.InvokableAccessor, org.mvel2.optimizers.impl.refl.nodes.BaseAccessor, org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Class getKnownEgressType() {
        return this.method.getReturnType();
    }

    public Method getMethod() {
        return this.method;
    }

    public ExecutableStatement[] getParms() {
        return this.parms;
    }

    @Override // org.mvel2.optimizers.impl.refl.nodes.InvokableAccessor, org.mvel2.optimizers.impl.refl.nodes.BaseAccessor, org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        Method methodJ;
        if (this.coercionNeeded) {
            try {
                AccessorNode accessorNode = this.nextNode;
                if (accessorNode != null) {
                    Method method = this.method;
                    return accessorNode.getValue(method.invoke(obj, executeAndCoerce(this.parameterTypes, obj2, variableResolverFactory, method.isVarArgs())), obj2, variableResolverFactory);
                }
                Method method2 = this.method;
                return method2.invoke(obj, executeAndCoerce(this.parameterTypes, obj2, variableResolverFactory, method2.isVarArgs()));
            } catch (IllegalArgumentException e11) {
                Method methodV = m.V(m.L(executeAndCoerce(this.parameterTypes, obj2, variableResolverFactory, false), this.method.getName(), obj.getClass(), obj.getClass().getMethods(), false));
                if (methodV != null) {
                    return executeOverrideTarget(methodV, obj, obj2, variableResolverFactory);
                }
                throw e11;
            } catch (Exception e12) {
                throw new RuntimeException("cannot invoke method: " + this.method.getName(), e12);
            }
        }
        try {
            AccessorNode accessorNode2 = this.nextNode;
            if (accessorNode2 != null) {
                Method method3 = this.method;
                return accessorNode2.getValue(method3.invoke(obj, executeAll(obj2, variableResolverFactory, method3)), obj2, variableResolverFactory);
            }
            Method method4 = this.method;
            return method4.invoke(obj, executeAll(obj2, variableResolverFactory, method4));
        } catch (IllegalArgumentException unused) {
            if (obj != null && this.method.getDeclaringClass() != obj.getClass() && (methodJ = m.J(this.parameterTypes, this.method.getName(), obj.getClass(), obj.getClass().getMethods(), true)) != null) {
                return executeOverrideTarget(m.V(methodJ), obj, obj2, variableResolverFactory);
            }
            this.coercionNeeded = true;
            return getValue(obj, obj2, variableResolverFactory);
        } catch (Exception e13) {
            throw new RuntimeException("cannot invoke method: " + this.method.getName(), e13);
        }
    }

    public void setMethod(Method method) {
        this.method = method;
        Class<?>[] parameterTypes = method.getParameterTypes();
        this.parameterTypes = parameterTypes;
        this.length = parameterTypes.length;
    }

    public void setParms(ExecutableStatement[] executableStatementArr) {
        this.parms = executableStatementArr;
    }

    @Override // org.mvel2.optimizers.impl.refl.nodes.InvokableAccessor, org.mvel2.optimizers.impl.refl.nodes.BaseAccessor, org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        Method methodJ;
        try {
            AccessorNode accessorNode = this.nextNode;
            Method method = this.method;
            return accessorNode.setValue(method.invoke(obj, executeAll(obj2, variableResolverFactory, method)), obj2, variableResolverFactory, obj3);
        } catch (IllegalArgumentException unused) {
            if (obj != null && this.method.getDeclaringClass() != obj.getClass() && (methodJ = m.J(this.parameterTypes, this.method.getName(), obj.getClass(), obj.getClass().getMethods(), true)) != null) {
                return this.nextNode.setValue(executeOverrideTarget(methodJ, obj, obj2, variableResolverFactory), obj2, variableResolverFactory, obj3);
            }
            this.coercionNeeded = true;
            return setValue(obj, obj2, variableResolverFactory, obj3);
        } catch (Exception e11) {
            throw new RuntimeException("cannot invoke method", e11);
        }
    }
}
