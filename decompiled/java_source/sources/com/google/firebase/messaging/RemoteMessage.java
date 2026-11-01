package com.google.firebase.messaging;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.transsion.push.PushConstants;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
@SafeParcelable.Class(creator = "RemoteMessageCreator")
@SafeParcelable.Reserved({1})
public final class RemoteMessage extends AbstractSafeParcelable {
    public static final Parcelable.Creator<RemoteMessage> CREATOR = new s0();
    public static final int PRIORITY_HIGH = 1;
    public static final int PRIORITY_NORMAL = 2;
    public static final int PRIORITY_UNKNOWN = 0;

    @SafeParcelable.Field(id = 2)
    Bundle bundle;
    private Map<String, String> data;
    private b notification;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f31986a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f31987b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String[] f31988c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f31989d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final String f31990e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final String[] f31991f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final String f31992g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final String f31993h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final String f31994i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final String f31995j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final String f31996k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final String f31997l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final String f31998m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private final Uri f31999n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final String f32000o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final Integer f32001p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final Integer f32002q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private final Integer f32003r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private final int[] f32004s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private final Long f32005t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private final boolean f32006u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private final boolean f32007v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private final boolean f32008w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private final boolean f32009x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private final boolean f32010y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        private final long[] f32011z;

        private b(k0 k0Var) {
            this.f31986a = k0Var.p("gcm.n.title");
            this.f31987b = k0Var.h("gcm.n.title");
            this.f31988c = a(k0Var, "gcm.n.title");
            this.f31989d = k0Var.p("gcm.n.body");
            this.f31990e = k0Var.h("gcm.n.body");
            this.f31991f = a(k0Var, "gcm.n.body");
            this.f31992g = k0Var.p("gcm.n.icon");
            this.f31994i = k0Var.o();
            this.f31995j = k0Var.p("gcm.n.tag");
            this.f31996k = k0Var.p("gcm.n.color");
            this.f31997l = k0Var.p("gcm.n.click_action");
            this.f31998m = k0Var.p("gcm.n.android_channel_id");
            this.f31999n = k0Var.f();
            this.f31993h = k0Var.p("gcm.n.image");
            this.f32000o = k0Var.p("gcm.n.ticker");
            this.f32001p = k0Var.b("gcm.n.notification_priority");
            this.f32002q = k0Var.b("gcm.n.visibility");
            this.f32003r = k0Var.b("gcm.n.notification_count");
            this.f32006u = k0Var.a("gcm.n.sticky");
            this.f32007v = k0Var.a("gcm.n.local_only");
            this.f32008w = k0Var.a("gcm.n.default_sound");
            this.f32009x = k0Var.a("gcm.n.default_vibrate_timings");
            this.f32010y = k0Var.a("gcm.n.default_light_settings");
            this.f32005t = k0Var.j("gcm.n.event_time");
            this.f32004s = k0Var.e();
            this.f32011z = k0Var.q();
        }

        private static String[] a(k0 k0Var, String str) {
            Object[] objArrG = k0Var.g(str);
            if (objArrG == null) {
                return null;
            }
            String[] strArr = new String[objArrG.length];
            for (int i11 = 0; i11 < objArrG.length; i11++) {
                strArr[i11] = String.valueOf(objArrG[i11]);
            }
            return strArr;
        }
    }

    @SafeParcelable.Constructor
    public RemoteMessage(@SafeParcelable.Param(id = 2) Bundle bundle) {
        this.bundle = bundle;
    }

    private int getMessagePriority(String str) {
        if ("high".equals(str)) {
            return 1;
        }
        return "normal".equals(str) ? 2 : 0;
    }

    @Nullable
    public String getCollapseKey() {
        return this.bundle.getString("collapse_key");
    }

    @NonNull
    public Map<String, String> getData() {
        if (this.data == null) {
            this.data = e.a.a(this.bundle);
        }
        return this.data;
    }

    @Nullable
    public String getFrom() {
        return this.bundle.getString("from");
    }

    @Nullable
    public String getMessageId() {
        String string = this.bundle.getString("google.message_id");
        return string == null ? this.bundle.getString(PushConstants.EXTRA_PUSH_MESSAGE_ID) : string;
    }

    @Nullable
    public String getMessageType() {
        return this.bundle.getString(PushConstants.EXTRA_PUSH_MESSAGE_TYPE);
    }

    @Nullable
    public b getNotification() {
        if (this.notification == null && k0.t(this.bundle)) {
            this.notification = new b(new k0(this.bundle));
        }
        return this.notification;
    }

    public int getOriginalPriority() {
        String string = this.bundle.getString("google.original_priority");
        if (string == null) {
            string = this.bundle.getString("google.priority");
        }
        return getMessagePriority(string);
    }

    public int getPriority() {
        String string = this.bundle.getString("google.delivered_priority");
        if (string == null) {
            if ("1".equals(this.bundle.getString("google.priority_reduced"))) {
                return 2;
            }
            string = this.bundle.getString("google.priority");
        }
        return getMessagePriority(string);
    }

    @Nullable
    @ShowFirstParty
    public byte[] getRawData() {
        return this.bundle.getByteArray("rawData");
    }

    @Nullable
    public String getSenderId() {
        return this.bundle.getString("google.c.sender.id");
    }

    public long getSentTime() {
        Object obj = this.bundle.get("google.sent_time");
        if (obj instanceof Long) {
            return ((Long) obj).longValue();
        }
        if (!(obj instanceof String)) {
            return 0L;
        }
        try {
            return Long.parseLong((String) obj);
        } catch (NumberFormatException unused) {
            Log.w("FirebaseMessaging", "Invalid sent time: " + obj);
            return 0L;
        }
    }

    @Nullable
    @Deprecated
    public String getTo() {
        return this.bundle.getString("google.to");
    }

    public int getTtl() {
        Object obj = this.bundle.get("google.ttl");
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (!(obj instanceof String)) {
            return 0;
        }
        try {
            return Integer.parseInt((String) obj);
        } catch (NumberFormatException unused) {
            Log.w("FirebaseMessaging", "Invalid TTL: " + obj);
            return 0;
        }
    }

    void populateSendMessageIntent(Intent intent) {
        intent.putExtras(this.bundle);
    }

    @KeepForSdk
    public Intent toIntent() {
        Intent intent = new Intent();
        intent.putExtras(this.bundle);
        return intent;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i11) {
        s0.c(this, parcel, i11);
    }
}
