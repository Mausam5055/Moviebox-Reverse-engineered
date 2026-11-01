package androidx.compose.ui.graphics;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class y3 implements Comparable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f4905a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final short f4906b = b(5120);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final short f4907c = b(-1025);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final short f4908d = b(31743);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final short f4909e = b(1024);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final short f4910f = b(1);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final short f4911g = b(32256);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final short f4912h = b(-1024);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final short f4913i = b(Short.MIN_VALUE);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final short f4914j = b(31744);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final short f4915k = b(0);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static short a(float f11) {
        int i11;
        int iFloatToRawIntBits = Float.floatToRawIntBits(f11);
        int i12 = iFloatToRawIntBits >>> 31;
        int i13 = (iFloatToRawIntBits >>> 23) & 255;
        int i14 = 8388607 & iFloatToRawIntBits;
        int i15 = 31;
        int i16 = 0;
        if (i13 != 255) {
            int i17 = i13 - 112;
            if (i17 >= 31) {
                i15 = 49;
            } else {
                if (i17 > 0) {
                    i16 = i14 >> 13;
                    if ((iFloatToRawIntBits & 4096) != 0) {
                        i11 = (((i17 << 10) | i16) + 1) | (i12 << 15);
                    } else {
                        i15 = i17;
                    }
                    return b((short) i11);
                }
                if (i17 >= -10) {
                    int i18 = (8388608 | i14) >> (1 - i17);
                    if ((i18 & 4096) != 0) {
                        i18 += 8192;
                    }
                    i15 = 0;
                    i16 = i18 >> 13;
                } else {
                    i15 = 0;
                }
            }
        } else if (i14 != 0) {
            i16 = 512;
        }
        i11 = (i12 << 15) | (i15 << 10) | i16;
        return b((short) i11);
    }

    public static short b(short s11) {
        return s11;
    }
}
