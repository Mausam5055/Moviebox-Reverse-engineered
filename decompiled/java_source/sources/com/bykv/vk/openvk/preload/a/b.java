package com.bykv.vk.openvk.preload.a;

import java.lang.reflect.Field;
import java.util.Locale;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes2.dex */
public abstract class b implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f20310a = new b("IDENTITY") { // from class: com.bykv.vk.openvk.preload.a.b.1
        {
            byte b11 = 0;
        }

        @Override // com.bykv.vk.openvk.preload.a.c
        public final String a(Field field) {
            return field.getName();
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static b f20311b = new b("UPPER_CAMEL_CASE") { // from class: com.bykv.vk.openvk.preload.a.b.2
        {
            int i11 = 1;
            byte b11 = 0;
        }

        @Override // com.bykv.vk.openvk.preload.a.c
        public final String a(Field field) {
            return b.a(field.getName());
        }
    };

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static b f20312c = new b("UPPER_CAMEL_CASE_WITH_SPACES") { // from class: com.bykv.vk.openvk.preload.a.b.3
        {
            int i11 = 2;
            byte b11 = 0;
        }

        @Override // com.bykv.vk.openvk.preload.a.c
        public final String a(Field field) {
            return b.a(b.a(field.getName(), " "));
        }
    };

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static b f20313d = new b("LOWER_CASE_WITH_UNDERSCORES") { // from class: com.bykv.vk.openvk.preload.a.b.4
        {
            int i11 = 3;
            byte b11 = 0;
        }

        @Override // com.bykv.vk.openvk.preload.a.c
        public final String a(Field field) {
            return b.a(field.getName(), "_").toLowerCase(Locale.ENGLISH);
        }
    };

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static b f20314e = new b("LOWER_CASE_WITH_DASHES") { // from class: com.bykv.vk.openvk.preload.a.b.5
        {
            int i11 = 4;
            byte b11 = 0;
        }

        @Override // com.bykv.vk.openvk.preload.a.c
        public final String a(Field field) {
            return b.a(field.getName(), "-").toLowerCase(Locale.ENGLISH);
        }
    };

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static b f20315f = new b("LOWER_CASE_WITH_DOTS") { // from class: com.bykv.vk.openvk.preload.a.b.6
        {
            int i11 = 5;
            byte b11 = 0;
        }

        @Override // com.bykv.vk.openvk.preload.a.c
        public final String a(Field field) {
            return b.a(field.getName(), ".").toLowerCase(Locale.ENGLISH);
        }
    };

    private b(String str, int i11) {
        super(str, i11);
    }

    /* synthetic */ b(String str, int i11, byte b11) {
        this(str, i11);
    }

    static String a(String str) {
        int length = str.length() - 1;
        int i11 = 0;
        while (!Character.isLetter(str.charAt(i11)) && i11 < length) {
            i11++;
        }
        char cCharAt = str.charAt(i11);
        if (Character.isUpperCase(cCharAt)) {
            return str;
        }
        char upperCase = Character.toUpperCase(cCharAt);
        if (i11 == 0) {
            return upperCase + str.substring(1);
        }
        return str.substring(0, i11) + upperCase + str.substring(i11 + 1);
    }

    static String a(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        int length = str.length();
        for (int i11 = 0; i11 < length; i11++) {
            char cCharAt = str.charAt(i11);
            if (Character.isUpperCase(cCharAt) && sb2.length() != 0) {
                sb2.append(str2);
            }
            sb2.append(cCharAt);
        }
        return sb2.toString();
    }
}
