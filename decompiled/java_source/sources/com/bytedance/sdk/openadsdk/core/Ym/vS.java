package com.bytedance.sdk.openadsdk.core.Ym;

import android.os.Handler;
import android.util.Pair;
import android.view.View;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import f6.a;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class vS {
    final Set<Pair<View, FriendlyObstructionPurpose>> Sj = new HashSet();
    private Jcg sP;

    private vS() {
        HiB.Sj(dNu.Sj());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Dq() {
        Jcg jcg = this.sP;
        if (jcg != null) {
            try {
                jcg.TKC();
            } catch (Throwable unused) {
            }
        }
    }

    private Handler HiB() {
        return com.bytedance.sdk.component.utils.uA.sP();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Jcg() {
        Jcg jcg = this.sP;
        if (jcg != null) {
            try {
                jcg.EjP();
            } catch (Throwable unused) {
            }
        }
    }

    public static vS Sj() {
        return new vS();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sP(int i11) {
        Jcg jcg = this.sP;
        if (jcg != null) {
            try {
                jcg.sP(i11);
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sP(@Nullable View view, @Nullable FriendlyObstructionPurpose friendlyObstructionPurpose) {
        Jcg jcg = this.sP;
        try {
            if (jcg == null) {
                if (view == null || friendlyObstructionPurpose == null) {
                    return;
                }
                this.Sj.add(new Pair<>(view, friendlyObstructionPurpose));
                return;
            }
            if (view != null && friendlyObstructionPurpose != null) {
                jcg.Sj(view, friendlyObstructionPurpose);
            }
            if (this.Sj.size() > 0) {
                jcg.Sj(this.Sj);
                this.Sj.clear();
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sP(View view, Set<TEQ> set) {
        try {
            if (this.sP == null) {
                this.sP = Dq.Sj(view, set);
            }
        } catch (Throwable th2) {
            sU.sP("createVideoSession failed : ".concat(String.valueOf(th2)), new Object[0]);
            HashMap map = new HashMap();
            map.put(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, "createVideoSession");
            map.put("message", th2.getMessage());
            HiB.Sj(map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sP(WebView webView) {
        try {
            if (this.sP == null) {
                this.sP = Dq.Sj(webView);
            }
        } catch (Throwable th2) {
            sU.sP("createWebViewSession failed : ".concat(String.valueOf(th2)), new Object[0]);
            HashMap map = new HashMap();
            map.put(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, "createWebViewSession");
            map.put("message", th2.getMessage());
            HiB.Sj(map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sP(boolean z10) {
        Jcg jcg = this.sP;
        if (jcg != null) {
            try {
                jcg.Sj(z10);
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sP(boolean z10, float f11) {
        if (this.sP != null) {
            try {
                Sj((View) null, (FriendlyObstructionPurpose) null);
                this.sP.Sj(z10, f11);
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void vS() {
        if (this.sP != null) {
            try {
                Sj((View) null, (FriendlyObstructionPurpose) null);
                this.sP.sP();
            } catch (Throwable unused) {
            }
        }
    }

    public void EjP() {
        if (a.x()) {
            Dq();
        } else {
            HiB().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.Ym.vS.8
                @Override // java.lang.Runnable
                public void run() {
                    vS.this.Dq();
                }
            });
        }
    }

    public void Sj(final int i11) {
        if (a.x()) {
            sP(i11);
        } else {
            HiB().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.Ym.vS.3
                @Override // java.lang.Runnable
                public void run() {
                    vS.this.sP(i11);
                }
            });
        }
    }

    public void Sj(final long j11, final boolean z10) {
        if (a.x()) {
            sP(j11, z10);
        } else {
            HiB().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.Ym.vS.10
                @Override // java.lang.Runnable
                public void run() {
                    vS.this.sP(j11, z10);
                }
            });
        }
    }

    public void Sj(@Nullable final View view, @Nullable final FriendlyObstructionPurpose friendlyObstructionPurpose) {
        if (a.x()) {
            sP(view, friendlyObstructionPurpose);
        } else {
            HiB().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.Ym.vS.9
                @Override // java.lang.Runnable
                public void run() {
                    vS.this.sP(view, friendlyObstructionPurpose);
                }
            });
        }
    }

    public void Sj(final View view, final Set<TEQ> set) {
        if (this.sP != null || view == null || set == null) {
            return;
        }
        if (a.x()) {
            sP(view, set);
        } else {
            HiB().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.Ym.vS.4
                @Override // java.lang.Runnable
                public void run() {
                    vS.this.sP(view, (Set<TEQ>) set);
                }
            });
        }
    }

    public void Sj(final WebView webView) {
        if (webView == null || this.sP != null) {
            return;
        }
        if (a.x()) {
            sP(webView);
        } else {
            HiB().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.Ym.vS.1
                @Override // java.lang.Runnable
                public void run() {
                    vS.this.sP(webView);
                }
            });
        }
    }

    public void Sj(final boolean z10) {
        if (a.x()) {
            sP(z10);
        } else {
            HiB().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.Ym.vS.2
                @Override // java.lang.Runnable
                public void run() {
                    vS.this.sP(z10);
                }
            });
        }
    }

    public void Sj(final boolean z10, final float f11) {
        if (a.x()) {
            sP(z10, f11);
        } else {
            HiB().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.Ym.vS.6
                @Override // java.lang.Runnable
                public void run() {
                    vS.this.sP(z10, f11);
                }
            });
        }
    }

    public void TKC() {
        if (a.x()) {
            Jcg();
        } else {
            HiB().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.Ym.vS.7
                @Override // java.lang.Runnable
                public void run() {
                    vS.this.Jcg();
                }
            });
        }
    }

    public void sP() {
        if (a.x()) {
            vS();
        } else {
            HiB().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.Ym.vS.5
                @Override // java.lang.Runnable
                public void run() {
                    vS.this.vS();
                }
            });
        }
    }

    public void sP(long j11, boolean z10) {
        Jcg jcg = this.sP;
        if (jcg != null) {
            try {
                jcg.Sj(j11 / 1000.0f, z10);
            } catch (Throwable unused) {
            }
        }
    }
}
