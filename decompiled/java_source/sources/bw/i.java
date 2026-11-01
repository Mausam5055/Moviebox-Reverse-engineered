package bw;

import android.content.Context;
import com.tencent.mmkv.MMKV;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final h f16941b = new h();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile i f16942c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MMKV f16943a;

    public i(Context context) {
        try {
            MMKV.C(context);
            this.f16943a = MMKV.o();
        } catch (Throwable unused) {
        }
    }

    public final String a(String key, String defaultValue) {
        Intrinsics.h(key, "key");
        Intrinsics.h(defaultValue, "defaultValue");
        MMKV mmkv = this.f16943a;
        String strL = mmkv != null ? mmkv.l(key, defaultValue) : null;
        return strL == null ? defaultValue : strL;
    }

    public final void b(String key, String value) {
        Intrinsics.h(key, "key");
        Intrinsics.h(value, "value");
        MMKV mmkv = this.f16943a;
        if (mmkv != null) {
            mmkv.v(key, value);
        }
    }
}
