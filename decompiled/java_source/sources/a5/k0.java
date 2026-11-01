package a5;

import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes2.dex */
public class k0 implements z0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static k0 f286a = new k0();

    @Override // a5.z0
    public void d(o0 o0Var, Object obj, Object obj2, Type type, int i11) {
        j1 j1Var = o0Var.f296k;
        if (obj == null) {
            j1Var.m0();
        } else {
            j1Var.write(((com.alibaba.fastjson.b) obj).toJSONString());
        }
    }
}
