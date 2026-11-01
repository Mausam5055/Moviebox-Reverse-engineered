package s5;

import android.os.Build;

/* JADX INFO: loaded from: classes3.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f75282a = {"android.permission.READ_CALENDAR", "android.permission.WRITE_CALENDAR"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f75283b = {"android.permission.CAMERA"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String[] f75284c = {"android.permission.READ_CONTACTS", "android.permission.WRITE_CONTACTS", "android.permission.GET_ACCOUNTS"};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String[] f75285d = {"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_BACKGROUND_LOCATION"};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String[] f75286e = {"android.permission.RECORD_AUDIO"};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String[] f75287f = {"android.permission.READ_PHONE_STATE", "android.permission.READ_PHONE_NUMBERS", "android.permission.CALL_PHONE", "android.permission.READ_CALL_LOG", "android.permission.WRITE_CALL_LOG", "com.android.voicemail.permission.ADD_VOICEMAIL", "android.permission.USE_SIP", "android.permission.PROCESS_OUTGOING_CALLS", "android.permission.ANSWER_PHONE_CALLS"};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String[] f75288g = {"android.permission.READ_PHONE_STATE", "android.permission.READ_PHONE_NUMBERS", "android.permission.CALL_PHONE", "android.permission.READ_CALL_LOG", "android.permission.WRITE_CALL_LOG", "com.android.voicemail.permission.ADD_VOICEMAIL", "android.permission.USE_SIP", "android.permission.PROCESS_OUTGOING_CALLS"};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String[] f75289h = {"android.permission.BODY_SENSORS"};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String[] f75290i = {"android.permission.SEND_SMS", "android.permission.RECEIVE_SMS", "android.permission.READ_SMS", "android.permission.RECEIVE_WAP_PUSH", "android.permission.RECEIVE_MMS"};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String[] f75291j = {"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String[] f75292k = {"android.permission.ACTIVITY_RECOGNITION"};

    public static String[] a(String str) {
        if (str == null) {
            return new String[0];
        }
        switch (str) {
            case "LOCATION":
                return f75285d;
            case "SENSORS":
                return f75289h;
            case "STORAGE":
                return f75291j;
            case "SMS":
                return f75290i;
            case "PHONE":
                return Build.VERSION.SDK_INT < 26 ? f75288g : f75287f;
            case "ACTIVITY_RECOGNITION":
                return f75292k;
            case "CONTACTS":
                return f75284c;
            case "CALENDAR":
                return f75282a;
            case "MICROPHONE":
                return f75286e;
            case "CAMERA":
                return f75283b;
            default:
                return new String[]{str};
        }
    }
}
