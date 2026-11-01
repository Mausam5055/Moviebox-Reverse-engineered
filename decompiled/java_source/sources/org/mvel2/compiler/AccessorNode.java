package org.mvel2.compiler;

import java.io.Serializable;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes7.dex */
public interface AccessorNode extends a, Serializable {
    @Override // org.mvel2.compiler.a
    /* synthetic */ Class getKnownEgressType();

    AccessorNode getNextNode();

    @Override // org.mvel2.compiler.a
    /* synthetic */ Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory);

    AccessorNode setNextNode(AccessorNode accessorNode);

    @Override // org.mvel2.compiler.a
    /* synthetic */ Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3);
}
