package ak;

import android.content.Context;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final u f653a = new u();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Boolean f654b;

    private u() {
    }

    private final int b() {
        int[][] iArr = {new int[]{96, 254, Sdk$SDKError.Reason.INVALID_GZIP_BID_PAYLOAD_VALUE, Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE}, new int[]{248, Sdk$SDKError.Reason.AD_IS_PLAYING_VALUE, 47, 126}, new int[]{Sdk$SDKError.Reason.INVALID_JSON_BID_PAYLOAD_VALUE, 73, 255, 72}, new int[]{23, 82, 81, 99}};
        int i11 = 0;
        for (int i12 = 0; i12 < 4; i12++) {
            for (int i13 : iArr[i12]) {
                i11 = (i11 << 1) ^ i13;
            }
        }
        return i11;
    }

    private final int c(String str) {
        int i11 = 0;
        int iC = ProgressionUtilKt.c(0, str.length() - 1, 2);
        if (iC < 0) {
            return 0;
        }
        int i12 = 0;
        while (true) {
            int i13 = i11 + 2;
            String strSubstring = str.substring(i11, i13);
            Intrinsics.g(strSubstring, "substring(...)");
            i12 = (i12 << 1) ^ Integer.parseInt(strSubstring, CharsKt.a(16));
            if (i11 == iC) {
                return i12;
            }
            i11 = i13;
        }
    }

    public final boolean a(Context context) {
        Intrinsics.h(context, "context");
        Boolean bool = f654b;
        if (bool != null) {
            return bool.booleanValue();
        }
        boolean z10 = c(r.f650a.a(context)) == b();
        f654b = Boolean.valueOf(z10);
        return z10;
    }
}
