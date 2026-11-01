package androidx.media3.common.util;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public abstract class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String[] f10440a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f10441b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f10442c;

    public q(String... strArr) {
        this.f10440a = strArr;
    }

    public synchronized boolean a() {
        if (this.f10441b) {
            return this.f10442c;
        }
        this.f10441b = true;
        try {
            for (String str : this.f10440a) {
                b(str);
            }
            this.f10442c = true;
        } catch (UnsatisfiedLinkError unused) {
            u.h("LibraryLoader", "Failed to load " + Arrays.toString(this.f10440a));
        }
        return this.f10442c;
    }

    protected abstract void b(String str);
}
