package y9;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class d implements com.google.android.exoplayer2.offline.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f78950a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f78951b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f78952c;

    protected d(String str, List list, boolean z10) {
        this.f78950a = str;
        this.f78951b = Collections.unmodifiableList(list);
        this.f78952c = z10;
    }
}
