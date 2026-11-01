package com.cloud.hisavana.sdk;

import android.os.Bundle;

/* JADX INFO: loaded from: classes3.dex */
public class l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Bundle f22611a = new Bundle();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f22612b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f22613c = 0;

    protected void a() {
        this.f22611a.putInt("s_material_cache", 2);
    }

    protected void b(int i11) {
        if (i11 == 250) {
            this.f22613c = 2;
        } else {
            this.f22613c = 1;
        }
    }

    protected void c(boolean z10) {
        if (z10) {
            this.f22611a.putInt("s_material_cache", 1);
        } else {
            this.f22611a.putInt("s_material_cache", 2);
        }
    }

    protected void d() {
        if (this.f22613c == 1 || this.f22612b == 1) {
            this.f22611a.putInt("s_material_cache", 1);
        } else {
            this.f22611a.putInt("s_material_cache", 2);
        }
    }

    protected void e(int i11) {
        if (i11 == 250) {
            this.f22611a.putInt("s_material_cache", 2);
        } else {
            this.f22611a.putInt("s_material_cache", 1);
        }
    }

    protected void f(int i11) {
        if (i11 == 250) {
            this.f22612b = 2;
        } else {
            this.f22612b = 1;
        }
    }
}
