package com.cloud.sdk.commonutil.util;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes3.dex */
public class HSToastUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Handler f23173a = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Toast f23174b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Field f23175c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Field f23176d;

    /* JADX INFO: renamed from: com.cloud.sdk.commonutil.util.HSToastUtil$3, reason: invalid class name */
    class AnonymousClass3 implements Runnable {
        final /* synthetic */ Context val$context;
        final /* synthetic */ int val$resId;

        AnonymousClass3(int i11, Context context) {
            this.val$resId = i11;
            this.val$context = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (HSToastUtil.f23174b != null) {
                HSToastUtil.f23174b.setText(this.val$resId);
                HSToastUtil.f23174b.setDuration(1);
                HSToastUtil.d(HSToastUtil.f23174b);
            } else {
                Toast unused = HSToastUtil.f23174b = Toast.makeText(this.val$context.getApplicationContext(), this.val$resId, 1);
            }
            HSToastUtil.f23174b.show();
        }
    }

    /* JADX INFO: renamed from: com.cloud.sdk.commonutil.util.HSToastUtil$4, reason: invalid class name */
    class AnonymousClass4 implements Runnable {
        final /* synthetic */ Context val$context;
        final /* synthetic */ String val$text;

        AnonymousClass4(String str, Context context) {
            this.val$text = str;
            this.val$context = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (HSToastUtil.f23174b != null) {
                HSToastUtil.f23174b.setText(this.val$text);
                HSToastUtil.f23174b.setDuration(1);
                HSToastUtil.d(HSToastUtil.f23174b);
            } else {
                Toast unused = HSToastUtil.f23174b = Toast.makeText(this.val$context.getApplicationContext(), this.val$text, 1);
            }
            HSToastUtil.f23174b.show();
        }
    }

    private static class a extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Handler f23177a;

        a(Handler handler) {
            this.f23177a = handler;
        }

        @Override // android.os.Handler
        public void dispatchMessage(Message message) {
            try {
                super.dispatchMessage(message);
            } catch (Exception e11) {
                c.Log().e("ssp", "dispatchMessage error: " + Log.getStackTraceString(e11));
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            this.f23177a.handleMessage(message);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(Toast toast) {
        try {
            Object obj = f23175c.get(toast);
            Handler handler = (Handler) f23176d.get(obj);
            if (handler != null && !(handler instanceof a)) {
                f23176d.set(obj, new a(handler));
            }
        } catch (Exception e11) {
            c.Log().e("ssp", "toast hook error: " + Log.getStackTraceString(e11));
        }
        try {
            Field declaredField = Toast.class.getDeclaredField("mTN");
            f23175c = declaredField;
            declaredField.setAccessible(true);
            Field declaredField2 = f23175c.getType().getDeclaredField("mHandler");
            f23176d = declaredField2;
            declaredField2.setAccessible(true);
        } catch (Exception e12) {
            c.Log().e("ssp", "toast static init error: " + Log.getStackTraceString(e12));
        }
    }

    public static void e(final int i11) {
        final Context contextA = e.a();
        if (i11 > 0) {
            f23173a.post(new Runnable() { // from class: com.cloud.sdk.commonutil.util.HSToastUtil.1
                @Override // java.lang.Runnable
                public void run() {
                    if (HSToastUtil.f23174b != null) {
                        HSToastUtil.f23174b.setText(i11);
                        HSToastUtil.f23174b.setDuration(0);
                        HSToastUtil.d(HSToastUtil.f23174b);
                    } else {
                        Toast unused = HSToastUtil.f23174b = Toast.makeText(contextA.getApplicationContext(), i11, 0);
                    }
                    HSToastUtil.f23174b.show();
                }
            });
        }
    }

    public static void f(final String str) {
        final Context contextA = e.a();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f23173a.post(new Runnable() { // from class: com.cloud.sdk.commonutil.util.HSToastUtil.2
            @Override // java.lang.Runnable
            public void run() {
                if (HSToastUtil.f23174b != null) {
                    HSToastUtil.f23174b.setText(str);
                    HSToastUtil.f23174b.setDuration(0);
                    HSToastUtil.d(HSToastUtil.f23174b);
                } else {
                    Toast unused = HSToastUtil.f23174b = Toast.makeText(contextA.getApplicationContext(), str, 0);
                }
                HSToastUtil.f23174b.show();
            }
        });
    }
}
