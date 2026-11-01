package l4;

import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.os.Build;
import android.os.LocaleList;
import v4.k;

/* JADX INFO: loaded from: classes2.dex */
public class a extends Paint {
    public a() {
    }

    public a(int i11) {
        super(i11);
    }

    public a(int i11, PorterDuff.Mode mode) {
        super(i11);
        setXfermode(new PorterDuffXfermode(mode));
    }

    public a(PorterDuff.Mode mode) {
        setXfermode(new PorterDuffXfermode(mode));
    }

    @Override // android.graphics.Paint
    public void setAlpha(int i11) {
        if (Build.VERSION.SDK_INT >= 30) {
            super.setAlpha(k.c(i11, 0, 255));
        } else {
            setColor((k.c(i11, 0, 255) << 24) | (getColor() & 16777215));
        }
    }

    @Override // android.graphics.Paint
    public void setTextLocales(LocaleList localeList) {
    }
}
