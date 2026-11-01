package el;

import com.transsion.home.bean.HomePreferencesConfig;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f61917a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HomePreferencesConfig f61918b;

    public a(int i11, HomePreferencesConfig config) {
        Intrinsics.h(config, "config");
        this.f61917a = i11;
        this.f61918b = config;
    }

    public final HomePreferencesConfig a() {
        return this.f61918b;
    }

    public final int b() {
        return this.f61917a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f61917a == aVar.f61917a && Intrinsics.c(this.f61918b, aVar.f61918b);
    }

    public int hashCode() {
        return (this.f61917a * 31) + this.f61918b.hashCode();
    }

    public String toString() {
        return "HomePreferencesInsertInstruction(position=" + this.f61917a + ", config=" + this.f61918b + ")";
    }
}
