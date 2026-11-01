package oo;

import com.bumptech.glide.util.LruCache;
import com.cloud.tmc.kernel.utils.UrlUtils;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f71079a = new h();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Integer[] f71080b = {120, 180, 240, 360, 540, 720, 1080};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static LruCache f71081c = new LruCache(600);

    private h() {
    }

    private final int d(int i11) {
        int iIntValue = ((Number) ArraysKt.q0(f71080b)).intValue();
        for (Integer num : f71080b) {
            int iIntValue2 = num.intValue();
            if (i11 <= iIntValue2) {
                return iIntValue2;
            }
        }
        return iIntValue;
    }

    private final boolean e(String str) {
        return StringsKt.c0(str, "?x-oss-process=image", false, 2, null) || StringsKt.c0(str, "x-server-image=1", false, 2, null);
    }

    public final String a(String url, int i11, boolean z10, boolean z11, int i12, boolean z12) {
        Intrinsics.h(url, "url");
        if (e(url)) {
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
        String string = sb2.toString();
        Intrinsics.g(string, "toString(...)");
        return string;
    }

    public final String b(String url, int i11, boolean z10, boolean z11, int i12, boolean z12, boolean z13) {
        Intrinsics.h(url, "url");
        if (e(url)) {
            return url;
        }
        int iD = d(i11);
        Integer num = (Integer) f71081c.get(url);
        int iIntValue = num != null ? num.intValue() : 0;
        if (iIntValue >= iD) {
            iD = iIntValue;
        }
        int i13 = (int) (((iD * 1.0f) / i11) * i12);
        if (iIntValue != iD && !z13) {
            f71081c.put(url, Integer.valueOf(iD));
        }
        return a(url, iD, z10, z11, i13, z12);
    }
}
