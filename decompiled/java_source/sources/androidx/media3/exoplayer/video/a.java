package androidx.media3.exoplayer.video;

import androidx.media3.container.ObuParser;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ObuParser.d f13074a;

    a() {
    }

    private boolean a(ObuParser.c cVar, boolean z10) {
        ObuParser.d dVar;
        int i11 = cVar.f10570a;
        if (i11 == 2 || i11 == 15) {
            return true;
        }
        if (i11 == 3 && !z10) {
            return false;
        }
        if ((i11 != 6 && i11 != 3) || (dVar = this.f13074a) == null) {
            return false;
        }
        ObuParser.b bVarB = ObuParser.b.b(dVar, cVar);
        return (bVarB == null || bVarB.a()) ? false : true;
    }

    private void e(List list) {
        for (int i11 = 0; i11 < list.size(); i11++) {
            if (((ObuParser.c) list.get(i11)).f10570a == 1) {
                this.f13074a = ObuParser.d.a((ObuParser.c) list.get(i11));
            }
        }
    }

    public void b(ByteBuffer byteBuffer) {
        e(ObuParser.e(byteBuffer));
    }

    public void c() {
        this.f13074a = null;
    }

    public int d(ByteBuffer byteBuffer, boolean z10) {
        List listE = ObuParser.e(byteBuffer);
        e(listE);
        int size = listE.size() - 1;
        int i11 = 0;
        while (size >= 0 && a((ObuParser.c) listE.get(size), z10)) {
            if (((ObuParser.c) listE.get(size)).f10570a == 6 || ((ObuParser.c) listE.get(size)).f10570a == 3) {
                i11++;
            }
            size--;
        }
        if (i11 > 1 || size + 1 >= 8) {
            return byteBuffer.limit();
        }
        return size >= 0 ? ((ObuParser.c) listE.get(size)).f10571b.limit() : byteBuffer.position();
    }
}
