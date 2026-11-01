package androidx.core.app;

import android.app.Activity;
import android.app.SharedElementCallback;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class ActivityCompat extends androidx.core.content.b {

    /* JADX INFO: renamed from: androidx.core.app.ActivityCompat$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ Activity val$activity;
        final /* synthetic */ String[] val$permissionsArray;
        final /* synthetic */ int val$requestCode;

        AnonymousClass1(String[] strArr, Activity activity, int i11) {
            this.val$permissionsArray = strArr;
            this.val$activity = activity;
            this.val$requestCode = i11;
        }

        @Override // java.lang.Runnable
        public void run() {
            int[] iArr = new int[this.val$permissionsArray.length];
            PackageManager packageManager = this.val$activity.getPackageManager();
            String packageName = this.val$activity.getPackageName();
            int length = this.val$permissionsArray.length;
            for (int i11 = 0; i11 < length; i11++) {
                iArr[i11] = packageManager.checkPermission(this.val$permissionsArray[i11], packageName);
            }
            ((e) this.val$activity).onRequestPermissionsResult(this.val$requestCode, this.val$permissionsArray, iArr);
        }
    }

    static class a {
        static void a(Activity activity) {
            activity.finishAfterTransition();
        }

        static void b(Activity activity) {
            activity.postponeEnterTransition();
        }

        static void c(Activity activity, SharedElementCallback sharedElementCallback) {
            activity.setEnterSharedElementCallback(sharedElementCallback);
        }

        static void d(Activity activity, SharedElementCallback sharedElementCallback) {
            activity.setExitSharedElementCallback(sharedElementCallback);
        }

        static void e(Activity activity) {
            activity.startPostponedEnterTransition();
        }
    }

    static class b {
        /* JADX INFO: Access modifiers changed from: package-private */
        public static void a(Object obj) {
            ((SharedElementCallback.OnSharedElementsReadyListener) obj).onSharedElementsReady();
        }

        static void b(Activity activity, String[] strArr, int i11) {
            activity.requestPermissions(strArr, i11);
        }

        static boolean c(Activity activity, String str) {
            return activity.shouldShowRequestPermissionRationale(str);
        }
    }

    static class c {
        static boolean a(Activity activity, String str) {
            try {
                return ((Boolean) PackageManager.class.getMethod("shouldShowRequestPermissionRationale", String.class).invoke(activity.getApplication().getPackageManager(), str)).booleanValue();
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                return activity.shouldShowRequestPermissionRationale(str);
            }
        }
    }

    static class d {
        static boolean a(Activity activity, String str) {
            return activity.shouldShowRequestPermissionRationale(str);
        }
    }

    public interface e {
        void onRequestPermissionsResult(int i11, String[] strArr, int[] iArr);
    }

    public interface f {
        void validateRequestPermissionsRequestCode(int i11);
    }

    static class g extends SharedElementCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final a0 f7932a;

        g(a0 a0Var) {
            this.f7932a = a0Var;
        }

        @Override // android.app.SharedElementCallback
        public Parcelable onCaptureSharedElementSnapshot(View view, Matrix matrix, RectF rectF) {
            return this.f7932a.b(view, matrix, rectF);
        }

        @Override // android.app.SharedElementCallback
        public View onCreateSnapshotView(Context context, Parcelable parcelable) {
            return this.f7932a.c(context, parcelable);
        }

        @Override // android.app.SharedElementCallback
        public void onMapSharedElements(List list, Map map) {
            this.f7932a.d(list, map);
        }

        @Override // android.app.SharedElementCallback
        public void onRejectSharedElements(List list) {
            this.f7932a.e(list);
        }

        @Override // android.app.SharedElementCallback
        public void onSharedElementEnd(List list, List list2, List list3) {
            this.f7932a.f(list, list2, list3);
        }

        @Override // android.app.SharedElementCallback
        public void onSharedElementStart(List list, List list2, List list3) {
            this.f7932a.g(list, list2, list3);
        }

        @Override // android.app.SharedElementCallback
        public void onSharedElementsArrived(List list, List list2, final SharedElementCallback.OnSharedElementsReadyListener onSharedElementsReadyListener) {
            this.f7932a.h(list, list2, new a0.a() { // from class: androidx.core.app.b
                @Override // androidx.core.app.a0.a
                public final void a() {
                    ActivityCompat.b.a(onSharedElementsReadyListener);
                }
            });
        }
    }

    public static void b(Activity activity) {
        activity.finishAffinity();
    }

    public static void c(Activity activity) {
        a.a(activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(Activity activity) {
        if (activity.isFinishing() || ActivityRecreator.i(activity)) {
            return;
        }
        activity.recreate();
    }

    public static void e(Activity activity) {
        a.b(activity);
    }

    public static void f(final Activity activity) {
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
        } else {
            new Handler(activity.getMainLooper()).post(new Runnable() { // from class: androidx.core.app.a
                @Override // java.lang.Runnable
                public final void run() {
                    ActivityCompat.d(activity);
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void g(Activity activity, String[] strArr, int i11) {
        HashSet hashSet = new HashSet();
        for (int i12 = 0; i12 < strArr.length; i12++) {
            if (TextUtils.isEmpty(strArr[i12])) {
                throw new IllegalArgumentException("Permission request for permissions " + Arrays.toString(strArr) + " must not contain null or empty values");
            }
            if (Build.VERSION.SDK_INT < 33 && TextUtils.equals(strArr[i12], "android.permission.POST_NOTIFICATIONS")) {
                hashSet.add(Integer.valueOf(i12));
            }
        }
        int size = hashSet.size();
        String[] strArr2 = size > 0 ? new String[strArr.length - size] : strArr;
        if (size > 0) {
            if (size == strArr.length) {
                return;
            }
            int i13 = 0;
            for (int i14 = 0; i14 < strArr.length; i14++) {
                if (!hashSet.contains(Integer.valueOf(i14))) {
                    strArr2[i13] = strArr[i14];
                    i13++;
                }
            }
        }
        if (activity instanceof f) {
            ((f) activity).validateRequestPermissionsRequestCode(i11);
        }
        b.b(activity, strArr, i11);
    }

    public static void h(Activity activity, a0 a0Var) {
        a.c(activity, a0Var != null ? new g(a0Var) : null);
    }

    public static void i(Activity activity, a0 a0Var) {
        a.d(activity, a0Var != null ? new g(a0Var) : null);
    }

    public static boolean j(Activity activity, String str) {
        int i11 = Build.VERSION.SDK_INT;
        if (i11 < 33 && TextUtils.equals("android.permission.POST_NOTIFICATIONS", str)) {
            return false;
        }
        if (i11 >= 32) {
            return d.a(activity, str);
        }
        return i11 == 31 ? c.a(activity, str) : b.c(activity, str);
    }

    public static void k(Activity activity, Intent intent, int i11, Bundle bundle) {
        activity.startActivityForResult(intent, i11, bundle);
    }

    public static void l(Activity activity, IntentSender intentSender, int i11, Intent intent, int i12, int i13, int i14, Bundle bundle) {
        activity.startIntentSenderForResult(intentSender, i11, intent, i12, i13, i14, bundle);
    }

    public static void m(Activity activity) {
        a.e(activity);
    }
}
