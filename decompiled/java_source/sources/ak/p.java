package ak;

import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public abstract class p {
    public static final void a(String str, String str2, String str3, Float f11) {
        HashMap map = new HashMap();
        map.put("module_name", "long_pressed");
        map.put("subject_id", str2);
        map.put("ops", str3);
        map.put("speed", String.valueOf(f11));
        hj.i iVar = hj.i.f64505a;
        if (str == null) {
            return;
        }
        iVar.p(str, map);
    }

    public static final void b(String str, long j11, String str2, String str3, Float f11) {
        HashMap map = new HashMap();
        map.put("module_name", "long_pressed");
        map.put("subject_id", str2);
        map.put("ops", str3);
        map.put("speed", String.valueOf(f11));
        map.put("duration", String.valueOf(j11));
        hj.i iVar = hj.i.f64505a;
        if (str == null) {
            return;
        }
        iVar.D(str, map);
    }
}
