package z2;

import androidx.media3.common.r;
import androidx.media3.common.v;
import androidx.media3.common.w;
import androidx.media3.common.x;

/* JADX INFO: loaded from: classes2.dex */
public abstract class i implements x.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f79192a;

    public i(String str) {
        this.f79192a = str;
    }

    @Override // androidx.media3.common.x.a
    public /* synthetic */ void a(v.b bVar) {
        w.c(this, bVar);
    }

    @Override // androidx.media3.common.x.a
    public /* synthetic */ byte[] getWrappedMetadataBytes() {
        return w.a(this);
    }

    @Override // androidx.media3.common.x.a
    public /* synthetic */ r getWrappedMetadataFormat() {
        return w.b(this);
    }

    public String toString() {
        return this.f79192a;
    }
}
