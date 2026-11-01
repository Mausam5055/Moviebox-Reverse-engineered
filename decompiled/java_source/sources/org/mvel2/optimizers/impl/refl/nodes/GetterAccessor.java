package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Method;
import org.mvel2.CompileException;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.d;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;
import org.mvel2.util.p;

/* JADX INFO: loaded from: classes7.dex */
public class GetterAccessor implements AccessorNode {
    public static final Object[] EMPTY = new Object[0];
    private final Method method;
    private AccessorNode nextNode;

    public GetterAccessor(Method method) {
        this.method = method;
    }

    private Object executeOverrideTarget(Method method, Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        try {
            AccessorNode accessorNode = this.nextNode;
            return accessorNode != null ? accessorNode.getValue(method.invoke(obj, EMPTY), obj2, variableResolverFactory) : method.invoke(obj, EMPTY);
        } catch (Exception e11) {
            throw new RuntimeException("unable to invoke method", e11);
        }
    }

    @Override // org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Class getKnownEgressType() {
        return this.method.getReturnType();
    }

    public Method getMethod() {
        return this.method;
    }

    @Override // org.mvel2.compiler.AccessorNode
    public AccessorNode getNextNode() {
        return this.nextNode;
    }

    @Override // org.mvel2.compiler.AccessorNode, org.mvel2.compiler.a
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        Method methodL;
        try {
            AccessorNode accessorNode = this.nextNode;
            return accessorNode != null ? accessorNode.getValue(this.method.invoke(obj, EMPTY), obj2, variableResolverFactory) : this.method.invoke(obj, EMPTY);
        } catch (IllegalArgumentException unused) {
            if (obj != null && this.method.getDeclaringClass() != obj.getClass() && (methodL = m.L(EMPTY, this.method.getName(), obj.getClass(), obj.getClass().getMethods(), true)) != null) {
                return executeOverrideTarget(methodL, obj, obj2, variableResolverFactory);
            }
            AccessorNode accessorNode2 = this.nextNode;
            return accessorNode2 != null ? accessorNode2.getValue(d.y(p.d(this.method.getName()), obj), obj2, variableResolverFactory) : d.y(p.d(this.method.getName()), obj);
        } catch (NullPointerException e11) {
            if (obj != null) {
                throw new RuntimeException("cannot invoke getter: " + this.method.getName() + " (see trace)", e11);
            }
            throw new RuntimeException("unable to invoke method: " + this.method.getDeclaringClass().getName() + "." + this.method.getName() + ": target of method is null", e11);
        } catch (Exception e12) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("cannot invoke getter: ");
            sb2.append(this.method.getName());
            sb2.append(" [declr.class: ");
            sb2.append(this.method.getDeclaringClass().getName());
            sb2.append("; act.class: ");
            sb2.append(obj != null ? obj.getClass().getName() : "null");
            sb2.append("] (see trace)");
            throw new RuntimeException(sb2.toString(), e12);
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
                return accessorNode.setValue(this.method.invoke(obj, EMPTY), obj2, variableResolverFactory, obj3);
            }
            throw new RuntimeException("bad payload");
        } catch (IllegalArgumentException unused) {
            AccessorNode accessorNode2 = this.nextNode;
            return accessorNode2 != null ? accessorNode2.setValue(d.y(p.d(this.method.getName()), obj), obj2, variableResolverFactory, obj3) : d.y(p.d(this.method.getName()), obj);
        } catch (CompileException e11) {
            throw e11;
        } catch (Exception e12) {
            throw new RuntimeException("error " + this.method.getName() + ": " + e12.getClass().getName() + ":" + e12.getMessage(), e12);
        }
    }

    public String toString() {
        return this.method.getDeclaringClass().getName() + "." + this.method.getName();
    }
}
