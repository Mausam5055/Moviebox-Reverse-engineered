package jv;

import java.security.MessageDigest;
import java.util.Arrays;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: loaded from: classes7.dex */
public abstract class d {
    public static final String b(String str) {
        Object objM454constructorimpl;
        Intrinsics.h(str, "<this>");
        try {
            Result.Companion companion = Result.INSTANCE;
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            byte[] bytes = str.getBytes(Charsets.UTF_8);
            Intrinsics.g(bytes, "getBytes(...)");
            byte[] bArrDigest = messageDigest.digest(bytes);
            Intrinsics.e(bArrDigest);
            objM454constructorimpl = Result.m454constructorimpl(ArraysKt.o0(bArrDigest, "", null, null, 0, null, new Function1() { // from class: jv.c
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return d.c(((Byte) obj).byteValue());
                }
            }, 30, null));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Object obj = str;
        if (!Result.m460isFailureimpl(objM454constructorimpl)) {
            obj = objM454constructorimpl;
        }
        return (String) obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence c(byte b11) {
        String str = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b11)}, 1));
        Intrinsics.g(str, "format(...)");
        return str;
    }
}
