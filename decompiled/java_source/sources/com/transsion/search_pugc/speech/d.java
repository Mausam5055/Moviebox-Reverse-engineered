package com.transsion.search_pugc.speech;

import java.util.concurrent.ThreadLocalRandom;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f52523a = new d();

    private d() {
    }

    public final String a(int i11) {
        StringBuffer stringBuffer = new StringBuffer("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ");
        StringBuffer stringBuffer2 = new StringBuffer();
        ThreadLocalRandom threadLocalRandomCurrent = ThreadLocalRandom.current();
        int length = stringBuffer.length();
        for (int i12 = 0; i12 < i11; i12++) {
            stringBuffer2.append(stringBuffer.charAt(threadLocalRandomCurrent.nextInt(length)));
        }
        String string = stringBuffer2.toString();
        Intrinsics.g(string, "toString(...)");
        return string;
    }
}
