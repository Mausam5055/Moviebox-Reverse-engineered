package com.transsion.core.utils;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.widget.Toast;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes5.dex */
public class ToastUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Handler f44071a = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Toast f44072b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Field f44073c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Field f44074d;

    /* JADX INFO: renamed from: com.transsion.core.utils.ToastUtil$3, reason: invalid class name */
    final class AnonymousClass3 implements Runnable {
        final /* synthetic */ Context val$context;
        final /* synthetic */ int val$resid;

        AnonymousClass3(int i11, Context context) {
            this.val$resid = i11;
            this.val$context = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ToastUtil.f44072b != null) {
                ToastUtil.f44072b.setText(this.val$resid);
                ToastUtil.f44072b.setDuration(1);
                ToastUtil.d(ToastUtil.f44072b);
            } else {
                Toast unused = ToastUtil.f44072b = Toast.makeText(this.val$context.getApplicationContext(), this.val$resid, 1);
            }
            ToastUtil.f44072b.show();
        }
    }

    /* JADX INFO: renamed from: com.transsion.core.utils.ToastUtil$4, reason: invalid class name */
    final class AnonymousClass4 implements Runnable {
        final /* synthetic */ Context val$context;
        final /* synthetic */ String val$msg;

        AnonymousClass4(String str, Context context) {
            this.val$msg = str;
            this.val$context = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ToastUtil.f44072b != null) {
                ToastUtil.f44072b.setText(this.val$msg);
                ToastUtil.f44072b.setDuration(1);
                ToastUtil.d(ToastUtil.f44072b);
            } else {
                Toast unused = ToastUtil.f44072b = Toast.makeText(this.val$context.getApplicationContext(), this.val$msg, 1);
            }
            ToastUtil.f44072b.show();
        }
    }

    private static class a extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Handler f44075a;

        a(Handler handler) {
            this.f44075a = handler;
        }

        @Override // android.os.Handler
        public void dispatchMessage(Message message) {
            try {
                super.dispatchMessage(message);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            this.f44075a.handleMessage(message);
        }
    }

    static {
        try {
            Field declaredField = Toast.class.getDeclaredField("mTN");
            f44073c = declaredField;
            declaredField.setAccessible(true);
            Field declaredField2 = f44073c.getType().getDeclaredField("mHandler");
            f44074d = declaredField2;
            declaredField2.setAccessible(true);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(Toast toast) {
        try {
            Object obj = f44073c.get(toast);
            Handler handler = (Handler) f44074d.get(obj);
            if (handler == null || (handler instanceof a)) {
                return;
            }
            f44074d.set(obj, new a(handler));
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public static void e(final int i11) {
        final Context contextA = qk.a.a();
        if (i11 <= 0) {
            return;
        }
        f44071a.post(new Runnable() { // from class: com.transsion.core.utils.ToastUtil.1
            @Override // java.lang.Runnable
            public void run() {
                if (ToastUtil.f44072b != null) {
                    ToastUtil.f44072b.setText(i11);
                    ToastUtil.f44072b.setDuration(0);
                    ToastUtil.d(ToastUtil.f44072b);
                } else {
                    Toast unused = ToastUtil.f44072b = Toast.makeText(contextA.getApplicationContext(), i11, 0);
                }
                ToastUtil.f44072b.show();
            }
        });
    }

    public static void f(final String str) {
        final Context contextA = qk.a.a();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f44071a.post(new Runnable() { // from class: com.transsion.core.utils.ToastUtil.2
            @Override // java.lang.Runnable
            public void run() {
                if (ToastUtil.f44072b != null) {
                    ToastUtil.f44072b.setText(str);
                    ToastUtil.f44072b.setDuration(0);
                    ToastUtil.d(ToastUtil.f44072b);
                } else {
                    Toast unused = ToastUtil.f44072b = Toast.makeText(contextA.getApplicationContext(), str, 0);
                }
                ToastUtil.f44072b.show();
            }
        });
    }
}
