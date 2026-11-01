package com.bytedance.adsdk.sP.Sj;

import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.os.Build;
import android.os.LocaleList;
import com.bytedance.adsdk.sP.vS.HiB;

/* JADX INFO: loaded from: classes2.dex */
public class Sj extends Paint {
    public Sj() {
    }

    public Sj(int i11) {
        super(i11);
    }

    public Sj(int i11, PorterDuff.Mode mode) {
        super(i11);
        setXfermode(new PorterDuffXfermode(mode));
    }

    public Sj(PorterDuff.Mode mode) {
        setXfermode(new PorterDuffXfermode(mode));
    }

    @Override // android.graphics.Paint
    public void setAlpha(int i11) {
        if (Build.VERSION.SDK_INT >= 29) {
            super.setAlpha(HiB.Sj(i11, 0, 255));
        } else {
            setColor((HiB.Sj(i11, 0, 255) << 24) | (getColor() & 16777215));
        }
    }

    @Override // android.graphics.Paint
    public void setTextLocales(LocaleList localeList) {
    }
}
