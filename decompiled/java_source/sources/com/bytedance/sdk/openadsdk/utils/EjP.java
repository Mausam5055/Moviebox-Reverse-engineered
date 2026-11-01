package com.bytedance.sdk.openadsdk.utils;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public class EjP {

    private static class Sj implements View.OnLayoutChangeListener {
        private final Drawable Sj;
        private int TKC;
        private int sP;

        public Sj(Drawable drawable) {
            this.Sj = drawable;
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
            int i19 = i13 - i11;
            int i20 = i14 - i12;
            if (i19 == this.sP && i20 == this.TKC) {
                return;
            }
            this.sP = i19;
            this.TKC = i20;
            this.Sj.setBounds(0, 0, i19, i20);
        }
    }

    @Nullable
    private static Drawable Sj(Resources resources, com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        try {
            String strRoy = sUVar.roy();
            if (TextUtils.isEmpty(strRoy)) {
                return null;
            }
            byte[] bArrDecode = Base64.decode(strRoy, 0);
            BitmapDrawable bitmapDrawable = new BitmapDrawable(resources, BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length));
            Shader.TileMode tileMode = Shader.TileMode.REPEAT;
            bitmapDrawable.setTileModeXY(tileMode, tileMode);
            bitmapDrawable.setTargetDensity(resources.getDisplayMetrics());
            return bitmapDrawable;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void Sj(Activity activity, com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        if (activity == null || sUVar == null || TextUtils.isEmpty(sUVar.roy())) {
            return;
        }
        try {
            View decorView = activity.getWindow().getDecorView();
            int i11 = Zq.UmR;
            if (decorView.getTag(i11) != null) {
                return;
            }
            activity.getWindow().getDecorView().setTag(i11, Integer.valueOf(i11));
            Drawable drawableSj = Sj(activity.getResources(), sUVar);
            if (drawableSj == null) {
                return;
            }
            activity.getWindow().getDecorView().setForeground(drawableSj);
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("add overlay fail", th2.getMessage());
        }
    }

    public static void Sj(ViewGroup viewGroup, com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        if (viewGroup == null || sUVar == null || TextUtils.isEmpty(sUVar.roy())) {
            return;
        }
        try {
            int i11 = Zq.UmR;
            if (viewGroup.getTag(i11) != null) {
                return;
            }
            viewGroup.setTag(i11, Integer.valueOf(i11));
            Drawable drawableSj = Sj(viewGroup.getResources(), sUVar);
            if (drawableSj == null) {
                return;
            }
            viewGroup.setForeground(drawableSj);
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("add overlay fail", th2.getMessage());
        }
    }
}
