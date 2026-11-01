package bh;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f16471a = new a(null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final RequestBody a(Object req) {
            Intrinsics.h(req, "req");
            try {
                if (req instanceof String) {
                    return RequestBody.INSTANCE.create((String) req, MediaType.INSTANCE.parse("application/json"));
                }
                return RequestBody.INSTANCE.create(com.alibaba.fastjson.a.toJSON(req).toString(), MediaType.INSTANCE.parse("application/json"));
            } catch (Exception e11) {
                e11.printStackTrace();
                return null;
            }
        }
    }
}
