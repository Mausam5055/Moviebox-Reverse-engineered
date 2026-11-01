package com.cloud.tmc.miniutils.constant;

import android.annotation.SuppressLint;
import android.os.Build;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"InlinedApi"})
public final class PermissionConstants {
    public static final String ACTIVITY_RECOGNITION = "ACTIVITY_RECOGNITION";
    public static final String CALENDAR = "CALENDAR";
    public static final String CAMERA = "CAMERA";
    public static final String CONTACTS = "CONTACTS";
    public static final String LOCATION = "LOCATION";
    public static final String MEDIA = "MEDIA";
    public static final String MEDIA_AUDIO = "MEDIA_AUDIO";
    public static final String MEDIA_IMAGES = "MEDIA_IMAGES";
    public static final String MEDIA_IMAGES_VIDEO = "MEDIA_IMAGES_VIDEO";
    public static final String MEDIA_VIDEO = "MEDIA_VIDEO";
    public static final String MICROPHONE = "MICROPHONE";
    public static final String PHONE = "PHONE";
    public static final String SENSORS = "SENSORS";
    public static final String SMS = "SMS";
    public static final String STORAGE = "STORAGE";
    public static final String STORAGE_READ = "STORAGE_READ";
    public static final String STORAGE_WRITE = "STORAGE_WRITE";
    private static final String[] GROUP_CALENDAR = {"android.permission.READ_CALENDAR", "android.permission.WRITE_CALENDAR"};
    private static final String[] GROUP_CAMERA = {"android.permission.CAMERA"};
    private static final String[] GROUP_CONTACTS = {"android.permission.READ_CONTACTS", "android.permission.WRITE_CONTACTS", "android.permission.GET_ACCOUNTS"};
    private static final String[] GROUP_LOCATION = {"android.permission.ACCESS_COARSE_LOCATION"};
    private static final String[] GROUP_MICROPHONE = {"android.permission.RECORD_AUDIO"};
    private static final String[] GROUP_PHONE = {"android.permission.READ_PHONE_STATE", "android.permission.READ_PHONE_NUMBERS", "android.permission.CALL_PHONE", "android.permission.READ_CALL_LOG", "android.permission.WRITE_CALL_LOG", "com.android.voicemail.permission.ADD_VOICEMAIL", "android.permission.USE_SIP", "android.permission.PROCESS_OUTGOING_CALLS", "android.permission.ANSWER_PHONE_CALLS"};
    private static final String[] GROUP_PHONE_BELOW_O = {"android.permission.READ_PHONE_STATE", "android.permission.READ_PHONE_NUMBERS", "android.permission.CALL_PHONE", "android.permission.READ_CALL_LOG", "android.permission.WRITE_CALL_LOG", "com.android.voicemail.permission.ADD_VOICEMAIL", "android.permission.USE_SIP", "android.permission.PROCESS_OUTGOING_CALLS"};
    private static final String[] GROUP_SENSORS = {"android.permission.BODY_SENSORS"};
    private static final String[] GROUP_SMS = {"android.permission.SEND_SMS", "android.permission.RECEIVE_SMS", "android.permission.READ_SMS", "android.permission.RECEIVE_WAP_PUSH", "android.permission.RECEIVE_MMS"};
    private static final String[] GROUP_STORAGE = {"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"};
    private static final String[] GROUP_STORAGE_READ = {"android.permission.READ_EXTERNAL_STORAGE"};
    private static final String[] GROUP_STORAGE_WRITE = {"android.permission.WRITE_EXTERNAL_STORAGE"};
    private static final String[] GROUP_SELECT_MEDIA = {"android.permission.READ_MEDIA_IMAGES", "android.permission.READ_MEDIA_VIDEO", "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"};
    private static final String[] GROUP_MEDIA = {"android.permission.READ_MEDIA_IMAGES", "android.permission.READ_MEDIA_VIDEO"};
    private static final String[] GROUP_SELECT_MEDIA_IMAGES = {"android.permission.READ_MEDIA_IMAGES", "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"};
    private static final String[] GROUP_MEDIA_IMAGES = {"android.permission.READ_MEDIA_IMAGES"};
    private static final String[] GROUP_SELECT_MEDIA_VIDEO = {"android.permission.READ_MEDIA_VIDEO", "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"};
    private static final String[] GROUP_MEDIA_VIDEO = {"android.permission.READ_MEDIA_VIDEO"};
    private static final String[] GROUP_MEDIA_AUDIO = {"android.permission.READ_MEDIA_AUDIO"};
    private static final String[] GROUP_SELECT_MEDIA_IMAGES_VIDEO = {"android.permission.READ_MEDIA_IMAGES", "android.permission.READ_MEDIA_VIDEO", "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"};
    private static final String[] GROUP_MEDIA_IMAGES_VIDEO = {"android.permission.READ_MEDIA_IMAGES", "android.permission.READ_MEDIA_VIDEO"};
    private static final String[] GROUP_ACTIVITY_RECOGNITION = {"android.permission.ACTIVITY_RECOGNITION"};

