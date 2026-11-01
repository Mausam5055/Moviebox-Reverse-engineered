package p10;

import com.transsion.mpush.core.config.PushMsgSource;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class a {
    public Map a() {
        HashMap map = new HashMap();
        map.put("set", new f());
        map.put(PushMsgSource.SOURCE_PUSH, new e());
        map.put("help", new c());
        map.put("showvars", new g());
        map.put("inspect", new d());
        map.put("exit", new b());
        return map;
    }
}
