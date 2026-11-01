package com.bykv.vk.openvk.preload.geckox;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.bykv.vk.openvk.preload.b.d;
import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import com.bykv.vk.openvk.preload.geckox.model.CheckRequestBodyModel;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.bykv.vk.openvk.preload.falconx.a.a f20573a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Queue<String> f20574b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b f20575c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private File f20576d;

    private a(b bVar) {
        new ArrayList();
        this.f20573a = new com.bykv.vk.openvk.preload.falconx.a.a();
        this.f20574b = new LinkedBlockingQueue();
        this.f20575c = bVar;
        File fileN = bVar.n();
        this.f20576d = fileN;
        fileN.mkdirs();
        com.bykv.vk.openvk.preload.geckox.statistic.b.a(this, this.f20575c);
    }

    public static a a(b bVar) {
        List<String> listE = bVar.e();
        if (listE == null || listE.isEmpty()) {
            throw new IllegalArgumentException("access key empty");
        }
        bVar.a();
        return new a(bVar);
    }

    private boolean a() {
        List<String> listD = this.f20575c.d();
        List<String> listE = this.f20575c.e();
        if (listD == null || listD.isEmpty() || listE == null || listE.isEmpty()) {
            return false;
        }
        for (String str : listE) {
            Iterator<String> it = listD.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (TextUtils.equals(str, it.next())) {
                    z10 = true;
                }
            }
            if (!z10) {
                return false;
            }
        }
        return true;
    }

    private boolean b(Map<String, List<CheckRequestBodyModel.TargetChannel>> map) {
        if (map != null && !map.isEmpty()) {
            List<String> listE = this.f20575c.e();
            for (Map.Entry<String, List<CheckRequestBodyModel.TargetChannel>> entry : map.entrySet()) {
                Iterator<String> it = listE.iterator();
                boolean z10 = false;
                while (it.hasNext()) {
                    if (TextUtils.equals(it.next(), entry.getKey())) {
                        z10 = true;
                    }
                }
                if (!z10) {
                    return false;
                }
            }
        }
        return true;
    }

    static /* synthetic */ void d(a aVar) {
        new ArrayList().addAll(aVar.f20575c.e());
        try {
            String strA = com.bykv.vk.openvk.preload.geckox.c.b.a().b().a(new com.bykv.vk.openvk.preload.geckox.a.a());
            if (aVar.f20575c.p() != null && aVar.f20575c.p().a()) {
                aVar.f20575c.p();
            } else if (aVar.f20574b.size() < 10) {
                aVar.f20574b.add(strA);
            }
        } catch (Throwable unused) {
        }
    }

    public final void a(Class<? extends d<?, ?>> cls, com.bykv.vk.openvk.preload.b.b.a aVar) {
        this.f20573a.a(cls, aVar);
    }

    public final void a(final Map<String, List<CheckRequestBodyModel.TargetChannel>> map) {
        final String str = "default";
        if (TextUtils.isEmpty("default")) {
            throw new IllegalArgumentException("groupType == null");
        }
        if (!a()) {
            throw new IllegalArgumentException("deployments keys not in local keys");
        }
        if (!b(map)) {
            throw new IllegalArgumentException("target keys not in deployments keys");
        }
        final com.bykv.vk.openvk.preload.geckox.e.a aVar = null;
        final Map map2 = null;
        b.h().execute(new Runnable() { // from class: com.bykv.vk.openvk.preload.geckox.a.1
            @Override // java.lang.Runnable
            public final void run() {
                com.bykv.vk.openvk.preload.geckox.a.a.b bVarA;
                GeckoLogger.d("gecko-debug-tag", "start check update...", str);
                if (a.this.f20575c.b() != null) {
                    bVarA = a.this.f20575c.b().a();
                    bVarA.a(a.this.f20575c.b(), a.this.f20575c.n(), a.this.f20575c.e());
                } else {
                    bVarA = null;
                }
                com.bykv.vk.openvk.preload.geckox.a.a.b bVar = bVarA;
                try {
                    try {
                        a.this.f20575c.a(new JSONObject());
                        GeckoLogger.d("gecko-debug-tag", "update finished", com.bykv.vk.openvk.preload.geckox.h.a.a(aVar, a.this.f20576d, a.this.f20575c, a.this.f20573a, map2, map, str).a(str));
                        if (bVar != null) {
                            bVar.a();
                        }
                        JSONObject jSONObjectF = a.this.f20575c.f();
                        if (jSONObjectF == null) {
                            jSONObjectF = new JSONObject();
                        }
                        try {
                            jSONObjectF.put("download_duration", SystemClock.elapsedRealtime() - a.this.f20575c.s());
                        } catch (Throwable unused) {
                        }
                        a.this.f20575c.q().upload("download_gecko_end", jSONObjectF);
                        GeckoLogger.d("gecko-debug-tag", "all channel update finished");
                    } catch (Exception e11) {
                        try {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, false);
                            jSONObject.put(NotificationCompat.CATEGORY_MESSAGE, e11.toString());
                            jSONObject.put("code", 2);
                            a.this.f20575c.a(jSONObject);
                        } catch (Throwable unused2) {
                        }
                        GeckoLogger.w("gecko-debug-tag", "Gecko update failed:", e11);
                        if (bVar != null) {
                            bVar.a();
                        }
                        JSONObject jSONObjectF2 = a.this.f20575c.f();
                        if (jSONObjectF2 == null) {
                            jSONObjectF2 = new JSONObject();
                        }
                        try {
                            jSONObjectF2.put("download_duration", SystemClock.elapsedRealtime() - a.this.f20575c.s());
                        } catch (Throwable unused3) {
                        }
                        a.this.f20575c.q().upload("download_gecko_end", jSONObjectF2);
                        GeckoLogger.d("gecko-debug-tag", "all channel update finished");
                    }
                    a.d(a.this);
                } catch (Throwable th2) {
                    if (bVar != null) {
                        bVar.a();
                    }
                    JSONObject jSONObjectF3 = a.this.f20575c.f();
                    if (jSONObjectF3 == null) {
                        jSONObjectF3 = new JSONObject();
                    }
                    try {
                        jSONObjectF3.put("download_duration", SystemClock.elapsedRealtime() - a.this.f20575c.s());
                    } catch (Throwable unused4) {
                    }
                    a.this.f20575c.q().upload("download_gecko_end", jSONObjectF3);
                    GeckoLogger.d("gecko-debug-tag", "all channel update finished");
                    throw th2;
                }
            }
        });
    }
}