    @Retention(RetentionPolicy.SOURCE)
    public @interface PermissionGroup {
    }

    public static String[] getPermissions(String str) {
        if (str == null) {
            return new String[0];
        }
        switch (str) {
            case "LOCATION":
                return GROUP_LOCATION;
            case "SENSORS":
                return GROUP_SENSORS;
            case "MEDIA_AUDIO":
                return Build.VERSION.SDK_INT >= 33 ? GROUP_MEDIA_AUDIO : GROUP_STORAGE;
            case "MEDIA_VIDEO":
                int i11 = Build.VERSION.SDK_INT;
                if (i11 >= 34) {
                    return GROUP_SELECT_MEDIA_VIDEO;
                }
                return i11 >= 33 ? GROUP_MEDIA_VIDEO : GROUP_STORAGE;
            case "STORAGE":
            case "MEDIA":
                int i12 = Build.VERSION.SDK_INT;
                if (i12 >= 34) {
                    return GROUP_SELECT_MEDIA;
                }
                return i12 >= 33 ? GROUP_MEDIA : GROUP_STORAGE;
            case "STORAGE_READ":
                return Build.VERSION.SDK_INT >= 33 ? GROUP_MEDIA : GROUP_STORAGE_READ;
            case "SMS":
                return GROUP_SMS;
            case "PHONE":
                return Build.VERSION.SDK_INT < 26 ? GROUP_PHONE_BELOW_O : GROUP_PHONE;
            case "ACTIVITY_RECOGNITION":
                return GROUP_ACTIVITY_RECOGNITION;
            case "CONTACTS":
                return GROUP_CONTACTS;
            case "MEDIA_IMAGES":
                int i13 = Build.VERSION.SDK_INT;
                if (i13 >= 34) {
                    return GROUP_SELECT_MEDIA_IMAGES;
                }
                return i13 >= 33 ? GROUP_MEDIA_IMAGES : GROUP_STORAGE;
            case "CALENDAR":
                return GROUP_CALENDAR;
            case "MEDIA_IMAGES_VIDEO":
                int i14 = Build.VERSION.SDK_INT;
                if (i14 >= 34) {
                    return GROUP_SELECT_MEDIA_IMAGES_VIDEO;
                }
                return i14 >= 33 ? GROUP_MEDIA_IMAGES_VIDEO : GROUP_STORAGE;
            case "STORAGE_WRITE":
                return Build.VERSION.SDK_INT >= 33 ? GROUP_MEDIA : GROUP_STORAGE_WRITE;
            case "MICROPHONE":
                return GROUP_MICROPHONE;
            case "CAMERA":
                return GROUP_CAMERA;
            default:
                return new String[]{str};
        }
    }
}
