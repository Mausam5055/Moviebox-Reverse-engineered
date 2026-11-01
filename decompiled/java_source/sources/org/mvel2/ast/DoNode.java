package org.mvel2.ast;

import java.util.HashMap;
import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.MapVariableResolverFactory;
import org.mvel2.util.e;
import org.mvel2.util.m;

/* JADX INFO: loaded from: classes7.dex */
public class DoNode extends BlockNode {
    protected ExecutableStatement condition;
    protected String item;

    public DoNode(char[] cArr, int i11, int i12, int i13, int i14, int i15, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        this.start = i11;
        this.offset = i12;
        this.blockStart = i13;
        this.blockOffset = i14;
        ExecutableStatement executableStatement = (ExecutableStatement) m.I0(cArr, i11, i12, parserContext);
        this.condition = executableStatement;
        e.c(parserContext, executableStatement, Boolean.class, (i15 & 16) != 0);
        if (parserContext != null) {
            parserContext.pushVariableScope();
        }
        this.compiledBlock = (ExecutableStatement) m.I0(cArr, i13, i14, parserContext);
        if (parserContext != null) {
            parserContext.popVariableScope();
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        MapVariableResolverFactory mapVariableResolverFactory = new MapVariableResolverFactory(new HashMap(0), variableResolverFactory);
        do {
            this.compiledBlock.getValue(obj, obj2, mapVariableResolverFactory);
        } while (((Boolean) this.condition.getValue(obj, obj2, variableResolverFactory)).booleanValue());
        return null;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        MapVariableResolverFactory mapVariableResolverFactory = new MapVariableResolverFactory(new HashMap(0), variableResolverFactory);
        do {
            this.compiledBlock.getValue(obj, obj2, mapVariableResolverFactory);
        } while (((Boolean) this.condition.getValue(obj, obj2, variableResolverFactory)).booleanValue());
        return null;
    }
}
