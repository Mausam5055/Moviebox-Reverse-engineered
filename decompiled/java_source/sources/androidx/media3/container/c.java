package androidx.media3.container;

import androidx.media3.common.r;
import androidx.media3.common.v;
import androidx.media3.common.w;
import androidx.media3.common.x;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements x.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f10582a;

    public c(int i11) {
        this.f10582a = i11;
    }

    @Override // androidx.media3.common.x.a
    public /* synthetic */ void a(v.b bVar) {
        w.c(this, bVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c) && this.f10582a == ((c) obj).f10582a;
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
        return this.f10582a;
    }

    public String toString() {
        return "Mp4AlternateGroup: " + this.f10582a;
    }
}
