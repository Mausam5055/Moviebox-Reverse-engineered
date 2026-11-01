package com.bytedance.sdk.openadsdk.uA;

import android.content.Context;
import com.bytedance.sdk.component.HiB.Zq;
import com.bytedance.sdk.component.HiB.dx;
import com.bytedance.sdk.component.HiB.sU;
import com.bytedance.sdk.component.sP.Sj.Fmk;
import com.bytedance.sdk.component.sP.Sj.Ym;
import com.bytedance.sdk.component.sP.Sj.vS;
import com.bytedance.sdk.component.utils.TEQ;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.uvD;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.fF;
import java.io.File;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes3.dex */
public class EjP {

    private static final class Sj {
        private static final Zq sP = Sj(dNu.Sj());
        public static boolean Sj = true;
        private static int TKC = 10;
        private static int EjP = 15;
        private static int HiB = 30;

        /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.uA.EjP$Sj$Sj, reason: collision with other inner class name */
        private static class C0290Sj implements com.bytedance.sdk.component.HiB.EjP {
            private C0290Sj() {
            }

            private com.bytedance.sdk.component.HiB.sP.TKC Sj(com.bytedance.sdk.component.HiB.sP.EjP ejP, Throwable th2) {
                th2.getMessage();
                if (ejP != null) {
                    ejP.TKC(System.currentTimeMillis());
                }
                com.bytedance.sdk.component.HiB.sP.TKC tkc = new com.bytedance.sdk.component.HiB.sP.TKC(98765, th2, "net failed");
                tkc.Sj(ejP);
                return tkc;
            }

            private Map<String, String> Sj(com.bytedance.sdk.component.HiB.HiB hiB, com.bytedance.sdk.component.sP.Sj.Zq zq2) {
                if (!hiB.sP()) {
                    return null;
                }
                vS vSVarJcg = zq2.Jcg();
                HashMap map = new HashMap();
                int iSj = vSVarJcg.Sj();
                for (int i11 = 0; i11 < iSj; i11++) {
                    String strSj = vSVarJcg.Sj(i11);
                    String strSP = vSVarJcg.sP(i11);
                    if (strSj != null) {
                        map.put(strSj, strSP);
                    }
                }
                return map;
            }

            @Override // com.bytedance.sdk.component.HiB.EjP
            /* JADX INFO: renamed from: sP, reason: merged with bridge method [inline-methods] */
            public com.bytedance.sdk.component.HiB.sP.TKC Sj(com.bytedance.sdk.component.HiB.HiB hiB) {
                Ym ymHiB = com.bytedance.sdk.openadsdk.TzV.sP.Sj().sP().HiB();
                Fmk fmkSP = new Fmk.Sj().sP(hiB.Sj()).Sj().sP();
                com.bytedance.sdk.component.sP.Sj.Zq zqSP = null;
                com.bytedance.sdk.component.HiB.sP.EjP ejP = hiB.TKC() ? new com.bytedance.sdk.component.HiB.sP.EjP() : null;
                if (ejP != null) {
                    ejP.Sj(System.currentTimeMillis());
                }
                try {
                    zqSP = ymHiB.Sj(fmkSP).sP();
                    if (ejP != null) {
                        ejP.sP(System.currentTimeMillis());
                    }
                    com.bytedance.sdk.component.HiB.sP.TKC tkc = new com.bytedance.sdk.component.HiB.sP.TKC(zqSP.TKC(), zqSP.vS().EjP(), "", Sj(hiB, zqSP));
                    TEQ.Sj(zqSP);
                    return tkc;
                } catch (Throwable th2) {
                    try {
                        return Sj(ejP, th2);
                    } finally {
                        TEQ.Sj(zqSP);
                    }
                }
            }
        }

        private static com.bytedance.sdk.component.HiB.TEQ Sj(com.bytedance.sdk.component.HiB.TEQ teq) {
            return fF.Sj() ? teq.Sj(new HiB()) : teq;
        }

