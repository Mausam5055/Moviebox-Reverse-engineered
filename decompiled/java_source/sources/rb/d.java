package rb;

import com.google.firebase.crashlytics.internal.common.CommonUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f74243a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f74244b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f74245c;

    public d(int i11, int i12) {
        this.f74244b = i11;
        this.f74245c = i12;
    }

    private String b(String str) {
        if (str != null) {
            return c(str, this.f74245c);
        }
        throw new IllegalArgumentException("Custom attribute key must not be null.");
    }

    public static String c(String str, int i11) {
        if (str == null) {
            return str;
        }
        String strTrim = str.trim();
        return strTrim.length() > i11 ? strTrim.substring(0, i11) : strTrim;
    }

    public synchronized Map a() {
        return Collections.unmodifiableMap(new HashMap(this.f74243a));
    }

    public synchronized boolean d(String str, String str2) {
        String strB = b(str);
        if (this.f74243a.size() >= this.f74244b && !this.f74243a.containsKey(strB)) {
            ob.g.f().k("Ignored entry \"" + str + "\" when adding custom keys. Maximum allowable: " + this.f74244b);
            return false;
        }
        String strC = c(str2, this.f74245c);
        if (CommonUtils.y((String) this.f74243a.get(strB), strC)) {
            return false;
        }
        Map map = this.f74243a;
        if (str2 == null) {
            strC = "";
        }
        map.put(strB, strC);
        return true;
    }

    public synchronized void e(Map map) {
        try {
            int i11 = 0;
            for (Map.Entry entry : map.entrySet()) {
                String strB = b((String) entry.getKey());
                if (this.f74243a.size() < this.f74244b || this.f74243a.containsKey(strB)) {
                    String str = (String) entry.getValue();
                    this.f74243a.put(strB, str == null ? "" : c(str, this.f74245c));
                } else {
                    i11++;
                }
            }
            if (i11 > 0) {
                ob.g.f().k("Ignored " + i11 + " entries when adding custom keys. Maximum allowable: " + this.f74244b);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
