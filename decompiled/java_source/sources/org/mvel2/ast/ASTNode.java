package org.mvel2.ast;

import java.io.Serializable;
import org.mvel2.CompileException;
import org.mvel2.ParserConfiguration;
import org.mvel2.ParserContext;
import org.mvel2.g;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.optimizers.OptimizationNotSupported;
import org.mvel2.util.e;
import org.mvel2.util.m;

/* JADX INFO: loaded from: classes7.dex */
public class ASTNode implements Cloneable, Serializable {
    public static final int ARRAY_TYPE_LITERAL = 67108864;
    public static final int ASSIGN = 128;
    public static final int BLOCK_DO = 65536;
    public static final int BLOCK_DO_UNTIL = 131072;
    public static final int BLOCK_FOR = 262144;
    public static final int BLOCK_FOREACH = 4096;
    public static final int BLOCK_IF = 2048;
    public static final int BLOCK_UNTIL = 16384;
    public static final int BLOCK_WHILE = 32768;
    public static final int BLOCK_WITH = 8192;
    public static final int COLLECTION = 256;
    public static final int COMPILE_IMMEDIATE = 16;
    public static final int DEEP_PROPERTY = 2;
    public static final int DEFERRED_TYPE_RES = 8388608;
    public static final int DEOP = 268435456;
    public static final int DISCARD = 536870912;
    public static final int FQCN = 1048576;
    public static final int IDENTIFIER = 8;
    public static final int INLINE_COLLECTION = 1024;
    public static final int INVERT = 64;
    public static final int LITERAL = 1;
    public static final int NOJIT = 134217728;
    public static final int NUMERIC = 32;
    public static final int OPERATOR = 4;
    public static final int OPT_SUBTR = 524288;
    public static final int PCTX_STORED = 33554432;
    public static final int STACKLANG = 4194304;
    public static final int STRONG_TYPING = 16777216;
    public static final int THISREF = 512;
    protected volatile transient org.mvel2.compiler.a accessor;
    protected int cursorPosition;
    protected Class egressType;
    protected int endOfName;
    protected char[] expr;
    public int fields;
    protected int firstUnion;
    protected Object literal;
    protected String nameCache;
    public ASTNode nextASTNode;
    protected int offset;
    protected ParserContext pCtx;
    protected volatile org.mvel2.compiler.a safeAccessor;
    protected int start;

    protected ASTNode(ParserContext parserContext) {
        this.fields = 0;
        this.pCtx = parserContext;
    }

    public ASTNode(char[] cArr, int i11, int i12, int i13, ParserContext parserContext) {
        this(parserContext);
        this.fields = i13;
        this.expr = cArr;
        this.start = i11;
        this.offset = i12;
        setName(cArr);
    }

    private Object deop(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, RuntimeException runtimeException) {
        Object reducedValueAccelerated;
        if ((this.fields & DEOP) != 0) {
            throw runtimeException;
        }
        this.accessor = null;
        this.fields |= 402653184;
        synchronized (this) {
            reducedValueAccelerated = getReducedValueAccelerated(obj, obj2, variableResolverFactory);
        }
        return reducedValueAccelerated;
    }

    private int getAbsoluteFirstPart() {
        int i11 = this.fields;
        if ((i11 & 256) != 0) {
            int i12 = this.firstUnion;
            return (i12 < 0 || this.endOfName < i12) ? this.endOfName : i12;
        }
        if ((i11 & 2) != 0) {
            return this.firstUnion;
        }
        return -1;
    }

    private Object optimize(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        int i11 = this.fields;
        if ((i11 & DEOP) != 0) {
            this.fields = i11 ^ DEOP;
        }
        org.mvel2.optimizers.a aVarB = ((this.fields & NOJIT) != 0 || (variableResolverFactory != null && variableResolverFactory.isResolveable(getName()))) ? org.mvel2.optimizers.b.b(org.mvel2.optimizers.b.f71995b) : org.mvel2.optimizers.b.c();
        ParserContext parserContext = (this.fields & PCTX_STORED) != 0 ? (ParserContext) this.literal : new ParserContext(new ParserConfiguration(e.e(variableResolverFactory), null));
        try {
            parserContext.optimizationNotify();
            setAccessor(aVarB.optimizeAccessor(parserContext, this.expr, this.start, this.offset, obj, obj2, variableResolverFactory, true, this.egressType));
        } catch (OptimizationNotSupported unused) {
            aVarB = org.mvel2.optimizers.b.b(org.mvel2.optimizers.b.f71995b);
            setAccessor(aVarB.optimizeAccessor(parserContext, this.expr, this.start, this.offset, obj, obj2, variableResolverFactory, true, null));
        }
        if (this.accessor == null) {
            return g.m(this.expr, this.start, this.offset, obj, variableResolverFactory, obj2, parserContext);
        }
        Object resultOptPass = aVarB.getResultOptPass();
        if (this.egressType == null) {
            this.egressType = aVarB.getEgressType();
        }
        return resultOptPass;
    }

    public boolean canSerializeAccessor() {
        return this.safeAccessor != null;
    }

    public void discard() {
        this.fields |= DISCARD;
    }

    public String getAbsoluteName() {
        int i11 = this.firstUnion;
        int i12 = this.start;
        return i11 > i12 ? new String(this.expr, i12, getAbsoluteFirstPart() - this.start) : getName();
    }

