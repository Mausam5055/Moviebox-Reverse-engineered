package a5;

import com.alibaba.fastjson.serializer.SerializerFeature;
import java.lang.reflect.Type;
import java.text.DecimalFormat;

/* JADX INFO: loaded from: classes2.dex */
public class d0 implements z0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final d0 f189b = new d0();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private DecimalFormat f190a;

    public d0() {
        this.f190a = null;
    }

    public d0(String str) {
        this(new DecimalFormat(str));
    }

    public d0(DecimalFormat decimalFormat) {
        this.f190a = decimalFormat;
    }

    @Override // a5.z0
    public void d(o0 o0Var, Object obj, Object obj2, Type type, int i11) {
        j1 j1Var = o0Var.f296k;
        if (obj == null) {
            j1Var.p0(SerializerFeature.WriteNullNumberAsZero);
            return;
        }
        double dDoubleValue = ((Double) obj).doubleValue();
        if (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue)) {
            j1Var.m0();
            return;
        }
        DecimalFormat decimalFormat = this.f190a;
        if (decimalFormat == null) {
            j1Var.u(dDoubleValue, true);
        } else {
            j1Var.write(decimalFormat.format(dDoubleValue));
        }
    }
}
