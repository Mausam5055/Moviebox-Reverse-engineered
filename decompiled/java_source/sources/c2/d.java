package c2;

import androidx.media3.exoplayer.offline.q;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f16984a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f16985b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f16986c;

    protected d(String str, List list, boolean z10) {
        this.f16984a = str;
        this.f16985b = Collections.unmodifiableList(list);
        this.f16986c = z10;
    }
}
