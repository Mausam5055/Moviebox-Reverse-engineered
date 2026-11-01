package org.mvel2.ast;

import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableLiteral;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;

/* JADX INFO: loaded from: classes7.dex */
public class RegExMatch extends ASTNode {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Pattern f71947p;
    private int patternOffset;
    private int patternStart;
    private ExecutableStatement patternStmt;
    private ExecutableStatement stmt;

    public RegExMatch(char[] cArr, int i11, int i12, int i13, int i14, int i15, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        this.start = i11;
        this.offset = i12;
        this.patternStart = i14;
        this.patternOffset = i15;
        if ((i13 & 16) != 0) {
            this.stmt = (ExecutableStatement) m.I0(cArr, i11, i12, parserContext);
            ExecutableStatement executableStatement = (ExecutableStatement) m.I0(cArr, i14, i15, parserContext);
            this.patternStmt = executableStatement;
            if (executableStatement instanceof ExecutableLiteral) {
                try {
                    this.f71947p = Pattern.compile(String.valueOf(executableStatement.getValue(null, null)));
                } catch (PatternSyntaxException e11) {
                    throw new CompileException("bad regular expression", cArr, i14, e11);
                }
            }
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Class getEgressType() {
        return Boolean.class;
    }

    public Pattern getPattern() {
        return this.f71947p;
    }

    public ExecutableStatement getPatternStatement() {
        return this.patternStmt;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        try {
            return Boolean.valueOf(Pattern.compile(String.valueOf(org.mvel2.d.q(this.expr, this.patternStart, this.patternOffset, obj, variableResolverFactory))).matcher(String.valueOf(org.mvel2.d.q(this.expr, this.start, this.offset, obj, variableResolverFactory))).matches());
        } catch (PatternSyntaxException e11) {
            throw new CompileException("bad regular expression", this.expr, this.patternStart, e11);
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        Pattern pattern = this.f71947p;
        return pattern == null ? Boolean.valueOf(Pattern.compile(String.valueOf(this.patternStmt.getValue(obj, obj2, variableResolverFactory))).matcher(String.valueOf(this.stmt.getValue(obj, obj2, variableResolverFactory))).matches()) : Boolean.valueOf(pattern.matcher(String.valueOf(this.stmt.getValue(obj, obj2, variableResolverFactory))).matches());
    }

    public ExecutableStatement getStatement() {
        return this.stmt;
    }
}
