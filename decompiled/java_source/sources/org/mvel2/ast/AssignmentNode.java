package org.mvel2.ast;

import org.mvel2.CompileException;
import org.mvel2.MVELInterpretedRuntime;
import org.mvel2.ParserContext;
import org.mvel2.compiler.CompiledAccExpression;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.g;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;

/* JADX INFO: loaded from: classes7.dex */
public class AssignmentNode extends ASTNode implements a {
    private transient CompiledAccExpression accExpr;
    private String assignmentVar;
    private boolean col;
    private String index;
    private char[] indexTarget;
    private ExecutableStatement statement;
    private String varName;

    public AssignmentNode(char[] cArr, int i11, int i12, int i13, ParserContext parserContext) {
        super(parserContext);
        this.col = false;
        this.expr = cArr;
        this.start = i11;
        this.offset = i12;
        int iB = m.B(cArr, i11, i12, '=');
        if (iB != -1) {
            String strX = m.x(cArr, i11, iB - i11);
            this.varName = strX;
            this.assignmentVar = strX;
            int i14 = iB + 1;
            int iE0 = m.E0(cArr, i14);
            this.start = iE0;
            if (iE0 >= i11 + i12) {
                throw new CompileException("unexpected end of statement", cArr, i14);
            }
            int i15 = i12 - (iE0 - i11);
            this.offset = i15;
            if ((i13 & 16) != 0) {
                ExecutableStatement executableStatement = (ExecutableStatement) m.I0(cArr, iE0, i15, parserContext);
                this.statement = executableStatement;
                this.egressType = executableStatement.getKnownEgressType();
            }
            int length = this.varName.length();
            char[] charArray = this.varName.toCharArray();
            this.indexTarget = charArray;
            int iA = org.mvel2.util.b.a('[', 0, length, charArray);
            this.endOfName = iA;
            boolean z10 = iA > 0;
            this.col = z10;
            if (z10) {
                int i16 = this.fields | 256;
                this.fields = i16;
                if ((i16 & 16) != 0) {
                    this.accExpr = (CompiledAccExpression) org.mvel2.d.m(this.indexTarget, parserContext);
                }
                this.varName = new String(cArr, i11, this.endOfName);
                char[] cArr2 = this.indexTarget;
                int i17 = this.endOfName;
                this.index = new String(cArr2, i17, cArr2.length - i17);
            }
            try {
                m.k(this.varName);
            } catch (RuntimeException e11) {
                throw new CompileException(e11.getMessage(), cArr, i11);
            }
        } else {
            try {
                String str = new String(cArr, i11, i12);
                this.varName = str;
                m.k(str);
                this.assignmentVar = this.varName;
            } catch (RuntimeException e12) {
                throw new CompileException(e12.getMessage(), cArr, i11);
            }
        }
        if ((i13 & 16) != 0) {
            parserContext.addVariable(this.varName, this.egressType);
        }
    }

    @Override // org.mvel2.ast.a
    public String getAssignmentVar() {
        return this.assignmentVar;
    }

    public char[] getExpression() {
        return m.K0(this.expr, this.start, this.offset);
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        m.k(this.varName);
        MVELInterpretedRuntime mVELInterpretedRuntime = new MVELInterpretedRuntime(this.expr, this.start, this.offset, obj, variableResolverFactory, this.pCtx);
        if (!this.col) {
            return variableResolverFactory.createVariable(this.varName, mVELInterpretedRuntime.parse()).getValue();
        }
        Object value = variableResolverFactory.getVariableResolver(this.varName).getValue();
        String str = this.index;
        Object obj3 = mVELInterpretedRuntime.parse();
        g.A(value, variableResolverFactory, str, obj3, this.pCtx);
        return obj3;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        char[] cArr;
        if (this.accExpr == null && (cArr = this.indexTarget) != null) {
            this.accExpr = (CompiledAccExpression) org.mvel2.d.j(cArr);
        }
        if (this.col) {
            return this.accExpr.setValue(obj, obj2, variableResolverFactory, this.statement.getValue(obj, obj2, variableResolverFactory));
        }
        ExecutableStatement executableStatement = this.statement;
        if (executableStatement != null) {
            if (variableResolverFactory != null) {
                return variableResolverFactory.createVariable(this.varName, executableStatement.getValue(obj, obj2, variableResolverFactory)).getValue();
            }
            throw new CompileException("cannot assign variables; no variable resolver factory available", this.expr, this.start);
        }
        if (variableResolverFactory == null) {
            throw new CompileException("cannot assign variables; no variable resolver factory available", this.expr, this.start);
        }
        variableResolverFactory.createVariable(this.varName, null);
        return null;
    }

    @Override // org.mvel2.ast.a
    public boolean isNewDeclaration() {
        return false;
    }

    @Override // org.mvel2.ast.a
    public void setValueStatement(ExecutableStatement executableStatement) {
        this.statement = executableStatement;
    }

    @Override // org.mvel2.ast.ASTNode
    public String toString() {
        return this.assignmentVar + " = " + new String(this.expr, this.start, this.offset);
    }
}
