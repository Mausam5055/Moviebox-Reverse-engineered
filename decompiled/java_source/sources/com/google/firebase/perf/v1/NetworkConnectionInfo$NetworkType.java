package com.google.firebase.perf.v1;

import com.google.protobuf.y;

/* JADX INFO: loaded from: classes4.dex */
public enum NetworkConnectionInfo$NetworkType implements y.c {
    NONE(-1),
    MOBILE(0),
    WIFI(1),
    MOBILE_MMS(2),
    MOBILE_SUPL(3),
    MOBILE_DUN(4),
    MOBILE_HIPRI(5),
    WIMAX(6),
    BLUETOOTH(7),
    DUMMY(8),
    ETHERNET(9),
    MOBILE_FOTA(10),
    MOBILE_IMS(11),
    MOBILE_CBS(12),
    WIFI_P2P(13),
    MOBILE_IA(14),
    MOBILE_EMERGENCY(15),
    PROXY(16),
    VPN(17);

    public static final int BLUETOOTH_VALUE = 7;
    public static final int DUMMY_VALUE = 8;
    public static final int ETHERNET_VALUE = 9;
    public static final int MOBILE_CBS_VALUE = 12;
    public static final int MOBILE_DUN_VALUE = 4;
    public static final int MOBILE_EMERGENCY_VALUE = 15;
    public static final int MOBILE_FOTA_VALUE = 10;
    public static final int MOBILE_HIPRI_VALUE = 5;
    public static final int MOBILE_IA_VALUE = 14;
    public static final int MOBILE_IMS_VALUE = 11;
    public static final int MOBILE_MMS_VALUE = 2;
    public static final int MOBILE_SUPL_VALUE = 3;
    public static final int MOBILE_VALUE = 0;
    public static final int NONE_VALUE = -1;
    public static final int PROXY_VALUE = 16;
    public static final int VPN_VALUE = 17;
    public static final int WIFI_P2P_VALUE = 13;
    public static final int WIFI_VALUE = 1;
    public static final int WIMAX_VALUE = 6;
    private static final y.d internalValueMap = new y.d() { // from class: com.google.firebase.perf.v1.NetworkConnectionInfo$NetworkType.a
        @Override // com.google.protobuf.y.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public NetworkConnectionInfo$NetworkType findValueByNumber(int i11) {
            return NetworkConnectionInfo$NetworkType.forNumber(i11);
        }
    };
    private final int value;

    private static final class b implements y.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final y.e f32384a = new b();

        private b() {
        }

        @Override // com.google.protobuf.y.e
        public boolean isInRange(int i11) {
            return NetworkConnectionInfo$NetworkType.forNumber(i11) != null;
        }
    }

    NetworkConnectionInfo$NetworkType(int i11) {
        this.value = i11;
    }

    public static NetworkConnectionInfo$NetworkType forNumber(int i11) {
        switch (i11) {
            case -1:
                return NONE;
            case 0:
                return MOBILE;
            case 1:
                return WIFI;
            case 2:
                return MOBILE_MMS;
            case 3:
                return MOBILE_SUPL;
            case 4:
                return MOBILE_DUN;
            case 5:
                return MOBILE_HIPRI;
            case 6:
                return WIMAX;
            case 7:
                return BLUETOOTH;
            case 8:
                return DUMMY;
            case 9:
                return ETHERNET;
            case 10:
                return MOBILE_FOTA;
            case 11:
                return MOBILE_IMS;
            case 12:
                return MOBILE_CBS;
            case 13:
                return WIFI_P2P;
            case 14:
                return MOBILE_IA;
            case 15:
                return MOBILE_EMERGENCY;
            case 16:
                return PROXY;
            case 17:
                return VPN;
            default:
                return null;
        }
    }

    public static y.d internalGetValueMap() {
        return internalValueMap;
    }

    public static y.e internalGetVerifier() {
        return b.f32384a;
    }

    @Deprecated
    public static NetworkConnectionInfo$NetworkType valueOf(int i11) {
        return forNumber(i11);
    }

    @Override // com.google.protobuf.y.c
    public final int getNumber() {
        return this.value;
    }
}
