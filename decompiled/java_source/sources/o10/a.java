package o10;

import java.lang.reflect.Array;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes7.dex */
public class a implements org.mvel2.compiler.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public org.mvel2.compiler.a[] f70647a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Class f70648b;

    public a(org.mvel2.compiler.a[] aVarArr, Class cls) {
        this.f70647a = aVarArr;
        this.f70648b = cls;
    }

    @Override // org.mvel2.compiler.a
    public Class getKnownEgressType() {
        return this.f70648b;
    }

    @Override // org.mvel2.compiler.a
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        int i11 = 0;
        if (Object.class.equals(this.f70648b)) {
            int length = this.f70647a.length;
            Object[] objArr = new Object[length];
            while (i11 < length) {
                objArr[i11] = this.f70647a[i11].getValue(obj, obj2, variableResolverFactory);
                i11++;
            }
            return objArr;
        }
        Object objNewInstance = Array.newInstance((Class<?>) this.f70648b, this.f70647a.length);
        while (true) {
            org.mvel2.compiler.a[] aVarArr = this.f70647a;
            if (i11 >= aVarArr.length) {
                return objNewInstance;
            }
            Array.set(objNewInstance, i11, aVarArr[i11].getValue(obj, obj2, variableResolverFactory));
            i11++;
        }
    }

    @Override // org.mvel2.compiler.a
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        return null;
    }
}
