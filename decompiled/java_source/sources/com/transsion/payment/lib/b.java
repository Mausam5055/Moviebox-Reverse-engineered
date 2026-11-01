package com.transsion.payment.lib;

/* JADX INFO: loaded from: classes5.dex */
public interface b {

    /* JADX INFO: loaded from: classes6.dex */
    public static final class a {
        public static /* synthetic */ void a(b bVar, Integer num, String str, boolean z10, String str2, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: error");
            }
            if ((i11 & 1) != 0) {
                num = 0;
            }
            if ((i11 & 8) != 0) {
                str2 = null;
            }
            bVar.a(num, str, z10, str2);
        }
    }

    void a(Integer num, String str, boolean z10, String str2);

    void b(boolean z10);

    void c(int i11, String str, String str2);
}
