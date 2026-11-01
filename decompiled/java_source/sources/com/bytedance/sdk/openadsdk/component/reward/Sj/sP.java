package com.bytedance.sdk.openadsdk.component.reward.Sj;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.SparseArray;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.kF;
import com.bytedance.sdk.openadsdk.core.model.dx;
import com.bytedance.sdk.openadsdk.core.model.sU;
import java.lang.ref.WeakReference;
import org.json.JSONObject;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes3.dex */
public class sP {
    private static final SparseArray<WeakReference<sU>> Sj = new SparseArray<>();

    public static sU Sj(Intent intent, Bundle bundle, com.bytedance.sdk.openadsdk.core.aa.EjP.sP sPVar) {
        sU dxVar = null;
        if (!com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            com.bytedance.sdk.openadsdk.core.model.Sj sjJcg = kF.Sj().Jcg();
            dxVar = sjJcg != null ? new dx(sjJcg) : null;
            if (sPVar != null) {
                sPVar.Sj(bundle);
            }
            kF.Sj().vS();
        } else if (intent != null) {
            try {
                String stringExtra = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_AD_INFO);
                if (stringExtra != null) {
                    dxVar = new dx(com.bytedance.sdk.openadsdk.core.model.Sj.TKC(new JSONObject(stringExtra)));
                }
            } catch (Exception e11) {
                com.bytedance.sdk.component.utils.sU.Sj("TTAD.RFDM", "", e11);
            }
        }
        if (bundle != null) {
            try {
                WeakReference<sU> weakReference = Sj.get(bundle.getInt("meta_tmp"));
                if (weakReference != null) {
                    dxVar = weakReference.get();
                }
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.sU.Sj("TTAD.RFDM", "", th2);
            }
        }
        if (dxVar != null) {
            dxVar.Sj(dxVar.zR(), 7);
        }
        return dxVar;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002e  */
    /* JADX WARN: Code duplicated, block: B:13:0x0034 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:14:0x0035  */
    /* JADX WARN: Code duplicated, block: B:16:0x0044  */
    public static void Sj(Intent intent, Activity activity, boolean z10, com.bytedance.sdk.openadsdk.core.model.Sj sj2, String str) {
        int rotation;
        JSONObject jSONObjectFmk;
        if (activity != null) {
            try {
                rotation = activity.getWindowManager().getDefaultDisplay().getRotation();
            } catch (Exception e11) {
                com.bytedance.sdk.component.utils.sU.Sj("TTAD.RFDM", "", e11);
                rotation = 0;
            }
            intent.putExtra("orientation_angle", rotation);
            intent.putExtra("video_is_cached", z10);
            if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
                kF.Sj().vS();
                kF.Sj().Sj(sj2);
                return;
            }
            jSONObjectFmk = sj2.Fmk();
            if (jSONObjectFmk == null) {
                return;
            }
            intent.putExtra(TTAdConstant.MULTI_PROCESS_AD_INFO, jSONObjectFmk.toString());
            intent.putExtra("multi_process_listener_key", str);
        }
        intent.addFlags(ASTNode.DEOP);
        rotation = 0;
        intent.putExtra("orientation_angle", rotation);
        intent.putExtra("video_is_cached", z10);
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            kF.Sj().vS();
            kF.Sj().Sj(sj2);
            return;
        }
        jSONObjectFmk = sj2.Fmk();
        if (jSONObjectFmk == null) {
            return;
        }
        intent.putExtra(TTAdConstant.MULTI_PROCESS_AD_INFO, jSONObjectFmk.toString());
        intent.putExtra("multi_process_listener_key", str);
    }

    public static void Sj(Intent intent, Sj sj2) {
        if (intent == null) {
            return;
        }
        sj2.f20992ib.sP(intent.getBooleanExtra("video_is_cached", false));
        sj2.f20990db = intent.getStringExtra("multi_process_listener_key");
        sj2.EZ = intent.getIntExtra("orientation_angle", 0) == 3;
    }

    public static void Sj(Bundle bundle, Sj sj2) {
        if (bundle == null) {
            return;
        }
        sj2.f20990db = bundle.getString("multi_process_listener_key");
        sj2.f20992ib.sP(bundle.getBoolean("video_is_cached", false));
        sj2.ndK = bundle.getBoolean("is_mute");
        if (bundle.getLong("video_current") > 0) {
            sj2.f20992ib.Sj(bundle.getLong("video_current", 0L));
        }
        sj2.Sj(bundle.getBoolean("has_show_skip_btn"));
    }

    public static void Sj(Sj sj2, Intent intent, Bundle bundle) {
        Sj(intent, sj2);
        Sj(bundle, sj2);
    }

    public static void Sj(Sj sj2, Bundle bundle) {
        if (bundle == null) {
            return;
        }
        try {
            sU sUVar = sj2.sP;
            Sj.append(sUVar.hashCode(), new WeakReference<>(sUVar));
            bundle.putInt("meta_tmp", sUVar.hashCode());
            bundle.putString("multi_process_listener_key", sj2.f20990db);
            bundle.putBoolean("video_is_cached", sj2.f20992ib.uP());
            bundle.putLong("video_current", sj2.f20992ib.Jcg());
            bundle.putBoolean("is_mute", sj2.ndK);
            bundle.putBoolean("has_show_skip_btn", sj2.gY);
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.Sj("TTAD.RFDM", "onSaveInstanceState: ", th2);
        }
    }
}
