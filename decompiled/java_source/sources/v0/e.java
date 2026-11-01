package v0;

import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f76978a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f76979b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f76980c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f76981d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f76982e;

    public void a(View view) {
        this.f76979b = view.getLeft();
        this.f76980c = view.getTop();
        this.f76981d = view.getRight();
        this.f76982e = view.getBottom();
        this.f76978a = view.getRotation();
    }

    public int b() {
        return this.f76982e - this.f76980c;
    }

    public int c() {
        return this.f76981d - this.f76979b;
    }
}
