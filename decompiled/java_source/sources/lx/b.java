package lx;

import java.text.SimpleDateFormat;
import java.util.TimeZone;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f69056a = new b();

    private b() {
    }

    public final String a(long j11) {
        SimpleDateFormat simpleDateFormat = j11 >= 3600000 ? new SimpleDateFormat("H:mm:ss") : new SimpleDateFormat("mm:ss");
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT+0:00"));
        String str = simpleDateFormat.format(Long.valueOf(j11));
        Intrinsics.g(str, "format(...)");
        return str;
    }
}
