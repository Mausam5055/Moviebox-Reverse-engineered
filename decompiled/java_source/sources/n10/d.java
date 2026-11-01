package n10;

import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.optimizers.OptimizationNotSupported;
import org.mvel2.optimizers.dynamic.DynamicOptimizer;

/* JADX INFO: loaded from: classes7.dex */
public class d implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private char[] f70102a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f70103b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f70104c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f70106e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f70107f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ParserContext f70109h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private org.mvel2.compiler.a f70110i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private org.mvel2.compiler.a f70111j;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f70108g = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f70105d = System.currentTimeMillis();

    public d(ParserContext parserContext, char[] cArr, int i11, int i12, int i13, org.mvel2.compiler.a aVar) {
        this.f70111j = aVar;
        this.f70110i = aVar;
        this.f70106e = i13;
        this.f70102a = cArr;
        this.f70103b = i11;
        this.f70104c = i12;
        this.f70109h = parserContext;
    }

    private Object b(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (DynamicOptimizer.isOverloaded()) {
            DynamicOptimizer.enforceTenureLimit();
        }
        org.mvel2.optimizers.a aVarB = org.mvel2.optimizers.b.b("ASM");
        int i11 = this.f70106e;
        if (i11 == 0) {
            this.f70111j = aVarB.optimizeAccessor(this.f70109h, this.f70102a, this.f70103b, this.f70104c, obj, obj2, variableResolverFactory, false, null);
            return aVarB.getResultOptPass();
        }
        if (i11 == 2) {
            org.mvel2.compiler.a aVarOptimizeCollection = aVarB.optimizeCollection(this.f70109h, obj, null, this.f70102a, this.f70103b, this.f70104c, obj, obj2, variableResolverFactory);
            this.f70111j = aVarOptimizeCollection;
            return aVarOptimizeCollection.getValue(obj, obj2, variableResolverFactory);
        }
        if (i11 != 3) {
            return null;
        }
        org.mvel2.compiler.a aVarOptimizeObjectCreation = aVarB.optimizeObjectCreation(this.f70109h, this.f70102a, this.f70103b, this.f70104c, obj, obj2, variableResolverFactory);
        this.f70111j = aVarOptimizeObjectCreation;
        return aVarOptimizeObjectCreation.getValue(obj, obj2, variableResolverFactory);
    }

    @Override // n10.a
    public void a() {
        this.f70111j = this.f70110i;
        this.f70108g = false;
        this.f70107f = 0;
        this.f70105d = System.currentTimeMillis();
    }

    @Override // org.mvel2.compiler.a
    public Class getKnownEgressType() {
        return this.f70110i.getKnownEgressType();
    }

    @Override // org.mvel2.compiler.a
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (!this.f70108g) {
            int i11 = this.f70107f + 1;
            this.f70107f = i11;
            if (i11 > DynamicOptimizer.tenuringThreshold) {
                if (System.currentTimeMillis() - this.f70105d < DynamicOptimizer.timeSpan) {
                    this.f70108g = true;
                    try {
                        return b(obj, obj2, variableResolverFactory);
                    } catch (OptimizationNotSupported unused) {
                    }
                } else {
                    this.f70107f = 0;
                    this.f70105d = System.currentTimeMillis();
                }
            }
        }
        return this.f70111j.getValue(obj, obj2, variableResolverFactory);
    }

    @Override // org.mvel2.compiler.a
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        this.f70107f++;
        return this.f70111j.setValue(obj, obj2, variableResolverFactory, obj3);
    }
}
