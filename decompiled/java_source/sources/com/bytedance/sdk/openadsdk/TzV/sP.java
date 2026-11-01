package com.bytedance.sdk.openadsdk.TzV;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import com.bytedance.sdk.component.HiB.Ym;
import com.bytedance.sdk.component.embedapplog.PangleEncryptConstant;
import com.bytedance.sdk.component.embedapplog.PangleEncryptManager;
import com.bytedance.sdk.component.sP.Sj.Dq;
import com.bytedance.sdk.component.sP.Sj.Fmk;
import com.bytedance.sdk.component.sP.Sj.Sj.Sj.uA;
import com.bytedance.sdk.component.sP.Sj.Zq;
import com.bytedance.sdk.openadsdk.TzV.Sj.TKC;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.dx;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uvD;
import com.bytedance.sdk.openadsdk.multipro.EjP.EjP;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.pgl.ssdk.ces.out.PglSSConfig;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class sP {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile sP Sj;
    private final Map<String, JSONObject> EjP = new HashMap();
    private TKC TKC;
    private final com.bytedance.sdk.component.Jcg.Sj sP;

    public class Sj implements Dq {
        public Sj() {
        }

        @Override // com.bytedance.sdk.component.sP.Sj.Dq
        public Zq Sj(Dq.Sj sj2) throws IOException {
            JSONObject jSONObjectSj;
            Fmk fmkSj = sj2.Sj();
            if (fmkSj.sP() != null && !fmkSj.sP().EjP().isEmpty()) {
                List<String> listEjP = fmkSj.sP().EjP();
                StringBuilder sb2 = new StringBuilder();
                for (String str : listEjP) {
                    sb2.append("/");
                    sb2.append(str);
                }
                String string = sb2.toString();
                if (!TextUtils.isEmpty(string) && string.equals("/monitor/collect/c/session")) {
                    return sj2.Sj(fmkSj);
                }
            }
            Fmk.Sj sjUA = fmkSj.uA();
            String strSP = EjP.sP("ttopenadsdk", PglSSConfig.CUSTOMINFO_KEY_IPV6, "");
            if (!TextUtils.isEmpty(strSP) && (jSONObjectSj = sP.this.Sj(strSP)) != null) {
                sjUA.sP("transfer-param", jSONObjectSj.optString("message"));
                if (jSONObjectSj.optInt("cypher") == 4) {
                    sjUA.sP("cypher", "4");
                } else {
                    sjUA.sP("cypher", "3");
                }
            }
            try {
                sjUA.sP("x-pangle-target-idc", com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().oWa());
            } catch (Throwable unused) {
            }
            return sj2.Sj(sjUA.sP());
        }
    }

    private sP(Context context) {
        com.bytedance.sdk.component.Jcg.Sj.C0214Sj c0214Sj = new com.bytedance.sdk.component.Jcg.Sj.C0214Sj();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        com.bytedance.sdk.component.Jcg.Sj Sj2 = c0214Sj.Sj(10000L, timeUnit).sP(10000L, timeUnit).TKC(10000L, timeUnit).Sj(new Sj()).Sj(true).Sj();
        this.sP = Sj2;
        com.bytedance.sdk.component.sP.Sj.Sj.Sj.Sj.Sj(new uA() { // from class: com.bytedance.sdk.openadsdk.TzV.sP.1
            @Override // com.bytedance.sdk.component.sP.Sj.Sj.Sj.uA
            public ExecutorService Sj() {
                if (com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().tY()) {
                    return JcM.Ym();
                }
                return null;
            }

            @Override // com.bytedance.sdk.component.sP.Sj.Sj.Sj.uA
            public boolean sP() {
                return com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().tY();
            }
        });
        com.bytedance.sdk.component.sP.Sj.EjP ejPSj = Sj2.HiB().Sj();
        if (ejPSj != null) {
            ejPSj.Sj(32);
        }
    }

    private void EjP() {
        if (this.TKC == null) {
            this.TKC = new TKC();
        }
    }

    public static sP Sj() {
        if (Sj == null) {
            synchronized (sP.class) {
                try {
                    if (Sj == null) {
                        Sj = new sP(dNu.Sj());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Sj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject Sj(String str) {
        JSONObject jSONObject = this.EjP.get(str);
        if (jSONObject != null) {
            return jSONObject;
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("ipv6", str);
        } catch (JSONException unused) {
        }
        JSONObject jSONObjectEncryptType4 = PangleEncryptManager.encryptType4(jSONObject2, new dx(PangleEncryptConstant.CryptDataScene.UNKNOWN));
        this.EjP.put(str, jSONObjectEncryptType4);
        return jSONObjectEncryptType4;
    }

    public void Sj(int i11, final ImageView imageView, final sU sUVar) {
        if (sUVar == null || !TextUtils.isEmpty(sUVar.TEQ())) {
            com.bytedance.sdk.openadsdk.uA.EjP.Sj(sUVar.TEQ()).Sj(i11).sP(i11).HiB(FPG.HiB(dNu.Sj())).EjP(FPG.TKC(dNu.Sj())).TKC(2).Sj(com.bytedance.sdk.openadsdk.uA.TKC.Sj(sUVar, sUVar.TEQ(), imageView));
            if (imageView != null) {
                imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.TzV.sP.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (imageView.getDrawable() != null) {
                            Intent intent = new Intent();
                            String strYm = sUVar.Ym();
                            intent.setAction("android.intent.action.VIEW");
                            intent.setData(Uri.parse(strYm));
                            try {
                                com.bytedance.sdk.component.utils.sP.Sj(dNu.Sj(), intent, null);
                            } catch (Exception unused) {
                            }
                        }
                    }
                });
            }
        }
    }

    public void Sj(uvD uvd, ImageView imageView, sU sUVar) {
        if (uvd == null || TextUtils.isEmpty(uvd.Sj()) || imageView == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.uA.EjP.Sj(uvd).TKC(2).Sj(com.bytedance.sdk.openadsdk.uA.TKC.Sj(sUVar, uvd.Sj(), imageView));
    }

    public void Sj(uvD uvd, ImageView imageView, sU sUVar, com.bytedance.sdk.component.HiB.uvD<Bitmap> uvd2) {
        if (uvd == null || TextUtils.isEmpty(uvd.Sj()) || imageView == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.uA.EjP.Sj(uvd).TKC(2).Sj(com.bytedance.sdk.openadsdk.uA.TKC.Sj(sUVar, uvd.Sj(), imageView, uvd2));
    }

    public void Sj(String str, int i11, int i12, ImageView imageView, sU sUVar) {
        com.bytedance.sdk.openadsdk.uA.EjP.Sj(str).Sj(i11).sP(i12).HiB(FPG.HiB(dNu.Sj())).EjP(FPG.TKC(dNu.Sj())).TKC(2).Sj(com.bytedance.sdk.openadsdk.uA.TKC.Sj(sUVar, str, imageView));
    }

    public void Sj(String str, View view) {
        if (view == null || TextUtils.isEmpty(str)) {
            return;
        }
        final WeakReference weakReference = new WeakReference(view);
        com.bytedance.sdk.openadsdk.uA.EjP.Sj(str).TKC(2).Sj(new com.bytedance.sdk.component.HiB.Dq() { // from class: com.bytedance.sdk.openadsdk.TzV.sP.4
            @Override // com.bytedance.sdk.component.HiB.Dq
            public Bitmap Sj(Bitmap bitmap) {
                View view2 = (View) weakReference.get();
                if (view2 == null) {
                    return null;
                }
                return com.bytedance.sdk.component.adexpress.EjP.Sj.Sj(view2.getContext(), bitmap, 10);
            }
        }).Sj(new com.bytedance.sdk.component.HiB.uvD<Bitmap>() { // from class: com.bytedance.sdk.openadsdk.TzV.sP.3
            @Override // com.bytedance.sdk.component.HiB.uvD
            public void Sj(int i11, String str2, Throwable th2) {
            }

            @Override // com.bytedance.sdk.component.HiB.uvD
            public void Sj(Ym<Bitmap> ym2) {
                final View view2;
                if (ym2 == null) {
                    return;
                }
                final Bitmap bitmapSP = ym2.sP();
                if (!(bitmapSP instanceof Bitmap) || (view2 = (View) weakReference.get()) == null) {
                    return;
                }
                if (!JcM.vS()) {
                    view2.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.TzV.sP.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            View view3 = view2;
                            if (view3 instanceof ImageView) {
                                ((ImageView) view3).setImageDrawable(new BitmapDrawable(view2.getResources(), (Bitmap) bitmapSP));
                            } else {
                                view3.setBackground(new BitmapDrawable(view2.getResources(), (Bitmap) bitmapSP));
                            }
                        }
                    });
                } else if (view2 instanceof ImageView) {
                    ((ImageView) view2).setImageDrawable(new BitmapDrawable(view2.getResources(), bitmapSP));
                } else {
                    view2.setBackground(new BitmapDrawable(view2.getResources(), bitmapSP));
                }
            }
        });
    }

    public TKC TKC() {
        EjP();
        return this.TKC;
    }

    public com.bytedance.sdk.component.Jcg.Sj sP() {
        return this.sP;
    }
}
