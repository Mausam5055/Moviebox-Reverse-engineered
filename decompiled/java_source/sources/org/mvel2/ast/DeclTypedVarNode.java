package org.mvel2.ast;

import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;

/* JADX INFO: loaded from: classes7.dex */
public class DeclTypedVarNode extends ASTNode implements a {
    private String name;

    public DeclTypedVarNode(String str, char[] cArr, int i11, int i12, Class cls, int i13, ParserContext parserContext) {
        super(parserContext);
        this.egressType = cls;
        this.name = str;
        m.k(str);
        this.expr = cArr;
        this.start = i11;
        this.offset = i12;
        if ((i13 & 16) != 0) {
            parserContext.addVariable(str, this.egressType, true);
        }
    }

    @Override // org.mvel2.ast.a
    public String getAssignmentVar() {
        return this.name;
    }

    public char[] getExpression() {
        return new char[0];
    }

    @Override // org.mvel2.ast.ASTNode
    public String getName() {
        return this.name;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (!variableResolverFactory.isResolveable(this.name)) {
            variableResolverFactory.createVariable(this.name, null, this.egressType);
            return null;
        }
        throw new CompileException("variable defined within scope: " + this.name, this.expr, this.start);
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (!variableResolverFactory.isResolveable(this.name)) {
            variableResolverFactory.createVariable(this.name, null, this.egressType);
            return null;
        }
        throw new CompileException("variable defined within scope: " + this.name, this.expr, this.start);
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

    @Override // org.mvel2.ast.ASTNode
    public String toString() {
        return "var:" + this.name;
    }
}
