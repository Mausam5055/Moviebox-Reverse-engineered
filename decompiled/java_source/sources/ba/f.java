package ba;

import android.os.Bundle;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class f implements com.google.android.exoplayer2.k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final f f16285b = new f(ImmutableList.of());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final com.google.android.exoplayer2.k.a f16286c = new com.google.android.exoplayer2.k.a() { // from class: ba.e
        @Override // com.google.android.exoplayer2.k.a
        public final com.google.android.exoplayer2.k a(Bundle bundle) {
            return f.c(bundle);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImmutableList f16287a;

    public f(List list) {
        this.f16287a = ImmutableList.copyOf((Collection) list);
    }

    private static ImmutableList b(List list) {
        ImmutableList.a aVarBuilder = ImmutableList.builder();
        for (int i11 = 0; i11 < list.size(); i11++) {
            if (((b) list.get(i11)).f16254d == null) {
                aVarBuilder.a((b) list.get(i11));
            }
        }
        return aVarBuilder.e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final f c(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(d(0));
        return new f(parcelableArrayList == null ? ImmutableList.of() : com.google.android.exoplayer2.util.d.b(b.f16250s, parcelableArrayList));
    }

    private static String d(int i11) {
        return Integer.toString(i11, 36);
    }

    @Override // com.google.android.exoplayer2.k
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(d(0), com.google.android.exoplayer2.util.d.d(b(this.f16287a)));
        return bundle;
    }
}
