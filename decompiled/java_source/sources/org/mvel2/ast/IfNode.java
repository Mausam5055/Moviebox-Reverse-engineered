package org.mvel2.ast;

import java.util.HashMap;
import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.MapVariableResolverFactory;
import org.mvel2.util.e;
import org.mvel2.util.m;

/* JADX INFO: loaded from: classes7.dex */
public class IfNode extends BlockNode {
    protected ExecutableStatement condition;
    protected ExecutableStatement elseBlock;
    protected IfNode elseIf;
    protected boolean idxAlloc;
    protected ExecutableStatement nestedStatement;

    public IfNode(char[] cArr, int i11, int i12, int i13, int i14, int i15, ParserContext parserContext) {
        super(parserContext);
        boolean z10 = false;
        this.idxAlloc = false;
        this.expr = cArr;
        if (cArr == null || i12 == 0) {
            throw new CompileException("statement expected", cArr, i11);
        }
        this.start = i11;
        this.offset = i12;
        this.blockStart = i13;
        this.blockOffset = i14;
        if (parserContext != null && parserContext.isIndexAllocation()) {
            z10 = true;
        }
        this.idxAlloc = z10;
        if ((i15 & 16) != 0) {
            ExecutableStatement executableStatement = (ExecutableStatement) m.I0(cArr, i11, i12, parserContext);
            this.condition = executableStatement;
            e.c(parserContext, executableStatement, Boolean.class, true);
            if (parserContext != null) {
                parserContext.pushVariableScope();
            }
            this.nestedStatement = (ExecutableStatement) m.I0(cArr, i13, i14, parserContext);
            if (parserContext != null) {
                parserContext.popVariableScope();
            }
        }
    }

    public ExecutableStatement getElseBlock() {
        return this.elseBlock;
    }

    public ExecutableStatement getNestedStatement() {
        return this.nestedStatement;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (((Boolean) org.mvel2.d.q(this.expr, this.start, this.offset, obj, variableResolverFactory)).booleanValue()) {
            return org.mvel2.d.q(this.expr, this.blockStart, this.blockOffset, obj, new MapVariableResolverFactory(new HashMap(0), variableResolverFactory));
        }
        IfNode ifNode = this.elseIf;
        if (ifNode != null) {
            return ifNode.getReducedValue(obj, obj2, new MapVariableResolverFactory(new HashMap(0), variableResolverFactory));
        }
        ExecutableStatement executableStatement = this.elseBlock;
        if (executableStatement != null) {
            return executableStatement.getValue(obj, obj2, new MapVariableResolverFactory(new HashMap(0), variableResolverFactory));
        }
        return null;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (((Boolean) this.condition.getValue(obj, obj2, variableResolverFactory)).booleanValue()) {
            ExecutableStatement executableStatement = this.nestedStatement;
            if (!this.idxAlloc) {
                variableResolverFactory = new MapVariableResolverFactory(new HashMap(0), variableResolverFactory);
            }
            return executableStatement.getValue(obj, obj2, variableResolverFactory);
        }
        IfNode ifNode = this.elseIf;
        if (ifNode != null) {
            if (!this.idxAlloc) {
                variableResolverFactory = new MapVariableResolverFactory(new HashMap(0), variableResolverFactory);
            }
            return ifNode.getReducedValueAccelerated(obj, obj2, variableResolverFactory);
        }
        ExecutableStatement executableStatement2 = this.elseBlock;
        if (executableStatement2 == null) {
            return null;
        }
        if (!this.idxAlloc) {
            variableResolverFactory = new MapVariableResolverFactory(new HashMap(0), variableResolverFactory);
        }
        return executableStatement2.getValue(obj, obj2, variableResolverFactory);
    }

    public IfNode setElseBlock(char[] cArr, int i11, int i12, ParserContext parserContext) {
        this.elseBlock = (ExecutableStatement) m.I0(cArr, i11, i12, parserContext);
        return this;
    }

    public IfNode setElseIf(IfNode ifNode) {
        this.elseIf = ifNode;
        return ifNode;
    }

    @Override // org.mvel2.ast.ASTNode
    public String toString() {
        return new String(this.expr, this.start, this.offset);
    }
}
