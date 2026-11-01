package com.transsion.shorttv.order;

import com.transsion.shorttv.order.bean.GetPaynicornOrderStatusRespEntity;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public interface b {

    public static final class a {
        public static void a(b bVar, String errorCode, String errorMsg) {
            Intrinsics.h(errorCode, "errorCode");
            Intrinsics.h(errorMsg, "errorMsg");
        }

        public static void b(b bVar, GetPaynicornOrderStatusRespEntity getPaynicornOrderStatusRespEntity) {
        }
    }

    void a(String str, String str2);

    void b(GetPaynicornOrderStatusRespEntity getPaynicornOrderStatusRespEntity);
}
