package org.mvel2.ast;

import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.compiler.CompiledAccExpression;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;

/* JADX INFO: loaded from: classes7.dex */
public class IndexedAssignmentNode extends ASTNode implements a {
    private transient CompiledAccExpression accExpr;
    private String assignmentVar;
    private boolean col;
    private char[] index;
    private char[] indexTarget;
    private String name;
    private int register;
    private ExecutableStatement statement;
    private char[] stmt;

    public IndexedAssignmentNode(char[] cArr, int i11, int i12, int i13, int i14, String str, int i15, ParserContext parserContext) {
        super(parserContext);
        this.col = false;
        this.expr = cArr;
        this.start = i11;
        this.offset = i12;
        this.register = i15;
        if (i14 != -1) {
            this.name = str;
            m.k(str);
            char[] cArrW = m.w(str, cArr, i11, i12, i14);
            this.stmt = cArrW;
            ExecutableStatement executableStatement = (ExecutableStatement) m.J0(cArrW, parserContext);
            this.statement = executableStatement;
            this.egressType = executableStatement.getKnownEgressType();
        } else {
            int iB = m.B(cArr, i11, i12, '=');
            if (iB != -1) {
                this.name = m.x(cArr, i11, iB - i11);
                this.assignmentVar = str;
                int i16 = iB + 1;
                int iE0 = m.E0(cArr, i16);
                this.start = iE0;
                if (iE0 >= i11 + i12) {
                    throw new CompileException("unexpected end of statement", cArr, i16);
                }
                int i17 = i12 - (iE0 - i11);
                this.offset = i17;
                this.stmt = m.K0(cArr, iE0, i17);
                ExecutableStatement executableStatement2 = (ExecutableStatement) m.I0(cArr, this.start, this.offset, parserContext);
                this.statement = executableStatement2;
                this.egressType = executableStatement2.getKnownEgressType();
                int length = this.name.length();
                char[] charArray = this.name.toCharArray();
                this.indexTarget = charArray;
                short sA = (short) org.mvel2.util.b.a('[', 0, length, charArray);
                this.endOfName = sA;
                boolean z10 = sA > 0;
                this.col = z10;
                if (z10) {
                    int i18 = this.fields | 256;
                    this.fields = i18;
                    if ((i18 & 16) != 0) {
                        this.accExpr = (CompiledAccExpression) org.mvel2.d.m(this.indexTarget, parserContext);
                    }
                    this.name = this.name.substring(0, this.endOfName);
                    char[] cArr2 = this.indexTarget;
                    int i19 = this.endOfName;
                    this.index = m.K0(cArr2, i19, cArr2.length - i19);
                }
                m.k(this.name);
            } else {
                String str2 = new String(cArr);
                this.name = str2;
                m.k(str2);
                this.assignmentVar = str;
            }
        }
        if ((i13 & 16) != 0) {
            parserContext.addVariable(str, this.egressType);
        }
    }

    public IndexedAssignmentNode(char[] cArr, int i11, int i12, int i13, int i14, ParserContext parserContext) {
        this(cArr, i11, i12, i13, -1, null, i14, parserContext);
    }

    @Override // org.mvel2.ast.ASTNode
    public String getAbsoluteName() {
        return this.name;
    }

    @Override // org.mvel2.ast.a
    public String getAssignmentVar() {
        return this.assignmentVar;
    }

    public char[] getExpression() {
        return this.stmt;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        m.k(this.name);
        if (this.col) {
            Object value = variableResolverFactory.getIndexedVariableResolver(this.register).getValue();
            String str = new String(this.index);
            Object objS = org.mvel2.d.s(this.stmt, obj, variableResolverFactory);
            org.mvel2.d.B(value, str, objS);
            return objS;
        }
        int i11 = this.register;
        String str2 = this.name;
        Object objS2 = org.mvel2.d.s(this.stmt, obj, variableResolverFactory);
        variableResolverFactory.createIndexedVariable(i11, str2, objS2);
        return objS2;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        char[] cArr;
        if (this.accExpr == null && (cArr = this.indexTarget) != null) {
            this.accExpr = (CompiledAccExpression) org.mvel2.d.j(cArr);
        }
        if (this.col) {
            CompiledAccExpression compiledAccExpression = this.accExpr;
            Object value = this.statement.getValue(obj, obj2, variableResolverFactory);
            compiledAccExpression.setValue(obj, obj2, variableResolverFactory, value);
            return value;
        }
        if (this.statement == null) {
            if (variableResolverFactory.isIndexedFactory()) {
                variableResolverFactory.createIndexedVariable(this.register, this.name, null);
                return Void.class;
            }
            variableResolverFactory.createVariable(this.name, this.statement.getValue(obj, obj2, variableResolverFactory));
            return Void.class;
        }
        if (!variableResolverFactory.isIndexedFactory()) {
            String str = this.name;
            Object value2 = this.statement.getValue(obj, obj2, variableResolverFactory);
            variableResolverFactory.createVariable(str, value2);
            return value2;
        }
        int i11 = this.register;
        String str2 = this.name;
        Object value3 = this.statement.getValue(obj, obj2, variableResolverFactory);
        variableResolverFactory.createIndexedVariable(i11, str2, value3);
        return value3;
    }

    public int getRegister() {
        return this.register;
    }

    public String getVarName() {
        return this.name;
    }

    @Override // org.mvel2.ast.ASTNode
    public boolean isAssignment() {
        return true;
    }

    @Override // org.mvel2.ast.a
    public boolean isNewDeclaration() {
        return false;
    }

    public void setRegister(int i11) {
        this.register = i11;
    }

    @Override // org.mvel2.ast.a
    public void setValueStatement(ExecutableStatement executableStatement) {
        this.statement = executableStatement;
    }
}
