package com.transsion.shorttv.order;

import com.google.gson.JsonObject;
import com.transsion.shorttv.order.bean.CreatePaynicornOrderReqBean;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g f53050a = new g();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f53051b = LazyKt.b(new Function0() { // from class: com.transsion.shorttv.order.f
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return g.e();
        }
    });

    private g() {
    }

    private final a d() {
        return (a) f53051b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final a e() {
        return (a) zg.c.f79414e.a().h(a.class);
    }

    public final Object b(CreatePaynicornOrderReqBean createPaynicornOrderReqBean, Continuation continuation) {
        Map<String, String> extStrJson;
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("project_name", createPaynicornOrderReqBean != null ? createPaynicornOrderReqBean.getProjectName() : null);
        jsonObject.addProperty("sku_id", createPaynicornOrderReqBean != null ? createPaynicornOrderReqBean.getSkuId() : null);
        jsonObject.addProperty("user_id", createPaynicornOrderReqBean != null ? createPaynicornOrderReqBean.getUserId() : null);
        jsonObject.addProperty("cp_front_page", createPaynicornOrderReqBean != null ? createPaynicornOrderReqBean.getCpFrontPage() : null);
        if (createPaynicornOrderReqBean != null && (extStrJson = createPaynicornOrderReqBean.getExtStrJson()) != null) {
            String string = new JSONObject(extStrJson).toString();
            Intrinsics.g(string, "toString(...)");
            jsonObject.addProperty("ext", string);
        }
        RequestBody.Companion companion = RequestBody.INSTANCE;
        String string2 = jsonObject.toString();
        Intrinsics.g(string2, "toString(...)");
        return a.C0662a.a(d(), null, companion.create(string2, MediaType.INSTANCE.parse("application/json")), e.f53049a.a(createPaynicornOrderReqBean != null ? Boxing.a(createPaynicornOrderReqBean.isDebug()) : null), continuation, 1, null);
    }

    public final Object c(String str, String str2, boolean z10, Continuation continuation) {
        return a.C0662a.b(d(), null, str == null ? "" : str, str2 == null ? "" : str2, e.f53049a.a(Boxing.a(z10)), continuation, 1, null);
    }
}
