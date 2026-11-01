package org.mvel2.util;

import java.util.Map;
import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.ast.ASTNode;
import org.mvel2.ast.And;
import org.mvel2.ast.BinaryOperation;
import org.mvel2.ast.BooleanNode;
import org.mvel2.ast.Contains;
import org.mvel2.ast.Convertable;
import org.mvel2.ast.DeclTypedVarNode;
import org.mvel2.ast.Instance;
import org.mvel2.ast.IntAdd;
import org.mvel2.ast.IntDiv;
import org.mvel2.ast.IntMult;
import org.mvel2.ast.IntSub;
import org.mvel2.ast.LiteralNode;
import org.mvel2.ast.Or;
import org.mvel2.ast.RegExMatchNode;
import org.mvel2.ast.Soundslike;
import org.mvel2.ast.Strsim;
import org.mvel2.compiler.BlankLiteral;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.ClassImportResolverFactory;

/* JADX INFO: loaded from: classes7.dex */
public class e {
    private static BinaryOperation a(int i11, ASTNode aSTNode, ASTNode aSTNode2, ParserContext parserContext) {
        if (aSTNode.getEgressType() != Integer.class || aSTNode2.getEgressType() != Integer.class) {
            return new BinaryOperation(i11, aSTNode, aSTNode2, parserContext);
        }
        if (i11 == 0) {
            return new IntAdd(aSTNode, aSTNode2, parserContext);
        }
        if (i11 == 1) {
            return new IntSub(aSTNode, aSTNode2, parserContext);
        }
        if (i11 != 2) {
            return i11 != 3 ? new BinaryOperation(i11, aSTNode, aSTNode2, parserContext) : new IntDiv(aSTNode, aSTNode2, parserContext);
        }
        return new IntMult(aSTNode, aSTNode2, parserContext);
    }

