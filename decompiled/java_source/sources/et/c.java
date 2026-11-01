package et;

import com.bumptech.glide.util.LruCache;
import com.cloud.tmc.kernel.utils.UrlUtils;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f62007a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Integer[] f62008b = {120, 180, 240, 360, 540, 720, 1080};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static LruCache f62009c = new LruCache(600);

    private c() {
    }

    private final int f(int i11) {
        int iIntValue = ((Number) ArraysKt.q0(f62008b)).intValue();
        for (Integer num : f62008b) {
            int iIntValue2 = num.intValue();
            if (i11 <= iIntValue2) {
                return iIntValue2;
            }
        }
        return iIntValue;
    }

    private final boolean g(String str) {
        return StringsKt.c0(str, "?x-oss-process=image", false, 2, null) || StringsKt.c0(str, "x-server-image=1", false, 2, null);
    }

    public final String a(String url, int i11, boolean z10, boolean z11, int i12, boolean z12, boolean z13, int i13) {
        Intrinsics.h(url, "url");
        if (g(url)) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder(url);
        if (StringsKt.c0(url, UrlUtils.QUESTION_MARK, false, 2, null)) {
            sb2.append("&x-oss-process=image");
        } else {
            sb2.append("?x-oss-process=image");
        }
        sb2.append("/resize,w_");
        sb2.append(i11);
        if (z12) {
            sb2.append(",h_");
            sb2.append(i12);
        }
        if (z10) {
            sb2.append("/format,webp");
        }
        if (z11) {
            sb2.append("/quality,Q_50");
        }
        if (z13) {
            sb2.append("/blur,r_" + i13 + ",s_" + i13);
        }
        String string = sb2.toString();
        Intrinsics.g(string, "toString(...)");
        return string;
    }

    public final int c(String url) {
        Intrinsics.h(url, "url");
        Integer num = (Integer) f62009c.get(url);
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public final String d(String url, int i11, boolean z10, boolean z11, int i12, boolean z12, boolean z13, boolean z14, int i13) {
        Intrinsics.h(url, "url");
        if (g(url)) {
            return url;
        }
        int iF = f(i11);
        Integer num = (Integer) f62009c.get(url);
        int iIntValue = num != null ? num.intValue() : 0;
        if (iIntValue >= iF) {
            iF = iIntValue;
        }
        int i14 = (int) (((iF * 1.0f) / i11) * i12);
        if (iIntValue != iF && !z13) {
            f62009c.put(url, Integer.valueOf(iF));
        }
        return a(url, iF, z10, z11, i14, z12, z14, i13);
    }
}
