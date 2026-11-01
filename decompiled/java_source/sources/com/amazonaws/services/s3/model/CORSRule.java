package com.amazonaws.services.s3.model;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class CORSRule {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f18687a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List f18688b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List f18689c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f18690d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List f18691e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List f18692f;

    public enum AllowedMethods {
        GET("GET"),
        PUT("PUT"),
        HEAD("HEAD"),
        POST("POST"),
        DELETE("DELETE");

        private final String AllowedMethod;

        AllowedMethods(String str) {
            this.AllowedMethod = str;
        }

        public static AllowedMethods fromValue(String str) throws IllegalArgumentException {
            for (AllowedMethods allowedMethods : values()) {
                String string = allowedMethods.toString();
                if (string == null && str == null) {
                    return allowedMethods;
                }
                if (string != null && string.equals(str)) {
                    return allowedMethods;
                }
            }
            throw new IllegalArgumentException("Cannot create enum from " + str + " value!");
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.AllowedMethod;
        }
    }

    public void a(List list) {
        this.f18692f = list;
    }

    public void b(List list) {
        this.f18688b = list;
    }

    public void c(List list) {
        this.f18689c = list;
    }

    public void d(List list) {
        this.f18691e = list;
    }

    public void e(String str) {
        this.f18687a = str;
    }

    public void f(int i11) {
        this.f18690d = i11;
    }
}