    protected String getAbsoluteRootElement() {
        return (this.fields & 258) != 0 ? new String(this.expr, this.start, getAbsoluteFirstPart()) : this.nameCache;
    }

    public org.mvel2.compiler.a getAccessor() {
        return this.accessor;
    }

    protected ClassLoader getClassLoader() {
        ParserContext parserContext = this.pCtx;
        return parserContext != null ? parserContext.getClassLoader() : Thread.currentThread().getContextClassLoader();
    }

    public int getCursorPosition() {
        return this.cursorPosition;
    }

    public Class getEgressType() {
        return this.egressType;
    }

    public char[] getExpr() {
        return this.expr;
    }

    public int getFields() {
        return this.fields;
    }

    public Object getLiteralValue() {
        return this.literal;
    }

    public String getName() {
        String str = this.nameCache;
        if (str != null) {
            return str;
        }
        char[] cArr = this.expr;
        if (cArr == null) {
            return "";
        }
        String str2 = new String(cArr, this.start, this.offset);
        this.nameCache = str2;
        return str2;
    }

    public char[] getNameAsArray() {
        char[] cArr = this.expr;
        int i11 = this.start;
        return m.F0(cArr, i11, this.offset + i11);
    }

    public int getOffset() {
        return this.offset;
    }

    public Integer getOperator() {
        return -1;
    }

    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return (this.fields & 1) != 0 ? this.literal : g.m(this.expr, this.start, this.offset, obj, variableResolverFactory, obj2, this.pCtx);
    }

    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (this.accessor == null) {
            return optimize(obj, obj2, variableResolverFactory);
        }
        try {
            return this.accessor.getValue(obj, obj2, variableResolverFactory);
        } catch (ClassCastException e11) {
            return deop(obj, obj2, variableResolverFactory, e11);
        }
    }

    public int getStart() {
        return this.start;
    }

    public boolean isAssignment() {
        return (this.fields & 128) != 0;
    }

    protected boolean isCollection() {
        return (this.fields & 256) != 0;
    }

    public boolean isDebuggingSymbol() {
        return this.fields == -1;
    }

    public boolean isDeepProperty() {
        return (this.fields & 2) != 0;
    }

    public boolean isDiscard() {
        int i11 = this.fields;
        return (i11 == -1 || (i11 & DISCARD) == 0) ? false : true;
    }

    public boolean isFQCN() {
        return (this.fields & 1048576) != 0;
    }

    public boolean isIdentifier() {
        return (this.fields & 8) != 0;
    }

    public boolean isLiteral() {
        return (this.fields & 1) != 0;
    }

    public boolean isOperator() {
        return (this.fields & 4) != 0;
    }

    public boolean isOperator(Integer num) {
        return (this.fields & 4) != 0 && num.equals(this.literal);
    }

    public boolean isThisVal() {
        return (this.fields & 512) != 0;
    }

    public org.mvel2.compiler.a setAccessor(org.mvel2.compiler.a aVar) {
        this.accessor = aVar;
        return aVar;
    }

    public void setAsFQCNReference() {
        this.fields |= 1048576;
    }

    public void setAsLiteral() {
        this.fields |= 1;
    }

    public void setCursorPosition(int i11) {
        this.cursorPosition = i11;
    }

    public void setEgressType(Class cls) {
        this.egressType = cls;
    }

    public void setLiteralValue(Object obj) {
        this.literal = obj;
        this.fields |= 1;
    }

    protected void setName(char[] cArr) {
        if (m.i0(cArr, this.start, this.offset)) {
            Object objX = m.X(cArr, this.start, this.offset);
            this.literal = objX;
            this.egressType = objX.getClass();
            int i11 = this.fields | 41;
            this.fields = i11;
            if ((i11 & 64) != 0) {
                try {
                    this.literal = Integer.valueOf(~((Integer) this.literal).intValue());
                    return;
                } catch (ClassCastException unused) {
                    throw new CompileException("bitwise (~) operator can only be applied to integers", this.expr, this.start);
                }
            }
            return;
        }
        this.literal = new String(cArr, this.start, this.offset);
        int i12 = this.start;
        int i13 = this.offset + i12;
        while (i12 < i13) {
            char c11 = cArr[i12];
            if (c11 != '(') {
                if (c11 != '.') {
                    if (c11 != '[') {
                        continue;
                    }
                } else if (this.firstUnion == 0) {
                    this.firstUnion = i12;
                }
                i12++;
            }
            if (this.firstUnion == 0) {
                this.firstUnion = i12;
            }
            if (this.endOfName == 0) {
                this.endOfName = i12;
                if (i12 >= cArr.length || cArr[i12 + 1] != ']') {
                    break;
                    break;
                } else {
                    this.fields |= 67108864;
                    break;
                }
            }
            i12++;
        }
        int i14 = this.fields;
        if ((i14 & 1024) != 0) {
            return;
        }
        if (this.firstUnion > this.start) {
            this.fields = i14 | 10;
        } else {
            this.fields = i14 | 8;
        }
    }

    public void storeInLiteralRegister(Object obj) {
        this.literal = obj;
    }

    public void storePctx() {
        this.fields |= PCTX_STORED;
    }

    public void strongTyping() {
        this.fields |= 16777216;
    }

    public String toString() {
        if (!isOperator()) {
            return (33554432 & this.fields) != 0 ? this.nameCache : new String(this.expr, this.start, this.offset);
        }
        return "<<" + j10.a.a(getOperator().intValue()) + ">>";
    }
}
