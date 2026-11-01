package androidx.media3.exoplayer.drm;

import android.media.DeniedByServerException;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import androidx.media3.common.util.a1;
import androidx.media3.datasource.HttpDataSource;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class x {

    private static final class a {
        public static boolean a(Throwable th2) {
            return th2 instanceof MediaDrmResetException;
        }
    }

    public static byte[] a(androidx.media3.datasource.a aVar, String str, byte[] bArr, Map map) throws MediaDrmCallbackException {
        w1.l lVar = new w1.l(aVar);
        w1.h hVarA = new w1.h.b().j(str).e(map).d(2).c(bArr).b(1).a();
        int i11 = 0;
        w1.h hVarA2 = hVarA;
        while (true) {
            try {
                w1.f fVar = new w1.f(lVar, hVarA2);
                try {
                    byte[] bArrB = com.google.common.io.a.b(fVar);
                    a1.m(fVar);
                    return bArrB;
                } catch (HttpDataSource.InvalidResponseCodeException e11) {
                    try {
                        String strC = c(e11, i11);
                        if (strC == null) {
                            throw e11;
                        }
                        i11++;
                        hVarA2 = hVarA2.a().j(strC).a();
                        a1.m(fVar);
                    } catch (Throwable th2) {
                        a1.m(fVar);
                        throw th2;
                    }
                }
            } catch (Exception e12) {
                throw new MediaDrmCallbackException(hVarA, lVar.e(), lVar.getResponseHeaders(), lVar.d(), e12);
            }
        }
    }

    public static int b(Throwable th2, int i11) {
        if (th2 instanceof MediaDrm.MediaDrmStateException) {
            return a1.b0(a1.c0(((MediaDrm.MediaDrmStateException) th2).getDiagnosticInfo()));
        }
        if (a1.f10350a >= 23 && a.a(th2)) {
            return 6006;
        }
        if ((th2 instanceof NotProvisionedException) || d(th2)) {
            return 6002;
        }
        if (th2 instanceof DeniedByServerException) {
            return 6007;
        }
        if (th2 instanceof UnsupportedDrmException) {
            return 6001;
        }
        if (th2 instanceof DefaultDrmSessionManager.MissingSchemeDataException) {
            return 6003;
        }
        if (th2 instanceof KeysExpiredException) {
            return 6008;
        }
        if (i11 == 1) {
            return 6006;
        }
        if (i11 == 2) {
            return 6004;
        }
        if (i11 == 3) {
            return 6002;
        }
        throw new IllegalArgumentException();
    }

    private static String c(HttpDataSource.InvalidResponseCodeException invalidResponseCodeException, int i11) {
        Map<String, List<String>> map;
        List<String> list;
        int i12 = invalidResponseCodeException.responseCode;
        if ((i12 != 307 && i12 != 308) || i11 >= 5 || (map = invalidResponseCodeException.headerFields) == null || (list = map.get(HttpHeaders.LOCATION)) == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static boolean d(Throwable th2) {
        return a1.f10350a == 34 && (th2 instanceof NoSuchMethodError) && th2.getMessage() != null && th2.getMessage().contains("Landroid/media/NotProvisionedException;.<init>(");
    }

    public static boolean e(Throwable th2) {
        return a1.f10350a == 34 && (th2 instanceof NoSuchMethodError) && th2.getMessage() != null && th2.getMessage().contains("Landroid/media/ResourceBusyException;.<init>(");
    }
}
