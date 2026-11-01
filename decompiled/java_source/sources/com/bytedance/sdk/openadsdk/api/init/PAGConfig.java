package com.bytedance.sdk.openadsdk.api.init;

import android.text.TextUtils;
import com.bytedance.sdk.component.Jcg.TKC.TKC;
import com.bytedance.sdk.component.utils.Zq;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.InitConfig;
import com.bytedance.sdk.openadsdk.api.PAGConstant;
import com.bytedance.sdk.openadsdk.core.ley;
import com.bytedance.sdk.openadsdk.utils.Mts;

/* JADX INFO: loaded from: classes2.dex */
public final class PAGConfig implements InitConfig {
    private static String TEQ;
    private String Dq;
    private boolean Jcg;
    private String Sj;
    private int TKC;
    private String Ym;
    private boolean sP;
    private String uA;
    private int EjP = -1;
    private int HiB = -1;
    private int vS = 0;

    public static class Builder {
        private String[] Dq;
        private String Sj;
        private String TEQ;
        private int TKC;
        private boolean sP;
        private String uA;
        private int EjP = -1;
        private int HiB = -1;
        private int vS = 0;
        private boolean Jcg = false;
        private String Ym = "";

        public Builder appIcon(int i11) {
            this.TKC = i11;
            return this;
        }

        public Builder appId(String str) {
            this.Sj = str;
            return this;
        }

        public PAGConfig build() {
            PAGConfig pAGConfig = new PAGConfig();
            pAGConfig.sP(this.Sj);
            pAGConfig.Sj(this.TKC);
            pAGConfig.EjP(this.vS);
            pAGConfig.sP(this.Jcg);
            pAGConfig.sP(this.EjP);
            pAGConfig.TKC(this.HiB);
            pAGConfig.Sj(this.sP);
            pAGConfig.TKC(this.uA);
            pAGConfig.Sj(this.TEQ);
            pAGConfig.EjP(this.Ym);
            return pAGConfig;
        }

        public Builder debugLog(boolean z10) {
            this.sP = z10;
            return this;
        }

        public Builder needClearTaskReset(String... strArr) {
            this.Dq = strArr;
            return this;
        }

        public Builder setAdxId(String str) {
            this.Ym = str;
            return this;
        }

        public Builder setGDPRConsent(@PAGConstant.PAGGDPRConsentType int i11) {
            this.EjP = i11;
            return this;
        }

        public Builder setPAConsent(@PAGConstant.PAGPAConsentType int i11) {
            if (i11 == 0 || i11 == 1) {
                this.HiB = i11;
            } else {
                this.HiB = -2;
            }
            return this;
        }

        public Builder setPackageName(String str) {
            this.uA = str;
            return this;
        }

        public Builder setUserData(String str) {
            this.TEQ = str;
            return this;
        }

        public Builder supportMultiProcess(boolean z10) {
            this.Jcg = z10;
            return this;
        }

        public Builder titleBarTheme(int i11) {
            this.vS = i11;
            return this;
        }

        public Builder useTextureView(boolean z10) {
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Deprecated
    public void EjP(int i11) {
        this.vS = i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void EjP(String str) {
        this.Ym = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(int i11) {
        this.TKC = i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(String str) {
        this.uA = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(boolean z10) {
        this.sP = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void TKC(int i11) {
        this.HiB = i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void TKC(String str) {
        this.Dq = str;
    }

    public static void debugLog(boolean z10) {
        if (ley.Sj() != null) {
            if (z10) {
                ley.Sj().TKC(1);
                ley.Sj().Sj();
                return;
            }
            ley.Sj().TKC(0);
            TKC.Sj(TKC.Sj.OFF);
            Zq.TKC();
            w5.b.d();
            sU.sP();
        }
    }

    public static int getGDPRConsent() {
        if (!Mts.uA("getGdpr")) {
            return -1;
        }
        int iSP = ley.Sj().sP();
        if (iSP == 1) {
            return 0;
        }
        if (iSP == 0) {
            return 1;
        }
        return iSP;
    }

    public static int getPAConsent() {
        if (Mts.uA("getPAConsent")) {
            return ley.Sj().HiB();
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sP(int i11) {
        if (i11 < -1 || i11 > 1) {
            i11 = -1;
        }
        this.EjP = i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sP(String str) {
        this.Sj = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sP(boolean z10) {
        this.Jcg = z10;
        t5.b.g(z10);
    }

    public static void setAppIconId(int i11) {
        if (ley.Sj() != null) {
            ley.Sj().EjP(i11);
        }
    }

    public static void setGDPRConsent(@PAGConstant.PAGGDPRConsentType int i11) {
        Mts.uA("setGdpr");
        if (i11 < -1 || i11 > 1) {
            i11 = -1;
        }
        ley.Sj().sP(i11);
    }

    public static void setPAConsent(@PAGConstant.PAGPAConsentType int i11) {
        if (Mts.uA("setPAConsent")) {
            if (i11 == 1 || i11 == 0) {
                ley.Sj().HiB(i11);
            } else {
                ley.Sj().HiB(-2);
            }
        }
    }

    public static void setPackageName(String str) {
        TEQ = str;
    }

    public static void setUserData(String str) {
        if (ley.Sj() != null) {
            ley.Sj().sP(str);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public String getAdxId() {
        return this.Ym;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public int getAppIconId() {
        return this.TKC;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public String getAppId() {
        return this.Sj;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public String getData() {
        return this.uA;
    }

    public boolean getDebugLog() {
        return this.sP;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public int getGdpr() {
        return this.EjP;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public int getPA() {
        return this.HiB;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public String getPackageName() {
        return TextUtils.isEmpty(this.Dq) ? TEQ : this.Dq;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public int getTitleBarTheme() {
        return this.vS;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public boolean isSupportMultiProcess() {
        return this.Jcg;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public boolean isUseTextureView() {
        return true;
    }
}
