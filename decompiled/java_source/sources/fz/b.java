package fz;

import java.util.Locale;
import java.util.TimeZone;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b implements a {
    @Override // fz.a
    public String getLanguage() {
        String language = Locale.getDefault().getLanguage();
        Intrinsics.g(language, "getDefault().language");
        return language;
    }

    @Override // fz.a
    public String getTimeZoneId() {
        String id2 = TimeZone.getDefault().getID();
        Intrinsics.g(id2, "getDefault().id");
        return id2;
    }
}
