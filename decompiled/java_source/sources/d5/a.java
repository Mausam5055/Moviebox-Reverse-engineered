package d5;

import a5.j1;
import a5.o0;
import a5.z0;
import com.alibaba.fastjson.JSONObject;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import javax.money.Monetary;
import org.javamoney.moneta.Money;
import z4.b2;

/* JADX INFO: loaded from: classes3.dex */
public class a implements z0, b2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f61233a = new a();

    @Override // z4.b2
    public int b() {
        return 0;
    }

    @Override // z4.b2
    public Object c(y4.a aVar, Type type, Object obj) {
        String string;
        JSONObject jSONObjectL0 = aVar.l0();
        Object obj2 = jSONObjectL0.get("currency");
        if (obj2 instanceof JSONObject) {
            string = ((JSONObject) obj2).getString("currencyCode");
        } else {
            string = obj2 instanceof String ? (String) obj2 : null;
        }
        Object obj3 = jSONObjectL0.get("numberStripped");
        if ((obj3 instanceof BigDecimal) || (obj3 instanceof Integer) || (obj3 instanceof BigInteger)) {
            return Money.of((Number) obj3, Monetary.getCurrency(string, new String[0]));
        }
        throw new UnsupportedOperationException();
    }

    @Override // a5.z0
    public void d(o0 o0Var, Object obj, Object obj2, Type type, int i11) {
        Money money = (Money) obj;
        if (money == null) {
            o0Var.C();
            return;
        }
        j1 j1Var = o0Var.f296k;
        j1Var.a0('{', "numberStripped", money.getNumberStripped());
        j1Var.Z(',', "currency", money.getCurrency().getCurrencyCode());
        j1Var.write(Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE);
    }
}