        private static Zq Sj(Context context) {
            Sj();
            if (Sj) {
                return com.bytedance.sdk.component.HiB.EjP.TKC.sP.Sj(context, new com.bytedance.sdk.component.HiB.EjP.TKC.HiB.Sj().Sj(new com.bytedance.sdk.component.HiB.EjP.TKC.Sj.sP(0, TKC, EjP, HiB, new File(CacheDirFactory.getImageCacheDir("image_p")))).Sj(new sU() { // from class: com.bytedance.sdk.openadsdk.uA.EjP.Sj.2
                    @Override // com.bytedance.sdk.component.HiB.sU
                    public ExecutorService Sj() {
                        return JcM.sP();
                    }

                    @Override // com.bytedance.sdk.component.HiB.sU
                    public ExecutorService sP() {
                        return JcM.TKC();
                    }
                }).Sj(new dx() { // from class: com.bytedance.sdk.openadsdk.uA.EjP.Sj.1
                    @Override // com.bytedance.sdk.component.HiB.dx
                    public void Sj(int i11, String str) {
                        com.bytedance.sdk.openadsdk.Zq.TKC.Sj(str, true);
                    }
                }).Sj(new C0290Sj()).Sj());
            }
            return com.bytedance.sdk.component.HiB.TKC.sP.Sj(context, new com.bytedance.sdk.component.HiB.TKC.HiB.Sj().Sj(new com.bytedance.sdk.component.HiB.TKC.Sj.Sj(Math.max(Math.min(Long.valueOf(Runtime.getRuntime().maxMemory()).intValue() / 16, 83886080), 10485760), 41943040L, new File(CacheDirFactory.getImageCacheDir("image")))).Sj(new sU() { // from class: com.bytedance.sdk.openadsdk.uA.EjP.Sj.4
                @Override // com.bytedance.sdk.component.HiB.sU
                public ExecutorService Sj() {
                    return JcM.sP();
                }

                @Override // com.bytedance.sdk.component.HiB.sU
                public ExecutorService sP() {
                    return null;
                }
            }).Sj(new dx() { // from class: com.bytedance.sdk.openadsdk.uA.EjP.Sj.3
                @Override // com.bytedance.sdk.component.HiB.dx
                public void Sj(int i11, String str) {
                    com.bytedance.sdk.openadsdk.Zq.TKC.Sj(str, false);
                }
            }).Sj(new C0290Sj()).Sj());
        }

        public static void Sj() {
            Sj = com.bytedance.sdk.openadsdk.dx.Sj.Sj("image_config", "use_new_img", 1) == 1;
            TKC = com.bytedance.sdk.openadsdk.dx.Sj.Sj("image_config", "bitmap_cache_count", 10);
            EjP = com.bytedance.sdk.openadsdk.dx.Sj.Sj("image_config", "data_cache_count", 15);
            HiB = com.bytedance.sdk.openadsdk.dx.Sj.Sj("image_config", "disk_cache_count", 30);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static com.bytedance.sdk.component.HiB.TEQ sP(uvD uvd) {
            return Sj(sP.Sj(uvd.Sj()).Sj(uvd.sP()).sP(uvd.TKC()).HiB(FPG.HiB(dNu.Sj())).EjP(FPG.TKC(dNu.Sj())).Sj(uvd.Jcg()));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static com.bytedance.sdk.component.HiB.TEQ sP(String str) {
            return Sj(sP.Sj(str).HiB(FPG.HiB(dNu.Sj())).EjP(FPG.TKC(dNu.Sj())));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static InputStream sP(String str, String str2) {
            return sP.Sj(str, str2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean sP(String str, String str2, String str3) {
            return sP.Sj(str, str2, str3);
        }
    }

    public static com.bytedance.sdk.component.HiB.TEQ Sj(uvD uvd) {
        return Sj.sP(uvd);
    }

    public static com.bytedance.sdk.component.HiB.TEQ Sj(String str) {
        return Sj.sP(str);
    }

    public static Zq Sj() {
        return Sj.sP;
    }

    public static InputStream Sj(String str, String str2) {
        return Sj.sP(str, str2);
    }

    public static boolean Sj(String str, String str2, String str3) {
        return Sj.sP(str, str2, str3);
    }

    public static boolean sP() {
        return Sj.Sj;
    }
}
