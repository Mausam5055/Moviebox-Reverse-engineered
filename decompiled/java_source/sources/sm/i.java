package sm;

import android.provider.Settings;
import com.blankj.utilcode.util.Utils;
import com.transsion.api.gateway.utils.EncoderUtil;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: loaded from: classes6.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final i f75412a = new i();

    private i() {
    }

    private final String a() {
        String string = Settings.Secure.getString(Utils.a().getContentResolver(), "android_id");
        if (string != null && string.length() != 0 && !Intrinsics.c(string, "9774d56d682e549c")) {
            d dVar = d.f75403a;
            if (!Intrinsics.c(dVar.f().getString("cached_android_id", null), string)) {
                dVar.f().putString("cached_android_id", string);
            }
            return string;
        }
        d dVar2 = d.f75403a;
        String string2 = dVar2.f().getString("cached_android_id", null);
        if (string2 != null && string2.length() != 0) {
            return string2;
        }
        String str = "fallback_" + System.currentTimeMillis() + '_' + ((int) (Math.random() * ((double) 1000000)));
        dVar2.f().putString("cached_android_id", str);
        return str;
    }

    public static /* synthetic */ int c(i iVar, String str, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 2;
        }
        return iVar.b(str, i11);
    }

    private final int d(String str, int i11) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(EncoderUtil.ALGORITHM_SHA_256);
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        Intrinsics.g(bytes, "getBytes(...)");
        byte[] bArrDigest = messageDigest.digest(bytes);
        Intrinsics.e(bArrDigest);
        return (int) ((((long) ByteBuffer.wrap(CollectionsKt.N0(ArraysKt.D0(bArrDigest, 4))).order(ByteOrder.BIG_ENDIAN).getInt()) & 4294967295L) % ((long) i11));
    }

    public final int b(String key, int i11) throws NoSuchAlgorithmException {
        Intrinsics.h(key, "key");
        if (i11 <= 0 || key.length() == 0) {
            return 0;
        }
        String strA = a();
        String str = "ab_bucket__" + key;
        d dVar = d.f75403a;
        int i12 = dVar.f().getInt(str, -1);
        if (i12 >= 0 && i12 < i11) {
            return i12;
        }
        int iD = d("oneRoomBucketSalt@2024" + strA + '_' + key, i11);
        dVar.f().putInt(str, iD);
        return iD;
    }
}
