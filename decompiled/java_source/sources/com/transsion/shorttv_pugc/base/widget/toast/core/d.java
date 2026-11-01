package com.transsion.shorttv_pugc.base.widget.toast.core;

import android.app.Application;
import android.os.Handler;
import android.widget.Toast;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes6.dex */
public class d extends e {
    public d(Application application) {
        super(application);
        try {
            Field declaredField = Toast.class.getDeclaredField("mTN");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(this);
            Field declaredField2 = declaredField.getType().getDeclaredField("mHandler");
            declaredField2.setAccessible(true);
            declaredField2.set(obj, new c((Handler) declaredField2.get(obj)));
        } catch (IllegalAccessException e11) {
            e11.printStackTrace();
        } catch (NoSuchFieldException e12) {
            e12.printStackTrace();
        }
    }
}
