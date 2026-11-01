package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;

/* JADX INFO: loaded from: classes7.dex */
public class TypedVarNode extends ASTNode implements a {
    private String name;
    private ExecutableStatement statement;

    public TypedVarNode(char[] cArr, int i11, int i12, int i13, Class cls, ParserContext parserContext) {
        super(parserContext);
        this.egressType = cls;
        this.fields = i13;
        this.start = i11;
        this.offset = i12;
        this.expr = cArr;
        int iB = m.B(cArr, i11, i12, '=');
        if (iB != -1) {
            int i14 = iB - i11;
            String strX = m.x(cArr, i11, i14);
            this.name = strX;
            m.k(strX);
            int i15 = this.offset - i14;
            this.offset = i15;
            int i16 = iB + 1;
            this.start = i16;
            i13 |= 128;
            if ((i13 & 16) != 0) {
                this.statement = (ExecutableStatement) m.I0(cArr, i16, i15, parserContext);
            }
        } else {
            String str = new String(cArr, i11, i12);
            this.name = str;
            m.k(str);
        }
        if ((i13 & 16) != 0) {
            Class varOrInputType = parserContext.getVarOrInputType(this.name);
            if (varOrInputType == null || varOrInputType == Object.class || varOrInputType.isAssignableFrom(this.egressType)) {
                parserContext.addVariable(this.name, this.egressType, false);
                return;
            }
            throw new RuntimeException("statically-typed variable already defined in scope: " + this.name);
        }
    }

    @Override // org.mvel2.ast.a
    public String getAssignmentVar() {
        return this.name;
    }

    public char[] getExpression() {
        return this.expr;
    }

    @Override // org.mvel2.ast.ASTNode
    public String getName() {
        return this.name;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        String str = this.name;
        Object objQ = org.mvel2.d.q(this.expr, this.start, this.offset, obj2, variableResolverFactory);
        variableResolverFactory.createVariable(str, objQ, this.egressType);
        return objQ;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (this.statement == null) {
            this.statement = (ExecutableStatement) m.I0(this.expr, this.start, this.offset, this.pCtx);
        }
        String str = this.name;
        Object value = this.statement.getValue(obj, obj2, variableResolverFactory);
        variableResolverFactory.createVariable(str, value, this.egressType);
        return value;
    }

    @Override // org.mvel2.ast.a
    public boolean isNewDeclaration() {
        return true;
    }

    @Override // org.mvel2.ast.a
    public void setValueStatement(ExecutableStatement executableStatement) {
        this.statement = executableStatement;
    }
}
