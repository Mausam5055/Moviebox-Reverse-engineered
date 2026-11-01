package i3;

import com.google.common.collect.ImmutableList;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class r {
    public static k a(s sVar, byte[] bArr, int i11, int i12) {
        final ImmutableList.a aVarBuilder = ImmutableList.builder();
        s.b bVar = s.b.f64924c;
        Objects.requireNonNull(aVarBuilder);
        sVar.a(bArr, i11, i12, bVar, new androidx.media3.common.util.m() { // from class: i3.q
            @Override // androidx.media3.common.util.m
            public final void accept(Object obj) {
                aVarBuilder.a((e) obj);
            }
        });
        return new g(aVarBuilder.e());
    }

    public static void b(s sVar) {
    }
}
