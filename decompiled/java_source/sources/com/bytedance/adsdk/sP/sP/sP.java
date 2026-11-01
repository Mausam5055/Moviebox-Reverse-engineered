package com.bytedance.adsdk.sP.sP;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import com.bytedance.adsdk.sP.EjP;
import com.bytedance.adsdk.sP.TEQ;
import com.bytedance.adsdk.sP.vS.vS;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class sP {
    private static final Object Sj = new Object();
    private EjP EjP;
    private final Map<String, TEQ> HiB;
    private final String TKC;
    private final Context sP;

    public sP(Drawable.Callback callback, String str, EjP ejP, Map<String, TEQ> map) {
        if (TextUtils.isEmpty(str) || str.charAt(str.length() - 1) == '/') {
            this.TKC = str;
        } else {
            this.TKC = str + '/';
        }
        this.HiB = map;
        Sj(ejP);
        if (callback instanceof View) {
            this.sP = ((View) callback).getContext().getApplicationContext();
        } else {
            this.sP = null;
        }
    }

    private Bitmap sP(String str, Bitmap bitmap) {
        synchronized (Sj) {
            this.HiB.get(str).Sj(bitmap);
        }
        return bitmap;
    }

    public Bitmap Sj(String str) {
        TEQ teq = this.HiB.get(str);
        if (teq == null) {
            return null;
        }
        Bitmap bitmapYm = teq.Ym();
        if (bitmapYm != null) {
            return bitmapYm;
        }
        EjP ejP = this.EjP;
        if (ejP != null) {
            return ejP.Sj(teq);
        }
        Context context = this.sP;
        if (context == null) {
            return null;
        }
        String strUA = teq.uA();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inScaled = true;
        options.inDensity = 160;
        if (strUA.startsWith("data:") && strUA.indexOf("base64,") > 0) {
            try {
                byte[] bArrDecode = Base64.decode(strUA.substring(strUA.indexOf(44) + 1), 0);
                return sP(str, BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length, options));
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
        try {
            if (TextUtils.isEmpty(this.TKC)) {
                throw new IllegalStateException("You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder");
            }
            try {
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(context.getAssets().open(this.TKC + strUA), null, options);
                if (bitmapDecodeStream == null) {
                    return null;
                }
                return sP(str, vS.Sj(bitmapDecodeStream, teq.Sj(), teq.sP()));
            } catch (IllegalArgumentException unused2) {
                return null;
            }
        } catch (IOException unused3) {
            return null;
        }
    }

    public Bitmap Sj(String str, Bitmap bitmap) {
        if (bitmap != null) {
            Bitmap bitmapYm = this.HiB.get(str).Ym();
            sP(str, bitmap);
            return bitmapYm;
        }
        TEQ teq = this.HiB.get(str);
        Bitmap bitmapYm2 = teq.Ym();
        teq.Sj(null);
        return bitmapYm2;
    }

    public void Sj(EjP ejP) {
        this.EjP = ejP;
    }

    public boolean Sj(Context context) {
        return (context == null && this.sP == null) || this.sP.equals(context);
    }
}
