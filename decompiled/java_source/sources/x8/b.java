package x8;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b {
    public static Object a(int i11, Object obj, a aVar, c cVar) {
        Object objApply;
        if (i11 < 1) {
            return aVar.apply(obj);
        }
        do {
            objApply = aVar.apply(obj);
            obj = cVar.a(obj, objApply);
            if (obj == null) {
                break;
            }
            i11--;
        } while (i11 >= 1);
        return objApply;
    }
}
