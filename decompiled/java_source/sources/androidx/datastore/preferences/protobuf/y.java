package androidx.datastore.preferences.protobuf;

import java.nio.Buffer;

/* JADX INFO: loaded from: classes.dex */
abstract class y {
    static void a(Buffer buffer, int i11) {
        buffer.limit(i11);
    }

    static void b(Buffer buffer) {
        buffer.mark();
    }

    static void c(Buffer buffer, int i11) {
        buffer.position(i11);
    }

    static void d(Buffer buffer) {
        buffer.reset();
    }
}
