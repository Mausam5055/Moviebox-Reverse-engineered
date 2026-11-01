package com.google.common.hash;

import com.google.common.base.q;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes4.dex */
abstract class LongAddables {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final q f30867a;

    private static final class PureJavaLongAddable extends AtomicLong implements h {
        private PureJavaLongAddable() {
        }

        /* synthetic */ PureJavaLongAddable(a aVar) {
            this();
        }

        @Override // com.google.common.hash.h
        public void add(long j11) {
            getAndAdd(j11);
        }

        @Override // com.google.common.hash.h
        public void increment() {
            getAndIncrement();
        }

        @Override // com.google.common.hash.h
        public long sum() {
            return get();
        }
    }

    class a implements q {
        a() {
        }

        @Override // com.google.common.base.q
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public h get() {
            return new LongAdder();
        }
    }

    class b implements q {
        b() {
        }

        @Override // com.google.common.base.q
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public h get() {
            return new PureJavaLongAddable(null);
        }
    }

    static {
        q bVar;
        try {
            new LongAdder();
            bVar = new a();
        } catch (Throwable unused) {
            bVar = new b();
        }
        f30867a = bVar;
    }

    public static h a() {
        return (h) f30867a.get();
    }
}
