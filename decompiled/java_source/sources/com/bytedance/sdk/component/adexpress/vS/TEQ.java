package com.bytedance.sdk.component.adexpress.vS;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class TEQ extends com.bytedance.adsdk.sP.vS {
    private Map<String, Bitmap> Sj;
    private String sP;

    private static class Sj implements com.bytedance.sdk.component.HiB.uvD<Bitmap> {
        private final Map<String, Bitmap> EjP;
        private final WeakReference<TEQ> Sj;
        private final String TKC;
        private final com.bytedance.adsdk.sP.TEQ sP;

        public Sj(TEQ teq, com.bytedance.adsdk.sP.TEQ teq2, String str, Map<String, Bitmap> map) {
            this.Sj = new WeakReference<>(teq);
            this.sP = teq2;
            this.TKC = str;
            this.EjP = map;
        }

        @Override // com.bytedance.sdk.component.HiB.uvD
        public void Sj(int i11, String str, Throwable th2) {
        }

        @Override // com.bytedance.sdk.component.HiB.uvD
        public void Sj(com.bytedance.sdk.component.HiB.Ym<Bitmap> ym2) {
            Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(ym2.sP(), this.sP.Sj(), this.sP.sP(), false);
            this.EjP.put(this.TKC, bitmapCreateScaledBitmap);
            TEQ teq = this.Sj.get();
            if (teq != null) {
                teq.Sj(this.sP.Dq(), bitmapCreateScaledBitmap);
            }
        }
    }

    public TEQ(Context context) {
        super(context);
        this.Sj = new HashMap();
    }

    public void Dq() {
        if (TextUtils.isEmpty(this.sP)) {
            return;
        }
        setProgress(0.0f);
        Sj(true);
        setAnimationFromUrl(this.sP);
        setImageAssetDelegate(new com.bytedance.adsdk.sP.EjP() { // from class: com.bytedance.sdk.component.adexpress.vS.TEQ.1
            @Override // com.bytedance.adsdk.sP.EjP
            public Bitmap Sj(final com.bytedance.adsdk.sP.TEQ teq) {
                final String strDq = teq.Dq();
                String strTEQ = teq.TEQ();
                String strUA = teq.uA();
                if (TextUtils.equals(strDq, "image_0") && TextUtils.equals(strUA, "Lark20201123-180048_2.png")) {
                    strUA = "hand.png";
                }
                Bitmap bitmap = (Bitmap) TEQ.this.Sj.get(strDq);
                if (bitmap != null) {
                    return bitmap;
                }
                if (TextUtils.isEmpty(strTEQ) || !TextUtils.isEmpty(strUA)) {
                    if (!TextUtils.isEmpty(strUA) && TextUtils.isEmpty(strTEQ)) {
                        strTEQ = strUA;
                    } else if (TextUtils.isEmpty(strUA) || TextUtils.isEmpty(strTEQ)) {
                        strTEQ = "";
                    } else {
                        strTEQ = strTEQ + strUA;
                    }
                }
                if (TextUtils.isEmpty(strTEQ)) {
                    return null;
                }
                com.bytedance.sdk.component.HiB.TEQ teqSj = com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().HiB().Sj(strTEQ).Sj(new com.bytedance.sdk.component.HiB.Dq() { // from class: com.bytedance.sdk.component.adexpress.vS.TEQ.1.1
                    @Override // com.bytedance.sdk.component.HiB.Dq
                    public Bitmap Sj(Bitmap bitmap2) {
                        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap2, teq.Sj(), teq.sP(), false);
                        TEQ.this.Sj.put(strDq, bitmapCreateScaledBitmap);
                        return bitmapCreateScaledBitmap;
                    }
                });
                TEQ teq2 = TEQ.this;
                teqSj.Sj(new Sj(teq2, teq, strDq, teq2.Sj));
                return (Bitmap) TEQ.this.Sj.get(strDq);
            }
        });
        Sj();
    }

    public void setAnimationsLoop(boolean z10) {
    }

    public void setData(Map<String, String> map) {
    }

    public void setImageLottieTosPath(String str) {
        this.sP = str;
    }

    public void setLottieAdDescMaxLength(int i11) {
    }

    public void setLottieAdTitleMaxLength(int i11) {
    }

    public void setLottieAppNameMaxLength(int i11) {
    }
}
