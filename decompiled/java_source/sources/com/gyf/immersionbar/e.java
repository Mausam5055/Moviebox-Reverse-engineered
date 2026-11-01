package com.gyf.immersionbar;

import android.app.Application;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
final class e extends ContentObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ArrayList f33103a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Application f33104b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Boolean f33105c;

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final e f33106a = new e();
    }

    private e() {
        super(new Handler(Looper.getMainLooper()));
        this.f33105c = Boolean.FALSE;
    }

    static e b() {
        return b.f33106a;
    }

    void a(ImmersionCallback immersionCallback) {
        if (immersionCallback == null) {
            return;
        }
        if (this.f33103a == null) {
            this.f33103a = new ArrayList();
        }
        if (this.f33103a.contains(immersionCallback)) {
            return;
        }
        this.f33103a.add(immersionCallback);
    }

    void c(Application application) {
        Uri uriFor;
        this.f33104b = application;
        if (application == null || application.getContentResolver() == null || this.f33105c.booleanValue() || (uriFor = Settings.System.getUriFor("navigationbar_is_min")) == null) {
            return;
        }
        this.f33104b.getContentResolver().registerContentObserver(uriFor, true, this);
        this.f33105c = Boolean.TRUE;
    }

    void d(ImmersionCallback immersionCallback) {
        ArrayList arrayList;
        if (immersionCallback == null || (arrayList = this.f33103a) == null) {
            return;
        }
        arrayList.remove(immersionCallback);
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z10) {
        ArrayList arrayList;
        super.onChange(z10);
        Application application = this.f33104b;
        if (application == null || application.getContentResolver() == null || (arrayList = this.f33103a) == null || arrayList.isEmpty()) {
            return;
        }
        int i11 = Settings.System.getInt(this.f33104b.getContentResolver(), "navigationbar_is_min", 0);
        NavigationBarType navigationBarType = NavigationBarType.CLASSIC;
        if (i11 == 1) {
            navigationBarType = NavigationBarType.GESTURES;
        }
        Iterator it = this.f33103a.iterator();
        while (it.hasNext()) {
            ((ImmersionCallback) it.next()).onNavigationBarChange(i11 == 0, navigationBarType);
        }
    }
}
