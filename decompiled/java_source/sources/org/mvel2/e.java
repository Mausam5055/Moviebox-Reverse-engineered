package org.mvel2;

import org.mvel2.ast.ASTNode;
import org.mvel2.ast.LineLabel;
import org.mvel2.compiler.CompiledExpression;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.n;

/* JADX INFO: loaded from: classes7.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static ThreadLocal f71973a;

    public static Object a(boolean z10, CompiledExpression compiledExpression, Object obj, VariableResolverFactory variableResolverFactory) {
        org.mvel2.util.g gVar = new org.mvel2.util.g();
        ASTNode firstNode = compiledExpression.getFirstNode();
        if (firstNode == null) {
            return null;
        }
        do {
            try {
                try {
                    if (firstNode.fields != -1) {
                        if (gVar.g()) {
                            gVar.q(firstNode.getReducedValueAccelerated(obj, obj, variableResolverFactory));
                        }
                        if (variableResolverFactory.tiltFlag()) {
                            Object objN = gVar.n();
                            org.mvel2.optimizers.b.a();
                            return objN;
                        }
                        Integer operator = firstNode.getOperator();
                        int iIntValue = operator.intValue();
                        if (iIntValue != -1) {
                            if (iIntValue != 37) {
                                if (iIntValue == 99) {
                                    variableResolverFactory.setTiltFlag(true);
                                    Object objN2 = gVar.n();
                                    org.mvel2.optimizers.b.a();
                                    return objN2;
                                }
                                if (iIntValue == 29) {
                                    if (!gVar.p().booleanValue()) {
                                        while (true) {
                                            ASTNode aSTNode = firstNode.nextASTNode;
                                            if (aSTNode == null) {
                                                break;
                                            }
                                            try {
                                                if (aSTNode.isOperator(30)) {
                                                    firstNode = aSTNode;
                                                    break;
                                                }
                                                firstNode = aSTNode;
                                            } catch (NullPointerException e11) {
                                                e = e11;
                                                firstNode = aSTNode;
                                                if (firstNode == null || !firstNode.isOperator() || firstNode.nextASTNode == null) {
                                                    throw e;
                                                }
                                                throw new CompileException("incomplete statement: " + firstNode.getName() + " (possible use of reserved keyword as identifier: " + firstNode.getName() + ")", firstNode.getExpr(), firstNode.getStart());
                                            }
                                        }
                                    }
                                    gVar.b();
                                } else {
                                    if (iIntValue == 30) {
                                        Object objN3 = gVar.n();
                                        org.mvel2.optimizers.b.a();
                                        return objN3;
                                    }
                                    gVar.r(firstNode.nextASTNode.getReducedValueAccelerated(obj, obj, variableResolverFactory), operator);
                                    while (gVar.h()) {
                                        try {
                                            if (((Integer) gVar.k()).intValue() == 23) {
                                                gVar.n();
                                                Object objN4 = gVar.n();
                                                Object objN5 = gVar.n();
                                                if (n.k(objN5) && n.k(objN4)) {
                                                    gVar.q(null);
                                                } else {
                                                    gVar.b();
                                                    if (!n.k(objN5)) {
                                                        objN4 = objN5;
                                                    }
                                                    gVar.q(objN4);
                                                }
                                            } else {
                                                gVar.i();
                                            }
                                        } catch (ClassCastException e12) {
                                            throw new CompileException("syntax error or incomptable types", new char[0], 0, e12);
                                        } catch (CompileException e13) {
                                            throw e13;
                                        } catch (Exception e14) {
                                            throw new CompileException("failed to compileShared sub expression", new char[0], 0, e14);
                                        }
                                    }
                                }
                            } else if (firstNode.nextASTNode != null) {
                                gVar.b();
                            }
                        }
                    } else if (z10 || (z10 = b())) {
                        try {
                            ((j10.b) f71973a.get()).a((LineLabel) firstNode, variableResolverFactory, compiledExpression);
                        } catch (NullPointerException unused) {
                        }
                    }
                    firstNode = firstNode.nextASTNode;
                } catch (NullPointerException e15) {
                    e = e15;
                }
            } catch (Throwable th2) {
                org.mvel2.optimizers.b.a();
                throw th2;
            }
        } while (firstNode != null);
        Object objK = gVar.k();
        org.mvel2.optimizers.b.a();
        return objK;
    }

    public static boolean b() {
        ThreadLocal threadLocal = f71973a;
        return (threadLocal == null || threadLocal.get() == null) ? false : true;
    }
}
