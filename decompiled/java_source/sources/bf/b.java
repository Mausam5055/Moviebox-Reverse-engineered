package bf;

import java.util.Map;
import java.util.Set;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Set f16461a = SetsKt.j("android.permission.ACCESS_BACKGROUND_LOCATION", "android.permission.SYSTEM_ALERT_WINDOW", "android.permission.WRITE_SETTINGS", "android.permission.MANAGE_EXTERNAL_STORAGE", "android.permission.REQUEST_INSTALL_PACKAGES", "android.permission.POST_NOTIFICATIONS", "android.permission.PICTURE_IN_PICTURE", "android.permission.BODY_SENSORS_BACKGROUND");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map f16462b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Map f16463c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Map f16464d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Map f16465e;

    static {
        Map mapL = MapsKt.l(TuplesKt.a("android.permission.READ_CALENDAR", "android.permission-group.CALENDAR"), TuplesKt.a("android.permission.WRITE_CALENDAR", "android.permission-group.CALENDAR"), TuplesKt.a("android.permission.READ_CALL_LOG", "android.permission-group.CALL_LOG"), TuplesKt.a("android.permission.WRITE_CALL_LOG", "android.permission-group.CALL_LOG"), TuplesKt.a("android.permission.PROCESS_OUTGOING_CALLS", "android.permission-group.CALL_LOG"), TuplesKt.a("android.permission.CAMERA", "android.permission-group.CAMERA"), TuplesKt.a("android.permission.READ_CONTACTS", "android.permission-group.CONTACTS"), TuplesKt.a("android.permission.WRITE_CONTACTS", "android.permission-group.CONTACTS"), TuplesKt.a("android.permission.GET_ACCOUNTS", "android.permission-group.CONTACTS"), TuplesKt.a("android.permission.ACCESS_FINE_LOCATION", "android.permission-group.LOCATION"), TuplesKt.a("android.permission.ACCESS_COARSE_LOCATION", "android.permission-group.LOCATION"), TuplesKt.a("android.permission.ACCESS_BACKGROUND_LOCATION", "android.permission-group.LOCATION"), TuplesKt.a("android.permission.RECORD_AUDIO", "android.permission-group.MICROPHONE"), TuplesKt.a("android.permission.READ_PHONE_STATE", "android.permission-group.PHONE"), TuplesKt.a("android.permission.READ_PHONE_NUMBERS", "android.permission-group.PHONE"), TuplesKt.a("android.permission.CALL_PHONE", "android.permission-group.PHONE"), TuplesKt.a("android.permission.ANSWER_PHONE_CALLS", "android.permission-group.PHONE"), TuplesKt.a("com.android.voicemail.permission.ADD_VOICEMAIL", "android.permission-group.PHONE"), TuplesKt.a("android.permission.USE_SIP", "android.permission-group.PHONE"), TuplesKt.a("android.permission.ACCEPT_HANDOVER", "android.permission-group.PHONE"), TuplesKt.a("android.permission.BODY_SENSORS", "android.permission-group.SENSORS"), TuplesKt.a("android.permission.ACTIVITY_RECOGNITION", "android.permission-group.ACTIVITY_RECOGNITION"), TuplesKt.a("android.permission.SEND_SMS", "android.permission-group.SMS"), TuplesKt.a("android.permission.RECEIVE_SMS", "android.permission-group.SMS"), TuplesKt.a("android.permission.READ_SMS", "android.permission-group.SMS"), TuplesKt.a("android.permission.RECEIVE_WAP_PUSH", "android.permission-group.SMS"), TuplesKt.a("android.permission.RECEIVE_MMS", "android.permission-group.SMS"), TuplesKt.a("android.permission.READ_EXTERNAL_STORAGE", "android.permission-group.STORAGE"), TuplesKt.a("android.permission.WRITE_EXTERNAL_STORAGE", "android.permission-group.STORAGE"), TuplesKt.a("android.permission.ACCESS_MEDIA_LOCATION", "android.permission-group.STORAGE"));
        f16462b = mapL;
        Map mapW = MapsKt.w(MapsKt.f(TuplesKt.a("android.permission.MANAGE_EXTERNAL_STORAGE", "android.permission-group.STORAGE")));
        mapW.putAll(mapL);
        Map mapU = MapsKt.u(mapW);
        f16463c = mapU;
        Map mapW2 = MapsKt.w(MapsKt.l(TuplesKt.a("android.permission.BLUETOOTH_SCAN", "android.permission-group.NEARBY_DEVICES"), TuplesKt.a("android.permission.BLUETOOTH_ADVERTISE", "android.permission-group.NEARBY_DEVICES"), TuplesKt.a("android.permission.BLUETOOTH_CONNECT", "android.permission-group.NEARBY_DEVICES")));
        mapW2.putAll(mapU);
        Map mapU2 = MapsKt.u(mapW2);
        f16464d = mapU2;
        Map mapW3 = MapsKt.w(MapsKt.l(TuplesKt.a("android.permission.READ_MEDIA_IMAGES", "android.permission-group.READ_MEDIA_VISUAL"), TuplesKt.a("android.permission.READ_MEDIA_VIDEO", "android.permission-group.READ_MEDIA_VISUAL"), TuplesKt.a("android.permission.READ_MEDIA_AUDIO", "android.permission-group.READ_MEDIA_AURAL"), TuplesKt.a("android.permission.POST_NOTIFICATIONS", "android.permission-group.NOTIFICATIONS"), TuplesKt.a("android.permission.NEARBY_WIFI_DEVICES", "android.permission-group.NEARBY_DEVICES"), TuplesKt.a("android.permission.BODY_SENSORS_BACKGROUND", "android.permission-group.SENSORS")));
        mapW3.putAll(mapU2);
        f16465e = MapsKt.u(mapW3);
    }

    public static final Set a() {
        return f16461a;
    }
}
