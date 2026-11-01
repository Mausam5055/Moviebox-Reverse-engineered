package androidx.compose.foundation.layout;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class j {
    public static /* synthetic */ androidx.compose.ui.f a(k kVar, androidx.compose.ui.f fVar, float f11, boolean z10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: weight");
        }
        if ((i11 & 2) != 0) {
            z10 = true;
        }
        return kVar.a(fVar, f11, z10);
    }
}
