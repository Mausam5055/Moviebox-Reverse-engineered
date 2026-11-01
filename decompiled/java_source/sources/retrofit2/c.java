package retrofit2;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes7.dex */
class c {

    static final class a extends c {
        a() {
        }

        @Override // retrofit2.c
        List a(Executor executor) {
            return Arrays.asList(new j(), new l(executor));
        }

        @Override // retrofit2.c
        List b() {
            return Collections.singletonList(new z());
        }
    }

    c() {
    }

    List a(Executor executor) {
        return Collections.singletonList(new l(executor));
    }

    List b() {
        return Collections.emptyList();
    }
}
