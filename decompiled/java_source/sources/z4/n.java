package z4;

import com.alibaba.fastjson.JSONException;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes3.dex */
public class n implements b2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final n f79246a = new n();

    @Override // z4.b2
    public int b() {
        return 0;
    }

    @Override // z4.b2
    public Object c(y4.a aVar, Type type, Object obj) {
        int iQ0;
        y4.c cVar = (y4.c) aVar.s();
        String strW = cVar.w(aVar.v());
        cVar.Z();
        int iQ1 = cVar.q0();
        if (iQ1 == 25) {
            String str = strW + ".";
            strW = str + cVar.w(aVar.v());
            cVar.Z();
            iQ1 = cVar.q0();
        }
        com.alibaba.fastjson.c cVar2 = new com.alibaba.fastjson.c(strW);
        if (iQ1 != 10) {
            throw new JSONException("illegal jsonp : " + cVar.k());
        }
        cVar.Z();
        while (true) {
            cVar2.b(aVar.T());
            iQ0 = cVar.q0();
            if (iQ0 != 16) {
                break;
            }
            cVar.Z();
        }
        if (iQ0 == 11) {
            cVar.Z();
            if (cVar.q0() == 24) {
                cVar.Z();
            }
            return cVar2;
        }
        throw new JSONException("illegal jsonp : " + cVar.k());
    }
}
