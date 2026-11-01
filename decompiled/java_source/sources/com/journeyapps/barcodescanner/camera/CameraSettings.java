package com.journeyapps.barcodescanner.camera;

/* JADX INFO: loaded from: classes4.dex */
public class CameraSettings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f33949a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f33950b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f33951c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f33952d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f33953e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f33954f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f33955g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f33956h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private FocusMode f33957i = FocusMode.AUTO;

    public enum FocusMode {
        AUTO,
        CONTINUOUS,
        INFINITY,
        MACRO
    }

    public FocusMode a() {
        return this.f33957i;
    }

    public int b() {
        return this.f33949a;
    }

    public boolean c() {
        return this.f33953e;
    }

    public boolean d() {
        return this.f33956h;
    }

    public boolean e() {
        return this.f33951c;
    }

    public boolean f() {
        return this.f33955g;
    }

    public boolean g() {
        return this.f33952d;
    }

    public boolean h() {
        return this.f33950b;
    }

    public void i(int i11) {
        this.f33949a = i11;
    }
}
