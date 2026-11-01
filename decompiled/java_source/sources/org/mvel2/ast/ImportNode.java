package org.mvel2.ast;

import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.ClassImportResolverFactory;
import org.mvel2.integration.impl.ImmutableDefaultFactory;
import org.mvel2.integration.impl.StackResetResolverFactory;
import org.mvel2.util.m;

/* JADX INFO: loaded from: classes7.dex */
public class ImportNode extends ASTNode {
    private static final char[] WC_TEST = {'.', '*'};
    private int _offset;
    private Class importClass;
    private boolean packageImport;

    public ImportNode(char[] cArr, int i11, int i12, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        this.start = i11;
        this.offset = i12;
        this.pCtx = parserContext;
        if (m.A(cArr, i11, i12, WC_TEST)) {
            this.packageImport = true;
            short sG = (short) m.G(cArr, i11, i12, '.');
            this._offset = sG;
            if (sG == -1) {
                this._offset = 0;
                return;
            }
            return;
        }
        String str = new String(cArr, i11, i12);
        ClassLoader classLoader = getClassLoader();
        try {
            this.importClass = Class.forName(str, true, classLoader);
        } catch (ClassNotFoundException unused) {
            StringBuilder sb2 = new StringBuilder();
            int iLastIndexOf = str.lastIndexOf(46);
            sb2.append(str.substring(0, iLastIndexOf));
            sb2.append("$");
            sb2.append(str.substring(iLastIndexOf + 1));
            try {
                this.importClass = Class.forName(sb2.toString().trim(), true, classLoader);
            } catch (ClassNotFoundException unused2) {
                throw new CompileException("class not found: " + new String(cArr), cArr, i11);
            }
        }
    }

    public Class getImportClass() {
        return this.importClass;
    }

    public String getPackageImport() {
        char[] cArr = this.expr;
        int i11 = this.start;
        return new String(cArr, i11, this._offset - i11);
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return getReducedValueAccelerated(obj, obj2, variableResolverFactory);
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (!this.packageImport) {
            if (!org.mvel2.d.f71971k) {
                return m.E(variableResolverFactory, this.pCtx).addClass(this.importClass);
            }
            variableResolverFactory.createVariable(this.importClass.getSimpleName(), this.importClass);
            return this.importClass;
        }
        if (variableResolverFactory instanceof ImmutableDefaultFactory) {
            return null;
        }
        if ((variableResolverFactory instanceof StackResetResolverFactory) && (((StackResetResolverFactory) variableResolverFactory).getDelegate() instanceof ImmutableDefaultFactory)) {
            return null;
        }
        ClassImportResolverFactory classImportResolverFactoryE = m.E(variableResolverFactory, this.pCtx);
        char[] cArr = this.expr;
        int i11 = this.start;
        classImportResolverFactoryE.addPackageImport(new String(cArr, i11, this._offset - i11));
        return null;
    }

    public boolean isPackageImport() {
        return this.packageImport;
    }

    public void setPackageImport(boolean z10) {
        this.packageImport = z10;
    }
}
