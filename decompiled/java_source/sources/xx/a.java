package xx;

import android.os.Parcelable;
import com.blankj.utilcode.util.o;
import com.therouter.router.Navigator;
import com.transsion.web.bean.ApiRequestData;
import java.io.Serializable;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f78456a = new a();

    private a() {
    }

    public final Map a(JSONObject jSONObject) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<String> itKeys = jSONObject != null ? jSONObject.keys() : null;
        while (itKeys != null && itKeys.hasNext()) {
            String next = itKeys.next();
            linkedHashMap.put(next, jSONObject.get(next));
        }
        return linkedHashMap;
    }

    public final void b(Navigator postcard, Map params) {
        Intrinsics.h(postcard, "postcard");
        Intrinsics.h(params, "params");
        for (Map.Entry entry : params.entrySet()) {
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            if (value instanceof String) {
                postcard.K(str, (String) value);
            } else if (value instanceof Integer) {
                postcard.F(str, ((Number) value).intValue());
            } else if (value instanceof Boolean) {
                postcard.z(str, ((Boolean) value).booleanValue());
            } else if (value instanceof Double) {
                postcard.D(str, ((Number) value).doubleValue());
            } else if (value instanceof Float) {
                postcard.E(str, ((Number) value).floatValue());
            } else if (value instanceof Long) {
                postcard.G(str, ((Number) value).longValue());
            } else if (value instanceof Byte) {
                postcard.B(str, ((Number) value).byteValue());
            } else if (value instanceof Character) {
                postcard.C(str, ((Character) value).charValue());
            } else if (value instanceof Serializable) {
                postcard.J(str, (Serializable) value);
            } else if (value instanceof Parcelable) {
                postcard.I(str, (Parcelable) value);
            } else {
                postcard.H(str, value);
            }
        }
    }

    public final ApiRequestData c(String str) {
        try {
            return (ApiRequestData) o.d(str, ApiRequestData.class);
        } catch (Throwable unused) {
            return null;
        }
    }
}
