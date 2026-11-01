package o10;

import java.util.HashMap;
import java.util.Map;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes7.dex */
public class d implements org.mvel2.compiler.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private org.mvel2.compiler.a[] f70651a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private org.mvel2.compiler.a[] f70652b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f70653c;

    public d(org.mvel2.compiler.a[] aVarArr, org.mvel2.compiler.a[] aVarArr2) {
        this.f70651a = aVarArr;
        this.f70653c = aVarArr.length;
        this.f70652b = aVarArr2;
    }

    @Override // org.mvel2.compiler.a
    public Class getKnownEgressType() {
        return Map.class;
    }

    @Override // org.mvel2.compiler.a
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        HashMap map = new HashMap(this.f70653c * 2);
        int i11 = this.f70653c;
        while (true) {
            i11--;
            if (i11 == -1) {
                return map;
            }
            map.put(this.f70651a[i11].getValue(obj, obj2, variableResolverFactory), this.f70652b[i11].getValue(obj, obj2, variableResolverFactory));
        }
    }

    @Override // org.mvel2.compiler.a
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        return null;
    }
}
