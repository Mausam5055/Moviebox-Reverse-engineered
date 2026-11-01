package ti;

import com.transsion.api.gateway.utils.EncoderUtil;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final m f76263a = new m();

    private m() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence c(byte b11) {
        return StringsKt.A0(String.valueOf(b11 & 255), 3, '0');
    }

    public final String b(String str) throws NoSuchAlgorithmException {
        String str2 = new SimpleDateFormat("yyyyMMdd", Locale.getDefault()).format(new Date());
        MessageDigest messageDigest = MessageDigest.getInstance(EncoderUtil.ALGORITHM_SHA_256);
        byte[] bytes = (str2 + str).getBytes(Charsets.UTF_8);
        Intrinsics.g(bytes, "getBytes(...)");
        byte[] bArrDigest = messageDigest.digest(bytes);
        Intrinsics.e(bArrDigest);
        return StringsKt.y1(ArraysKt.o0(bArrDigest, "", null, null, 0, null, new Function1() { // from class: ti.l
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return m.c(((Byte) obj).byteValue());
            }
        }, 30, null), 8);
    }

    public final boolean d(String inputPwd, String str) {
        Intrinsics.h(inputPwd, "inputPwd");
        return Intrinsics.c(inputPwd, b(str));
    }
}
