package n10;

import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.optimizers.dynamic.DynamicOptimizer;

/* JADX INFO: loaded from: classes7.dex */
public class e implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private char[] f70112a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f70113b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f70114c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f70115d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f70116e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f70117f = System.currentTimeMillis();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ParserContext f70118g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final org.mvel2.compiler.a f70119h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private org.mvel2.compiler.a f70120i;

    public e(ParserContext parserContext, char[] cArr, int i11, int i12, org.mvel2.compiler.a aVar) {
        this.f70120i = aVar;
        this.f70119h = aVar;
        this.f70118g = parserContext;
        this.f70112a = cArr;
        this.f70113b = i11;
        this.f70114c = i12;
    }

    private Object b(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        if (DynamicOptimizer.isOverloaded()) {
            DynamicOptimizer.enforceTenureLimit();
        }
        this.f70120i = org.mvel2.optimizers.b.b("ASM").optimizeSetAccessor(this.f70118g, this.f70112a, this.f70113b, this.f70114c, obj, obj2, variableResolverFactory, false, obj3, obj3 != null ? obj3.getClass() : Object.class);
        return obj3;
    }

    @Override // n10.a
    public void a() {
        this.f70120i = this.f70119h;
        this.f70115d = false;
        this.f70116e = 0;
        this.f70117f = System.currentTimeMillis();
    }

    @Override // org.mvel2.compiler.a
    public Class getKnownEgressType() {
        return this.f70119h.getKnownEgressType();
    }

    @Override // org.mvel2.compiler.a
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        throw new RuntimeException("value cannot be read with this accessor");
    }

    @Override // org.mvel2.compiler.a
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        if (!this.f70115d) {
            int i11 = this.f70116e + 1;
            this.f70116e = i11;
            if (i11 > DynamicOptimizer.tenuringThreshold) {
                if (System.currentTimeMillis() - this.f70117f < DynamicOptimizer.timeSpan) {
                    this.f70115d = true;
                    return b(obj, obj2, variableResolverFactory, obj3);
                }
                this.f70116e = 0;
                this.f70117f = System.currentTimeMillis();
            }
        }
        this.f70120i.setValue(obj, obj2, variableResolverFactory, obj3);
        return obj3;
    }
}
