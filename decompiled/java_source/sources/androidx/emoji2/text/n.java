package androidx.emoji2.text;

import android.graphics.Typeface;
import android.util.SparseArray;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.emoji2.text.flatbuffer.c f9130a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final char[] f9131b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f9132c = new a(1024);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Typeface f9133d;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final SparseArray f9134a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private p f9135b;

        private a() {
            this(1);
        }

        a(int i11) {
            this.f9134a = new SparseArray(i11);
        }

        a a(int i11) {
            SparseArray sparseArray = this.f9134a;
            if (sparseArray == null) {
                return null;
            }
            return (a) sparseArray.get(i11);
        }

        final p b() {
            return this.f9135b;
        }

        void c(p pVar, int i11, int i12) {
            a aVarA = a(pVar.b(i11));
            if (aVarA == null) {
                aVarA = new a();
                this.f9134a.put(pVar.b(i11), aVarA);
            }
            if (i12 > i11) {
                aVarA.c(pVar, i11 + 1, i12);
            } else {
                aVarA.f9135b = pVar;
            }
        }
    }

    private n(Typeface typeface, androidx.emoji2.text.flatbuffer.c cVar) {
        this.f9133d = typeface;
        this.f9130a = cVar;
        this.f9131b = new char[cVar.l() * 2];
        a(cVar);
    }

    private void a(androidx.emoji2.text.flatbuffer.c cVar) {
        int iL = cVar.l();
        for (int i11 = 0; i11 < iL; i11++) {
            p pVar = new p(this, i11);
            Character.toChars(pVar.f(), this.f9131b, i11 * 2);
            h(pVar);
        }
    }

    public static n b(Typeface typeface, ByteBuffer byteBuffer) {
        try {
            androidx.core.os.s.a("EmojiCompat.MetadataRepo.create");
            return new n(typeface, m.b(byteBuffer));
        } finally {
            androidx.core.os.s.b();
        }
    }

    public char[] c() {
        return this.f9131b;
    }

    public androidx.emoji2.text.flatbuffer.c d() {
        return this.f9130a;
    }

    int e() {
        return this.f9130a.m();
    }

    a f() {
        return this.f9132c;
    }

    Typeface g() {
        return this.f9133d;
    }

    void h(p pVar) {
        androidx.core.util.i.h(pVar, "emoji metadata cannot be null");
        androidx.core.util.i.b(pVar.c() > 0, "invalid metadata codepoint length");
        this.f9132c.c(pVar, 0, pVar.c() - 1);
    }
}
