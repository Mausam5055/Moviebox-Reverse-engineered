package org.mvel2.ast;

import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.e;
import org.mvel2.util.m;

/* JADX INFO: loaded from: classes7.dex */
public class Invert extends ASTNode {
    private ExecutableStatement stmt;

    public Invert(char[] cArr, int i11, int i12, int i13, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        this.start = i11;
        this.offset = i12;
        if ((i13 & 16) != 0) {
            ExecutableStatement executableStatement = (ExecutableStatement) m.I0(cArr, i11, i12, parserContext);
            this.stmt = executableStatement;
            e.c(parserContext, executableStatement, Integer.class, true);
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        Object objQ = org.mvel2.d.q(this.expr, this.start, this.offset, obj, variableResolverFactory);
        if (objQ instanceof Integer) {
            return Integer.valueOf(~((Integer) objQ).intValue());
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("was expecting type: Integer; but found type: ");
        sb2.append(objQ == null ? "null" : objQ.getClass().getName());
        throw new CompileException(sb2.toString(), this.expr, this.start);
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return Integer.valueOf(~((Integer) this.stmt.getValue(obj, obj2, variableResolverFactory)).intValue());
    }
}
