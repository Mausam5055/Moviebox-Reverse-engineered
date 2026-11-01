package androidx.media3.container;

import androidx.media3.common.r;
import androidx.media3.common.v;
import androidx.media3.common.w;
import androidx.media3.common.x;
import com.google.common.primitives.Floats;

/* JADX INFO: loaded from: classes2.dex */
public final class e implements x.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f10588a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f10589b;

    public e(float f11, float f12) {
        androidx.media3.common.util.a.b(f11 >= -90.0f && f11 <= 90.0f && f12 >= -180.0f && f12 <= 180.0f, "Invalid latitude or longitude");
        this.f10588a = f11;
        this.f10589b = f12;
    }

    @Override // androidx.media3.common.x.a
    public /* synthetic */ void a(v.b bVar) {
        w.c(this, bVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        return this.f10588a == eVar.f10588a && this.f10589b == eVar.f10589b;
    }

    @Override // androidx.media3.common.x.a
    public /* synthetic */ byte[] getWrappedMetadataBytes() {
        return w.a(this);
    }

    @Override // androidx.media3.common.x.a
    public /* synthetic */ r getWrappedMetadataFormat() {
        return w.b(this);
    }

    public int hashCode() {
        return ((527 + Floats.a(this.f10588a)) * 31) + Floats.a(this.f10589b);
    }

    public String toString() {
        return "xyz: latitude=" + this.f10588a + ", longitude=" + this.f10589b;
    }
}
