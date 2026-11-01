package com.transsion.json.b;

/* JADX INFO: loaded from: classes.dex */
public class k extends a {
    @Override // com.transsion.json.b.n
    public void a(Object obj) {
        if (obj instanceof Double) {
            Double d11 = (Double) obj;
            if (Double.isInfinite(d11.doubleValue()) || Double.isNaN(d11.doubleValue())) {
                b().r("null");
                return;
            }
        }
        if (obj instanceof Float) {
            Float f11 = (Float) obj;
            if (Float.isInfinite(f11.floatValue()) || Float.isNaN(f11.floatValue())) {
                b().r("null");
                return;
            }
        }
        b().r(obj.toString());
    }
}
