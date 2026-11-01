package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;

/* JADX INFO: loaded from: classes7.dex */
public class IndexedOperativeAssign extends ASTNode {
    private final int operation;
    private final int register;
    private ExecutableStatement statement;

    public IndexedOperativeAssign(char[] cArr, int i11, int i12, int i13, int i14, int i15, ParserContext parserContext) {
        super(parserContext);
        this.operation = i13;
        this.expr = cArr;
        this.start = i11;
        this.offset = i12;
        this.register = i14;
        if ((i15 & 16) != 0) {
            ExecutableStatement executableStatement = (ExecutableStatement) m.I0(cArr, i11, i12, parserContext);
            this.statement = executableStatement;
            this.egressType = executableStatement.getKnownEgressType();
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        VariableResolver indexedVariableResolver = variableResolverFactory.getIndexedVariableResolver(this.register);
        Object objG = m10.a.g(indexedVariableResolver.getValue(), this.operation, org.mvel2.d.q(this.expr, this.start, this.offset, obj, variableResolverFactory));
        indexedVariableResolver.setValue(objG);
        return objG;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        VariableResolver indexedVariableResolver = variableResolverFactory.getIndexedVariableResolver(this.register);
        Object objG = m10.a.g(indexedVariableResolver.getValue(), this.operation, this.statement.getValue(obj, obj2, variableResolverFactory));
        indexedVariableResolver.setValue(objG);
        return objG;
    }
}
