package com.transsion.payment.lib.strategy;

import android.app.Application;
import androidx.appcompat.app.AppCompatActivity;
import com.transsion.payment.lib.bean.CreateOrderReq;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public interface g {

    public static final class a {
        public static String a(g gVar) {
            String simpleName = gVar.getClass().getSimpleName();
            Intrinsics.g(simpleName, "getSimpleName(...)");
            return simpleName;
        }

        public static /* synthetic */ void b(g gVar, Boolean bool, com.transsion.payment.lib.b bVar, Function0 function0, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: startConnectPlatform");
            }
            if ((i11 & 1) != 0) {
                bool = Boolean.TRUE;
            }
            if ((i11 & 2) != 0) {
                bVar = null;
            }
            if ((i11 & 4) != 0) {
                function0 = null;
            }
            gVar.a(bool, bVar, function0);
        }
    }

    void a(Boolean bool, com.transsion.payment.lib.b bVar, Function0 function0);

    void b(AppCompatActivity appCompatActivity, CreateOrderReq createOrderReq, boolean z10, com.transsion.payment.lib.b bVar, Function1 function1);

    void init(Application application);
}
