package a5;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;
import java.math.BigInteger;
import z4.b2;

/* JADX INFO: loaded from: classes2.dex */
public class s implements z0, b2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final BigInteger f341a = BigInteger.valueOf(-9007199254740991L);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final BigInteger f342b = BigInteger.valueOf(9007199254740991L);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final s f343c = new s();

    public static Object e(y4.a aVar) {
        y4.b bVar = aVar.f78831f;
        if (bVar.q0() != 2) {
            Object objT = aVar.T();
            if (objT == null) {
                return null;
            }
            return TypeUtils.j(objT);
        }
        String strC0 = bVar.C0();
        bVar.c0(16);
        if (strC0.length() <= 65535) {
            return new BigInteger(strC0);
        }
        throw new JSONException("decimal overflow");
    }

    @Override // z4.b2
    public int b() {
        return 2;
    }

    @Override // z4.b2
    public Object c(y4.a aVar, Type type, Object obj) {
        return e(aVar);
    }

    @Override // a5.z0
    public void d(o0 o0Var, Object obj, Object obj2, Type type, int i11) {
        j1 j1Var = o0Var.f296k;
        if (obj == null) {
            j1Var.p0(SerializerFeature.WriteNullNumberAsZero);
            return;
        }
        BigInteger bigInteger = (BigInteger) obj;
        String string = bigInteger.toString();
        if (string.length() < 16 || !SerializerFeature.isEnabled(i11, j1Var.f269c, SerializerFeature.BrowserCompatible) || (bigInteger.compareTo(f341a) >= 0 && bigInteger.compareTo(f342b) <= 0)) {
            j1Var.write(string);
        } else {
            j1Var.q0(string);
        }
    }
}
