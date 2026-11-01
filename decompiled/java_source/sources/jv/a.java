package jv;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a {
    public static final String a(String str) throws UnsupportedEncodingException {
        Intrinsics.h(str, "<this>");
        String strDecode = URLDecoder.decode(str, "UTF-8");
        Intrinsics.g(strDecode, "decode(...)");
        return strDecode;
    }

    public static final String b(String str) throws UnsupportedEncodingException {
        Intrinsics.h(str, "<this>");
        String strEncode = URLEncoder.encode(str, "UTF-8");
        Intrinsics.g(strEncode, "encode(...)");
        return strEncode;
    }
}
