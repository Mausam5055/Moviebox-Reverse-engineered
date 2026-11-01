package org.mvel2.compiler;

import java.io.Serializable;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes7.dex */
public class CompiledAccExpression implements ExecutableStatement, Serializable {
    private transient a accessor;
    private ParserContext context;
    private char[] expression;
    private Class ingressType;
    private int offset;
    private int start;

    public CompiledAccExpression(char[] cArr, int i11, int i12, Class cls, ParserContext parserContext) {
        this.expression = cArr;
        this.start = i11;
        this.offset = i12;
        this.context = parserContext;
        this.ingressType = cls == null ? Object.class : cls;
    }

    public CompiledAccExpression(char[] cArr, Class cls, ParserContext parserContext) {
        this(cArr, 0, cArr.length, cls, parserContext);
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public void computeTypeConversionRule() {
    }

    public a getAccessor() {
        return this.accessor;
    }

    @Override // org.mvel2.compiler.ExecutableStatement, org.mvel2.compiler.a
    public Class getKnownEgressType() {
        return null;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public Class getKnownIngressType() {
        return this.ingressType;
    }

    @Override // org.mvel2.compiler.ExecutableStatement, org.mvel2.compiler.a
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        a aVar = this.accessor;
        if (aVar != null) {
            return aVar.getValue(obj, obj2, variableResolverFactory);
        }
        try {
            this.accessor = org.mvel2.optimizers.b.d().optimizeAccessor(this.context, this.expression, this.start, this.offset, obj, obj2, variableResolverFactory, false, this.ingressType);
            return getValue(obj, obj2, variableResolverFactory);
        } finally {
            org.mvel2.optimizers.b.a();
        }
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public Object getValue(Object obj, VariableResolverFactory variableResolverFactory) {
        a aVar = this.accessor;
        if (aVar != null) {
            return aVar.getValue(obj, obj, variableResolverFactory);
        }
        try {
            org.mvel2.optimizers.a aVarD = org.mvel2.optimizers.b.d();
            ParserContext parserContext = this.context;
            char[] cArr = this.expression;
            this.accessor = aVarD.optimizeAccessor(parserContext, cArr, 0, cArr.length, obj, obj, variableResolverFactory, false, this.ingressType);
            return getValue(obj, variableResolverFactory);
        } finally {
            org.mvel2.optimizers.b.a();
        }
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public boolean intOptimized() {
        return false;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public boolean isConvertableIngressEgress() {
        return false;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public boolean isEmptyStatement() {
        return this.accessor == null;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public boolean isExplicitCast() {
        return false;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public boolean isLiteralOnly() {
        return false;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public void setKnownEgressType(Class cls) {
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public void setKnownIngressType(Class cls) {
        this.ingressType = cls;
    }

    @Override // org.mvel2.compiler.ExecutableStatement, org.mvel2.compiler.a
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        a aVar = this.accessor;
        if (aVar == null) {
            if (this.ingressType == Object.class && obj3 != null) {
                this.ingressType = obj3.getClass();
            }
            org.mvel2.optimizers.a aVarD = org.mvel2.optimizers.b.d();
            ParserContext parserContext = this.context;
            char[] cArr = this.expression;
            this.accessor = aVarD.optimizeSetAccessor(parserContext, cArr, 0, cArr.length, obj, obj, variableResolverFactory, false, obj3, this.ingressType);
        } else {
            aVar.setValue(obj, obj2, variableResolverFactory, obj3);
        }
        return obj3;
    }
}
