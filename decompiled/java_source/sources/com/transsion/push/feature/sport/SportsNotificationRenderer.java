package com.transsion.push.feature.sport;

import android.content.Context;
import android.graphics.Bitmap;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.a0;
import com.transsion.lib.push.R$drawable;
import com.transsion.lib.push.R$id;
import com.transsion.lib.push.R$layout;
import com.transsion.lib.push.R$string;
import com.transsion.mpush.api.LocalPushMessage;
import com.transsion.mpush.core.renderer.AbsNotificationRenderer;
import com.transsion.mpush.core.utils.c;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class SportsNotificationRenderer extends AbsNotificationRenderer {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f50828e = new a(null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ServerMatchListItemData f50829a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Bitmap f50830b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Bitmap f50831c;

        public b(ServerMatchListItemData matchData, Bitmap bitmap, Bitmap bitmap2) {
            Intrinsics.h(matchData, "matchData");
            this.f50829a = matchData;
            this.f50830b = bitmap;
            this.f50831c = bitmap2;
        }

        public final ServerMatchListItemData a() {
            return this.f50829a;
        }

        public final Bitmap b() {
            return this.f50830b;
        }

        public final Bitmap c() {
            return this.f50831c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return Intrinsics.c(this.f50829a, bVar.f50829a) && Intrinsics.c(this.f50830b, bVar.f50830b) && Intrinsics.c(this.f50831c, bVar.f50831c);
        }

        public int hashCode() {
            int iHashCode = this.f50829a.hashCode() * 31;
            Bitmap bitmap = this.f50830b;
            int iHashCode2 = (iHashCode + (bitmap == null ? 0 : bitmap.hashCode())) * 31;
            Bitmap bitmap2 = this.f50831c;
            return iHashCode2 + (bitmap2 != null ? bitmap2.hashCode() : 0);
        }

        public String toString() {
            return "MatchPayload(matchData=" + this.f50829a + ", team1Bitmap=" + this.f50830b + ", team2Bitmap=" + this.f50831c + ")";
        }
    }

    private final void H(Context context, RemoteViews remoteViews, RemoteViews remoteViews2, b bVar) {
        String name;
        String name2;
        ServerMatchListItemData serverMatchListItemDataA = bVar.a();
        Bitmap bitmapB = bVar.b();
        Bitmap bitmapC = bVar.c();
        String string = context.getString(R$string.match_vs);
        Intrinsics.g(string, "getString(...)");
        TeamInfoMatch team1 = serverMatchListItemDataA.getTeam1();
        String str = "";
        if (team1 == null || (name = team1.getName()) == null) {
            name = "";
        }
        TeamInfoMatch team2 = serverMatchListItemDataA.getTeam2();
        if (team2 != null && (name2 = team2.getName()) != null) {
            str = name2;
        }
        String str2 = context.getString(R$string.match_vs_notification1) + name + " " + string + " " + str + context.getString(R$string.match_vs_notification2);
        if (remoteViews != null) {
            remoteViews.setTextViewText(R$id.notification_title_tv, str2);
        }
        if (remoteViews2 != null) {
            remoteViews2.setTextViewText(R$id.notification_title_tv, str2);
        }
        if (remoteViews2 != null) {
            remoteViews2.setTextViewText(R$id.tv_team1_name, name);
            remoteViews2.setTextViewText(R$id.tv_team2_name, str);
            remoteViews2.setTextViewText(R$id.match_round, serverMatchListItemDataA.getMatchRound());
            remoteViews2.setTextViewText(R$id.btn_upcoming, I(serverMatchListItemDataA.getStartTime()));
            if (bitmapB != null) {
                remoteViews2.setImageViewBitmap(R$id.iv_team1_logo, c.h(c.f47625a, bitmapB, null, a0.a(1.0f), 0, 10, null));
            }
            if (bitmapC != null) {
                remoteViews2.setImageViewBitmap(R$id.iv_team2_logo, c.h(c.f47625a, bitmapC, null, a0.a(1.0f), 0, 10, null));
            }
            remoteViews2.setInt(R$id.match_push_ly, "setBackgroundResource", R$drawable.push_layer_match_push_bg);
        }
    }

    private final String I(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        try {
            String str2 = new SimpleDateFormat("HH:mm", Locale.getDefault()).format(new Date(Long.parseLong(str)));
            Intrinsics.e(str2);
            return str2;
        } catch (Exception unused) {
            return "";
        }
    }

    @Override // com.transsion.mpush.core.renderer.AbsNotificationRenderer
    public void D(NotificationCompat.m builder, LocalPushMessage message, Bitmap bitmap) {
        Intrinsics.h(builder, "builder");
        Intrinsics.h(message, "message");
        builder.q(message.getTitle()).p(message.getDesc());
    }

    public final void J(Context context, LocalPushMessage message, ServerMatchListItemData serverMatchListItemData) {
        Intrinsics.h(context, "context");
        Intrinsics.h(message, "message");
        if (serverMatchListItemData == null) {
            super.show(context, message);
        } else {
            k.d(o0.a(y0.b()), null, null, new SportsNotificationRenderer$show$1(serverMatchListItemData, this, context, message, null), 3, null);
        }
    }

    @Override // com.transsion.mpush.core.renderer.AbsNotificationRenderer
    public void q(Context context, RemoteViews remoteViews, RemoteViews remoteViews2, LocalPushMessage message, Bitmap bitmap, Object obj) {
        Intrinsics.h(context, "context");
        Intrinsics.h(message, "message");
        if (obj instanceof b) {
            H(context, remoteViews, remoteViews2, (b) obj);
        }
    }

    @Override // com.transsion.mpush.core.renderer.AbsNotificationRenderer
    protected String t() {
        return "push_sdk_sports_channel";
    }

    @Override // com.transsion.mpush.core.renderer.AbsNotificationRenderer
    protected String u() {
        return "Sports Notification";
    }

    @Override // com.transsion.mpush.core.renderer.AbsNotificationRenderer
    public Integer v(LocalPushMessage message) {
        Intrinsics.h(message, "message");
        return Integer.valueOf(R$layout.push_notification_normal_small_match);
    }

    @Override // com.transsion.mpush.core.renderer.AbsNotificationRenderer
    public Integer w(LocalPushMessage message) {
        Intrinsics.h(message, "message");
        return Integer.valueOf(R$layout.push_notification_match_upcoming);
    }
}
