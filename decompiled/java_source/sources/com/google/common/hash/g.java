package com.google.common.hash;

import java.nio.Buffer;

/* JADX INFO: loaded from: classes4.dex */
abstract class g {
    static void a(Buffer buffer) {
        buffer.flip();
    }

    static void b(Buffer buffer, int i11) {
        buffer.position(i11);
    }
}
