package org.mvel2.ast;

import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;

/* JADX INFO: loaded from: classes7.dex */
public class Negation extends ASTNode {
    private ExecutableStatement stmt;

    public Negation(char[] cArr, int i11, int i12, int i13, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        this.start = i11;
        this.offset = i12;
        if ((i13 & 16) != 0) {
            ExecutableStatement executableStatement = (ExecutableStatement) m.I0(cArr, i11, i12, parserContext);
            this.stmt = executableStatement;
            if (executableStatement.getKnownEgressType() != null && !m.f(this.stmt.getKnownEgressType()).isAssignableFrom(Boolean.class)) {
                throw new CompileException("negation operator cannot be applied to non-boolean type", cArr, i11);
            }
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Class getEgressType() {
        return Boolean.class;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        try {
            return Boolean.valueOf(!((Boolean) org.mvel2.d.q(this.expr, this.start, this.offset, obj, variableResolverFactory)).booleanValue());
        } catch (ClassCastException e11) {
            throw new CompileException("negation operator applied to non-boolean expression", this.expr, this.start, e11);
        } catch (NullPointerException e12) {
            throw new CompileException("negation operator applied to a null value", this.expr, this.start, e12);
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return Boolean.valueOf(!((Boolean) this.stmt.getValue(obj, obj2, variableResolverFactory)).booleanValue());
    }

    public ExecutableStatement getStatement() {
        return this.stmt;
    }
}
