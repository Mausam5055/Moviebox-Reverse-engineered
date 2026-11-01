package org.mvel2.templates.res;

import java.io.Serializable;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.StackDelimiterResolverFactory;
import org.mvel2.templates.CompiledTemplate;
import org.mvel2.templates.TemplateError;
import s10.c;
import s10.d;

/* JADX INFO: loaded from: classes7.dex */
public class CompiledNamedIncludeNode extends Node {
    private Serializable cIncludeExpression;
    private Serializable cPreExpression;

    public CompiledNamedIncludeNode(int i11, String str, char[] cArr, int i12, int i13, ParserContext parserContext) {
        this.begin = i11;
        this.name = str;
        this.contents = cArr;
        this.cStart = i12;
        this.cEnd = i13 - 1;
        this.end = i13;
        int iA = d.a(cArr, i12);
        char[] cArr2 = this.contents;
        int i14 = this.cStart;
        this.cIncludeExpression = org.mvel2.d.g(cArr2, i14, iA - i14, parserContext);
        char[] cArr3 = this.contents;
        if (iA != cArr3.length) {
            int i15 = iA + 1;
            this.cPreExpression = org.mvel2.d.g(cArr3, i15, this.cEnd - i15, parserContext);
        }
    }

    @Override // org.mvel2.templates.res.Node
    public boolean demarcate(Node node, char[] cArr) {
        return false;
    }

    @Override // org.mvel2.templates.res.Node
    public Object eval(r10.d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        StackDelimiterResolverFactory stackDelimiterResolverFactory = new StackDelimiterResolverFactory(variableResolverFactory);
        Serializable serializable = this.cPreExpression;
        if (serializable != null) {
            org.mvel2.d.t(serializable, obj, stackDelimiterResolverFactory);
        }
        if (this.next == null) {
            return cVar.append(String.valueOf(r10.d.e(dVar.h().a((String) org.mvel2.d.u(this.cIncludeExpression, obj, stackDelimiterResolverFactory, String.class)), obj, stackDelimiterResolverFactory, dVar.h())));
        }
        String str = (String) org.mvel2.d.u(this.cIncludeExpression, obj, stackDelimiterResolverFactory, String.class);
        CompiledTemplate compiledTemplateA = dVar.h().a(str);
        if (compiledTemplateA != null) {
            return this.next.eval(dVar, cVar.append(String.valueOf(r10.d.e(compiledTemplateA, obj, stackDelimiterResolverFactory, dVar.h()))), obj, stackDelimiterResolverFactory);
        }
        throw new TemplateError("named template does not exist: " + str);
    }
}
