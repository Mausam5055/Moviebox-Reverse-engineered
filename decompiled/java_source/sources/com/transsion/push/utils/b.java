package com.transsion.push.utils;

import java.util.Calendar;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f50933a = new a(null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final String a() {
        return Calendar.getInstance().get(5) % 2 == 0 ? "push/2/notification.json" : "push/1/notification.json";
    }
}
