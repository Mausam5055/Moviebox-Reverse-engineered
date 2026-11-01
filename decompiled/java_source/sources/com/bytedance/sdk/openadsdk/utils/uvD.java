package com.bytedance.sdk.openadsdk.utils;

import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class uvD {

    /* JADX INFO: loaded from: classes2.dex */
    public interface Sj {
        void Sj();

        void Sj(com.bytedance.sdk.openadsdk.TzV.Sj.sP sPVar);
    }

    public static Drawable Sj(byte[] bArr, int i11) {
        if (bArr == null || bArr.length <= 0) {
            return new ColorDrawable(0);
        }
        try {
            return new BitmapDrawable(BitmapFactory.decodeByteArray(bArr, 0, bArr.length));
        } catch (Throwable unused) {
            return new ColorDrawable(0);
        }
    }

    public static void Sj(com.bytedance.sdk.openadsdk.TzV.Sj sj2, int i11, int i12, Sj sj3, String str) {
        Sj(sj2, i11, i12, sj3, str, 0);
    }

    public static void Sj(com.bytedance.sdk.openadsdk.TzV.Sj sj2, int i11, int i12, final Sj sj3, String str, int i13) {
        Objects.toString(sj2);
        com.bytedance.sdk.openadsdk.TzV.sP.Sj().TKC().Sj(sj2, new com.bytedance.sdk.openadsdk.TzV.Sj.Sj.InterfaceC0244Sj() { // from class: com.bytedance.sdk.openadsdk.utils.uvD.1
            @Override // com.bytedance.sdk.openadsdk.TzV.Sj.Sj.InterfaceC0244Sj
            public void Sj(int i14, String str2, Throwable th2) {
                Sj sj4 = sj3;
                if (sj4 != null) {
                    sj4.Sj();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TzV.Sj.Sj.InterfaceC0244Sj
            public void Sj(String str2, com.bytedance.sdk.openadsdk.TzV.Sj.sP sPVar) {
                Sj sj4;
                if (sPVar.EjP() && (sj4 = sj3) != null) {
                    sj4.Sj(sPVar);
                    return;
                }
                Sj sj5 = sj3;
                if (sj5 != null) {
                    sj5.Sj();
                }
            }
        }, i11, i12, ImageView.ScaleType.CENTER_INSIDE, str, i13, null);
    }
}
