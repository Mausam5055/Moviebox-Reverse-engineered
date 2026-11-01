package a5;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.lang.reflect.Type;
import java.nio.ByteBuffer;
import z4.b2;

/* JADX INFO: loaded from: classes2.dex */
public class u implements z0, b2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final u f346a = new u();

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public byte[] f347a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f348b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f349c;

        public ByteBuffer a() {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(this.f347a);
            byteBufferWrap.limit(this.f348b);
            byteBufferWrap.position(this.f349c);
            return byteBufferWrap;
        }
    }

    @Override // z4.b2
    public int b() {
        return 14;
    }

    @Override // z4.b2
    public Object c(y4.a aVar, Type type, Object obj) {
        return ((a) aVar.m0(a.class)).a();
    }

    @Override // a5.z0
    public void d(o0 o0Var, Object obj, Object obj2, Type type, int i11) {
        ByteBuffer byteBuffer = (ByteBuffer) obj;
        byte[] bArrArray = byteBuffer.array();
        j1 j1Var = o0Var.f296k;
        j1Var.write(Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
        j1Var.w("array");
        j1Var.t(bArrArray);
        j1Var.U(',', "limit", byteBuffer.limit());
        j1Var.U(',', RequestParameters.POSITION, byteBuffer.position());
        j1Var.write(Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE);
    }
}
