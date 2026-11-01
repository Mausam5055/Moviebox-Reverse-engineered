package org.mvel2.compiler;

import java.io.Serializable;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes7.dex */
public interface ExecutableStatement extends a, Serializable, Cloneable {
    void computeTypeConversionRule();

    @Override // org.mvel2.compiler.a
    Class getKnownEgressType();

    Class getKnownIngressType();

    @Override // org.mvel2.compiler.a
    /* synthetic */ Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory);

    Object getValue(Object obj, VariableResolverFactory variableResolverFactory);

    boolean intOptimized();

    boolean isConvertableIngressEgress();

    boolean isEmptyStatement();

    boolean isExplicitCast();

    boolean isLiteralOnly();

    void setKnownEgressType(Class cls);

    void setKnownIngressType(Class cls);

    @Override // org.mvel2.compiler.a
    /* synthetic */ Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3);
}
