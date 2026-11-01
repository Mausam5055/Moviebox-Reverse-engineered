package com.transsion.shorttv.order;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import androidx.appcompat.app.AppCompatActivity;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.order.bean.CreatePaynicornOrderReqBean;
import com.transsion.shorttv.order.bean.GetPaynicornOrderStatusRespEntity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014¨\u0006\b"}, d2 = {"Lcom/transsion/shorttv/order/PayTestActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PayTestActivity extends AppCompatActivity {

    public static final class a implements b {
        a() {
        }

        @Override // com.transsion.shorttv.order.b
        public void a(String errorCode, String errorMsg) {
            Intrinsics.h(errorCode, "errorCode");
            Intrinsics.h(errorMsg, "errorMsg");
            b.a.a(this, errorCode, errorMsg);
            c.f53045a.b("PayTestActivity --> onPayFail() --> errorCode = " + errorCode + " --> errorMsg = " + errorMsg);
        }

        @Override // com.transsion.shorttv.order.b
        public void b(GetPaynicornOrderStatusRespEntity getPaynicornOrderStatusRespEntity) {
            b.a.b(this, getPaynicornOrderStatusRespEntity);
            c.f53045a.b("PayTestActivity --> onPurchase() --> orderStatus = " + (getPaynicornOrderStatusRespEntity != null ? getPaynicornOrderStatusRespEntity.getOrderStatus() : null) + " --> description = " + (getPaynicornOrderStatusRespEntity != null ? getPaynicornOrderStatusRespEntity.getDescription() : null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T(PayTestActivity payTestActivity, View view) {
        d.f53046a.d(payTestActivity, new CreatePaynicornOrderReqBean("MovieBox", "3180939149599363896", "7260396449953797608", null, null, null, null, true, null, 376, null), new a());
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R$layout.activity_test_pay_layout);
        Button button = (Button) findViewById(R$id.btnPay);
        if (button != null) {
            button.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv.order.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PayTestActivity.T(this.f53052a, view);
                }
            });
        }
    }
}
