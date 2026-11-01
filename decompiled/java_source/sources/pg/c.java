package pg;

import com.tencent.mmkv.MMKV;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f72455a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static MMKV f72456b;

    private c() {
    }

    public final String a(String key, String defaultValue) {
        String string;
        Intrinsics.h(key, "key");
        Intrinsics.h(defaultValue, "defaultValue");
        if (f72456b == null) {
            f72456b = MMKV.I("mmkv_net");
        }
        MMKV mmkv = f72456b;
        return (mmkv == null || (string = mmkv.getString(key, defaultValue)) == null) ? defaultValue : string;
    }

    public final void b(String key, String value) {
        Intrinsics.h(key, "key");
        Intrinsics.h(value, "value");
        if (f72456b == null) {
            f72456b = MMKV.I("mmkv_net");
        }
        MMKV mmkv = f72456b;
        if (mmkv != null) {
            mmkv.putString(key, value);
        }
    }
}
