package io.reactivex.rxjava3.internal.functions;

import java.util.Objects;
import lz.d;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final d f65333a = new C0791a();

    /* JADX INFO: renamed from: io.reactivex.rxjava3.internal.functions.a$a, reason: collision with other inner class name */
    static final class C0791a implements d {
        C0791a() {
        }

        @Override // lz.d
        public boolean a(Object obj, Object obj2) {
            return Objects.equals(obj, obj2);
        }
    }

    public static int a(int i11, String str) {
        if (i11 > 0) {
            return i11;
        }
        throw new IllegalArgumentException(str + " > 0 required but it was " + i11);
    }
}
