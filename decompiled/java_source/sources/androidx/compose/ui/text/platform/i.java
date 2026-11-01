package androidx.compose.ui.text.platform;

import androidx.compose.runtime.a3;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.u2;
import androidx.emoji2.text.EmojiCompat;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
final class i implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a3 f6324a;

    public static final class a extends EmojiCompat.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ i1 f6325a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ i f6326b;

        a(i1 i1Var, i iVar) {
            this.f6325a = i1Var;
            this.f6326b = iVar;
        }

        @Override // androidx.emoji2.text.EmojiCompat.f
        public void a(Throwable th2) {
            this.f6326b.f6324a = m.f6331a;
        }

        @Override // androidx.emoji2.text.EmojiCompat.f
        public void b() {
            this.f6325a.setValue(Boolean.TRUE);
            this.f6326b.f6324a = new n(true);
        }
    }

    public i() {
        this.f6324a = EmojiCompat.i() ? c() : null;
    }

    private final a3 c() {
        EmojiCompat emojiCompatC = EmojiCompat.c();
        if (emojiCompatC.e() == 1) {
            return new n(true);
        }
        i1 i1VarC = u2.c(Boolean.FALSE, null, 2, null);
        emojiCompatC.t(new a(i1VarC, this));
        return i1VarC;
    }

    @Override // androidx.compose.ui.text.platform.l
    public a3 a() {
        a3 a3Var = this.f6324a;
        if (a3Var != null) {
            Intrinsics.e(a3Var);
            return a3Var;
        }
        if (!EmojiCompat.i()) {
            return m.f6331a;
        }
        a3 a3VarC = c();
        this.f6324a = a3VarC;
        Intrinsics.e(a3VarC);
        return a3VarC;
    }
}
