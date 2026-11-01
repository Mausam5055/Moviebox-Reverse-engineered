package x;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Unit;

/* JADX INFO: loaded from: classes2.dex */
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f77998a = new LinkedHashMap();

    public final Map a() {
        return this.f77998a;
    }

    public final Unit b(int i11, String str) {
        android.support.v4.media.session.c.a(this.f77998a.get(Integer.valueOf(i11)));
        return null;
    }
}
