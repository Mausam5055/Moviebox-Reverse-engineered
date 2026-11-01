package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes7.dex */
public class IndexedDeclTypedVarNode extends ASTNode implements a {
    private int register;

    public IndexedDeclTypedVarNode(int i11, int i12, int i13, Class cls, ParserContext parserContext) {
        super(parserContext);
        this.egressType = cls;
        this.start = i12;
        this.offset = i13;
        this.register = i11;
    }

    @Override // org.mvel2.ast.a
    public String getAssignmentVar() {
        return null;
    }

    public char[] getExpression() {
        return new char[0];
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        variableResolverFactory.createIndexedVariable(this.register, null, this.egressType);
        return null;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        variableResolverFactory.createIndexedVariable(this.register, null, this.egressType);
        return obj;
    }

    @Override // org.mvel2.ast.ASTNode
    public boolean isAssignment() {
        return true;
    }

    @Override // org.mvel2.ast.a
    public boolean isNewDeclaration() {
        return true;
    }

    @Override // org.mvel2.ast.a
    public void setValueStatement(ExecutableStatement executableStatement) {
        throw new RuntimeException("illegal operation");
    }
}
