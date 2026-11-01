package com.google.android.datatransport.cct.internal;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class r {

    public static abstract class a {
        public abstract r a();

        public abstract a b(ClientInfo clientInfo);

        public abstract a c(List list);

        abstract a d(Integer num);

        abstract a e(String str);

        public abstract a f(QosTier qosTier);

        public abstract a g(long j11);

        public abstract a h(long j11);

        public a i(int i11) {
            return d(Integer.valueOf(i11));
        }

        public a j(String str) {
            return e(str);
        }
    }

    public static a a() {
        return new k.b();
    }

    public abstract ClientInfo b();

    public abstract List c();

    public abstract Integer d();

    public abstract String e();

    public abstract QosTier f();

    public abstract long g();

    public abstract long h();
}
