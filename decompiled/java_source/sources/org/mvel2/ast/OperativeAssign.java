package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;

/* JADX INFO: loaded from: classes7.dex */
public class OperativeAssign extends ASTNode {
    private int knownInType;
    private final int operation;
    private ExecutableStatement statement;
    private String varName;

    public OperativeAssign(String str, char[] cArr, int i11, int i12, int i13, int i14, ParserContext parserContext) {
        super(parserContext);
        this.knownInType = -1;
        this.varName = str;
        this.operation = i13;
        this.expr = cArr;
        this.start = i11;
        this.offset = i12;
        if ((i14 & 16) != 0) {
            ExecutableStatement executableStatement = (ExecutableStatement) m.I0(cArr, i11, i12, parserContext);
            this.statement = executableStatement;
            this.egressType = executableStatement.getKnownEgressType();
            if (parserContext.isStrongTyping()) {
                this.knownInType = m.a(this.egressType);
            }
            if (parserContext.hasVarOrInput(this.varName)) {
                return;
            }
            parserContext.addInput(this.varName, this.egressType);
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        VariableResolver variableResolver = variableResolverFactory.getVariableResolver(this.varName);
        Object objG = m10.a.g(variableResolver.getValue(), this.operation, org.mvel2.d.q(this.expr, this.start, this.offset, obj, variableResolverFactory));
        variableResolver.setValue(objG);
        return objG;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        VariableResolver variableResolver = variableResolverFactory.getVariableResolver(this.varName);
        Object objF = m10.a.f(variableResolver.getValue(), this.operation, this.knownInType, this.statement.getValue(obj, obj2, variableResolverFactory));
        variableResolver.setValue(objF);
        return objF;
    }
}
