package h2;

import androidx.media3.common.r;
import i3.s;
import java.util.List;
import l2.s0;
import y1.f4;

/* JADX INFO: loaded from: classes2.dex */
public interface f {

    public interface a {
        a a(s.a aVar);

        a b(int i11);

        a c(boolean z10);

        r d(r rVar);

        f e(int i11, r rVar, boolean z10, List list, s0 s0Var, f4 f4Var);
    }

    public interface b {
        s0 track(int i11, int i12);
    }

    boolean a(l2.s sVar);

    l2.h b();

    r[] c();

    void d(b bVar, long j11, long j12);

    void release();
}
