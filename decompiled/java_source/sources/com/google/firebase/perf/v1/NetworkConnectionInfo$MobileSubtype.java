package com.google.firebase.perf.v1;

import com.google.protobuf.y;

/* JADX INFO: loaded from: classes4.dex */
public enum NetworkConnectionInfo$MobileSubtype implements y.c {
    UNKNOWN_MOBILE_SUBTYPE(0),
    GPRS(1),
    EDGE(2),
    UMTS(3),
    CDMA(4),
    EVDO_0(5),
    EVDO_A(6),
    RTT(7),
    HSDPA(8),
    HSUPA(9),
    HSPA(10),
    IDEN(11),
    EVDO_B(12),
    LTE(13),
    EHRPD(14),
    HSPAP(15),
    GSM(16),
    TD_SCDMA(17),
    IWLAN(18),
    LTE_CA(19),
    COMBINED(100);

    public static final int CDMA_VALUE = 4;
    public static final int COMBINED_VALUE = 100;
    public static final int EDGE_VALUE = 2;
    public static final int EHRPD_VALUE = 14;
    public static final int EVDO_0_VALUE = 5;
    public static final int EVDO_A_VALUE = 6;
    public static final int EVDO_B_VALUE = 12;
    public static final int GPRS_VALUE = 1;
    public static final int GSM_VALUE = 16;
    public static final int HSDPA_VALUE = 8;
    public static final int HSPAP_VALUE = 15;
    public static final int HSPA_VALUE = 10;
    public static final int HSUPA_VALUE = 9;
    public static final int IDEN_VALUE = 11;
    public static final int IWLAN_VALUE = 18;
    public static final int LTE_CA_VALUE = 19;
    public static final int LTE_VALUE = 13;
    public static final int RTT_VALUE = 7;
    public static final int TD_SCDMA_VALUE = 17;
    public static final int UMTS_VALUE = 3;
    public static final int UNKNOWN_MOBILE_SUBTYPE_VALUE = 0;
    private static final y.d internalValueMap = new y.d() { // from class: com.google.firebase.perf.v1.NetworkConnectionInfo$MobileSubtype.a
        @Override // com.google.protobuf.y.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public NetworkConnectionInfo$MobileSubtype findValueByNumber(int i11) {
            return NetworkConnectionInfo$MobileSubtype.forNumber(i11);
        }
    };
    private final int value;

    private static final class b implements y.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final y.e f32383a = new b();

        private b() {
        }

        @Override // com.google.protobuf.y.e
        public boolean isInRange(int i11) {
            return NetworkConnectionInfo$MobileSubtype.forNumber(i11) != null;
        }
    }

    NetworkConnectionInfo$MobileSubtype(int i11) {
        this.value = i11;
    }

    public static NetworkConnectionInfo$MobileSubtype forNumber(int i11) {
        if (i11 == 100) {
            return COMBINED;
        }
        switch (i11) {
            case 0:
                return UNKNOWN_MOBILE_SUBTYPE;
            case 1:
                return GPRS;
            case 2:
                return EDGE;
            case 3:
                return UMTS;
            case 4:
                return CDMA;
            case 5:
                return EVDO_0;
            case 6:
                return EVDO_A;
            case 7:
                return RTT;
            case 8:
                return HSDPA;
            case 9:
                return HSUPA;
            case 10:
                return HSPA;
            case 11:
                return IDEN;
            case 12:
                return EVDO_B;
            case 13:
                return LTE;
            case 14:
                return EHRPD;
            case 15:
                return HSPAP;
            case 16:
                return GSM;
            case 17:
                return TD_SCDMA;
            case 18:
                return IWLAN;
            case 19:
                return LTE_CA;
            default:
                return null;
        }
    }

    public static y.d internalGetValueMap() {
        return internalValueMap;
    }

    public static y.e internalGetVerifier() {
        return b.f32383a;
    }

    @Deprecated
    public static NetworkConnectionInfo$MobileSubtype valueOf(int i11) {
        return forNumber(i11);
    }

    @Override // com.google.protobuf.y.c
    public final int getNumber() {
        return this.value;
    }
}
