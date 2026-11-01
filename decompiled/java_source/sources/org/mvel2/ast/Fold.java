package org.mvel2.ast;

import java.util.ArrayList;
import java.util.Collection;
import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.DefaultLocalVariableResolverFactory;
import org.mvel2.integration.impl.ItemResolverFactory;
import org.mvel2.util.e;
import org.mvel2.util.m;

/* JADX INFO: loaded from: classes7.dex */
public class Fold extends ASTNode {
    private ExecutableStatement constraintEx;
    private ExecutableStatement dataEx;
    private ExecutableStatement subEx;

    public Fold(char[] cArr, int i11, int i12, int i13, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        this.start = i11;
        this.offset = i12;
        int i14 = i12 + i11;
        int i15 = i11;
        while (true) {
            if (i15 >= i14) {
                break;
            }
            if (m.q0(cArr[i15])) {
                while (i15 < i14 && m.q0(cArr[i15])) {
                    i15++;
                }
                if (cArr[i15] == 'i' && cArr[i15 + 1] == 'n' && m.d0(cArr[i15 + 2])) {
                    break;
                }
            }
            i15++;
        }
        this.subEx = (ExecutableStatement) m.I0(cArr, i11, (i15 - i11) - 1, parserContext);
        int i16 = i15 + 2;
        int i17 = i16;
        while (i17 < i14) {
            if (m.q0(cArr[i17])) {
                while (i17 < i14 && m.q0(cArr[i17])) {
                    i17++;
                }
                if (cArr[i17] == 'i' && cArr[i17 + 1] == 'f') {
                    int i18 = i17 + 2;
                    if (m.d0(cArr[i18])) {
                        this.constraintEx = (ExecutableStatement) m.I0(cArr, i18, i14 - i18, parserContext);
                        break;
                    }
                }
            }
            i17++;
        }
        while (m.q0(cArr[i17])) {
            i17--;
        }
        ExecutableStatement executableStatement = (ExecutableStatement) m.I0(cArr, i16, i17 - i16, parserContext);
        this.dataEx = executableStatement;
        e.c(parserContext, executableStatement, Collection.class, (i13 & 16) != 0);
    }

    @Override // org.mvel2.ast.ASTNode
    public Class getEgressType() {
        return Collection.class;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        ArrayList arrayList;
        ItemResolverFactory.ItemResolver itemResolver = new ItemResolverFactory.ItemResolver("$");
        ItemResolverFactory itemResolverFactory = new ItemResolverFactory(itemResolver, new DefaultLocalVariableResolverFactory(variableResolverFactory));
        if (this.constraintEx != null) {
            Object value = this.dataEx.getValue(obj, obj2, variableResolverFactory);
            if (!(value instanceof Collection)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("was expecting type: Collection; but found type: ");
                sb2.append(value != null ? value.getClass().getName() : "null");
                throw new CompileException(sb2.toString(), this.expr, this.start);
            }
            Collection collection = (Collection) value;
            arrayList = new ArrayList(collection.size());
            for (Object obj3 : collection) {
                itemResolver.value = obj3;
                if (((Boolean) this.constraintEx.getValue(obj, obj2, itemResolverFactory)).booleanValue()) {
                    arrayList.add(this.subEx.getValue(obj3, obj2, itemResolverFactory));
                }
            }
        } else {
            Object value2 = this.dataEx.getValue(obj, obj2, variableResolverFactory);
            if (!(value2 instanceof Collection)) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("was expecting type: Collection; but found type: ");
                sb3.append(value2 != null ? value2.getClass().getName() : "null");
                throw new CompileException(sb3.toString(), this.expr, this.start);
            }
            Collection collection2 = (Collection) value2;
            arrayList = new ArrayList(collection2.size());
            for (Object obj4 : collection2) {
                ExecutableStatement executableStatement = this.subEx;
                itemResolver.value = obj4;
                arrayList.add(executableStatement.getValue(obj4, obj2, itemResolverFactory));
            }
        }
        return arrayList;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        ArrayList arrayList;
        ItemResolverFactory.ItemResolver itemResolver = new ItemResolverFactory.ItemResolver("$");
        ItemResolverFactory itemResolverFactory = new ItemResolverFactory(itemResolver, new DefaultLocalVariableResolverFactory(variableResolverFactory));
        if (this.constraintEx != null) {
            Collection collection = (Collection) this.dataEx.getValue(obj, obj2, variableResolverFactory);
            arrayList = new ArrayList(collection.size());
            for (Object obj3 : collection) {
                itemResolver.value = obj3;
                if (((Boolean) this.constraintEx.getValue(obj, obj2, itemResolverFactory)).booleanValue()) {
                    arrayList.add(this.subEx.getValue(obj3, obj2, itemResolverFactory));
                }
            }
        } else {
            Collection collection2 = (Collection) this.dataEx.getValue(obj, obj2, variableResolverFactory);
            arrayList = new ArrayList(collection2.size());
            for (Object obj4 : collection2) {
                ExecutableStatement executableStatement = this.subEx;
                itemResolver.value = obj4;
                arrayList.add(executableStatement.getValue(obj4, obj2, itemResolverFactory));
            }
        }
        return arrayList;
    }
}
