package n10;

import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.optimizers.dynamic.DynamicOptimizer;

/* JADX INFO: loaded from: classes7.dex */
public class c implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ParserContext f70090a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object f70091b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Class f70092c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private char[] f70093d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f70094e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f70095f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f70097h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f70098i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private org.mvel2.compiler.a f70100k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private org.mvel2.compiler.a f70101l;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f70099j = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f70096g = System.currentTimeMillis();

    public c(ParserContext parserContext, Object obj, Class cls, char[] cArr, int i11, int i12, int i13, org.mvel2.compiler.a aVar) {
        this.f70090a = parserContext;
        this.f70091b = obj;
        this.f70092c = cls;
        this.f70101l = aVar;
        this.f70100k = aVar;
        this.f70097h = i13;
        this.f70093d = cArr;
        this.f70094e = i11;
        this.f70095f = i12;
    }

    private Object b(ParserContext parserContext, Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (DynamicOptimizer.isOverloaded()) {
            DynamicOptimizer.enforceTenureLimit();
        }
        org.mvel2.compiler.a aVarOptimizeCollection = org.mvel2.optimizers.b.b("ASM").optimizeCollection(parserContext, this.f70091b, this.f70092c, this.f70093d, this.f70094e, this.f70095f, obj, obj2, variableResolverFactory);
        this.f70101l = aVarOptimizeCollection;
        return aVarOptimizeCollection.getValue(obj, obj2, variableResolverFactory);
    }

    @Override // n10.a
    public void a() {
        this.f70101l = this.f70100k;
        this.f70099j = false;
        this.f70098i = 0;
        this.f70096g = System.currentTimeMillis();
    }

    @Override // org.mvel2.compiler.a
    public Class getKnownEgressType() {
        return this.f70092c;
    }

    @Override // org.mvel2.compiler.a
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (!this.f70099j) {
            int i11 = this.f70098i + 1;
            this.f70098i = i11;
            if (i11 > DynamicOptimizer.tenuringThreshold) {
                if (System.currentTimeMillis() - this.f70096g < DynamicOptimizer.timeSpan) {
                    this.f70099j = true;
                    return b(this.f70090a, obj, obj2, variableResolverFactory);
                }
                this.f70098i = 0;
                this.f70096g = System.currentTimeMillis();
            }
        }
        return this.f70101l.getValue(obj, obj2, variableResolverFactory);
    }

    @Override // org.mvel2.compiler.a
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        this.f70098i++;
        return this.f70101l.setValue(obj, obj2, variableResolverFactory, obj3);
    }
}
