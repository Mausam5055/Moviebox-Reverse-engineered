package com.tn.tranpay;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f41522c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f41523a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f41524b;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final b a(int i11, String debugMessage, String str) {
            Intrinsics.h(debugMessage, "debugMessage");
            if (str != null) {
                debugMessage = debugMessage + " and serverCode: " + str;
            }
            return new b(i11, debugMessage);
        }
    }

    public b(int i11, String debugMessage) {
        Intrinsics.h(debugMessage, "debugMessage");
        this.f41523a = i11;
        this.f41524b = debugMessage;
    }

    public final String a() {
        return this.f41524b;
    }

    public final int b() {
        return this.f41523a;
    }

    public String toString() {
        return "Response Code: " + this.f41523a + ", Debug Message: " + this.f41524b;
    }
}
