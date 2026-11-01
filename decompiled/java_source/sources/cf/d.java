package cf;

import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import com.tencent.mmkv.MMKV;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class d implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public o0 f17145a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f17146b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public e f17147c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private f f17148d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private g f17149e;

    public d(o0 pb2) {
        Intrinsics.h(pb2, "pb");
        this.f17145a = pb2;
        this.f17146b = LazyKt.b(new Function0() { // from class: cf.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d.e();
            }
        });
        this.f17148d = new f(this.f17145a, this);
        this.f17149e = new g(this.f17145a, this);
        this.f17148d = new f(this.f17145a, this);
        this.f17149e = new g(this.f17145a, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV e() {
        MMKV mmkvI = MMKV.I("kv_permission_x");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    @Override // cf.e
    public f b() {
        return this.f17148d;
    }

    public final MMKV d() {
        return (MMKV) this.f17146b.getValue();
    }

    @Override // cf.e
    public void finish() {
        e eVar = this.f17147c;
        if (eVar != null) {
            eVar.request();
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f17145a.f17199k);
        arrayList.addAll(this.f17145a.f17200l);
        arrayList.addAll(this.f17145a.f17197i);
        if (this.f17145a.F()) {
            if (ye.c.f78993a.f(this.f17145a.m(), "android.permission.ACCESS_BACKGROUND_LOCATION")) {
                this.f17145a.f17198j.add("android.permission.ACCESS_BACKGROUND_LOCATION");
            } else {
                arrayList.add("android.permission.ACCESS_BACKGROUND_LOCATION");
            }
        }
        if (this.f17145a.L() && this.f17145a.p() >= 23) {
            if (Settings.canDrawOverlays(this.f17145a.m())) {
                this.f17145a.f17198j.add("android.permission.SYSTEM_ALERT_WINDOW");
            } else {
                arrayList.add("android.permission.SYSTEM_ALERT_WINDOW");
            }
        }
        if (this.f17145a.M() && this.f17145a.p() >= 23) {
            if (Settings.System.canWrite(this.f17145a.m())) {
                this.f17145a.f17198j.add("android.permission.WRITE_SETTINGS");
            } else {
                arrayList.add("android.permission.WRITE_SETTINGS");
            }
        }
        if (this.f17145a.I()) {
            if (Build.VERSION.SDK_INT < 30 || !Environment.isExternalStorageManager()) {
                arrayList.add("android.permission.MANAGE_EXTERNAL_STORAGE");
            } else {
                this.f17145a.f17198j.add("android.permission.MANAGE_EXTERNAL_STORAGE");
            }
        }
        if (this.f17145a.H()) {
            if (Build.VERSION.SDK_INT < 26 || this.f17145a.p() < 26 || !this.f17145a.m().getPackageManager().canRequestPackageInstalls()) {
                arrayList.add("android.permission.REQUEST_INSTALL_PACKAGES");
            } else {
                this.f17145a.f17198j.add("android.permission.REQUEST_INSTALL_PACKAGES");
            }
        }
        if (this.f17145a.J()) {
            if (ye.c.f78993a.b(this.f17145a.m())) {
                this.f17145a.f17198j.add("android.permission.POST_NOTIFICATIONS");
            } else {
                arrayList.add("android.permission.POST_NOTIFICATIONS");
            }
        }
        if (this.f17145a.K()) {
            if (ye.c.f78993a.c(this.f17145a.m())) {
                this.f17145a.f17198j.add("android.permission.PICTURE_IN_PICTURE");
            } else {
                arrayList.add("android.permission.PICTURE_IN_PICTURE");
            }
        }
        if (this.f17145a.G()) {
            if (ye.c.f78993a.f(this.f17145a.m(), "android.permission.BODY_SENSORS_BACKGROUND")) {
                this.f17145a.f17198j.add("android.permission.BODY_SENSORS_BACKGROUND");
            } else {
                arrayList.add("android.permission.BODY_SENSORS_BACKGROUND");
            }
        }
        ze.c cVar = this.f17145a.f17204p;
        if (cVar != null) {
            Intrinsics.e(cVar);
            cVar.a(arrayList.isEmpty(), new ArrayList(this.f17145a.f17198j), arrayList);
        }
        this.f17145a.j();
    }
}
