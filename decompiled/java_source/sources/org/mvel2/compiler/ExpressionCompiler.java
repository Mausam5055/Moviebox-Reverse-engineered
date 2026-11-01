package org.mvel2.compiler;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.ast.ASTNode;
import org.mvel2.ast.LiteralNode;
import org.mvel2.ast.NewObjectNode;
import org.mvel2.ast.OperatorNode;
import org.mvel2.ast.Substatement;
import org.mvel2.ast.Union;
import org.mvel2.c;
import org.mvel2.d;
import org.mvel2.f;
import org.mvel2.util.ASTLinkedList;
import org.mvel2.util.e;
import org.mvel2.util.g;
import org.mvel2.util.m;
import org.mvel2.util.s;

/* JADX INFO: loaded from: classes7.dex */
public class ExpressionCompiler extends AbstractParser {
    private Class returnType;
    private boolean secondPassOptimization;
    private boolean verifyOnly;
    private boolean verifying;

    public ExpressionCompiler(String str) {
        this.verifyOnly = false;
        this.verifying = true;
        this.secondPassOptimization = false;
        setExpression(str);
    }

    public ExpressionCompiler(String str, int i11, int i12, ParserContext parserContext) {
        this.verifyOnly = false;
        this.verifying = true;
        this.secondPassOptimization = false;
        this.expr = str.toCharArray();
        this.start = i11;
        int i13 = i12 + i11;
        this.end = i13;
        int iTrimLeft = trimLeft(i13);
        this.end = iTrimLeft;
        this.length = iTrimLeft - i11;
        this.pCtx = parserContext;
    }

    public ExpressionCompiler(String str, ParserContext parserContext) {
        this.verifyOnly = false;
        this.verifying = true;
        this.secondPassOptimization = false;
        setExpression(str);
        this.pCtx = parserContext;
    }

    public ExpressionCompiler(String str, boolean z10) {
        this.verifyOnly = false;
        this.verifying = true;
        this.secondPassOptimization = false;
        setExpression(str);
        this.verifying = z10;
    }

    public ExpressionCompiler(char[] cArr) {
        this.verifyOnly = false;
        this.verifying = true;
        this.secondPassOptimization = false;
        setExpression(cArr);
    }

    public ExpressionCompiler(char[] cArr, int i11, int i12) {
        this.verifyOnly = false;
        this.verifying = true;
        this.secondPassOptimization = false;
        this.expr = cArr;
        this.start = i11;
        int i13 = i12 + i11;
        this.end = i13;
        int iTrimLeft = trimLeft(i13);
        this.end = iTrimLeft;
        this.length = iTrimLeft - i11;
    }

    public ExpressionCompiler(char[] cArr, int i11, int i12, ParserContext parserContext) {
        this.verifyOnly = false;
        this.verifying = true;
        this.secondPassOptimization = false;
        this.expr = cArr;
        this.start = i11;
        int i13 = i12 + i11;
        this.end = i13;
        int iTrimLeft = trimLeft(i13);
        this.end = iTrimLeft;
        this.length = iTrimLeft - i11;
        this.pCtx = parserContext;
    }

    public ExpressionCompiler(char[] cArr, ParserContext parserContext) {
        this.verifyOnly = false;
        this.verifying = true;
        this.secondPassOptimization = false;
        setExpression(cArr);
        this.pCtx = parserContext;
    }

    private boolean compileReduce(int i11, ASTLinkedList aSTLinkedList) {
        int iArithmeticFunctionReduction = arithmeticFunctionReduction(i11);
        if (iArithmeticFunctionReduction == -3) {
            ASTNode aSTNode = (ASTNode) this.stk.n();
            Integer num = (Integer) this.stk.n();
            aSTLinkedList.addTokenNode(new LiteralNode(getStackValueResult(), this.pCtx));
            aSTLinkedList.addTokenNode(new OperatorNode(num, this.expr, this.f71960st, this.pCtx), verify(this.pCtx, aSTNode));
            return false;
        }
        if (iArithmeticFunctionReduction != -2) {
            if (iArithmeticFunctionReduction != -1) {
                return true;
            }
            this.stk.w();
            aSTLinkedList.addTokenNode(new LiteralNode(this.stk.n(), this.pCtx));
            aSTLinkedList.addTokenNode((OperatorNode) this.splitAccumulator.n(), verify(this.pCtx, (ASTNode) this.splitAccumulator.n()));
            return false;
        }
        LiteralNode literalNode = new LiteralNode(this.stk.n(), this.pCtx);
        aSTLinkedList.addTokenNode(new LiteralNode(this.stk.n(), this.pCtx), new OperatorNode((Integer) this.stk.n(), this.expr, this.f71960st, this.pCtx));
        aSTLinkedList.addTokenNode(literalNode, (OperatorNode) this.splitAccumulator.n());
        aSTLinkedList.addTokenNode(verify(this.pCtx, (ASTNode) this.splitAccumulator.n()));
        return false;
    }

