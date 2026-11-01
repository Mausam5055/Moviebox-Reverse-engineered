package com.bytedance.sdk.openadsdk.core.EjP;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.HiB;
import com.bytedance.sdk.component.utils.Jcg;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.Zq.Sj.EjP;
import com.bytedance.sdk.openadsdk.core.aa.TKC.TKC;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.multipro.sP;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class Sj {
    private final List<String> Sj = new CopyOnWriteArrayList();
    private final TKC sP = new TKC(5, 5, true);
    private final ConcurrentHashMap<String, Long> TKC = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.core.EjP.Sj$Sj, reason: collision with other inner class name */
    private static class C0255Sj {
        private static final Sj Sj = new Sj();
    }

    public static Sj Sj() {
        return C0255Sj.Sj;
    }

    private File Sj(Context context, boolean z10) {
        String str;
        String name = new File(CacheDirFactory.getRootDir()).getName();
        if (sP.TKC()) {
            str = name + "/music";
        } else {
            str = name + "//music";
        }
        return Jcg.Sj(context, z10, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(final int i11, final long j11, final int i12, final String str) {
        com.bytedance.sdk.openadsdk.Zq.TKC.Sj("music_preload_finish", false, new com.bytedance.sdk.openadsdk.Zq.sP() { // from class: com.bytedance.sdk.openadsdk.core.EjP.Sj.3
            @Override // com.bytedance.sdk.openadsdk.Zq.sP
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("result", i11);
                long j12 = j11;
                if (j12 != -1) {
                    jSONObject.put("load_duration", j12);
                }
                EjP ejPSP = EjP.sP().Sj("music_preload_finish").sP(jSONObject.toString());
                if (!TextUtils.isEmpty(str)) {
                    ejPSP.sP(i12);
                    ejPSP.vS(str);
                }
                ejPSP.Sj();
                return ejPSP;
            }
        });
    }

    private void Sj(sU sUVar) {
        sU.Sj sjXhi;
        String strYm;
        if (sUVar == null || (sjXhi = sUVar.xhi()) == null || (strYm = sjXhi.Ym()) == null || !strYm.contains("music_url")) {
            return;
        }
        TKC();
        String strEjP = sjXhi.EjP();
        if (TextUtils.isEmpty(strEjP)) {
            try {
                new JSONObject().put("result", 0);
            } catch (JSONException e11) {
                com.bytedance.sdk.component.utils.sU.sP("MusicCacheManager", e11.getMessage());
            }
            Sj(0, -1L, 10001, "music url string is null");
            return;
        }
        File fileSP = sP(strEjP);
        if (fileSP == null) {
            return;
        }
        fileSP.getPath();
        if (Sj(fileSP)) {
            Sj(2, -1L, -1, null);
        } else {
            Sj(sUVar, strEjP, fileSP);
        }
    }

    private void Sj(sU sUVar, String str, File file) {
        if (TKC(str)) {
            this.TKC.put(str, Long.valueOf(SystemClock.elapsedRealtime()));
            com.bytedance.sdk.component.Jcg.sP.Sj sjEjP = com.bytedance.sdk.openadsdk.TzV.sP.Sj().sP().EjP();
            sjEjP.sP(str);
            sjEjP.Sj(file.getParent(), file.getName());
            sjEjP.TKC(str);
            this.Sj.add(str);
            sjEjP.Sj(new com.bytedance.sdk.component.Jcg.Sj.Sj() { // from class: com.bytedance.sdk.openadsdk.core.EjP.Sj.1
                @Override // com.bytedance.sdk.component.Jcg.Sj.Sj
                public void Sj(com.bytedance.sdk.component.Jcg.sP.TKC tkc, com.bytedance.sdk.component.Jcg.sP sPVar) {
                    sPVar.TKC();
                    sPVar.Sj();
                    String strTKC = tkc.TKC();
                    Long l11 = (Long) Sj.this.TKC.get(strTKC);
                    if (sPVar.vS() && sPVar.HiB() != null && sPVar.HiB().exists()) {
                        sPVar.HiB();
                        if (l11 != null) {
                            Sj.this.TKC.remove(strTKC);
                            Sj.this.Sj(1, SystemClock.elapsedRealtime() - l11.longValue(), -1, null);
                        }
                        try {
                            Jcg.sP(sPVar.HiB());
                        } catch (IOException e11) {
                            com.bytedance.sdk.component.utils.sU.sP("MusicCacheManager", e11.getMessage());
                        }
                    }
                    if (sPVar.vS() || l11 == null) {
                        return;
                    }
                    Sj.this.Sj(0, SystemClock.elapsedRealtime() - l11.longValue(), -2, "http response status code isn't 200");
                }

                @Override // com.bytedance.sdk.component.Jcg.Sj.Sj
                public void Sj(com.bytedance.sdk.component.Jcg.sP.TKC tkc, IOException iOException) {
                    Long l11 = (Long) Sj.this.TKC.get(tkc.TKC());
                    if (l11 != null) {
                        Sj.this.Sj(0, SystemClock.elapsedRealtime() - l11.longValue(), -2, "http response status code isn't 200");
                    }
                }
            });
        }
    }

    private boolean Sj(File file) {
        return file.exists() && file.length() != 0;
    }

    private boolean TKC(String str) {
        return !this.Sj.contains(str);
    }

    public InputStream Sj(String str) {
        File fileSP = sP(str);
        if (fileSP != null && Sj(fileSP)) {
            try {
                return new FileInputStream(fileSP);
            } catch (Exception e11) {
                com.bytedance.sdk.component.utils.sU.sP("MusicCacheManager", e11.getMessage());
            }
        }
        return null;
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.model.Sj sj2) {
        List<sU> listEjP = sj2.EjP();
        if (listEjP == null || listEjP.size() == 0) {
            return;
        }
        for (int i11 = 0; i11 < listEjP.size(); i11++) {
            sU sUVar = listEjP.get(i11);
            if (sUVar != null) {
                Sj(sUVar);
            }
        }
    }

    public void Sj(final boolean z10) {
        com.bytedance.sdk.openadsdk.Zq.TKC.Sj("music_cache", false, new com.bytedance.sdk.openadsdk.Zq.sP() { // from class: com.bytedance.sdk.openadsdk.core.EjP.Sj.4
            @Override // com.bytedance.sdk.openadsdk.Zq.sP
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("result", z10);
                EjP ejPSP = EjP.sP().Sj("music_cache").sP(jSONObject.toString());
                ejPSP.Sj();
                return ejPSP;
            }
        });
    }

    public void TKC() {
        com.bytedance.sdk.openadsdk.Zq.TKC.Sj("music_preload_start", false, new com.bytedance.sdk.openadsdk.Zq.sP() { // from class: com.bytedance.sdk.openadsdk.core.EjP.Sj.2
            @Override // com.bytedance.sdk.openadsdk.Zq.sP
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                EjP ejPSj = EjP.sP().Sj("music_preload_start");
                ejPSj.Sj();
                return ejPSj;
            }
        });
    }

    public File sP(String str) {
        String str2;
        String strSj = HiB.Sj(str);
        if (strSj == null) {
            return null;
        }
        String name = new File(CacheDirFactory.getRootDir()).getName();
        if (sP.TKC()) {
            str2 = name + "/music/";
        } else {
            str2 = name + "//music/";
        }
        return Jcg.Sj(dNu.Sj(), sP.TKC(), str2, strSj);
    }

    public void sP() {
        File fileSj = Sj(dNu.Sj(), sP.TKC());
        fileSj.getAbsolutePath();
        try {
            this.sP.Sj(fileSj);
        } catch (IOException e11) {
            com.bytedance.sdk.component.utils.sU.Sj("MusicCacheManager", "trimFileCache fail", e11);
        }
    }
}
