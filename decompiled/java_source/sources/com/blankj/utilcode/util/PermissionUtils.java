package com.blankj.utilcode.util;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Settings;
import android.util.Log;
import android.util.Pair;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class PermissionUtils {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static PermissionUtils f20025h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static b f20026i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static b f20027j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String[] f20028a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f20029b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Set f20030c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List f20031d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List f20032e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List f20033f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List f20034g;

    static final class PermissionActivityImpl extends UtilsTransActivity.TransActivityDelegate {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static int f20035a = -1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static PermissionActivityImpl f20036b = new PermissionActivityImpl();

        class a implements Utils.b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ int f20037a;

            a(int i11) {
                this.f20037a = i11;
            }

            @Override // com.blankj.utilcode.util.Utils.b
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void accept(Intent intent) {
                intent.putExtra("TYPE", this.f20037a);
            }
        }

        PermissionActivityImpl() {
        }

        private void a(int i11) {
            if (i11 == 2) {
                if (PermissionUtils.f20026i == null) {
                    return;
                }
                if (PermissionUtils.u()) {
                    PermissionUtils.f20026i.onGranted();
                } else {
                    PermissionUtils.f20026i.onDenied();
                }
                b unused = PermissionUtils.f20026i = null;
                return;
            }
            if (i11 != 3 || PermissionUtils.f20027j == null) {
                return;
            }
            if (PermissionUtils.t()) {
                PermissionUtils.f20027j.onGranted();
            } else {
                PermissionUtils.f20027j.onDenied();
            }
            b unused2 = PermissionUtils.f20027j = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(final UtilsTransActivity utilsTransActivity) {
            if (PermissionUtils.f20025h.A(utilsTransActivity, new Runnable() { // from class: com.blankj.utilcode.util.PermissionUtils.PermissionActivityImpl.3
                @Override // java.lang.Runnable
                public void run() {
                    utilsTransActivity.requestPermissions((String[]) PermissionUtils.f20025h.f20031d.toArray(new String[0]), 1);
                }
            })) {
                return;
            }
            utilsTransActivity.requestPermissions((String[]) PermissionUtils.f20025h.f20031d.toArray(new String[0]), 1);
        }

        public static void start(int i11) {
            UtilsTransActivity.T(new a(i11), f20036b);
        }

        @Override // com.blankj.utilcode.util.UtilsTransActivity.TransActivityDelegate
        public boolean dispatchTouchEvent(@NonNull UtilsTransActivity utilsTransActivity, MotionEvent motionEvent) {
            utilsTransActivity.finish();
            return true;
        }

        @Override // com.blankj.utilcode.util.UtilsTransActivity.TransActivityDelegate
        public void onActivityResult(@NonNull UtilsTransActivity utilsTransActivity, int i11, int i12, Intent intent) {
            utilsTransActivity.finish();
        }

        @Override // com.blankj.utilcode.util.UtilsTransActivity.TransActivityDelegate
        public void onCreated(@NonNull UtilsTransActivity utilsTransActivity, @Nullable Bundle bundle) {
            utilsTransActivity.getWindow().addFlags(262160);
            int intExtra = utilsTransActivity.getIntent().getIntExtra("TYPE", -1);
            if (intExtra != 1) {
                if (intExtra == 2) {
                    f20035a = 2;
                    PermissionUtils.D(utilsTransActivity, 2);
                    return;
                } else if (intExtra == 3) {
                    f20035a = 3;
                    PermissionUtils.B(utilsTransActivity, 3);
                    return;
                } else {
                    utilsTransActivity.finish();
                    Log.e("PermissionUtils", "type is wrong.");
                    return;
                }
            }
            if (PermissionUtils.f20025h == null) {
                Log.e("PermissionUtils", "sInstance is null.");
                utilsTransActivity.finish();
                return;
            }
            if (PermissionUtils.f20025h.f20031d == null) {
                Log.e("PermissionUtils", "mPermissionsRequest is null.");
                utilsTransActivity.finish();
            } else if (PermissionUtils.f20025h.f20031d.size() <= 0) {
                Log.e("PermissionUtils", "mPermissionsRequest's size is no more than 0.");
                utilsTransActivity.finish();
            } else {
                PermissionUtils.i(PermissionUtils.f20025h);
                PermissionUtils.j(PermissionUtils.f20025h);
                b(utilsTransActivity);
            }
        }

        @Override // com.blankj.utilcode.util.UtilsTransActivity.TransActivityDelegate
        public void onDestroy(@NonNull UtilsTransActivity utilsTransActivity) {
            int i11 = f20035a;
            if (i11 != -1) {
                a(i11);
                f20035a = -1;
            }
            super.onDestroy(utilsTransActivity);
        }

        @Override // com.blankj.utilcode.util.UtilsTransActivity.TransActivityDelegate
        public void onRequestPermissionsResult(@NonNull UtilsTransActivity utilsTransActivity, int i11, @NonNull String[] strArr, @NonNull int[] iArr) {
            utilsTransActivity.finish();
            if (PermissionUtils.f20025h == null || PermissionUtils.f20025h.f20031d == null) {
                return;
            }
            PermissionUtils.f20025h.w(utilsTransActivity);
        }
    }

    public interface a {
    }

    public interface b {
        void onDenied();

        void onGranted();
    }

    public interface c {
    }

    private PermissionUtils(String... strArr) {
        this.f20028a = strArr;
        f20025h = this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A(UtilsTransActivity utilsTransActivity, Runnable runnable) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void B(Activity activity, int i11) {
        Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION");
        intent.setData(Uri.parse("package:" + Utils.a().getPackageName()));
        if (e0.A(intent)) {
            activity.startActivityForResult(intent, i11);
        } else {
            v();
        }
    }

    private void C() {
        PermissionActivityImpl.start(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void D(Activity activity, int i11) {
        Intent intent = new Intent("android.settings.action.MANAGE_WRITE_SETTINGS");
        intent.setData(Uri.parse("package:" + Utils.a().getPackageName()));
        if (e0.A(intent)) {
            activity.startActivityForResult(intent, i11);
        } else {
            v();
        }
    }

    static /* synthetic */ c i(PermissionUtils permissionUtils) {
        permissionUtils.getClass();
        return null;
    }

    static /* synthetic */ a j(PermissionUtils permissionUtils) {
        permissionUtils.getClass();
        return null;
    }

    public static List n() {
        return o(Utils.a().getPackageName());
    }

    public static List o(String str) {
        try {
            String[] strArr = Utils.a().getPackageManager().getPackageInfo(str, 4096).requestedPermissions;
            return strArr == null ? Collections.emptyList() : Arrays.asList(strArr);
        } catch (PackageManager.NameNotFoundException e11) {
            e11.printStackTrace();
            return Collections.emptyList();
        }
    }

    private void p(Activity activity) {
        for (String str : this.f20031d) {
            if (r(str)) {
                this.f20032e.add(str);
            } else {
                this.f20033f.add(str);
                if (!activity.shouldShowRequestPermissionRationale(str)) {
                    this.f20034g.add(str);
                }
            }
        }
    }

    private static Pair q(String... strArr) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        List listN = n();
        for (String str : strArr) {
            boolean z10 = false;
            for (String str2 : s5.a.a(str)) {
                if (listN.contains(str2)) {
                    arrayList.add(str2);
                    z10 = true;
                }
            }
            if (!z10) {
                arrayList2.add(str);
                Log.e("PermissionUtils", "U should add the permission of " + str + " in manifest.");
            }
        }
        return Pair.create(arrayList, arrayList2);
    }

    private static boolean r(String str) {
        return androidx.core.content.b.checkSelfPermission(Utils.a(), str) == 0;
    }

    public static boolean s(String... strArr) {
        Pair pairQ = q(strArr);
        if (!((List) pairQ.second).isEmpty()) {
            return false;
        }
        Iterator it = ((List) pairQ.first).iterator();
        while (it.hasNext()) {
            if (!r((String) it.next())) {
                return false;
            }
        }
        return true;
    }

    public static boolean t() {
        return Settings.canDrawOverlays(Utils.a());
    }

    public static boolean u() {
        return Settings.System.canWrite(Utils.a());
    }

    public static void v() {
        Intent intentO = e0.o(Utils.a().getPackageName(), true);
        if (e0.A(intentO)) {
            Utils.a().startActivity(intentO);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(Activity activity) {
        p(activity);
        z();
    }

    public static PermissionUtils x(String... strArr) {
        return new PermissionUtils(strArr);
    }

    private void z() {
        if (this.f20029b != null) {
            if (this.f20033f.isEmpty()) {
                this.f20029b.onGranted();
            } else {
                this.f20029b.onDenied();
            }
            this.f20029b = null;
        }
    }

    public PermissionUtils m(b bVar) {
        this.f20029b = bVar;
        return this;
    }

    public void y() {
        String[] strArr = this.f20028a;
        if (strArr == null || strArr.length <= 0) {
            Log.w("PermissionUtils", "No permissions to request.");
            return;
        }
        this.f20030c = new LinkedHashSet();
        this.f20031d = new ArrayList();
        this.f20032e = new ArrayList();
        this.f20033f = new ArrayList();
        this.f20034g = new ArrayList();
        Pair pairQ = q(this.f20028a);
        this.f20030c.addAll((Collection) pairQ.first);
        this.f20033f.addAll((Collection) pairQ.second);
        for (String str : this.f20030c) {
            if (r(str)) {
                this.f20032e.add(str);
            } else {
                this.f20031d.add(str);
            }
        }
        if (this.f20031d.isEmpty()) {
            z();
        } else {
            C();
        }
    }
}
