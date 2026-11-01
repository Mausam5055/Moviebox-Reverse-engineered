package com.mbridge.msdk.setting;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f37313a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HashMap<String, f> f37314b;

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final e f37315a = new e();
    }

    private e() {
        this.f37313a = 6;
        this.f37314b = new HashMap<>();
    }

    public static e a() {
        return b.f37315a;
    }

    public int a(String str) {
        HashMap<String, f> map;
        f fVar;
        int i11;
        if (TextUtils.isEmpty(str) || (map = this.f37314b) == null || !map.containsKey(str) || (fVar = this.f37314b.get(str)) == null) {
            return 0;
        }
        if (fVar.b()) {
            i11 = 1;
        } else {
            i11 = fVar.a() >= this.f37313a ? 2 : 0;
        }
        fVar.a(false);
        return i11;
    }

    public void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (this.f37314b == null) {
                this.f37314b = new HashMap<>();
            }
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                String string = jSONObject.getString(next);
                f fVar = new f();
                fVar.a(next);
                fVar.b(string);
                this.f37314b.put(next, fVar);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }
}
