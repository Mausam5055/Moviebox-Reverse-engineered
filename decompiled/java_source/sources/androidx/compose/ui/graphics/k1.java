package androidx.compose.ui.graphics;

import android.graphics.Shader;

/* JADX INFO: loaded from: classes.dex */
public abstract class k1 {

    public static final class a extends y4 {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ Shader f4463e;

        a(Shader shader) {
            this.f4463e = shader;
        }

        @Override // androidx.compose.ui.graphics.y4
        public Shader b(long j11) {
            return this.f4463e;
        }
    }

    public static final y4 a(Shader shader) {
        return new a(shader);
    }
}
