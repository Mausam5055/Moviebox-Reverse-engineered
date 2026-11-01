package androidx.navigation;

import android.os.Bundle;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f13860a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private l f13861b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Bundle f13862c;

    public c(int i11, l lVar, Bundle bundle) {
        this.f13860a = i11;
        this.f13861b = lVar;
        this.f13862c = bundle;
    }

    public /* synthetic */ c(int i11, l lVar, Bundle bundle, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i11, (i12 & 2) != 0 ? null : lVar, (i12 & 4) != 0 ? null : bundle);
    }

    public final Bundle a() {
        return this.f13862c;
    }

    public final int b() {
        return this.f13860a;
    }

    public final l c() {
        return this.f13861b;
    }

    public final void d(Bundle bundle) {
        this.f13862c = bundle;
    }

    public final void e(l lVar) {
        this.f13861b = lVar;
    }
}
