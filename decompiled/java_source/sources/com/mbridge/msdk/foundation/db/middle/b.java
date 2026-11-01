package com.mbridge.msdk.foundation.db.middle;

import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.k;
import java.util.Collection;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.mbridge.msdk.foundation.same.buffer.a f35108a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private k f35109b;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f35110a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.foundation.same.buffer.a f35111b;

        a(boolean z10, com.mbridge.msdk.foundation.same.buffer.a aVar) {
            this.f35110a = z10;
            this.f35111b = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f35110a || b.this.f35109b == null) {
                return;
            }
            for (String str : this.f35111b.a()) {
                b.this.f35109b.a(str, b.this.f35108a.a(str));
            }
        }
    }

    /* JADX INFO: renamed from: com.mbridge.msdk.foundation.db.middle.b$b, reason: collision with other inner class name */
    private static class C0484b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static b f35113a = new b(null);
    }

    private b() {
        this.f35108a = new com.mbridge.msdk.foundation.same.buffer.a(1000);
        try {
            k kVarA = k.a(g.a(c.m().d()));
            this.f35109b = kVarA;
            a(kVarA.a(), false);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    /* synthetic */ b(a aVar) {
        this();
    }

    public static b a() {
        return C0484b.f35113a;
    }

    public JSONObject a(String str) {
        k kVar;
        JSONObject jSONObjectA = this.f35108a.a(str);
        if (jSONObjectA != null || (kVar = this.f35109b) == null) {
            return jSONObjectA;
        }
        JSONObject jSONObjectB = kVar.b(str);
        if (jSONObjectB != null) {
            this.f35108a.a(str, jSONObjectB);
        }
        return jSONObjectB;
    }

    public void a(JSONObject jSONObject, boolean z10) {
        if (jSONObject != null) {
            Iterator<String> itKeys = jSONObject.keys();
            com.mbridge.msdk.foundation.same.buffer.a aVar = new com.mbridge.msdk.foundation.same.buffer.a(100);
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(next);
                this.f35108a.a(next, jSONObjectOptJSONObject);
                aVar.a(next, jSONObjectOptJSONObject);
            }
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new a(z10, aVar));
        }
    }

    public JSONArray b() {
        return new JSONArray((Collection) this.f35108a.a());
    }
}
