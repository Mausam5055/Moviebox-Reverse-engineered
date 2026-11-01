package com.bytedance.sdk.openadsdk.component.reward;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.utils.Mts;
import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class aa {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile aa Sj;
    private final Map<sU, Long> EjP = Collections.synchronizedMap(new HashMap());
    private final com.bytedance.sdk.openadsdk.common.Sj.sP TKC;
    private final Context sP;

    private aa(Context context) {
        this.sP = context == null ? dNu.Sj() : context.getApplicationContext();
        this.TKC = new com.bytedance.sdk.openadsdk.common.Sj.sP("sp_reward_video");
    }

    public static aa Sj(Context context) {
        if (Sj == null) {
            synchronized (aa.class) {
                try {
                    if (Sj == null) {
                        Sj = new aa(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Sj;
    }

    private File Sj(String str, int i11) {
        return new File(CacheDirFactory.getICacheDir(i11).Sj(), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(final boolean z10, final sU sUVar, final long j11, String str) {
        Long lRemove = this.EjP.remove(sUVar);
        final long jElapsedRealtime = lRemove == null ? 0L : SystemClock.elapsedRealtime() - lRemove.longValue();
        final String str2 = z10 ? "load_video_success" : "load_video_error";
        final String str3 = (z10 || str == null) ? null : str;
        com.bytedance.sdk.openadsdk.Zq.TKC.Sj(str2, false, new com.bytedance.sdk.openadsdk.Zq.sP() { // from class: com.bytedance.sdk.openadsdk.component.reward.aa.3
            @Override // com.bytedance.sdk.openadsdk.Zq.sP
            @Nullable
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                return com.bytedance.sdk.openadsdk.Zq.Sj.EjP.sP().Sj(str2).sP(Mts.Sj(z10, sUVar, jElapsedRealtime, j11, str3).toString());
            }
        });
    }

    private boolean sP(sU sUVar) {
        if (sUVar != null) {
            return uP.TKC(sUVar) || sUVar.UHs() != null;
        }
        return false;
    }

    public com.bytedance.sdk.openadsdk.core.model.Sj Sj(String str, boolean z10) {
        com.bytedance.sdk.openadsdk.core.model.Sj sjTKC;
        if (com.bytedance.sdk.openadsdk.common.Sj.Sj()) {
            com.bytedance.sdk.openadsdk.common.Sj Sj2 = com.bytedance.sdk.openadsdk.common.Sj.Sj("sp_reward_video");
            com.bytedance.sdk.openadsdk.core.model.Sj Sj3 = Sj2.Sj(str, 10500000L);
            if (z10 && Sj3 != null && HiB.sP() == 2 && Sj2.TKC(str)) {
                return null;
            }
            return Sj3;
        }
        long jHiB = this.TKC.HiB(str);
        boolean zVS = this.TKC.vS(str);
        boolean zDq = this.TKC.Dq(str);
        int iSP = HiB.sP();
        if (System.currentTimeMillis() - jHiB < 10500000 && !zVS && (!z10 || iSP != 2 || !zDq)) {
            try {
                String strSP = this.TKC.sP(str);
                if (!TextUtils.isEmpty(strSP)) {
                    JSONObject jSONObject = new JSONObject(strSP);
                    if (jSONObject.has("cypher")) {
                        jSONObject = dNu.TKC().Sj(jSONObject);
                    }
                    if (jSONObject.has("creatives")) {
                        sjTKC = com.bytedance.sdk.openadsdk.core.model.Sj.TKC(jSONObject);
                    } else {
                        sU sUVarSj = com.bytedance.sdk.openadsdk.core.sP.Sj(jSONObject);
                        com.bytedance.sdk.openadsdk.core.model.Sj sj2 = new com.bytedance.sdk.openadsdk.core.model.Sj();
                        sj2.Sj(sUVarSj);
                        sjTKC = sj2;
                    }
                    if (sjTKC != null && sjTKC.HiB()) {
                        Iterator<sU> it = sjTKC.EjP().iterator();
                        while (it.hasNext()) {
                            if (!sP(it.next())) {
                                it.remove();
                            }
                        }
                        if (sjTKC.HiB()) {
                            return sjTKC;
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public String Sj(sU sUVar) {
        if (com.bytedance.sdk.openadsdk.common.Sj.Sj()) {
            return com.bytedance.sdk.openadsdk.common.Sj.Sj("sp_reward_video").Sj(sUVar);
        }
        if (sUVar == null || sUVar.UHs() == null || TextUtils.isEmpty(sUVar.UHs().x())) {
            return null;
        }
        return Sj(sUVar.UHs().x(), sUVar.UHs().G(), sUVar.Gn());
    }

    public String Sj(String str, String str2, int i11) {
        File fileSj;
        if (com.bytedance.sdk.openadsdk.common.Sj.Sj()) {
            return com.bytedance.sdk.openadsdk.common.Sj.Sj("sp_reward_video").Sj(str, str2, i11);
        }
        if (!TextUtils.isEmpty(str) && (fileSj = Sj(str2, i11)) != null && fileSj.exists() && fileSj.isFile() && fileSj.length() > 0) {
            return fileSj.getAbsolutePath();
        }
        return null;
    }

    public void Sj() {
        File[] fileArrListFiles;
        File[] fileArrListFiles2;
        if (com.bytedance.sdk.openadsdk.common.Sj.Sj()) {
            com.bytedance.sdk.openadsdk.common.Sj.Sj("sp_reward_video").sP();
            return;
        }
        try {
            int i11 = Build.VERSION.SDK_INT;
            boolean zJcg = com.bytedance.sdk.openadsdk.core.uA.Jcg("sp_reward_video");
            String str = zJcg ? "files" : "shared_prefs";
            File file = i11 >= 24 ? new File(this.sP.getDataDir(), str) : new File(this.sP.getDatabasePath("1").getParentFile().getParentFile(), str);
            if (file.exists() && file.isDirectory() && (fileArrListFiles2 = file.listFiles(new FileFilter() { // from class: com.bytedance.sdk.openadsdk.component.reward.aa.1
                @Override // java.io.FileFilter
                public boolean accept(File file2) {
                    if (file2 != null) {
                        return file2.getName().contains("sp_reward_video");
                    }
                    return false;
                }
            })) != null) {
                for (File file2 : fileArrListFiles2) {
                    if (zJcg) {
                        try {
                            com.bytedance.sdk.component.utils.Jcg.TKC(file2);
                        } catch (Throwable unused) {
                        }
                    } else {
                        String strReplace = file2.getName().replace(".xml", "");
                        if (Build.VERSION.SDK_INT >= 24) {
                            this.sP.deleteSharedPreferences(strReplace);
                        } else {
                            this.sP.getSharedPreferences(strReplace, 0).edit().clear().apply();
                            com.bytedance.sdk.component.utils.Jcg.TKC(file2);
                        }
                    }
                }
            }
        } catch (Throwable unused2) {
        }
        try {
            File cacheDir = this.sP.getCacheDir();
            if (cacheDir == null || !cacheDir.exists() || !cacheDir.isDirectory() || (fileArrListFiles = cacheDir.listFiles(new FileFilter() { // from class: com.bytedance.sdk.openadsdk.component.reward.aa.2
                @Override // java.io.FileFilter
                public boolean accept(File file3) {
                    if (file3 != null) {
                        return file3.getName().contains("reward_video_cache");
                    }
                    return false;
                }
            })) == null) {
                return;
            }
            for (File file3 : fileArrListFiles) {
                try {
                    com.bytedance.sdk.component.utils.Jcg.TKC(file3);
                } catch (Throwable unused3) {
                }
            }
        } catch (Throwable unused4) {
        }
    }

    public void Sj(AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.Sj sj2) {
        sU sUVarVS;
        if (sj2 == null || sj2.vS() == null || !sj2.vS().ODI()) {
            if (com.bytedance.sdk.openadsdk.common.Sj.Sj()) {
                com.bytedance.sdk.openadsdk.common.Sj.Sj("sp_reward_video").Sj(adSlot, sj2);
                return;
            }
            if (sj2 == null || sj2.TEQ() || adSlot == null || !TextUtils.isEmpty(adSlot.getBidAdm()) || (sUVarVS = sj2.vS()) == null || sUVarVS.DSn() == 2) {
                return;
            }
            String strSP = sj2.sP();
            synchronized (sj2) {
                try {
                    if (!sj2.TEQ()) {
                        try {
                            this.TKC.Sj(adSlot, sj2.Fmk().toString(), strSP);
                        } catch (Throwable unused) {
                            sj2.Ym();
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public void Sj(final sU sUVar, final com.bytedance.sdk.openadsdk.common.Sj.InterfaceC0247Sj<Object> interfaceC0247Sj) {
        if (!com.bytedance.sdk.openadsdk.core.aa.HiB.Sj.Sj()) {
            interfaceC0247Sj.Sj(true, null);
            return;
        }
        if (com.bytedance.sdk.openadsdk.common.Sj.Sj()) {
            com.bytedance.sdk.openadsdk.common.Sj.Sj("sp_reward_video").Sj(sUVar, interfaceC0247Sj);
            return;
        }
        this.EjP.put(sUVar, Long.valueOf(SystemClock.elapsedRealtime()));
        if (sUVar == null || sUVar.UHs() == null || TextUtils.isEmpty(sUVar.UHs().x())) {
            if (interfaceC0247Sj != null) {
                interfaceC0247Sj.Sj(false, null);
            }
            Sj(false, sUVar, -1L, null);
        } else {
            String strX = sUVar.UHs().x();
            File fileSj = Sj(sUVar.UHs().G(), sUVar.Gn());
            com.bytedance.sdk.component.Jcg.sP.Sj sjEjP = com.bytedance.sdk.openadsdk.TzV.sP.Sj().sP().EjP();
            sjEjP.sP(strX);
            sjEjP.Sj(fileSj.getParent(), fileSj.getName());
            sjEjP.Sj(new com.bytedance.sdk.component.Jcg.Sj.Sj() { // from class: com.bytedance.sdk.openadsdk.component.reward.aa.4
                @Override // com.bytedance.sdk.component.Jcg.Sj.Sj
                public void Sj(com.bytedance.sdk.component.Jcg.sP.TKC tkc, com.bytedance.sdk.component.Jcg.sP sPVar) {
                    if (sPVar.vS() && sPVar.HiB() != null && sPVar.HiB().exists()) {
                        com.bytedance.sdk.openadsdk.common.Sj.InterfaceC0247Sj interfaceC0247Sj2 = interfaceC0247Sj;
                        if (interfaceC0247Sj2 != null) {
                            interfaceC0247Sj2.Sj(true, null);
                        }
                        aa.this.Sj(true, sUVar, sPVar.Sj(), sPVar.sP());
                        return;
                    }
                    com.bytedance.sdk.openadsdk.common.Sj.InterfaceC0247Sj interfaceC0247Sj3 = interfaceC0247Sj;
                    if (interfaceC0247Sj3 != null) {
                        interfaceC0247Sj3.Sj(false, null);
                    }
                    aa.this.Sj(false, sUVar, sPVar.Sj(), sPVar.sP());
                }

                @Override // com.bytedance.sdk.component.Jcg.Sj.Sj
                public void Sj(com.bytedance.sdk.component.Jcg.sP.TKC tkc, IOException iOException) {
                    com.bytedance.sdk.openadsdk.common.Sj.InterfaceC0247Sj interfaceC0247Sj2 = interfaceC0247Sj;
                    if (interfaceC0247Sj2 != null) {
                        interfaceC0247Sj2.Sj(false, null);
                    }
                    aa.this.Sj(false, sUVar, -2L, iOException.getMessage());
                }
            });
        }
    }

    public void Sj(String str) {
        if (com.bytedance.sdk.openadsdk.common.Sj.Sj()) {
            com.bytedance.sdk.openadsdk.common.Sj.Sj("sp_reward_video").sP(str);
        } else {
            this.TKC.Jcg(str);
        }
    }

    public void Sj(String str, sU sUVar) {
        if (com.bytedance.sdk.openadsdk.common.Sj.Sj()) {
            com.bytedance.sdk.openadsdk.common.Sj.Sj("sp_reward_video").Sj(str, sUVar);
            return;
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String strTKC = this.TKC.TKC(str);
        String strCKW = sUVar != null ? sUVar.cKW() : "";
        if (TextUtils.isEmpty(strTKC) || TextUtils.isEmpty(strCKW) || strTKC.equals(strCKW)) {
            this.TKC.uA(str);
        }
    }
}