    public static void b(ParserContext parserContext, ASTNode aSTNode, Class cls, boolean z10) {
        Class<?> clsF = m.f(aSTNode.getEgressType());
        if (!z10) {
            if (clsF == null || !(Object.class.equals(clsF) || m.f(cls).isAssignableFrom(clsF))) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("was expecting type: ");
                sb2.append(cls.getName());
                sb2.append("; but found type: ");
                sb2.append(clsF != null ? clsF.getName() : "<Unknown>");
                throw new CompileException(sb2.toString(), new char[0], 0);
            }
            return;
        }
        if ((clsF == null || !m.f(cls).isAssignableFrom(clsF)) && !Object.class.equals(clsF) && parserContext.isStrictTypeEnforcement()) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("was expecting type: ");
            sb3.append(cls.getName());
            sb3.append("; but found type: ");
            sb3.append(clsF != null ? clsF.getName() : "<Unknown>");
            throw new CompileException(sb3.toString(), new char[0], 0);
        }
    }

    public static void c(ParserContext parserContext, org.mvel2.compiler.a aVar, Class cls, boolean z10) {
        Class knownEgressType = aVar.getKnownEgressType();
        if (!z10) {
            if (knownEgressType == null || !(Object.class.equals(knownEgressType) || m.f(cls).isAssignableFrom(m.f(knownEgressType)))) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("was expecting type: ");
                sb2.append(cls.getName());
                sb2.append("; but found type: ");
                sb2.append(knownEgressType != null ? knownEgressType.getName() : "<Unknown>");
                throw new CompileException(sb2.toString(), new char[0], 0);
            }
            return;
        }
        if (knownEgressType == null || !m.f(cls).isAssignableFrom(m.f(knownEgressType))) {
            if (!Object.class.equals(knownEgressType) || parserContext.isStrictTypeEnforcement()) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("was expecting type: ");
                sb3.append(cls.getName());
                sb3.append("; but found type: ");
                sb3.append(knownEgressType != null ? knownEgressType.getName() : "<Unknown>");
                throw new CompileException(sb3.toString(), new char[0], 0);
            }
        }
    }

    public static ASTLinkedList d(ASTLinkedList aSTLinkedList, boolean z10, ParserContext parserContext) {
        BinaryOperation binaryOperation;
        int iIntValue;
        ASTLinkedList aSTLinkedList2 = new ASTLinkedList();
        while (aSTLinkedList.hasMoreNodes()) {
            ASTNode aSTNodeNextNode = aSTLinkedList.nextNode();
            if (aSTNodeNextNode.getFields() == -1) {
                aSTLinkedList2.addTokenNode(aSTNodeNextNode);
            } else if (aSTLinkedList.hasMoreNodes()) {
                ASTNode aSTNodeNextNode2 = aSTLinkedList.nextNode();
                if (aSTNodeNextNode2.getFields() == -1) {
                    aSTLinkedList2.addTokenNode(aSTNodeNextNode, aSTNodeNextNode2);
                } else if (aSTNodeNextNode2.isOperator() && aSTNodeNextNode2.getOperator().intValue() < 21) {
                    int iIntValue2 = aSTNodeNextNode2.getOperator().intValue();
                    if (iIntValue2 == -1) {
                        throw new CompileException("illegal use of operator: " + aSTNodeNextNode2.getName(), aSTNodeNextNode2.getExpr(), aSTNodeNextNode.getStart());
                    }
                    ASTNode aSTNodeNextNode3 = aSTLinkedList.nextNode();
                    if (aSTNodeNextNode.getEgressType() == Integer.class && aSTNodeNextNode3.getEgressType() == Integer.class) {
                        binaryOperation = a(iIntValue2, aSTNodeNextNode, aSTNodeNextNode3, parserContext);
                    } else {
                        boolean zIsOperator = aSTNodeNextNode2.isOperator(1);
                        boolean z11 = aSTNodeNextNode.isLiteral() && i(aSTNodeNextNode2, aSTNodeNextNode3);
                        boolean z12 = false;
                        boolean z13 = zIsOperator;
                        ASTNode literalNode = aSTNodeNextNode3;
                        BinaryOperation binaryOperation2 = null;
                        while (z11) {
                            ASTNode aSTNodeNextNode4 = aSTLinkedList.nextNode();
                            ASTNode aSTNodeNextNode5 = aSTLinkedList.nextNode();
                            if (aSTNodeNextNode5 == null) {
                                break;
                            }
                            Object reducedValueAccelerated = new BinaryOperation(aSTNodeNextNode4.getOperator().intValue(), z13 ? new LiteralNode(l(literalNode.getLiteralValue()), parserContext) : literalNode, aSTNodeNextNode5, parserContext).getReducedValueAccelerated(null, null, null);
                            if (aSTLinkedList.hasMoreNodes() || !BlankLiteral.INSTANCE.equals(reducedValueAccelerated)) {
                                z11 = aSTLinkedList.hasMoreNodes() && k(aSTLinkedList.peekNode().getOperator().intValue()) && aSTLinkedList.peekNext().isLiteral();
                                if (z13) {
                                    z12 = true;
                                }
                                if (z11) {
                                    literalNode = new LiteralNode(reducedValueAccelerated, parserContext);
                                } else {
                                    int iIntValue3 = aSTNodeNextNode2.getOperator().intValue();
                                    if (z12) {
                                        reducedValueAccelerated = l(reducedValueAccelerated);
                                    }
                                    binaryOperation2 = new BinaryOperation(iIntValue3, aSTNodeNextNode, new LiteralNode(reducedValueAccelerated, parserContext), parserContext);
                                }
                                z13 = false;
                            } else {
                                aSTLinkedList2.addTokenNode(aSTNodeNextNode);
                            }
                        }
                        binaryOperation = binaryOperation2 == null ? new BinaryOperation(iIntValue2, aSTNodeNextNode, literalNode, parserContext) : binaryOperation2;
                    }
                    ASTNode aSTNodeNextNode6 = null;
                    BinaryOperation binaryOperation3 = binaryOperation;
                    while (aSTLinkedList.hasMoreNodes()) {
                        aSTNodeNextNode6 = aSTLinkedList.nextNode();
                        if (!aSTNodeNextNode6.isOperator() || aSTNodeNextNode6.getFields() == -1 || (iIntValue = aSTNodeNextNode6.getOperator().intValue()) == -1 || iIntValue >= 21) {
                            break;
                        }
                        int[] iArr = org.mvel2.f.f71974a;
                        if (iArr[iIntValue] > iArr[iIntValue2]) {
                            binaryOperation3.setRightMost(a(iIntValue, binaryOperation3.getRightMost(), aSTLinkedList.nextNode(), parserContext));
                        } else if (binaryOperation3.getOperation() == iIntValue || iArr[iIntValue2] != iArr[iIntValue]) {
                            if (iArr[binaryOperation3.getOperation()] >= iArr[iIntValue]) {
                                binaryOperation3 = new BinaryOperation(iIntValue, binaryOperation3, aSTLinkedList.nextNode(), parserContext);
                            } else {
                                ASTNode aSTNodeNextNode7 = aSTLinkedList.nextNode();
                                if (h(binaryOperation3, aSTNodeNextNode7)) {
                                    binaryOperation3 = new BinaryOperation(binaryOperation3.getOperation(), binaryOperation3.getLeft(), binaryOperation3.getRight(), parserContext);
                                }
                                binaryOperation3.setRight(new BinaryOperation(iIntValue, binaryOperation3.getRight(), aSTNodeNextNode7, parserContext));
                            }
                        } else if (iArr[binaryOperation3.getOperation()] == iArr[iIntValue]) {
                            binaryOperation3 = a(iIntValue, binaryOperation3, aSTLinkedList.nextNode(), parserContext);
                        } else {
                            ASTNode aSTNodeNextNode8 = aSTLinkedList.nextNode();
                            if (h(binaryOperation3, aSTNodeNextNode8)) {
                                binaryOperation3 = new BinaryOperation(binaryOperation3.getOperation(), binaryOperation3.getLeft(), binaryOperation3.getRight(), parserContext);
                            }
                            binaryOperation3.setRight(new BinaryOperation(iIntValue, binaryOperation3.getRight(), aSTNodeNextNode8, parserContext));
                        }
                        aSTNodeNextNode2 = aSTNodeNextNode6;
                        iIntValue2 = iIntValue;
                    }
                    if (aSTNodeNextNode6 == null || aSTNodeNextNode6 == aSTNodeNextNode2) {
                        aSTLinkedList2.addTokenNode(binaryOperation3);
                    } else {
                        j(aSTNodeNextNode6.getOperator().intValue(), binaryOperation3, aSTNodeNextNode6, aSTLinkedList, aSTLinkedList2, parserContext);
                    }
                } else if (aSTNodeNextNode2.isOperator()) {
                    j(aSTNodeNextNode2.getOperator().intValue(), aSTNodeNextNode, aSTNodeNextNode2, aSTLinkedList, aSTLinkedList2, parserContext);
                } else if (!aSTNodeNextNode2.isAssignment() && !aSTNodeNextNode2.isOperator() && (aSTNodeNextNode.getLiteralValue() instanceof Class)) {
                    aSTLinkedList2.addTokenNode(new DeclTypedVarNode(aSTNodeNextNode2.getName(), aSTNodeNextNode2.getExpr(), aSTNodeNextNode2.getStart(), aSTNodeNextNode.getOffset(), (Class) aSTNodeNextNode.getLiteralValue(), 0, parserContext));
                } else if (aSTNodeNextNode2.isAssignment() && (aSTNodeNextNode.getLiteralValue() instanceof Class)) {
                    aSTNodeNextNode.discard();
                    aSTLinkedList2.addTokenNode(aSTNodeNextNode2);
                } else if (aSTLinkedList.hasMoreNodes() && (aSTNodeNextNode2.getLiteralValue() instanceof Class) && aSTLinkedList.peekNode().isAssignment()) {
                    aSTNodeNextNode2.discard();
                    aSTLinkedList2.addTokenNode(aSTNodeNextNode, aSTLinkedList.nextNode());
                } else {
                    aSTLinkedList.back();
                    aSTLinkedList2.addTokenNode(aSTNodeNextNode);
                }
            } else {
                aSTLinkedList2.addTokenNode(aSTNodeNextNode);
            }
        }
        if (!z10) {
            return aSTLinkedList2;
        }
        aSTLinkedList2.reset();
        ASTLinkedList aSTLinkedList3 = new ASTLinkedList();
        while (aSTLinkedList2.hasMoreNodes()) {
            ASTNode aSTNodeNextNode9 = aSTLinkedList2.nextNode();
            if (aSTNodeNextNode9.getFields() == -1) {
                aSTLinkedList3.addTokenNode(aSTNodeNextNode9);
            } else if (aSTLinkedList2.hasMoreNodes()) {
                ASTNode aSTNodeNextNode10 = aSTLinkedList2.nextNode();
                if (aSTNodeNextNode10.getFields() == -1) {
                    aSTLinkedList3.addTokenNode(aSTNodeNextNode9, aSTNodeNextNode10);
                } else if (aSTNodeNextNode10.isOperator() && (aSTNodeNextNode10.getOperator().intValue() == 21 || aSTNodeNextNode10.getOperator().intValue() == 22)) {
                    BooleanNode and = aSTNodeNextNode10.getOperator().intValue() == 21 ? new And(aSTNodeNextNode9, aSTLinkedList2.nextNode(), parserContext.isStrongTyping(), parserContext) : new Or(aSTNodeNextNode9, aSTLinkedList2.nextNode(), parserContext.isStrongTyping(), parserContext);
                    ASTNode aSTNodeNextNode11 = null;
                    while (true) {
                        if (aSTLinkedList2.hasMoreNodes()) {
                            aSTNodeNextNode11 = aSTLinkedList2.nextNode();
                            if (aSTNodeNextNode11.isOperator()) {
                                if (!aSTNodeNextNode11.isOperator(21) && !aSTNodeNextNode11.isOperator(22)) {
                                    break;
                                }
                                if (aSTNodeNextNode11.getOperator().intValue() == 21) {
                                    and.setRightMost(new And(and.getRightMost(), aSTLinkedList2.nextNode(), parserContext.isStrongTyping(), parserContext));
                                } else {
                                    and = new Or(and, aSTLinkedList2.nextNode(), parserContext.isStrongTyping(), parserContext);
                                }
                                aSTNodeNextNode10 = aSTNodeNextNode11;
                            }
                        }
                        break;
                    }
                    aSTLinkedList3.addTokenNode(and);
                    if (aSTNodeNextNode11 != null && aSTNodeNextNode11 != aSTNodeNextNode10) {
                        aSTLinkedList3.addTokenNode(aSTNodeNextNode11);
                    }
                } else {
                    aSTLinkedList3.addTokenNode(aSTNodeNextNode9, aSTNodeNextNode10);
                }
            } else {
                aSTLinkedList3.addTokenNode(aSTNodeNextNode9);
            }
        }
        return aSTLinkedList3;
    }

    public static Map e(VariableResolverFactory variableResolverFactory) {
        if (variableResolverFactory == null) {
            return null;
        }
        while (!(variableResolverFactory instanceof ClassImportResolverFactory)) {
            variableResolverFactory = variableResolverFactory.getNextFactory();
            if (variableResolverFactory == null) {
                return null;
            }
        }
        return ((ClassImportResolverFactory) variableResolverFactory).getImportedClasses();
    }

    public static Class f(ASTIterator aSTIterator, boolean z10) {
        ASTNode aSTNodeFirstNode = aSTIterator.firstNode();
        if (aSTNodeFirstNode == null) {
            return Object.class;
        }
        return aSTIterator.size() == 1 ? aSTNodeFirstNode.getEgressType() : a.b(aSTIterator).d(z10);
    }

    public static Class g(int i11, Class cls, Class cls2) {
        if (i11 == 26 || i11 == 36) {
            return Boolean.class;
        }
        switch (i11) {
            case 0:
                if (cls == String.class) {
                    return String.class;
                }
                break;
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                break;
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                return Integer.class;
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 21:
            case 22:
                return Boolean.class;
            case 20:
                return String.class;
            default:
                return null;
        }
        if (cls == Object.class || cls2 == Object.class) {
            return Object.class;
        }
        return m.a(m.f(cls)) < m.a(m.f(cls2)) ? cls2 : cls;
    }

    private static boolean h(BooleanNode booleanNode, ASTNode aSTNode) {
        return (booleanNode instanceof org.mvel2.ast.c) && aSTNode.getEgressType() != Integer.class;
    }

    private static boolean i(ASTNode aSTNode, ASTNode aSTNode2) {
        ASTNode aSTNode3;
        ASTNode aSTNode4;
        if (aSTNode2 != null && aSTNode2.isLiteral() && (aSTNode3 = aSTNode2.nextASTNode) != null && k(aSTNode3.getOperator().intValue())) {
            int[] iArr = org.mvel2.f.f71974a;
            if (iArr[aSTNode.getOperator().intValue()] <= iArr[aSTNode3.getOperator().intValue()] && (aSTNode4 = aSTNode3.nextASTNode) != null && aSTNode4.isLiteral() && (aSTNode4.getLiteralValue() instanceof Number)) {
                return true;
            }
        }
        return false;
    }

    private static void j(int i11, ASTNode aSTNode, ASTNode aSTNode2, ASTLinkedList aSTLinkedList, ASTLinkedList aSTLinkedList2, ParserContext parserContext) {
        if (i11 == 36) {
            aSTLinkedList2.addTokenNode(new Convertable(aSTNode, aSTLinkedList.nextNode(), parserContext));
            return;
        }
        switch (i11) {
            case 24:
                aSTLinkedList2.addTokenNode(new RegExMatchNode(aSTNode, aSTLinkedList.nextNode(), parserContext));
                return;
            case 25:
                aSTLinkedList2.addTokenNode(new Instance(aSTNode, aSTLinkedList.nextNode(), parserContext));
                return;
            case 26:
                aSTLinkedList2.addTokenNode(new Contains(aSTNode, aSTLinkedList.nextNode(), parserContext));
                return;
            case 27:
                aSTLinkedList2.addTokenNode(new Soundslike(aSTNode, aSTLinkedList.nextNode(), parserContext));
                return;
            case 28:
                aSTLinkedList2.addTokenNode(new Strsim(aSTNode, aSTLinkedList.nextNode(), parserContext));
                return;
            case NOTIFICATION_REDIRECT_VALUE:
                if (parserContext.isStrongTyping() && aSTNode.getEgressType() != Boolean.class && aSTNode.getEgressType() != Boolean.TYPE) {
                    throw new RuntimeException("Condition of ternary operator is not of type boolean. Found " + aSTNode.getEgressType());
                }
                break;
        }
        aSTLinkedList2.addTokenNode(aSTNode, aSTNode2);
    }

    private static boolean k(int i11) {
        return i11 == 0 || i11 == 1;
    }

    public static Number l(Object obj) {
        if (obj instanceof Integer) {
            return Integer.valueOf(-((Integer) obj).intValue());
        }
        if (obj instanceof Double) {
            return Double.valueOf(-((Double) obj).doubleValue());
        }
        if (obj instanceof Float) {
            return Float.valueOf(-((Float) obj).floatValue());
        }
        if (obj instanceof Short) {
            return Integer.valueOf(-((Short) obj).shortValue());
        }
        throw new CompileException("expected a numeric type but found: " + obj.getClass().getName(), new char[0], 0);
    }
}
