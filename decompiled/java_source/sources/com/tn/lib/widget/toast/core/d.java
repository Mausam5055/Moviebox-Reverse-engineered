package com.tn.lib.widget.toast.core;

import android.app.Application;
import android.os.Build;
import android.os.Handler;
import android.widget.Toast;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes4.dex */
public class d extends e {
    public d(Application application) {
        super(application);
        if (Build.VERSION.SDK_INT >= 28) {
            System.out.println("SafeToast: 反射操作在 Android 9.0+ 不被支持");
            return;
        }
        try {
            Field declaredField = Toast.class.getDeclaredField("mTN");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(this);
            Field declaredField2 = declaredField.getType().getDeclaredField("mHandler");
            declaredField2.setAccessible(true);
            declaredField2.set(obj, new c((Handler) declaredField2.get(obj)));
        } catch (IllegalAccessException | NoSuchFieldException e11) {
            e11.printStackTrace();
        }
    }
}
