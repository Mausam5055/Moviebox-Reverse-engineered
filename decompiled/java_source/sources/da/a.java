package da;

import ba.h;
import ba.i;
import com.google.android.exoplayer2.util.d0;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends h {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final b f61247o;

    public a(List list) {
        super("DvbDecoder");
        d0 d0Var = new d0((byte[]) list.get(0));
        this.f61247o = new b(d0Var.J(), d0Var.J());
    }

    @Override // ba.h
    protected i v(byte[] bArr, int i11, boolean z10) {
        if (z10) {
            this.f61247o.r();
        }
        return new c(this.f61247o.b(bArr, i11));
    }
}
