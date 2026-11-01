package com.bytedance.sdk.openadsdk.sU.Sj;

import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import android.webkit.WebResourceResponse;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.Dq.Dq;
import com.bytedance.sdk.component.utils.LD;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.component.utils.uvD;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.sef;
import com.bytedance.sdk.openadsdk.core.settings.uA;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.cloud.tmc.miniutils.constant.TimeConstants;
import java.io.File;
import java.io.FileInputStream;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class TKC {
    private static volatile TKC Sj;
    private String EjP;
    private final Set<String> HiB = Collections.synchronizedSet(new HashSet());
    private String TKC;
    private String sP;

    private String EjP() {
        if (TextUtils.isEmpty(this.sP)) {
            try {
                File file = new File(dNu.Sj().getCacheDir(), "playable");
                if (!file.exists()) {
                    file.mkdirs();
                }
                this.sP = file.getAbsolutePath();
            } catch (Throwable th2) {
                sU.sP("PlayableResManager", "init root path error: ".concat(String.valueOf(th2)));
            }
        }
        return this.sP;
    }

    private String HiB() {
        if (TextUtils.isEmpty(this.TKC)) {
            String str = EjP() + File.separator + "common";
            File file = new File(str);
            if (!file.exists()) {
                file.mkdirs();
            }
            this.TKC = str;
        }
        return this.TKC;
    }

    public static TKC Sj() {
        if (Sj == null) {
            synchronized (TKC.class) {
                try {
                    if (Sj == null) {
                        Sj = new TKC();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Sj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void Sj(com.bytedance.sdk.openadsdk.sU.sP.Sj sj2, @Nullable com.bytedance.sdk.openadsdk.sU.sP.Sj sj3, int i11) {
        List<com.bytedance.sdk.openadsdk.sU.sP.Sj.C0289Sj> listTKC = null;
        Sj(sj2.sP(), sj3 == null ? null : sj3.sP(), 1, i11);
        List<com.bytedance.sdk.openadsdk.sU.sP.Sj.C0289Sj> listTKC2 = sj2.TKC();
        if (sj3 != null) {
            listTKC = sj3.TKC();
        }
        Sj(listTKC2, listTKC, 2, i11);
    }

    private void Sj(final String str, final String str2, final String str3, final int i11, final File file, final boolean z10) {
        String strConcat;
        if (this.HiB.contains(str)) {
            return;
        }
        if (i11 == 2) {
            strConcat = str3 + ".zip";
        } else {
            strConcat = z10 ? "tmp".concat(String.valueOf(str3)) : str3;
        }
        this.HiB.add(str);
        com.bytedance.sdk.component.Jcg.sP.Sj sjEjP = com.bytedance.sdk.openadsdk.TzV.sP.Sj().sP().EjP();
        sjEjP.sP(str);
        sjEjP.Sj(str2, strConcat);
        final com.bytedance.sdk.component.Jcg.sP sPVarSj = sjEjP.Sj();
        this.HiB.remove(str);
        if (sPVarSj != null && sPVarSj.vS() && sPVarSj.HiB() != null && sPVarSj.HiB().exists()) {
            if (i11 == 2) {
                JcM.sP(new Dq("downloadZip") { // from class: com.bytedance.sdk.openadsdk.sU.Sj.TKC.5
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            if (z10) {
                                file.delete();
                            }
                            String str4 = str2 + File.separator + str3;
                            LD.Sj(sPVarSj.HiB().getAbsolutePath(), str4);
                            File file2 = new File(str4);
                            File fileSj = com.bytedance.sdk.openadsdk.core.aa.TKC.Sj.Sj(file2);
                            if (fileSj != null && fileSj.exists()) {
                                com.bytedance.sdk.openadsdk.core.aa.TKC.Sj.Sj().TKC().put(file2.getName(), fileSj.getAbsolutePath());
                            }
                            com.bytedance.sdk.openadsdk.core.aa.TKC.Sj.sP(file2);
                        } catch (Throwable th2) {
                            sU.sP("PlayableResManager", "unzip error: ", th2, "tp=", Integer.valueOf(i11), ", url=", str);
                        }
                        try {
                            sPVarSj.HiB().delete();
                        } catch (Throwable unused) {
                        }
                    }
                });
                return;
            } else {
                if (z10) {
                    file.delete();
                    sPVarSj.HiB().renameTo(file);
                    return;
                }
                return;
            }
        }
        File file2 = new File(str2 + File.separator + str3 + ".tmp");
        if (file2.exists()) {
            try {
                file2.delete();
            } catch (Throwable unused) {
            }
        }
    }

    private void Sj(@Nullable List<com.bytedance.sdk.openadsdk.sU.sP.Sj.C0289Sj> list, @Nullable List<com.bytedance.sdk.openadsdk.sU.sP.Sj.C0289Sj> list2, int i11, int i12) {
        if (list == null || list.isEmpty()) {
            return;
        }
        String strHiB = i11 == 1 ? HiB() : vS();
        for (com.bytedance.sdk.openadsdk.sU.sP.Sj.C0289Sj c0289Sj : list) {
            String strSj = c0289Sj.Sj();
            String strSj2 = uvD.Sj(strSj);
            if (!TextUtils.isEmpty(strSj2)) {
                if (i11 == 1) {
                    strSj2 = strSj2 + TKC(strSj);
                }
                String str = strSj2;
                File file = new File(strHiB, str);
                boolean zExists = file.exists();
                if (i12 == 1) {
                    if (zExists && list2 != null && list2.contains(c0289Sj)) {
                        com.bytedance.sdk.openadsdk.core.aa.TKC.Sj.TKC(file);
                    } else {
                        Sj(strSj, strHiB, str, i11, file, zExists);
                    }
                } else if (!zExists) {
                    Sj(strSj, strHiB, str, i11, file, zExists);
                }
            }
        }
    }

    private static String TKC(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int iIndexOf = str.indexOf(UrlUtils.QUESTION_MARK);
        if (iIndexOf != -1) {
            str = str.substring(0, iIndexOf);
        }
        int iLastIndexOf = str.lastIndexOf(".");
        if (iLastIndexOf == -1) {
            return "";
        }
        return "." + str.substring(iLastIndexOf + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void TKC() {
        JcM.Sj(new Dq("pag_plb_res_check") { // from class: com.bytedance.sdk.openadsdk.sU.Sj.TKC.2
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.sU.sP.Sj sjSP = com.bytedance.sdk.openadsdk.sU.sP.Sj.sP(com.bytedance.sdk.openadsdk.multipro.EjP.EjP.sP("pag_plb_config", "model", ""));
                if (sjSP != null) {
                    TKC.this.Sj(sjSP, null, 0);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sP(final String str) {
        JcM.Sj(new Dq("pag_plb_update_config") { // from class: com.bytedance.sdk.openadsdk.sU.Sj.TKC.4
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.component.Jcg.sP.sP sPVarTKC = com.bytedance.sdk.openadsdk.TzV.sP.Sj().sP().TKC();
                try {
                    sPVarTKC.sP(com.bytedance.sdk.openadsdk.Dq.EjP.Sj(sPVarTKC, str));
                    com.bytedance.sdk.component.Jcg.sP sPVarSj = sPVarTKC.Sj();
                    if (sPVarSj == null || !sPVarSj.vS()) {
                        return;
                    }
                    String strEjP = sPVarSj.EjP();
                    com.bytedance.sdk.openadsdk.sU.sP.Sj sjSP = com.bytedance.sdk.openadsdk.sU.sP.Sj.sP(strEjP);
                    com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("pag_plb_config", "last_update_time", Long.valueOf(System.currentTimeMillis()));
                    if (sjSP != null) {
                        com.bytedance.sdk.openadsdk.sU.sP.Sj sjSP2 = com.bytedance.sdk.openadsdk.sU.sP.Sj.sP(com.bytedance.sdk.openadsdk.multipro.EjP.EjP.sP("pag_plb_config", "model", ""));
                        if (sjSP2 != null && sjSP.Sj().equals(sjSP2.Sj())) {
                            return;
                        }
                        com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("pag_plb_config", "model", strEjP);
                        TKC.this.Sj(sjSP, sjSP2, 1);
                    }
                } catch (Exception e11) {
                    sU.sP("PlayableResManager", e11.getMessage());
                }
            }
        });
    }

    private String vS() {
        if (TextUtils.isEmpty(this.EjP)) {
            String str = EjP() + File.separator + "pregames";
            File file = new File(str);
            if (!file.exists()) {
                file.mkdirs();
            }
            this.EjP = str;
        }
        return this.EjP;
    }

    public WebResourceResponse Sj(String str) {
        if (uA.Sj() && com.bytedance.sdk.openadsdk.dx.Sj.Sj("plb_res_enable", 0) == 1) {
            String strSj = uvD.Sj(str);
            if (TextUtils.isEmpty(strSj)) {
                return null;
            }
            File file = new File(HiB(), strSj + TKC(str));
            if (file.exists()) {
                try {
                    String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(str));
                    if (TextUtils.isEmpty(mimeTypeFromExtension)) {
                        return null;
                    }
                    return new WebResourceResponse(mimeTypeFromExtension, "UTF-8", new FileInputStream(file));
                } catch (Throwable unused) {
                }
            }
        }
        return null;
    }

    public void Sj(Map<String, String> map) {
        File[] fileArrListFiles;
        if (uA.Sj() && com.bytedance.sdk.openadsdk.dx.Sj.Sj("plb_res_enable", 0) == 1) {
            String strVS = vS();
            if (!TextUtils.isEmpty(strVS)) {
                File file = new File(strVS);
                if (file.exists() && file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
                    for (File file2 : fileArrListFiles) {
                        if (file2 != null) {
                            try {
                                File fileSj = com.bytedance.sdk.openadsdk.core.aa.TKC.Sj.Sj(file2);
                                if (fileSj != null && fileSj.exists()) {
                                    map.put(file2.getName(), fileSj.getAbsolutePath());
                                }
                            } catch (Throwable unused) {
                            }
                        }
                    }
                }
            }
            int iSj = com.bytedance.sdk.openadsdk.dx.Sj.Sj("plb_res_delay_fetch_time", 0);
            if (iSj <= 0) {
                TKC();
            } else {
                sef.sP().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.sU.Sj.TKC.1
                    @Override // java.lang.Runnable
                    public void run() {
                        TKC.this.TKC();
                    }
                }, iSj);
            }
        }
    }

    public void sP() {
        if (uA.Sj() && com.bytedance.sdk.openadsdk.dx.Sj.Sj("plb_res_enable", 0) == 1) {
            long jCurrentTimeMillis = System.currentTimeMillis() - com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("pag_plb_config", "last_update_time", 0L);
            final String strSj = com.bytedance.sdk.openadsdk.dx.Sj.Sj("plb_res", "");
            long jSj = com.bytedance.sdk.openadsdk.dx.Sj.Sj("plb_res_fetch_interval", TimeConstants.HOUR);
            if (jSj <= 0 || jSj > TmcConstants.MINIAPP_TIME_DIFF) {
                jSj = 3600000;
            }
            if (jCurrentTimeMillis < jSj || TextUtils.isEmpty(strSj)) {
                return;
            }
            int iSj = com.bytedance.sdk.openadsdk.dx.Sj.Sj("plb_res_delay_fetch_time", 0);
            if (iSj <= 0) {
                sP(strSj);
            } else {
                sef.sP().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.sU.Sj.TKC.3
                    @Override // java.lang.Runnable
                    public void run() {
                        TKC.this.sP(strSj);
                    }
                }, iSj);
            }
        }
    }
}
