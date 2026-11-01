package org.mvel2.ast;

import java.math.BigDecimal;
import java.math.BigInteger;
import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.ScriptRuntimeException;
import org.mvel2.f;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.e;
import org.mvel2.util.l;
import org.mvel2.util.m;

/* JADX INFO: loaded from: classes7.dex */
public class BinaryOperation extends BooleanNode {
    private int lType;
    private final int operation;
    private int rType;

    public BinaryOperation(int i11, ParserContext parserContext) {
        super(parserContext);
        this.lType = -1;
        this.rType = -1;
        this.operation = i11;
    }

    public BinaryOperation(int i11, ASTNode aSTNode, ASTNode aSTNode2, ParserContext parserContext) {
        super(parserContext);
        this.lType = -1;
        this.rType = -1;
        this.operation = i11;
        this.left = aSTNode;
        if (aSTNode == null) {
            throw new ScriptRuntimeException("not a statement");
        }
        this.right = aSTNode2;
        if (aSTNode2 == null) {
            throw new ScriptRuntimeException("not a statement");
        }
        if (i11 == 0 && (aSTNode.getEgressType() == String.class || aSTNode2.getEgressType() == String.class)) {
            this.egressType = String.class;
            this.lType = m.a(aSTNode.egressType);
            this.rType = m.a(aSTNode2.egressType);
            return;
        }
        this.egressType = e.g(i11, this.left.egressType, this.right.egressType);
        if (parserContext.isStrongTyping()) {
            boolean zIsAssignableFrom = aSTNode.getEgressType().isAssignableFrom(aSTNode2.getEgressType());
            boolean zIsAssignableFrom2 = aSTNode2.getEgressType().isAssignableFrom(aSTNode.getEgressType());
            if (!zIsAssignableFrom && !zIsAssignableFrom2) {
                boolean zDoesRequireConversion = doesRequireConversion(aSTNode.getEgressType(), aSTNode2.getEgressType(), i11);
                if (aSTNode2.isLiteral() && zDoesRequireConversion && org.mvel2.b.a(aSTNode.getEgressType(), aSTNode2.getEgressType())) {
                    this.right = new LiteralNode(org.mvel2.b.b(aSTNode2.getReducedValueAccelerated(null, null, null), isAritmeticOperation(i11) ? this.egressType : aSTNode.getEgressType()), this.pCtx);
                } else if (!areCompatible(aSTNode.getEgressType(), aSTNode2.getEgressType()) && ((i11 != 18 && i11 != 19) || !org.mvel2.util.d.b(aSTNode.getEgressType(), aSTNode2.getEgressType()))) {
                    throw new CompileException("incompatible types in statement: " + aSTNode2.getEgressType() + " (compared from: " + aSTNode.getEgressType() + ")", aSTNode.getExpr() != null ? aSTNode.getExpr() : aSTNode2.getExpr(), aSTNode.getExpr() != null ? aSTNode.getStart() : aSTNode2.getStart());
                }
            }
        }
        if (this.left.isLiteral() && this.right.isLiteral()) {
            Class cls = this.left.egressType;
            if (cls != this.right.egressType) {
                this.lType = m.a(cls);
                this.rType = m.a(this.right.egressType);
            } else {
                int iA = m.a(aSTNode.egressType);
                this.rType = iA;
                this.lType = iA;
            }
        }
    }

    private boolean areCompatible(Class<?> cls, Class<?> cls2) {
        return cls.equals(l.class) || cls2.equals(l.class) || (Number.class.isAssignableFrom(cls2) && Number.class.isAssignableFrom(cls)) || ((cls2.isPrimitive() || cls.isPrimitive()) && org.mvel2.b.a(m.f(cls), m.f(cls2)));
    }

    private boolean doesRequireConversion(Class cls, Class cls2, int i11) {
        if (cls == Short.class || cls == Short.TYPE || cls == Integer.class || cls == Integer.TYPE || cls == Long.class || cls == Long.TYPE || cls == BigInteger.class) {
            return (cls2 == Float.class || cls2 == Float.TYPE || cls2 == Double.class || cls2 == Double.TYPE || cls2 == BigDecimal.class) ? false : true;
        }
        return true;
    }

    private boolean isAritmeticOperation(int i11) {
        return i11 <= 5;
    }

    public int getOperation() {
        return this.operation;
    }

    public int getPrecedence() {
        return f.f71974a[this.operation];
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        throw new RuntimeException("unsupported AST operation");
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return m10.a.e(this.lType, this.left.getReducedValueAccelerated(obj, obj2, variableResolverFactory), this.operation, this.rType, this.right.getReducedValueAccelerated(obj, obj2, variableResolverFactory));
    }

    public BinaryOperation getRightBinary() {
        ASTNode aSTNode = this.right;
        if (aSTNode == null || !(aSTNode instanceof BinaryOperation)) {
            return null;
        }
        return (BinaryOperation) aSTNode;
    }

    @Override // org.mvel2.ast.BooleanNode
    public ASTNode getRightMost() {
        ASTNode aSTNode;
        BinaryOperation binaryOperation = this;
        while (true) {
            aSTNode = binaryOperation.right;
            if (aSTNode == null || !(aSTNode instanceof BinaryOperation)) {
                break;
            }
            binaryOperation = (BinaryOperation) aSTNode;
        }
        return aSTNode;
    }

    public boolean isGreaterPrecedence(BinaryOperation binaryOperation) {
        return binaryOperation.getPrecedence() > f.f71974a[this.operation];
    }

    @Override // org.mvel2.ast.ASTNode
    public boolean isLiteral() {
        return false;
    }

    @Override // org.mvel2.ast.BooleanNode
    public void setRightMost(ASTNode aSTNode) {
        BinaryOperation binaryOperation = this;
        while (true) {
            ASTNode aSTNode2 = binaryOperation.right;
            if (aSTNode2 == null || !(aSTNode2 instanceof BinaryOperation)) {
                break;
            } else {
                binaryOperation = (BinaryOperation) aSTNode2;
            }
        }
        binaryOperation.right = aSTNode;
        if (binaryOperation == this) {
            int iA = m.a(aSTNode.getEgressType());
            this.rType = iA;
            if (iA == 0) {
                this.rType = -1;
            }
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public String toString() {
        return "(" + this.left + " " + j10.a.b(this.operation) + " " + this.right + ")";
    }
}
