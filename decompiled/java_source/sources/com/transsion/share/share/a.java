package com.transsion.share.share;

import com.transsion.share.bean.PostType;

/* JADX INFO: loaded from: classes6.dex */
public interface a {

    /* JADX INFO: renamed from: com.transsion.share.share.a$a, reason: collision with other inner class name */
    public static final class C0656a {
        public static /* synthetic */ void a(a aVar, String str, PostType postType, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: delete");
            }
            if ((i11 & 2) != 0) {
                postType = null;
            }
            aVar.a(str, postType);
        }

        public static void b(a aVar, String str) {
        }

        public static void c(a aVar, String str) {
        }
    }

    void a(String str, PostType postType);

    void b(String str);

    void c(String str, String str2, String str3, String str4);

    void d(String str);

    void e(String str);
}
