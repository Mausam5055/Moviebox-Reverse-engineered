package a3;

import androidx.media3.common.r;
import androidx.media3.common.v;
import androidx.media3.common.w;
import androidx.media3.common.x;
import com.google.common.primitives.Floats;

/* JADX INFO: loaded from: classes.dex */
public final class d implements x.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f147a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f148b;

    public d(float f11, int i11) {
        this.f147a = f11;
        this.f148b = i11;
    }

    @Override // androidx.media3.common.x.a
    public /* synthetic */ void a(v.b bVar) {
        w.c(this, bVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return this.f147a == dVar.f147a && this.f148b == dVar.f148b;
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
        return ((527 + Floats.a(this.f147a)) * 31) + this.f148b;
    }

    public String toString() {
        return "smta: captureFrameRate=" + this.f147a + ", svcTemporalLayerCount=" + this.f148b;
    }
}
