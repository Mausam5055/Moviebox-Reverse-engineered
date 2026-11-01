package e5;

import a5.o0;
import a5.z0;
import java.lang.reflect.Type;
import springfox.documentation.spring.web.json.Json;

/* JADX INFO: loaded from: classes3.dex */
public class a implements z0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f61550a = new a();

    @Override // a5.z0
    public void d(o0 o0Var, Object obj, Object obj2, Type type, int i11) {
        o0Var.r().write(((Json) obj).value());
    }
}