    private Object getStackValueResult() {
        return (this.fields & 524288) == 0 ? this.stk.n() : e.l(this.stk.n());
    }

    private static boolean isBooleanOperator(int i11) {
        return i11 == 21 || i11 == 22 || i11 == 29 || i11 == 30;
    }

    public CompiledExpression _compile() {
        this.cursor = this.start;
        ASTLinkedList aSTLinkedList = new ASTLinkedList();
        this.stk = new g();
        this.dStack = new g();
        this.compileMode = true;
        try {
            try {
                if (this.verifying) {
                    this.pCtx.initializeTables();
                }
                this.fields |= 16;
                int iIntValue = -1;
                while (true) {
                    ASTNode aSTNodeNextToken = nextToken();
                    if (aSTNodeNextToken == null) {
                        aSTLinkedList.finish();
                        if (this.verifying && !this.verifyOnly) {
                            this.pCtx.processTables();
                        }
                        if (!this.stk.g()) {
                            throw new CompileException("COMPILE ERROR: non-empty stack after compileShared.", this.expr, this.cursor);
                        }
                        if (!this.verifyOnly) {
                            try {
                                return new CompiledExpression(e.d(aSTLinkedList, this.secondPassOptimization, this.pCtx), this.pCtx.getSourceFile(), this.returnType, this.pCtx.getParserConfiguration(), this.literalOnly == 1);
                            } catch (RuntimeException e11) {
                                throw new CompileException(e11.getMessage(), this.expr, this.f71960st, e11);
                            }
                        }
                        try {
                            this.returnType = e.f(aSTLinkedList, this.pCtx.isStrongTyping());
                            return null;
                        } catch (RuntimeException e12) {
                            throw new CompileException(e12.getMessage(), this.expr, this.f71960st, e12);
                        }
                    }
                    if (aSTNodeNextToken.fields == -1) {
                        aSTLinkedList.addTokenNode(aSTNodeNextToken);
                    } else {
                        this.returnType = aSTNodeNextToken.getEgressType();
                        if (aSTNodeNextToken instanceof Substatement) {
                            String str = new String(this.expr, aSTNodeNextToken.getStart(), aSTNodeNextToken.getOffset());
                            Map<String, CompiledExpression> compiledExpressionCache = this.pCtx.getCompiledExpressionCache();
                            Map<String, Class> returnTypeCache = this.pCtx.getReturnTypeCache();
                            CompiledExpression compiledExpression = compiledExpressionCache.get(str);
                            Class cls = returnTypeCache.get(str);
                            if (compiledExpression == null) {
                                ExpressionCompiler expressionCompiler = new ExpressionCompiler(this.expr, aSTNodeNextToken.getStart(), aSTNodeNextToken.getOffset(), this.pCtx);
                                CompiledExpression compiledExpression_compile = expressionCompiler._compile();
                                Class returnType = expressionCompiler.getReturnType();
                                compiledExpressionCache.put(str, compiledExpression_compile);
                                returnTypeCache.put(str, returnType);
                                cls = returnType;
                                compiledExpression = compiledExpression_compile;
                            }
                            aSTNodeNextToken.setAccessor(compiledExpression);
                            this.returnType = cls;
                        }
                        if (this.verifyOnly || !aSTNodeNextToken.isLiteral()) {
                            if (aSTNodeNextToken.isOperator()) {
                                iIntValue = aSTNodeNextToken.getOperator().intValue();
                            } else {
                                this.literalOnly = 0;
                            }
                            aSTLinkedList.addTokenNode(verify(this.pCtx, aSTNodeNextToken));
                        } else {
                            if (this.literalOnly == -1) {
                                this.literalOnly = 1;
                            }
                            ASTNode aSTNodeNextTokenSkipSymbols = nextTokenSkipSymbols();
                            if (aSTNodeNextTokenSkipSymbols == null || !aSTNodeNextTokenSkipSymbols.isOperator() || aSTNodeNextTokenSkipSymbols.isOperator(29) || aSTNodeNextTokenSkipSymbols.isOperator(30)) {
                                if (aSTNodeNextTokenSkipSymbols != null && !aSTNodeNextTokenSkipSymbols.isOperator() && !(aSTNodeNextToken.getLiteralValue() instanceof Class)) {
                                    throw new CompileException("unexpected token: " + aSTNodeNextTokenSkipSymbols.getName(), this.expr, aSTNodeNextTokenSkipSymbols.getStart());
                                }
                                this.literalOnly = 0;
                                aSTLinkedList.addTokenNode(verify(this.pCtx, aSTNodeNextToken));
                                if (aSTNodeNextTokenSkipSymbols != null) {
                                    aSTLinkedList.addTokenNode(verify(this.pCtx, aSTNodeNextTokenSkipSymbols));
                                }
                            } else {
                                ASTNode aSTNodeNextTokenSkipSymbols2 = nextTokenSkipSymbols();
                                if (aSTNodeNextTokenSkipSymbols2 != null && aSTNodeNextTokenSkipSymbols2.isLiteral() && aSTNodeNextTokenSkipSymbols.getOperator().intValue() < 34) {
                                    if (iIntValue != -1) {
                                        int[] iArr = f.f71974a;
                                        if (iIntValue >= iArr.length || iArr[iIntValue] >= iArr[aSTNodeNextTokenSkipSymbols.getOperator().intValue()]) {
                                        }
                                    }
                                    g gVar = this.stk;
                                    Object literalValue = aSTNodeNextToken.getLiteralValue();
                                    Object literalValue2 = aSTNodeNextTokenSkipSymbols2.getLiteralValue();
                                    Integer operator = aSTNodeNextTokenSkipSymbols.getOperator();
                                    int iIntValue2 = operator.intValue();
                                    gVar.s(literalValue, literalValue2, operator);
                                    if (!AbstractParser.isArithmeticOperator(iIntValue2)) {
                                        reduce();
                                    } else if (!compileReduce(iIntValue2, aSTLinkedList)) {
                                    }
                                    boolean z10 = true;
                                    while (true) {
                                        ASTNode aSTNodeNextTokenSkipSymbols3 = nextTokenSkipSymbols();
                                        if (aSTNodeNextTokenSkipSymbols3 != null) {
                                            if (isBooleanOperator(aSTNodeNextTokenSkipSymbols3.getOperator().intValue())) {
                                                aSTLinkedList.addTokenNode(new LiteralNode(this.stk.n(), this.pCtx), verify(this.pCtx, aSTNodeNextTokenSkipSymbols3));
                                            } else {
                                                ASTNode aSTNodeNextTokenSkipSymbols4 = nextTokenSkipSymbols();
                                                if (aSTNodeNextTokenSkipSymbols4 != null) {
                                                    if (aSTNodeNextTokenSkipSymbols4.isLiteral()) {
                                                        g gVar2 = this.stk;
                                                        Object literalValue3 = aSTNodeNextTokenSkipSymbols4.getLiteralValue();
                                                        Integer operator2 = aSTNodeNextTokenSkipSymbols3.getOperator();
                                                        int iIntValue3 = operator2.intValue();
                                                        gVar2.r(literalValue3, operator2);
                                                        if (!AbstractParser.isArithmeticOperator(iIntValue3)) {
                                                            reduce();
                                                        } else if (!compileReduce(iIntValue3, aSTLinkedList)) {
                                                        }
                                                        this.literalOnly = 0;
                                                        z10 = false;
                                                    } else {
                                                        if (!this.stk.g()) {
                                                            aSTLinkedList.addTokenNode(new LiteralNode(getStackValueResult(), this.pCtx));
                                                        }
                                                        aSTLinkedList.addTokenNode(new OperatorNode(aSTNodeNextTokenSkipSymbols3.getOperator(), this.expr, this.f71960st, this.pCtx), verify(this.pCtx, aSTNodeNextTokenSkipSymbols4));
                                                    }
                                                } else if (z10) {
                                                    aSTLinkedList.addTokenNode(new LiteralNode(getStackValueResult(), this.pCtx));
                                                } else {
                                                    aSTLinkedList.addTokenNode(new LiteralNode(getStackValueResult(), this.pCtx), aSTNodeNextTokenSkipSymbols3);
                                                    if (aSTNodeNextTokenSkipSymbols4 != null) {
                                                        aSTLinkedList.addTokenNode(verify(this.pCtx, aSTNodeNextTokenSkipSymbols4));
                                                    }
                                                }
                                            }
                                        }
                                        if (!this.stk.g()) {
                                            aSTLinkedList.addTokenNode(new LiteralNode(getStackValueResult(), this.pCtx));
                                        }
                                    }
                                }
                                aSTLinkedList.addTokenNode(verify(this.pCtx, aSTNodeNextToken), verify(this.pCtx, aSTNodeNextTokenSkipSymbols));
                                if (aSTNodeNextTokenSkipSymbols2 != null) {
                                    aSTLinkedList.addTokenNode(verify(this.pCtx, aSTNodeNextTokenSkipSymbols2));
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th2) {
                if (th2 instanceof RuntimeException) {
                    throw th2;
                }
                throw new CompileException(th2.getMessage(), this.expr, this.f71960st, th2);
            }
        } catch (NullPointerException e13) {
            throw new CompileException("not a statement, or badly formed structure", this.expr, this.f71960st, e13);
        } catch (CompileException e14) {
            throw org.mvel2.util.f.a(e14, this.expr, this.f71960st);
        }
    }

    public CompiledExpression compile() {
        try {
            this.debugSymbols = this.pCtx.isDebugSymbols();
            CompiledExpression compiledExpression_compile = _compile();
            if (!this.pCtx.isFatalError()) {
                return compiledExpression_compile;
            }
            s sVar = new s();
            Iterator<c> it = this.pCtx.getErrorList().iterator();
            while (it.hasNext()) {
                c cVarB = org.mvel2.util.f.b(it.next(), this.expr, this.cursor);
                if (cVarB.d() != this.expr) {
                    it.remove();
                } else {
                    sVar.d("\n - ").d("(").c(Integer.valueOf(cVarB.e())).d(",").c(Integer.valueOf(cVarB.b())).d(")").d(" ").d(cVarB.f());
                }
            }
            throw new CompileException("Failed to compileShared: " + this.pCtx.getErrorList().size() + " compilation error(s): " + sVar.toString(), this.pCtx.getErrorList(), this.expr, this.cursor, this.pCtx);
        } catch (Throwable th2) {
            if (!this.pCtx.isFatalError()) {
                throw th2;
            }
            s sVar2 = new s();
            Iterator<c> it2 = this.pCtx.getErrorList().iterator();
            while (it2.hasNext()) {
                c cVarB2 = org.mvel2.util.f.b(it2.next(), this.expr, this.cursor);
                if (cVarB2.d() != this.expr) {
                    it2.remove();
                } else {
                    sVar2.d("\n - ").d("(").c(Integer.valueOf(cVarB2.e())).d(",").c(Integer.valueOf(cVarB2.b())).d(")").d(" ").d(cVarB2.f());
                }
            }
            throw new CompileException("Failed to compileShared: " + this.pCtx.getErrorList().size() + " compilation error(s): " + sVar2.toString(), this.pCtx.getErrorList(), this.expr, this.cursor, this.pCtx);
        }
    }

    public ParserContext getParserContextState() {
        return this.pCtx;
    }

    public Class getReturnType() {
        return this.returnType;
    }

    public boolean isLiteralOnly() {
        return this.literalOnly == 1;
    }

    public boolean isVerifyOnly() {
        return this.verifyOnly;
    }

    public boolean isVerifying() {
        return this.verifying;
    }

    public void setReturnType(Class cls) {
        this.returnType = cls;
    }

    public void setVerifyOnly(boolean z10) {
        this.verifyOnly = z10;
    }

    public void setVerifying(boolean z10) {
        this.verifying = z10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected ASTNode verify(ParserContext parserContext, ASTNode aSTNode) {
        if (aSTNode.isOperator() && (aSTNode.getOperator().equals(21) || aSTNode.getOperator().equals(22))) {
            this.secondPassOptimization = true;
        }
        if (!aSTNode.isDiscard() && !aSTNode.isOperator()) {
            if (aSTNode.isLiteral()) {
                return ((this.fields & 16) == 0 || aSTNode.getClass() != ASTNode.class) ? aSTNode : new LiteralNode(aSTNode.getLiteralValue(), parserContext);
            }
            if (this.verifying) {
                if (aSTNode.isIdentifier()) {
                    PropertyVerifier propertyVerifier = new PropertyVerifier(this.expr, aSTNode.getStart(), aSTNode.getOffset(), parserContext);
                    if (aSTNode instanceof Union) {
                        propertyVerifier.setCtx(((Union) aSTNode).getLeftEgressType());
                        Class clsAnalyze = propertyVerifier.analyze();
                        this.returnType = clsAnalyze;
                        aSTNode.setEgressType(clsAnalyze);
                    } else {
                        Class clsAnalyze2 = propertyVerifier.analyze();
                        this.returnType = clsAnalyze2;
                        aSTNode.setEgressType(clsAnalyze2);
                        if (propertyVerifier.isFqcn()) {
                            aSTNode.setAsFQCNReference();
                        }
                        if (propertyVerifier.isClassLiteral()) {
                            return new LiteralNode(this.returnType, parserContext);
                        }
                        if (propertyVerifier.isInput()) {
                            parserContext.addInput(aSTNode.getAbsoluteName(), propertyVerifier.isDeepProperty() ? Object.class : this.returnType);
                        }
                        if (!propertyVerifier.isMethodCall() && !this.returnType.isEnum() && !parserContext.isOptimizerNotified() && parserContext.isStrongTyping() && !parserContext.isVariableVisible(aSTNode.getAbsoluteName()) && !aSTNode.isFQCN()) {
                            throw new CompileException("no such identifier: " + aSTNode.getAbsoluteName(), this.expr, aSTNode.getStart());
                        }
                    }
                } else if (aSTNode.isAssignment()) {
                    org.mvel2.ast.a aVar = (org.mvel2.ast.a) aSTNode;
                    if (aVar.getAssignmentVar() != null) {
                        PropertyVerifier propertyVerifier2 = new PropertyVerifier(aVar.getAssignmentVar(), parserContext);
                        Class clsAnalyze3 = propertyVerifier2.analyze();
                        this.returnType = clsAnalyze3;
                        aSTNode.setEgressType(clsAnalyze3);
                        if (!aVar.isNewDeclaration() && propertyVerifier2.isResolvedExternally()) {
                            parserContext.addInput(aSTNode.getAbsoluteName(), this.returnType);
                        }
                        ExecutableStatement executableStatement = (ExecutableStatement) m.I0(this.expr, aSTNode.getStart(), aSTNode.getOffset(), parserContext);
                        if (parserContext.isStrictTypeEnforcement() && !this.returnType.isAssignableFrom(executableStatement.getKnownEgressType()) && executableStatement.isLiteralOnly()) {
                            if (org.mvel2.b.a(executableStatement.getKnownEgressType(), this.returnType)) {
                                try {
                                    aVar.setValueStatement(new ExecutableLiteral(org.mvel2.b.b(executableStatement.getValue(null, null), this.returnType)));
                                    return aSTNode;
                                } catch (Exception unused) {
                                }
                            } else if (this.returnType.isPrimitive() && m.O0(executableStatement.getKnownEgressType()).equals(this.returnType)) {
                                return aSTNode;
                            }
                            throw new CompileException("cannot assign type " + executableStatement.getKnownEgressType().getName() + " to " + this.returnType.getName(), this.expr, this.f71960st);
                        }
                    }
                } else if (aSTNode instanceof NewObjectNode) {
                    List listW0 = m.w0(aSTNode.getNameAsArray());
                    if (listW0 != null) {
                        Iterator it = listW0.iterator();
                        while (it.hasNext()) {
                            d.c((char[]) it.next(), parserContext);
                        }
                    }
                }
                this.returnType = aSTNode.getEgressType();
            }
            if (!aSTNode.isLiteral() && aSTNode.getClass() == ASTNode.class && (aSTNode.getFields() & 67108864) == 0) {
                if (parserContext.isStrongTyping()) {
                    aSTNode.strongTyping();
                }
                aSTNode.storePctx();
                aSTNode.storeInLiteralRegister(parserContext);
            }
        }
        return aSTNode;
    }
}
