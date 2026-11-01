package com.apm.insight.k;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.NonNull;
import com.apm.insight.CrashType;
import com.apm.insight.Npth;
import com.apm.insight.runtime.m;
import com.apm.insight.runtime.n;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private static volatile d f19610a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile Context f19611b;

    private d(@NonNull Context context) {
        this.f19611b = context;
    }

    public static d a() {
        if (f19610a == null) {
            f19610a = new d(com.apm.insight.e.g());
        }
        return f19610a;
    }

    public static boolean a(JSONObject jSONObject, File file, File file2) {
        try {
            return e.a(e.g(), jSONObject.toString(), file, file2, n.a(System.currentTimeMillis()), new File(com.apm.insight.h.b.a())).a();
        } catch (Throwable th2) {
            com.apm.insight.a.b(th2);
            return false;
        }
    }

    public final void a(JSONObject jSONObject, long j11, boolean z10) {
        File[] fileArr;
        if (jSONObject == null || jSONObject.length() <= 0) {
            return;
        }
        try {
            String strC = e.c();
            int i11 = 0;
            File file = new File(com.apm.insight.l.j.a(this.f19611b), com.apm.insight.e.a(j11, CrashType.ANR, false, false));
            com.apm.insight.l.f.a(file, file.getName(), strC, jSONObject, e.b());
            if (z10 && !Npth.isStopUpload()) {
                jSONObject.put("upload_scene", DevicePublicKeyStringDef.DIRECT);
                jSONObject.put("crash_uuid", file.getName());
                if (com.apm.insight.runtime.a.h()) {
                    HashMap<String, n.a> mapA = n.a(j11, "anr_trace");
                    fileArr = new File[mapA.size() + 2];
                    for (Map.Entry<String, n.a> entry : mapA.entrySet()) {
                        if (!entry.getKey().equals(com.apm.insight.l.a.b())) {
                            fileArr[i11] = com.apm.insight.l.j.a(this.f19611b, entry.getValue().f19829a);
                            i11++;
                        }
                    }
                } else {
                    fileArr = new File[2];
                }
                fileArr[fileArr.length - 1] = com.apm.insight.l.j.a(this.f19611b, com.apm.insight.e.f());
                fileArr[fileArr.length - 2] = n.a(j11);
                if (e.a(strC, jSONObject.toString(), fileArr).a()) {
                    com.apm.insight.l.f.a(file);
                    if (Npth.hasCrash()) {
                        return;
                    }
                    com.apm.insight.l.f.a(com.apm.insight.l.j.e(com.apm.insight.e.g()));
                }
            }
        } catch (Throwable unused) {
        }
    }

    public final boolean a(JSONObject jSONObject) {
        if (jSONObject != null && jSONObject.length() > 0) {
            try {
                String strC = e.c();
                File file = new File(com.apm.insight.l.j.a(this.f19611b), com.apm.insight.l.j.a(com.apm.insight.e.e()));
                com.apm.insight.l.f.a(file, file.getName(), strC, jSONObject, e.a());
                jSONObject.put("upload_scene", DevicePublicKeyStringDef.DIRECT);
                if (!e.b(strC, jSONObject.toString()).a()) {
                    return false;
                }
                com.apm.insight.l.f.a(file);
                return true;
            } catch (Throwable th2) {
                com.apm.insight.a.b(th2);
            }
        }
        return false;
    }

    public final void b(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() <= 0) {
            return;
        }
        try {
            String strF = e.f();
            File file = new File(com.apm.insight.l.j.a(this.f19611b), com.apm.insight.l.j.c());
            com.apm.insight.l.f.a(file, file.getName(), strF, jSONObject, e.b());
            if (e.a(strF, jSONObject.toString()).a()) {
                com.apm.insight.l.f.a(file);
            }
        } catch (Throwable th2) {
            com.apm.insight.a.b(th2);
        }
    }

    public final void c(final JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return;
        }
        m.a().a(new Runnable() { // from class: com.apm.insight.k.d.1
            @Override // java.lang.Runnable
            public final void run() {
                String strC = e.c();
                try {
                    jSONObject.put("upload_scene", DevicePublicKeyStringDef.DIRECT);
                } catch (JSONException e11) {
                    e11.printStackTrace();
                }
                e.b(strC, jSONObject.toString());
            }
        });
    }
}
