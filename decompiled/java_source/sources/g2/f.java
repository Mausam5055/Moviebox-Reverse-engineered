package g2;

import androidx.media3.exoplayer.source.f0;
import com.google.common.collect.ImmutableList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class f implements e {
    @Override // g2.e
    public f0 a(List list, List list2) {
        return new d(list, list2);
    }

    @Override // g2.e
    public f0 b() {
        return new d(ImmutableList.of(), ImmutableList.of());
    }
}
