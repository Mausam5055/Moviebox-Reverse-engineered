package com.google.android.datatransport.cct.internal;

import android.util.SparseArray;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ComplianceData {

    public enum ProductIdOrigin {
        NOT_SET(0),
        EVENT_OVERRIDE(5);

        private static final SparseArray<ProductIdOrigin> valueMap;
        private final int value;

        static {
            ProductIdOrigin productIdOrigin = NOT_SET;
            ProductIdOrigin productIdOrigin2 = EVENT_OVERRIDE;
            SparseArray<ProductIdOrigin> sparseArray = new SparseArray<>();
            valueMap = sparseArray;
            sparseArray.put(0, productIdOrigin);
            sparseArray.put(5, productIdOrigin2);
        }

        ProductIdOrigin(int i11) {
            this.value = i11;
        }

        @Nullable
        public static ProductIdOrigin forNumber(int i11) {
            return valueMap.get(i11);
        }

        public int getValue() {
            return this.value;
        }
    }

    public static abstract class a {
        public abstract ComplianceData a();

        public abstract a b(p pVar);

        public abstract a c(ProductIdOrigin productIdOrigin);
    }

    public static a a() {
        return new f.b();
    }

    public abstract p b();

    public abstract ProductIdOrigin c();
}
