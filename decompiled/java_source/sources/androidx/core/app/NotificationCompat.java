package androidx.core.app;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.app.PendingIntent;
import android.app.Person;
import android.app.RemoteInput;
import android.content.Context;
import android.content.LocusId;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.widget.RemoteViews;
import androidx.core.R$color;
import androidx.core.R$dimen;
import androidx.core.R$drawable;
import androidx.core.R$id;
import androidx.core.R$integer;
import androidx.core.R$layout;
import androidx.core.R$string;
import androidx.core.graphics.drawable.IconCompat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class NotificationCompat {
    public static final int BADGE_ICON_LARGE = 2;
    public static final int BADGE_ICON_NONE = 0;
    public static final int BADGE_ICON_SMALL = 1;
    public static final String CATEGORY_ALARM = "alarm";
    public static final String CATEGORY_CALL = "call";
    public static final String CATEGORY_EMAIL = "email";
    public static final String CATEGORY_ERROR = "err";
    public static final String CATEGORY_EVENT = "event";
    public static final String CATEGORY_LOCATION_SHARING = "location_sharing";
    public static final String CATEGORY_MESSAGE = "msg";
    public static final String CATEGORY_MISSED_CALL = "missed_call";
    public static final String CATEGORY_NAVIGATION = "navigation";
    public static final String CATEGORY_PROGRESS = "progress";
    public static final String CATEGORY_PROMO = "promo";
    public static final String CATEGORY_RECOMMENDATION = "recommendation";
    public static final String CATEGORY_REMINDER = "reminder";
    public static final String CATEGORY_SERVICE = "service";
    public static final String CATEGORY_SOCIAL = "social";
    public static final String CATEGORY_STATUS = "status";
    public static final String CATEGORY_STOPWATCH = "stopwatch";
    public static final String CATEGORY_SYSTEM = "sys";
    public static final String CATEGORY_TRANSPORT = "transport";
    public static final String CATEGORY_VOICEMAIL = "voicemail";
    public static final String CATEGORY_WORKOUT = "workout";
    public static final int COLOR_DEFAULT = 0;
    public static final int DEFAULT_ALL = -1;
    public static final int DEFAULT_LIGHTS = 4;
    public static final int DEFAULT_SOUND = 1;
    public static final int DEFAULT_VIBRATE = 2;

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_ANSWER_COLOR = "android.answerColor";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_ANSWER_INTENT = "android.answerIntent";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_AUDIO_CONTENTS_URI = "android.audioContents";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_BACKGROUND_IMAGE_URI = "android.backgroundImageUri";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_BIG_TEXT = "android.bigText";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_CALL_IS_VIDEO = "android.callIsVideo";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_CALL_PERSON = "android.callPerson";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_CALL_PERSON_COMPAT = "android.callPersonCompat";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_CALL_TYPE = "android.callType";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_CHANNEL_GROUP_ID = "android.intent.extra.CHANNEL_GROUP_ID";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_CHANNEL_ID = "android.intent.extra.CHANNEL_ID";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_CHRONOMETER_COUNT_DOWN = "android.chronometerCountDown";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_COLORIZED = "android.colorized";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_COMPACT_ACTIONS = "android.compactActions";
    public static final String EXTRA_COMPAT_TEMPLATE = "androidx.core.app.extra.COMPAT_TEMPLATE";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_CONVERSATION_TITLE = "android.conversationTitle";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_DECLINE_COLOR = "android.declineColor";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_DECLINE_INTENT = "android.declineIntent";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_HANG_UP_INTENT = "android.hangUpIntent";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_HIDDEN_CONVERSATION_TITLE = "android.hiddenConversationTitle";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_HISTORIC_MESSAGES = "android.messages.historic";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_INFO_TEXT = "android.infoText";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_IS_GROUP_CONVERSATION = "android.isGroupConversation";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_LARGE_ICON = "android.largeIcon";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_LARGE_ICON_BIG = "android.largeIcon.big";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_MEDIA_SESSION = "android.mediaSession";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_MESSAGES = "android.messages";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_MESSAGING_STYLE_USER = "android.messagingStyleUser";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_NOTIFICATION_ID = "android.intent.extra.NOTIFICATION_ID";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_NOTIFICATION_TAG = "android.intent.extra.NOTIFICATION_TAG";

    @SuppressLint({"ActionValue"})
    @Deprecated
    public static final String EXTRA_PEOPLE = "android.people";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_PEOPLE_LIST = "android.people.list";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_PICTURE = "android.picture";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_PICTURE_CONTENT_DESCRIPTION = "android.pictureContentDescription";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_PICTURE_ICON = "android.pictureIcon";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_PROGRESS = "android.progress";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_PROGRESS_INDETERMINATE = "android.progressIndeterminate";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_PROGRESS_MAX = "android.progressMax";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_REMOTE_INPUT_HISTORY = "android.remoteInputHistory";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SELF_DISPLAY_NAME = "android.selfDisplayName";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SHOW_BIG_PICTURE_WHEN_COLLAPSED = "android.showBigPictureWhenCollapsed";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SHOW_CHRONOMETER = "android.showChronometer";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SHOW_WHEN = "android.showWhen";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SMALL_ICON = "android.icon";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SUB_TEXT = "android.subText";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SUMMARY_TEXT = "android.summaryText";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_TEMPLATE = "android.template";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_TEXT = "android.text";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_TEXT_LINES = "android.textLines";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_TITLE = "android.title";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_TITLE_BIG = "android.title.big";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_VERIFICATION_ICON = "android.verificationIcon";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_VERIFICATION_ICON_COMPAT = "android.verificationIconCompat";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_VERIFICATION_TEXT = "android.verificationText";
    public static final int FLAG_AUTO_CANCEL = 16;
    public static final int FLAG_BUBBLE = 4096;
    public static final int FLAG_FOREGROUND_SERVICE = 64;
    public static final int FLAG_GROUP_SUMMARY = 512;

    @Deprecated
    public static final int FLAG_HIGH_PRIORITY = 128;
    public static final int FLAG_INSISTENT = 4;
    public static final int FLAG_LOCAL_ONLY = 256;
    public static final int FLAG_NO_CLEAR = 32;
    public static final int FLAG_ONGOING_EVENT = 2;
    public static final int FLAG_ONLY_ALERT_ONCE = 8;
    public static final int FLAG_SHOW_LIGHTS = 1;
    public static final int FOREGROUND_SERVICE_DEFAULT = 0;
    public static final int FOREGROUND_SERVICE_DEFERRED = 2;
    public static final int FOREGROUND_SERVICE_IMMEDIATE = 1;
    public static final int GROUP_ALERT_ALL = 0;
    public static final int GROUP_ALERT_CHILDREN = 2;
    public static final int GROUP_ALERT_SUMMARY = 1;
    public static final String GROUP_KEY_SILENT = "silent";

    @SuppressLint({"ActionValue"})
    public static final String INTENT_CATEGORY_NOTIFICATION_PREFERENCES = "android.intent.category.NOTIFICATION_PREFERENCES";
    public static final int MAX_ACTION_BUTTONS = 3;
    public static final int PRIORITY_DEFAULT = 0;
    public static final int PRIORITY_HIGH = 1;
    public static final int PRIORITY_LOW = -1;
    public static final int PRIORITY_MAX = 2;
    public static final int PRIORITY_MIN = -2;
    public static final int STREAM_DEFAULT = -1;
    private static final String TAG = "NotifCompat";
    public static final int VISIBILITY_PRIVATE = 0;
    public static final int VISIBILITY_PUBLIC = 1;
    public static final int VISIBILITY_SECRET = -1;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Bundle f7974a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private IconCompat f7975b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final y[] f7976c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final y[] f7977d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f7978e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f7979f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final int f7980g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final boolean f7981h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f7982i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public CharSequence f7983j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public PendingIntent f7984k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private boolean f7985l;

        public static final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final IconCompat f7986a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final CharSequence f7987b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final PendingIntent f7988c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private boolean f7989d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private final Bundle f7990e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private ArrayList f7991f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private int f7992g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            private boolean f7993h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            private boolean f7994i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            private boolean f7995j;

            public a(int i11, CharSequence charSequence, PendingIntent pendingIntent) {
                this(i11 != 0 ? IconCompat.k(null, "", i11) : null, charSequence, pendingIntent, new Bundle(), null, true, 0, true, false, false);
            }

            public a(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent) {
                this(iconCompat, charSequence, pendingIntent, new Bundle(), null, true, 0, true, false, false);
            }

            private a(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, y[] yVarArr, boolean z10, int i11, boolean z11, boolean z12, boolean z13) {
                this.f7989d = true;
                this.f7993h = true;
                this.f7986a = iconCompat;
                this.f7987b = m.k(charSequence);
                this.f7988c = pendingIntent;
                this.f7990e = bundle;
                this.f7991f = yVarArr == null ? null : new ArrayList(Arrays.asList(yVarArr));
                this.f7989d = z10;
                this.f7992g = i11;
                this.f7993h = z11;
                this.f7994i = z12;
                this.f7995j = z13;
            }

            private void b() {
                if (this.f7994i && this.f7988c == null) {
                    throw new NullPointerException("Contextual Actions must contain a valid PendingIntent");
                }
            }

            public b a() {
                b();
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                ArrayList<y> arrayList3 = this.f7991f;
                if (arrayList3 != null) {
                    for (y yVar : arrayList3) {
                        if (yVar.j()) {
                            arrayList.add(yVar);
                        } else {
                            arrayList2.add(yVar);
                        }
                    }
                }
                return new b(this.f7986a, this.f7987b, this.f7988c, this.f7990e, arrayList2.isEmpty() ? null : (y[]) arrayList2.toArray(new y[arrayList2.size()]), arrayList.isEmpty() ? null : (y[]) arrayList.toArray(new y[arrayList.size()]), this.f7989d, this.f7992g, this.f7993h, this.f7994i, this.f7995j);
            }
        }

        public b(int i11, CharSequence charSequence, PendingIntent pendingIntent) {
            this(i11 != 0 ? IconCompat.k(null, "", i11) : null, charSequence, pendingIntent);
        }

        b(int i11, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, y[] yVarArr, y[] yVarArr2, boolean z10, int i12, boolean z11, boolean z12, boolean z13) {
            this(i11 != 0 ? IconCompat.k(null, "", i11) : null, charSequence, pendingIntent, bundle, yVarArr, yVarArr2, z10, i12, z11, z12, z13);
        }

        public b(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent) {
            this(iconCompat, charSequence, pendingIntent, new Bundle(), (y[]) null, (y[]) null, true, 0, true, false, false);
        }

        b(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, y[] yVarArr, y[] yVarArr2, boolean z10, int i11, boolean z11, boolean z12, boolean z13) {
            this.f7979f = true;
            this.f7975b = iconCompat;
            if (iconCompat != null && iconCompat.p() == 2) {
                this.f7982i = iconCompat.m();
            }
            this.f7983j = m.k(charSequence);
            this.f7984k = pendingIntent;
            this.f7974a = bundle == null ? new Bundle() : bundle;
            this.f7976c = yVarArr;
            this.f7977d = yVarArr2;
            this.f7978e = z10;
            this.f7980g = i11;
            this.f7979f = z11;
            this.f7981h = z12;
            this.f7985l = z13;
        }

        public PendingIntent a() {
            return this.f7984k;
        }

        public boolean b() {
            return this.f7978e;
        }

        public Bundle c() {
            return this.f7974a;
        }

        public IconCompat d() {
            int i11;
            if (this.f7975b == null && (i11 = this.f7982i) != 0) {
                this.f7975b = IconCompat.k(null, "", i11);
            }
            return this.f7975b;
        }

        public y[] e() {
            return this.f7976c;
        }

        public int f() {
            return this.f7980g;
        }

        public boolean g() {
            return this.f7979f;
        }

        public CharSequence h() {
            return this.f7983j;
        }

        public boolean i() {
            return this.f7985l;
        }

        public boolean j() {
            return this.f7981h;
        }
    }

    static class c {
        static boolean a(RemoteInput remoteInput) {
            return remoteInput.getAllowFreeFormInput();
        }

        static CharSequence[] b(RemoteInput remoteInput) {
            return remoteInput.getChoices();
        }

        static Bundle c(Notification.Action action) {
            return action.getExtras();
        }

        static Bundle d(RemoteInput remoteInput) {
            return remoteInput.getExtras();
        }

        static String e(Notification notification) {
            return notification.getGroup();
        }

        static CharSequence f(RemoteInput remoteInput) {
            return remoteInput.getLabel();
        }

        static RemoteInput[] g(Notification.Action action) {
            return action.getRemoteInputs();
        }

        static String h(RemoteInput remoteInput) {
            return remoteInput.getResultKey();
        }

        static String i(Notification notification) {
            return notification.getSortKey();
        }
    }

    static class d {
        static Icon a(Notification.Action action) {
            return action.getIcon();
        }
    }

    static class e {
        static boolean a(Notification.Action action) {
            return action.getAllowGeneratedReplies();
        }
    }

    static class f {
        static int a(Notification notification) {
            return notification.getBadgeIconType();
        }

        static String b(Notification notification) {
            return notification.getChannelId();
        }

        static int c(Notification notification) {
            return notification.getGroupAlertBehavior();
        }

        static CharSequence d(Notification notification) {
            return notification.getSettingsText();
        }

        static String e(Notification notification) {
            return notification.getShortcutId();
        }

        static long f(Notification notification) {
            return notification.getTimeoutAfter();
        }
    }

    static class g {
        static int a(Notification.Action action) {
            return action.getSemanticAction();
        }
    }

    static class h {
        static boolean a(Notification notification) {
            return notification.getAllowSystemGeneratedContextualActions();
        }

        static Notification.BubbleMetadata b(Notification notification) {
            return notification.getBubbleMetadata();
        }

        static int c(RemoteInput remoteInput) {
            return remoteInput.getEditChoicesBeforeSending();
        }

        static LocusId d(Notification notification) {
            return notification.getLocusId();
        }

        static boolean e(Notification.Action action) {
            return action.isContextual();
        }
    }

    static class i {
        static boolean a(Notification.Action action) {
            return action.isAuthenticationRequired();
        }
    }

    public static class j extends p {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private IconCompat f7996e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private IconCompat f7997f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f7998g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private CharSequence f7999h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private boolean f8000i;

        private static class a {
            static void a(Notification.BigPictureStyle bigPictureStyle, Icon icon) {
                bigPictureStyle.bigLargeIcon(icon);
            }
        }

        private static class b {
            static void a(Notification.BigPictureStyle bigPictureStyle, Icon icon) {
                bigPictureStyle.bigPicture(icon);
            }

            static void b(Notification.BigPictureStyle bigPictureStyle, CharSequence charSequence) {
                bigPictureStyle.setContentDescription(charSequence);
            }

            static void c(Notification.BigPictureStyle bigPictureStyle, boolean z10) {
                bigPictureStyle.showBigPictureWhenCollapsed(z10);
            }
        }

        @Override // androidx.core.app.NotificationCompat.p
        public void b(androidx.core.app.o oVar) {
            Notification.BigPictureStyle bigContentTitle = new Notification.BigPictureStyle(oVar.a()).setBigContentTitle(this.f8053b);
            IconCompat iconCompat = this.f7996e;
            if (iconCompat != null) {
                if (Build.VERSION.SDK_INT >= 31) {
                    b.a(bigContentTitle, this.f7996e.x(oVar instanceof r ? ((r) oVar).f() : null));
                } else if (iconCompat.p() == 1) {
                    bigContentTitle = bigContentTitle.bigPicture(this.f7996e.l());
                }
            }
            if (this.f7998g) {
                if (this.f7997f == null) {
                    bigContentTitle.bigLargeIcon((Bitmap) null);
                } else {
                    a.a(bigContentTitle, this.f7997f.x(oVar instanceof r ? ((r) oVar).f() : null));
                }
            }
            if (this.f8055d) {
                bigContentTitle.setSummaryText(this.f8054c);
            }
            if (Build.VERSION.SDK_INT >= 31) {
                b.c(bigContentTitle, this.f8000i);
                b.b(bigContentTitle, this.f7999h);
            }
        }

        @Override // androidx.core.app.NotificationCompat.p
        protected String k() {
            return "androidx.core.app.NotificationCompat$BigPictureStyle";
        }

        public j q(Bitmap bitmap) {
            this.f7997f = bitmap == null ? null : IconCompat.g(bitmap);
            this.f7998g = true;
            return this;
        }

        public j r(Bitmap bitmap) {
            this.f7996e = bitmap == null ? null : IconCompat.g(bitmap);
            return this;
        }
    }

    public static class k extends p {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private CharSequence f8001e;

        @Override // androidx.core.app.NotificationCompat.p
        public void a(Bundle bundle) {
            super.a(bundle);
        }

        @Override // androidx.core.app.NotificationCompat.p
        public void b(androidx.core.app.o oVar) {
            Notification.BigTextStyle bigTextStyleBigText = new Notification.BigTextStyle(oVar.a()).setBigContentTitle(this.f8053b).bigText(this.f8001e);
            if (this.f8055d) {
                bigTextStyleBigText.setSummaryText(this.f8054c);
            }
        }

        @Override // androidx.core.app.NotificationCompat.p
        protected String k() {
            return "androidx.core.app.NotificationCompat$BigTextStyle";
        }

        public k q(CharSequence charSequence) {
            this.f8001e = m.k(charSequence);
            return this;
        }
    }

    public static final class l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private PendingIntent f8002a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private PendingIntent f8003b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private IconCompat f8004c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f8005d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f8006e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f8007f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f8008g;

        private static class a {
            static l a(Notification.BubbleMetadata bubbleMetadata) {
                if (bubbleMetadata == null || bubbleMetadata.getIntent() == null) {
                    return null;
                }
                c cVarG = new c(bubbleMetadata.getIntent(), IconCompat.b(bubbleMetadata.getIcon())).b(bubbleMetadata.getAutoExpandBubble()).c(bubbleMetadata.getDeleteIntent()).g(bubbleMetadata.isNotificationSuppressed());
                if (bubbleMetadata.getDesiredHeight() != 0) {
                    cVarG.d(bubbleMetadata.getDesiredHeight());
                }
                if (bubbleMetadata.getDesiredHeightResId() != 0) {
                    cVarG.e(bubbleMetadata.getDesiredHeightResId());
                }
                return cVarG.a();
            }

            static Notification.BubbleMetadata b(l lVar) {
                if (lVar == null || lVar.g() == null) {
                    return null;
                }
                Notification.BubbleMetadata.Builder suppressNotification = new Notification.BubbleMetadata.Builder().setIcon(lVar.f().w()).setIntent(lVar.g()).setDeleteIntent(lVar.c()).setAutoExpandBubble(lVar.b()).setSuppressNotification(lVar.i());
                if (lVar.d() != 0) {
                    suppressNotification.setDesiredHeight(lVar.d());
                }
                if (lVar.e() != 0) {
                    suppressNotification.setDesiredHeightResId(lVar.e());
                }
                return suppressNotification.build();
            }
        }

        private static class b {
            static l a(Notification.BubbleMetadata bubbleMetadata) {
                if (bubbleMetadata == null) {
                    return null;
                }
                c cVar = bubbleMetadata.getShortcutId() != null ? new c(bubbleMetadata.getShortcutId()) : new c(bubbleMetadata.getIntent(), IconCompat.b(bubbleMetadata.getIcon()));
                cVar.b(bubbleMetadata.getAutoExpandBubble()).c(bubbleMetadata.getDeleteIntent()).g(bubbleMetadata.isNotificationSuppressed());
                if (bubbleMetadata.getDesiredHeight() != 0) {
                    cVar.d(bubbleMetadata.getDesiredHeight());
                }
                if (bubbleMetadata.getDesiredHeightResId() != 0) {
                    cVar.e(bubbleMetadata.getDesiredHeightResId());
                }
                return cVar.a();
            }

            static Notification.BubbleMetadata b(l lVar) {
                if (lVar == null) {
                    return null;
                }
                Notification.BubbleMetadata.Builder builder = lVar.h() != null ? new Notification.BubbleMetadata.Builder(lVar.h()) : new Notification.BubbleMetadata.Builder(lVar.g(), lVar.f().w());
                builder.setDeleteIntent(lVar.c()).setAutoExpandBubble(lVar.b()).setSuppressNotification(lVar.i());
                if (lVar.d() != 0) {
                    builder.setDesiredHeight(lVar.d());
                }
                if (lVar.e() != 0) {
                    builder.setDesiredHeightResId(lVar.e());
                }
                return builder.build();
            }
        }

        public static final class c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private PendingIntent f8009a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private IconCompat f8010b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private int f8011c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f8012d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private int f8013e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private PendingIntent f8014f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private String f8015g;

            @Deprecated
            public c() {
            }

            public c(PendingIntent pendingIntent, IconCompat iconCompat) {
                if (pendingIntent == null) {
                    throw new NullPointerException("Bubble requires non-null pending intent");
                }
                if (iconCompat == null) {
                    throw new NullPointerException("Bubbles require non-null icon");
                }
                this.f8009a = pendingIntent;
                this.f8010b = iconCompat;
            }

            public c(String str) {
                if (TextUtils.isEmpty(str)) {
                    throw new NullPointerException("Bubble requires a non-null shortcut id");
                }
                this.f8015g = str;
            }

            private c f(int i11, boolean z10) {
                if (z10) {
                    this.f8013e = i11 | this.f8013e;
                } else {
                    this.f8013e = (~i11) & this.f8013e;
                }
                return this;
            }

            public l a() {
                String str = this.f8015g;
                if (str == null && this.f8009a == null) {
                    throw new NullPointerException("Must supply pending intent or shortcut to bubble");
                }
                if (str == null && this.f8010b == null) {
                    throw new NullPointerException("Must supply an icon or shortcut for the bubble");
                }
                l lVar = new l(this.f8009a, this.f8014f, this.f8010b, this.f8011c, this.f8012d, this.f8013e, str);
                lVar.j(this.f8013e);
                return lVar;
            }

            public c b(boolean z10) {
                f(1, z10);
                return this;
            }

            public c c(PendingIntent pendingIntent) {
                this.f8014f = pendingIntent;
                return this;
            }

            public c d(int i11) {
                this.f8011c = Math.max(i11, 0);
                this.f8012d = 0;
                return this;
            }

            public c e(int i11) {
                this.f8012d = i11;
                this.f8011c = 0;
                return this;
            }

            public c g(boolean z10) {
                f(2, z10);
                return this;
            }
        }

        private l(PendingIntent pendingIntent, PendingIntent pendingIntent2, IconCompat iconCompat, int i11, int i12, int i13, String str) {
            this.f8002a = pendingIntent;
            this.f8004c = iconCompat;
            this.f8005d = i11;
            this.f8006e = i12;
            this.f8003b = pendingIntent2;
            this.f8007f = i13;
            this.f8008g = str;
        }

        public static l a(Notification.BubbleMetadata bubbleMetadata) {
            if (bubbleMetadata == null) {
                return null;
            }
            int i11 = Build.VERSION.SDK_INT;
            if (i11 >= 30) {
                return b.a(bubbleMetadata);
            }
            if (i11 == 29) {
                return a.a(bubbleMetadata);
            }
            return null;
        }

        public static Notification.BubbleMetadata k(l lVar) {
            if (lVar == null) {
                return null;
            }
            int i11 = Build.VERSION.SDK_INT;
            if (i11 >= 30) {
                return b.b(lVar);
            }
            if (i11 == 29) {
                return a.b(lVar);
            }
            return null;
        }

        public boolean b() {
            return (this.f8007f & 1) != 0;
        }

        public PendingIntent c() {
            return this.f8003b;
        }

        public int d() {
            return this.f8005d;
        }

        public int e() {
            return this.f8006e;
        }

        public IconCompat f() {
            return this.f8004c;
        }

        public PendingIntent g() {
            return this.f8002a;
        }

        public String h() {
            return this.f8008g;
        }

        public boolean i() {
            return (this.f8007f & 2) != 0;
        }

        public void j(int i11) {
            this.f8007f = i11;
        }
    }

    public static class m {
        boolean A;
        boolean B;
        boolean C;
        String D;
        Bundle E;
        int F;
        int G;
        Notification H;
        RemoteViews I;
        RemoteViews J;
        RemoteViews K;
        String L;
        int M;
        String N;
        androidx.core.content.c O;
        long P;
        int Q;
        int R;
        boolean S;
        l T;
        Notification U;
        boolean V;
        Object W;
        public ArrayList X;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Context f8016a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ArrayList f8017b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ArrayList f8018c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ArrayList f8019d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        CharSequence f8020e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        CharSequence f8021f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        PendingIntent f8022g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        PendingIntent f8023h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        RemoteViews f8024i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        IconCompat f8025j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        CharSequence f8026k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        int f8027l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        int f8028m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        boolean f8029n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        boolean f8030o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        boolean f8031p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        p f8032q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        CharSequence f8033r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        CharSequence f8034s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        CharSequence[] f8035t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        int f8036u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        int f8037v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        boolean f8038w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        String f8039x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        boolean f8040y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        String f8041z;

        static class a {
            static AudioAttributes a(AudioAttributes.Builder builder) {
                return builder.build();
            }

            static AudioAttributes.Builder b() {
                return new AudioAttributes.Builder();
            }

            static AudioAttributes.Builder c(AudioAttributes.Builder builder, int i11) {
                return builder.setContentType(i11);
            }

            static AudioAttributes.Builder d(AudioAttributes.Builder builder, int i11) {
                return builder.setUsage(i11);
            }
        }

        public m(Context context) {
            this(context, null);
        }

        public m(Context context, String str) {
            this.f8017b = new ArrayList();
            this.f8018c = new ArrayList();
            this.f8019d = new ArrayList();
            this.f8029n = true;
            this.A = false;
            this.F = 0;
            this.G = 0;
            this.M = 0;
            this.Q = 0;
            this.R = 0;
            Notification notification = new Notification();
            this.U = notification;
            this.f8016a = context;
            this.L = str;
            notification.when = System.currentTimeMillis();
            this.U.audioStreamType = -1;
            this.f8028m = 0;
            this.X = new ArrayList();
            this.S = true;
        }

        protected static CharSequence k(CharSequence charSequence) {
            return (charSequence != null && charSequence.length() > 5120) ? charSequence.subSequence(0, 5120) : charSequence;
        }

        private void v(int i11, boolean z10) {
            if (z10) {
                Notification notification = this.U;
                notification.flags = i11 | notification.flags;
            } else {
                Notification notification2 = this.U;
                notification2.flags = (~i11) & notification2.flags;
            }
        }

        public m A(Bitmap bitmap) {
            this.f8025j = bitmap == null ? null : IconCompat.g(NotificationCompat.reduceLargeIconSize(this.f8016a, bitmap));
            return this;
        }

        public m B(int i11, int i12, int i13) {
            Notification notification = this.U;
            notification.ledARGB = i11;
            notification.ledOnMS = i12;
            notification.ledOffMS = i13;
            notification.flags = ((i12 == 0 || i13 == 0) ? 0 : 1) | (notification.flags & (-2));
            return this;
        }

        public m C(boolean z10) {
            this.A = z10;
            return this;
        }

        public m D(int i11) {
            this.f8027l = i11;
            return this;
        }

        public m E(boolean z10) {
            v(2, z10);
            return this;
        }

        public m F(boolean z10) {
            v(8, z10);
            return this;
        }

        public m G(int i11) {
            this.f8028m = i11;
            return this;
        }

        public m H(int i11, int i12, boolean z10) {
            this.f8036u = i11;
            this.f8037v = i12;
            this.f8038w = z10;
            return this;
        }

        public m I(boolean z10) {
            this.f8029n = z10;
            return this;
        }

        public m J(int i11) {
            this.U.icon = i11;
            return this;
        }

        public m K(Uri uri) {
            Notification notification = this.U;
            notification.sound = uri;
            notification.audioStreamType = -1;
            AudioAttributes.Builder builderD = a.d(a.c(a.b(), 4), 5);
            this.U.audioAttributes = a.a(builderD);
            return this;
        }

        public m L(p pVar) {
            if (this.f8032q != pVar) {
                this.f8032q = pVar;
                if (pVar != null) {
                    pVar.p(this);
                }
            }
            return this;
        }

        public m M(CharSequence charSequence) {
            this.U.tickerText = k(charSequence);
            return this;
        }

        public m N(long[] jArr) {
            this.U.vibrate = jArr;
            return this;
        }

        public m O(int i11) {
            this.G = i11;
            return this;
        }

        public m P(long j11) {
            this.U.when = j11;
            return this;
        }

        public m a(int i11, CharSequence charSequence, PendingIntent pendingIntent) {
            this.f8017b.add(new b(i11, charSequence, pendingIntent));
            return this;
        }

        public m b(b bVar) {
            if (bVar != null) {
                this.f8017b.add(bVar);
            }
            return this;
        }

        public Notification c() {
            return new r(this).c();
        }

        public RemoteViews d() {
            return this.J;
        }

        public int e() {
            return this.F;
        }

        public RemoteViews f() {
            return this.I;
        }

        public Bundle g() {
            if (this.E == null) {
                this.E = new Bundle();
            }
            return this.E;
        }

        public RemoteViews h() {
            return this.K;
        }

        public int i() {
            return this.f8028m;
        }

        public long j() {
            if (this.f8029n) {
                return this.U.when;
            }
            return 0L;
        }

        public m l(boolean z10) {
            v(16, z10);
            return this;
        }

        public m m(String str) {
            this.L = str;
            return this;
        }

        public m n(int i11) {
            this.F = i11;
            return this;
        }

        public m o(PendingIntent pendingIntent) {
            this.f8022g = pendingIntent;
            return this;
        }

        public m p(CharSequence charSequence) {
            this.f8021f = k(charSequence);
            return this;
        }

        public m q(CharSequence charSequence) {
            this.f8020e = k(charSequence);
            return this;
        }

        public m r(RemoteViews remoteViews) {
            this.J = remoteViews;
            return this;
        }

        public m s(RemoteViews remoteViews) {
            this.I = remoteViews;
            return this;
        }

        public m t(int i11) {
            Notification notification = this.U;
            notification.defaults = i11;
            if ((i11 & 4) != 0) {
                notification.flags |= 1;
            }
            return this;
        }

        public m u(PendingIntent pendingIntent) {
            this.U.deleteIntent = pendingIntent;
            return this;
        }

        public m w(int i11) {
            this.R = i11;
            return this;
        }

        public m x(PendingIntent pendingIntent, boolean z10) {
            this.f8023h = pendingIntent;
            v(128, z10);
            return this;
        }

        public m y(String str) {
            this.f8039x = str;
            return this;
        }

        public m z(boolean z10) {
            this.f8040y = z10;
            return this;
        }
    }

    public static class n extends p {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f8042e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private w f8043f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private PendingIntent f8044g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private PendingIntent f8045h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private PendingIntent f8046i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private boolean f8047j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private Integer f8048k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private Integer f8049l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private IconCompat f8050m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private CharSequence f8051n;

        static class a {
            static Notification.Builder a(Notification.Builder builder, String str) {
                return builder.addPerson(str);
            }

            static Notification.Builder b(Notification.Builder builder, String str) {
                return builder.setCategory(str);
            }
        }

        static class b {
            static Parcelable a(Icon icon) {
                return icon;
            }

            static void b(Notification.Builder builder, Icon icon) {
                builder.setLargeIcon(icon);
            }
        }

        static class c {
            static Notification.Builder a(Notification.Builder builder, Person person) {
                return builder.addPerson(person);
            }

            static Parcelable b(Person person) {
                return person;
            }
        }

        static class d {
            static Notification.CallStyle a(Person person, PendingIntent pendingIntent, PendingIntent pendingIntent2) {
                return Notification.CallStyle.forIncomingCall(person, pendingIntent, pendingIntent2);
            }

            static Notification.CallStyle b(Person person, PendingIntent pendingIntent) {
                return Notification.CallStyle.forOngoingCall(person, pendingIntent);
            }

            static Notification.CallStyle c(Person person, PendingIntent pendingIntent, PendingIntent pendingIntent2) {
                return Notification.CallStyle.forScreeningCall(person, pendingIntent, pendingIntent2);
            }

            static Notification.CallStyle d(Notification.CallStyle callStyle, int i11) {
                return callStyle.setAnswerButtonColorHint(i11);
            }

            static Notification.CallStyle e(Notification.CallStyle callStyle, int i11) {
                return callStyle.setDeclineButtonColorHint(i11);
            }

            static Notification.CallStyle f(Notification.CallStyle callStyle, boolean z10) {
                return callStyle.setIsVideo(z10);
            }

            static Notification.CallStyle g(Notification.CallStyle callStyle, Icon icon) {
                return callStyle.setVerificationIcon(icon);
            }

            static Notification.CallStyle h(Notification.CallStyle callStyle, CharSequence charSequence) {
                return callStyle.setVerificationText(charSequence);
            }
        }

        private String r() {
            int i11 = this.f8042e;
            if (i11 == 1) {
                return this.f8052a.f8016a.getResources().getString(R$string.call_notification_incoming_text);
            }
            if (i11 == 2) {
                return this.f8052a.f8016a.getResources().getString(R$string.call_notification_ongoing_text);
            }
            if (i11 != 3) {
                return null;
            }
            return this.f8052a.f8016a.getResources().getString(R$string.call_notification_screening_text);
        }

        private boolean s(b bVar) {
            return bVar != null && bVar.c().getBoolean("key_action_priority");
        }

        private b t(int i11, int i12, Integer num, int i13, PendingIntent pendingIntent) {
            if (num == null) {
                num = Integer.valueOf(androidx.core.content.b.getColor(this.f8052a.f8016a, i13));
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) this.f8052a.f8016a.getResources().getString(i12));
            spannableStringBuilder.setSpan(new ForegroundColorSpan(num.intValue()), 0, spannableStringBuilder.length(), 18);
            b bVarA = new b.a(IconCompat.j(this.f8052a.f8016a, i11), spannableStringBuilder, pendingIntent).a();
            bVarA.c().putBoolean("key_action_priority", true);
            return bVarA;
        }

        private b u() {
            int i11 = R$drawable.ic_call_answer_video;
            int i12 = R$drawable.ic_call_answer;
            PendingIntent pendingIntent = this.f8044g;
            if (pendingIntent == null) {
                return null;
            }
            boolean z10 = this.f8047j;
            return t(z10 ? i11 : i12, z10 ? R$string.call_notification_answer_video_action : R$string.call_notification_answer_action, this.f8048k, R$color.call_notification_answer_color, pendingIntent);
        }

        private b v() {
            int i11 = R$drawable.ic_call_decline;
            PendingIntent pendingIntent = this.f8045h;
            return pendingIntent == null ? t(i11, R$string.call_notification_hang_up_action, this.f8049l, R$color.call_notification_decline_color, this.f8046i) : t(i11, R$string.call_notification_decline_action, this.f8049l, R$color.call_notification_decline_color, pendingIntent);
        }

        @Override // androidx.core.app.NotificationCompat.p
        public void a(Bundle bundle) {
            super.a(bundle);
            bundle.putInt(NotificationCompat.EXTRA_CALL_TYPE, this.f8042e);
            bundle.putBoolean(NotificationCompat.EXTRA_CALL_IS_VIDEO, this.f8047j);
            w wVar = this.f8043f;
            if (wVar != null) {
                if (Build.VERSION.SDK_INT >= 28) {
                    bundle.putParcelable(NotificationCompat.EXTRA_CALL_PERSON, c.b(wVar.i()));
                } else {
                    bundle.putParcelable(NotificationCompat.EXTRA_CALL_PERSON_COMPAT, wVar.j());
                }
            }
            IconCompat iconCompat = this.f8050m;
            if (iconCompat != null) {
                bundle.putParcelable(NotificationCompat.EXTRA_VERIFICATION_ICON, b.a(iconCompat.x(this.f8052a.f8016a)));
            }
            bundle.putCharSequence(NotificationCompat.EXTRA_VERIFICATION_TEXT, this.f8051n);
            bundle.putParcelable(NotificationCompat.EXTRA_ANSWER_INTENT, this.f8044g);
            bundle.putParcelable(NotificationCompat.EXTRA_DECLINE_INTENT, this.f8045h);
            bundle.putParcelable(NotificationCompat.EXTRA_HANG_UP_INTENT, this.f8046i);
            Integer num = this.f8048k;
            if (num != null) {
                bundle.putInt(NotificationCompat.EXTRA_ANSWER_COLOR, num.intValue());
            }
            Integer num2 = this.f8049l;
            if (num2 != null) {
                bundle.putInt(NotificationCompat.EXTRA_DECLINE_COLOR, num2.intValue());
            }
        }

        @Override // androidx.core.app.NotificationCompat.p
        public void b(androidx.core.app.o oVar) {
            int i11 = Build.VERSION.SDK_INT;
            CharSequence charSequenceR = null;
            callStyleA = null;
            Notification.CallStyle callStyleA = null;
            charSequenceR = null;
            if (i11 < 31) {
                Notification.Builder builderA = oVar.a();
                w wVar = this.f8043f;
                builderA.setContentTitle(wVar != null ? wVar.d() : null);
                Bundle bundle = this.f8052a.E;
                if (bundle != null && bundle.containsKey(NotificationCompat.EXTRA_TEXT)) {
                    charSequenceR = this.f8052a.E.getCharSequence(NotificationCompat.EXTRA_TEXT);
                }
                if (charSequenceR == null) {
                    charSequenceR = r();
                }
                builderA.setContentText(charSequenceR);
                w wVar2 = this.f8043f;
                if (wVar2 != null) {
                    if (wVar2.b() != null) {
                        b.b(builderA, this.f8043f.b().x(this.f8052a.f8016a));
                    }
                    if (i11 >= 28) {
                        c.a(builderA, this.f8043f.i());
                    } else {
                        a.a(builderA, this.f8043f.e());
                    }
                }
                a.b(builderA, "call");
                return;
            }
            int i12 = this.f8042e;
            if (i12 == 1) {
                callStyleA = d.a(this.f8043f.i(), this.f8045h, this.f8044g);
            } else if (i12 == 2) {
                callStyleA = d.b(this.f8043f.i(), this.f8046i);
            } else if (i12 == 3) {
                callStyleA = d.c(this.f8043f.i(), this.f8046i, this.f8044g);
            } else if (Log.isLoggable(NotificationCompat.TAG, 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Unrecognized call type in CallStyle: ");
                sb2.append(String.valueOf(this.f8042e));
            }
            if (callStyleA != null) {
                callStyleA.setBuilder(oVar.a());
                Integer num = this.f8048k;
                if (num != null) {
                    d.d(callStyleA, num.intValue());
                }
                Integer num2 = this.f8049l;
                if (num2 != null) {
                    d.e(callStyleA, num2.intValue());
                }
                d.h(callStyleA, this.f8051n);
                IconCompat iconCompat = this.f8050m;
                if (iconCompat != null) {
                    d.g(callStyleA, iconCompat.x(this.f8052a.f8016a));
                }
                d.f(callStyleA, this.f8047j);
            }
        }

        @Override // androidx.core.app.NotificationCompat.p
        protected String k() {
            return "androidx.core.app.NotificationCompat$CallStyle";
        }

        public ArrayList q() {
            b bVarV = v();
            b bVarU = u();
            ArrayList arrayList = new ArrayList(3);
            arrayList.add(bVarV);
            ArrayList<b> arrayList2 = this.f8052a.f8017b;
            int i11 = 2;
            if (arrayList2 != null) {
                for (b bVar : arrayList2) {
                    if (bVar.j()) {
                        arrayList.add(bVar);
                    } else if (!s(bVar) && i11 > 1) {
                        arrayList.add(bVar);
                        i11--;
                    }
                    if (bVarU != null && i11 == 1) {
                        arrayList.add(bVarU);
                        i11--;
                    }
                }
            }
            if (bVarU != null && i11 >= 1) {
                arrayList.add(bVarU);
            }
            return arrayList;
        }
    }

    public static class o extends p {

        static class a {
            static Notification.Style a() {
                return new Notification.DecoratedCustomViewStyle();
            }
        }

        private RemoteViews q(RemoteViews remoteViews, boolean z10) {
            int iMin;
            int i11 = 0;
            RemoteViews remoteViewsC = c(true, R$layout.notification_template_custom_big, false);
            remoteViewsC.removeAllViews(R$id.actions);
            List listS = s(this.f8052a.f8017b);
            if (!z10 || listS == null || (iMin = Math.min(listS.size(), 3)) <= 0) {
                i11 = 8;
            } else {
                for (int i12 = 0; i12 < iMin; i12++) {
                    remoteViewsC.addView(R$id.actions, r((b) listS.get(i12)));
                }
            }
            remoteViewsC.setViewVisibility(R$id.actions, i11);
            remoteViewsC.setViewVisibility(R$id.action_divider, i11);
            d(remoteViewsC, remoteViews);
            return remoteViewsC;
        }

        private RemoteViews r(b bVar) {
            boolean z10 = bVar.f7984k == null;
            RemoteViews remoteViews = new RemoteViews(this.f8052a.f8016a.getPackageName(), z10 ? R$layout.notification_action_tombstone : R$layout.notification_action);
            IconCompat iconCompatD = bVar.d();
            if (iconCompatD != null) {
                remoteViews.setImageViewBitmap(R$id.action_image, h(iconCompatD, R$color.notification_action_color_filter));
            }
            remoteViews.setTextViewText(R$id.action_text, bVar.f7983j);
            if (!z10) {
                remoteViews.setOnClickPendingIntent(R$id.action_container, bVar.f7984k);
            }
            remoteViews.setContentDescription(R$id.action_container, bVar.f7983j);
            return remoteViews;
        }

        private static List s(List list) {
            if (list == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                b bVar = (b) it.next();
                if (!bVar.j()) {
                    arrayList.add(bVar);
                }
            }
            return arrayList;
        }

        @Override // androidx.core.app.NotificationCompat.p
        public void b(androidx.core.app.o oVar) {
            if (Build.VERSION.SDK_INT >= 24) {
                oVar.a().setStyle(a.a());
            }
        }

        @Override // androidx.core.app.NotificationCompat.p
        protected String k() {
            return "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle";
        }

        @Override // androidx.core.app.NotificationCompat.p
        public RemoteViews m(androidx.core.app.o oVar) {
            if (Build.VERSION.SDK_INT >= 24) {
                return null;
            }
            RemoteViews remoteViewsD = this.f8052a.d();
            if (remoteViewsD == null) {
                remoteViewsD = this.f8052a.f();
            }
            if (remoteViewsD == null) {
                return null;
            }
            return q(remoteViewsD, true);
        }

        @Override // androidx.core.app.NotificationCompat.p
        public RemoteViews n(androidx.core.app.o oVar) {
            if (Build.VERSION.SDK_INT < 24 && this.f8052a.f() != null) {
                return q(this.f8052a.f(), false);
            }
            return null;
        }

        @Override // androidx.core.app.NotificationCompat.p
        public RemoteViews o(androidx.core.app.o oVar) {
            if (Build.VERSION.SDK_INT >= 24) {
                return null;
            }
            RemoteViews remoteViewsH = this.f8052a.h();
            RemoteViews remoteViewsF = remoteViewsH != null ? remoteViewsH : this.f8052a.f();
            if (remoteViewsH == null) {
                return null;
            }
            return q(remoteViewsF, true);
        }
    }

    public static abstract class p {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected m f8052a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        CharSequence f8053b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        CharSequence f8054c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f8055d = false;

        static class a {
            static void a(RemoteViews remoteViews, int i11, boolean z10) {
                remoteViews.setChronometerCountDown(i11, z10);
            }
        }

        private int e() {
            Resources resources = this.f8052a.f8016a.getResources();
            int dimensionPixelSize = resources.getDimensionPixelSize(R$dimen.notification_top_pad);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(R$dimen.notification_top_pad_large_text);
            float f11 = (f(resources.getConfiguration().fontScale, 1.0f, 1.3f) - 1.0f) / 0.29999995f;
            return Math.round(((1.0f - f11) * dimensionPixelSize) + (f11 * dimensionPixelSize2));
        }

        private static float f(float f11, float f12, float f13) {
            if (f11 < f12) {
                return f12;
            }
            return f11 > f13 ? f13 : f11;
        }

        private Bitmap g(int i11, int i12, int i13) {
            return i(IconCompat.j(this.f8052a.f8016a, i11), i12, i13);
        }

        private Bitmap i(IconCompat iconCompat, int i11, int i12) {
            Drawable drawableS = iconCompat.s(this.f8052a.f8016a);
            int intrinsicWidth = i12 == 0 ? drawableS.getIntrinsicWidth() : i12;
            if (i12 == 0) {
                i12 = drawableS.getIntrinsicHeight();
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(intrinsicWidth, i12, Bitmap.Config.ARGB_8888);
            drawableS.setBounds(0, 0, intrinsicWidth, i12);
            if (i11 != 0) {
                drawableS.mutate().setColorFilter(new PorterDuffColorFilter(i11, PorterDuff.Mode.SRC_IN));
            }
            drawableS.draw(new Canvas(bitmapCreateBitmap));
            return bitmapCreateBitmap;
        }

        private Bitmap j(int i11, int i12, int i13, int i14) {
            int i15 = R$drawable.notification_icon_background;
            if (i14 == 0) {
                i14 = 0;
            }
            Bitmap bitmapG = g(i15, i14, i12);
            Canvas canvas = new Canvas(bitmapG);
            Drawable drawableMutate = this.f8052a.f8016a.getResources().getDrawable(i11).mutate();
            drawableMutate.setFilterBitmap(true);
            int i16 = (i12 - i13) / 2;
            int i17 = i13 + i16;
            drawableMutate.setBounds(i16, i16, i17, i17);
            drawableMutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_ATOP));
            drawableMutate.draw(canvas);
            return bitmapG;
        }

        private void l(RemoteViews remoteViews) {
            remoteViews.setViewVisibility(R$id.title, 8);
            remoteViews.setViewVisibility(R$id.text2, 8);
            remoteViews.setViewVisibility(R$id.text, 8);
        }

        public void a(Bundle bundle) {
            if (this.f8055d) {
                bundle.putCharSequence(NotificationCompat.EXTRA_SUMMARY_TEXT, this.f8054c);
            }
            CharSequence charSequence = this.f8053b;
            if (charSequence != null) {
                bundle.putCharSequence(NotificationCompat.EXTRA_TITLE_BIG, charSequence);
            }
            String strK = k();
            if (strK != null) {
                bundle.putString(NotificationCompat.EXTRA_COMPAT_TEMPLATE, strK);
            }
        }

        public void b(androidx.core.app.o oVar) {
        }

        /* JADX WARN: Code duplicated, block: B:34:0x010a  */
        /* JADX WARN: Code duplicated, block: B:36:0x0115  */
        /* JADX WARN: Code duplicated, block: B:38:0x0121  */
        /* JADX WARN: Code duplicated, block: B:40:0x0138  */
        /* JADX WARN: Code duplicated, block: B:43:0x0149  */
        /* JADX WARN: Code duplicated, block: B:45:0x014f  */
        /* JADX WARN: Code duplicated, block: B:50:0x0182  */
        /* JADX WARN: Code duplicated, block: B:51:0x0195  */
        /* JADX WARN: Code duplicated, block: B:54:0x019a  */
        /* JADX WARN: Code duplicated, block: B:55:0x019c  */
        /* JADX WARN: Code duplicated, block: B:59:0x01a5  */
        public RemoteViews c(boolean z10, int i11, boolean z11) {
            boolean z12;
            boolean z13;
            CharSequence charSequence;
            int i12;
            boolean z14;
            CharSequence charSequence2;
            Resources resources = this.f8052a.f8016a.getResources();
            RemoteViews remoteViews = new RemoteViews(this.f8052a.f8016a.getPackageName(), i11);
            this.f8052a.i();
            int i13 = Build.VERSION.SDK_INT;
            m mVar = this.f8052a;
            if (mVar.f8025j != null) {
                remoteViews.setViewVisibility(R$id.icon, 0);
                remoteViews.setImageViewBitmap(R$id.icon, h(this.f8052a.f8025j, 0));
                if (z10 && this.f8052a.U.icon != 0) {
                    int dimensionPixelSize = resources.getDimensionPixelSize(R$dimen.notification_right_icon_size);
                    int dimensionPixelSize2 = dimensionPixelSize - (resources.getDimensionPixelSize(R$dimen.notification_small_icon_background_padding) * 2);
                    m mVar2 = this.f8052a;
                    remoteViews.setImageViewBitmap(R$id.right_icon, j(mVar2.U.icon, dimensionPixelSize, dimensionPixelSize2, mVar2.e()));
                    remoteViews.setViewVisibility(R$id.right_icon, 0);
                }
            } else if (z10 && mVar.U.icon != 0) {
                remoteViews.setViewVisibility(R$id.icon, 0);
                int dimensionPixelSize3 = resources.getDimensionPixelSize(R$dimen.notification_large_icon_width) - resources.getDimensionPixelSize(R$dimen.notification_big_circle_margin);
                int dimensionPixelSize4 = resources.getDimensionPixelSize(R$dimen.notification_small_icon_size_as_large);
                m mVar3 = this.f8052a;
                remoteViews.setImageViewBitmap(R$id.icon, j(mVar3.U.icon, dimensionPixelSize3, dimensionPixelSize4, mVar3.e()));
            }
            CharSequence charSequence3 = this.f8052a.f8020e;
            if (charSequence3 != null) {
                remoteViews.setTextViewText(R$id.title, charSequence3);
            }
            CharSequence charSequence4 = this.f8052a.f8021f;
            boolean z15 = true;
            if (charSequence4 != null) {
                remoteViews.setTextViewText(R$id.text, charSequence4);
                z12 = true;
            } else {
                z12 = false;
            }
            m mVar4 = this.f8052a;
            CharSequence charSequence5 = mVar4.f8026k;
            if (charSequence5 == null) {
                if (mVar4.f8027l > 0) {
                    if (this.f8052a.f8027l > resources.getInteger(R$integer.status_bar_notification_info_maxnum)) {
                        remoteViews.setTextViewText(R$id.info, resources.getString(R$string.status_bar_notification_info_overflow));
                    } else {
                        remoteViews.setTextViewText(R$id.info, NumberFormat.getIntegerInstance().format(this.f8052a.f8027l));
                    }
                    remoteViews.setViewVisibility(R$id.info, 0);
                } else {
                    remoteViews.setViewVisibility(R$id.info, 8);
                    z13 = false;
                }
                charSequence = this.f8052a.f8033r;
                if (charSequence != null) {
                    remoteViews.setTextViewText(R$id.text, charSequence);
                    charSequence2 = this.f8052a.f8021f;
                    if (charSequence2 != null) {
                        remoteViews.setTextViewText(R$id.text2, charSequence2);
                        remoteViews.setViewVisibility(R$id.text2, 0);
                        if (z11) {
                            remoteViews.setTextViewTextSize(R$id.text, 0, resources.getDimensionPixelSize(R$dimen.notification_subtext_size));
                        }
                        remoteViews.setViewPadding(R$id.line1, 0, 0, 0, 0);
                    } else {
                        remoteViews.setViewVisibility(R$id.text2, 8);
                    }
                }
                if (this.f8052a.j() != 0) {
                    z15 = z13;
                } else if (this.f8052a.f8030o) {
                    remoteViews.setViewVisibility(R$id.chronometer, 0);
                    remoteViews.setLong(R$id.chronometer, "setBase", this.f8052a.j() + (SystemClock.elapsedRealtime() - System.currentTimeMillis()));
                    remoteViews.setBoolean(R$id.chronometer, "setStarted", true);
                    z14 = this.f8052a.f8031p;
                    if (z14 && i13 >= 24) {
                        a.a(remoteViews, R$id.chronometer, z14);
                    }
                } else {
                    remoteViews.setViewVisibility(R$id.time, 0);
                    remoteViews.setLong(R$id.time, "setTime", this.f8052a.j());
                }
                int i14 = R$id.right_side;
                if (z15) {
                    i12 = 0;
                } else {
                    i12 = 8;
                }
                remoteViews.setViewVisibility(i14, i12);
                remoteViews.setViewVisibility(R$id.line3, z12 ? 0 : 8);
                return remoteViews;
            }
            remoteViews.setTextViewText(R$id.info, charSequence5);
            remoteViews.setViewVisibility(R$id.info, 0);
            z12 = true;
            z13 = true;
            charSequence = this.f8052a.f8033r;
            if (charSequence != null) {
                remoteViews.setTextViewText(R$id.text, charSequence);
                charSequence2 = this.f8052a.f8021f;
                if (charSequence2 != null) {
                    remoteViews.setTextViewText(R$id.text2, charSequence2);
                    remoteViews.setViewVisibility(R$id.text2, 0);
                    if (z11) {
                        remoteViews.setTextViewTextSize(R$id.text, 0, resources.getDimensionPixelSize(R$dimen.notification_subtext_size));
                    }
                    remoteViews.setViewPadding(R$id.line1, 0, 0, 0, 0);
                } else {
                    remoteViews.setViewVisibility(R$id.text2, 8);
                }
            }
            if (this.f8052a.j() != 0) {
                z15 = z13;
            } else if (this.f8052a.f8030o) {
                remoteViews.setViewVisibility(R$id.chronometer, 0);
                remoteViews.setLong(R$id.chronometer, "setBase", this.f8052a.j() + (SystemClock.elapsedRealtime() - System.currentTimeMillis()));
                remoteViews.setBoolean(R$id.chronometer, "setStarted", true);
                z14 = this.f8052a.f8031p;
                if (z14) {
                    a.a(remoteViews, R$id.chronometer, z14);
                }
            } else {
                remoteViews.setViewVisibility(R$id.time, 0);
                remoteViews.setLong(R$id.time, "setTime", this.f8052a.j());
            }
            int i15 = R$id.right_side;
            if (z15) {
                i12 = 0;
            } else {
                i12 = 8;
            }
            remoteViews.setViewVisibility(i15, i12);
            remoteViews.setViewVisibility(R$id.line3, z12 ? 0 : 8);
            return remoteViews;
        }

        public void d(RemoteViews remoteViews, RemoteViews remoteViews2) {
            l(remoteViews);
            remoteViews.removeAllViews(R$id.notification_main_column);
            remoteViews.addView(R$id.notification_main_column, remoteViews2.clone());
            remoteViews.setViewVisibility(R$id.notification_main_column, 0);
            remoteViews.setViewPadding(R$id.notification_main_column_container, 0, e(), 0, 0);
        }

        Bitmap h(IconCompat iconCompat, int i11) {
            return i(iconCompat, i11, 0);
        }

        protected String k() {
            return null;
        }

        public RemoteViews m(androidx.core.app.o oVar) {
            return null;
        }

        public RemoteViews n(androidx.core.app.o oVar) {
            return null;
        }

        public RemoteViews o(androidx.core.app.o oVar) {
            return null;
        }

        public void p(m mVar) {
            if (this.f8052a != mVar) {
                this.f8052a = mVar;
                if (mVar != null) {
                    mVar.L(this);
                }
            }
        }
    }

    @Deprecated
    public NotificationCompat() {
    }

    public static b getAction(Notification notification, int i11) {
        return getActionCompatFromAction(notification.actions[i11]);
    }

    static b getActionCompatFromAction(Notification.Action action) {
        y[] yVarArr;
        int i11;
        RemoteInput[] remoteInputArrG = c.g(action);
        if (remoteInputArrG == null) {
            yVarArr = null;
        } else {
            y[] yVarArr2 = new y[remoteInputArrG.length];
            for (int i12 = 0; i12 < remoteInputArrG.length; i12++) {
                RemoteInput remoteInput = remoteInputArrG[i12];
                yVarArr2[i12] = new y(c.h(remoteInput), c.f(remoteInput), c.b(remoteInput), c.a(remoteInput), Build.VERSION.SDK_INT >= 29 ? h.c(remoteInput) : 0, c.d(remoteInput), null);
            }
            yVarArr = yVarArr2;
        }
        int i13 = Build.VERSION.SDK_INT;
        boolean z10 = i13 >= 24 ? c.c(action).getBoolean("android.support.allowGeneratedReplies") || e.a(action) : c.c(action).getBoolean("android.support.allowGeneratedReplies");
        boolean z11 = c.c(action).getBoolean("android.support.action.showsUserInterface", true);
        int iA = i13 >= 28 ? g.a(action) : c.c(action).getInt("android.support.action.semanticAction", 0);
        boolean zE = i13 >= 29 ? h.e(action) : false;
        boolean zA = i13 >= 31 ? i.a(action) : false;
        if (d.a(action) != null || (i11 = action.icon) == 0) {
            return new b(d.a(action) != null ? IconCompat.c(d.a(action)) : null, action.title, action.actionIntent, c.c(action), yVarArr, (y[]) null, z10, iA, z11, zE, zA);
        }
        return new b(i11, action.title, action.actionIntent, c.c(action), yVarArr, (y[]) null, z10, iA, z11, zE, zA);
    }

    public static int getActionCount(Notification notification) {
        Notification.Action[] actionArr = notification.actions;
        if (actionArr != null) {
            return actionArr.length;
        }
        return 0;
    }

    public static boolean getAllowSystemGeneratedContextualActions(Notification notification) {
        if (Build.VERSION.SDK_INT >= 29) {
            return h.a(notification);
        }
        return false;
    }

    public static boolean getAutoCancel(Notification notification) {
        return (notification.flags & 16) != 0;
    }

    public static int getBadgeIconType(Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return f.a(notification);
        }
        return 0;
    }

    public static l getBubbleMetadata(Notification notification) {
        if (Build.VERSION.SDK_INT >= 29) {
            return l.a(h.b(notification));
        }
        return null;
    }

    public static String getCategory(Notification notification) {
        return notification.category;
    }

    public static String getChannelId(Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return f.b(notification);
        }
        return null;
    }

    public static int getColor(Notification notification) {
        return notification.color;
    }

    public static CharSequence getContentInfo(Notification notification) {
        return notification.extras.getCharSequence(EXTRA_INFO_TEXT);
    }

    public static CharSequence getContentText(Notification notification) {
        return notification.extras.getCharSequence(EXTRA_TEXT);
    }

    public static CharSequence getContentTitle(Notification notification) {
        return notification.extras.getCharSequence(EXTRA_TITLE);
    }

    @Deprecated
    public static Bundle getExtras(Notification notification) {
        return notification.extras;
    }

    public static String getGroup(Notification notification) {
        return c.e(notification);
    }

    public static int getGroupAlertBehavior(Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return f.c(notification);
        }
        return 0;
    }

    static boolean getHighPriority(Notification notification) {
        return (notification.flags & 128) != 0;
    }

    public static List<b> getInvisibleActions(Notification notification) {
        Bundle bundle;
        ArrayList arrayList = new ArrayList();
        Bundle bundle2 = notification.extras.getBundle("android.car.EXTENSIONS");
        if (bundle2 != null && (bundle = bundle2.getBundle("invisible_actions")) != null) {
            for (int i11 = 0; i11 < bundle.size(); i11++) {
                arrayList.add(s.c(bundle.getBundle(Integer.toString(i11))));
            }
        }
        return arrayList;
    }

    public static boolean getLocalOnly(Notification notification) {
        return (notification.flags & 256) != 0;
    }

    public static androidx.core.content.c getLocusId(Notification notification) {
        LocusId locusIdD;
        if (Build.VERSION.SDK_INT < 29 || (locusIdD = h.d(notification)) == null) {
            return null;
        }
        return androidx.core.content.c.c(locusIdD);
    }

    static Notification[] getNotificationArrayFromBundle(Bundle bundle, String str) {
        Parcelable[] parcelableArray = bundle.getParcelableArray(str);
        if ((parcelableArray instanceof Notification[]) || parcelableArray == null) {
            return (Notification[]) parcelableArray;
        }
        Notification[] notificationArr = new Notification[parcelableArray.length];
        for (int i11 = 0; i11 < parcelableArray.length; i11++) {
            notificationArr[i11] = (Notification) parcelableArray[i11];
        }
        bundle.putParcelableArray(str, notificationArr);
        return notificationArr;
    }

    public static boolean getOngoing(Notification notification) {
        return (notification.flags & 2) != 0;
    }

    public static boolean getOnlyAlertOnce(Notification notification) {
        return (notification.flags & 8) != 0;
    }

    public static List<w> getPeople(Notification notification) {
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 28) {
            ArrayList parcelableArrayList = notification.extras.getParcelableArrayList(EXTRA_PEOPLE_LIST);
            if (parcelableArrayList != null && !parcelableArrayList.isEmpty()) {
                Iterator it = parcelableArrayList.iterator();
                while (it.hasNext()) {
                    arrayList.add(w.a(androidx.core.app.p.a(it.next())));
                }
            }
        } else {
            String[] stringArray = notification.extras.getStringArray(EXTRA_PEOPLE);
            if (stringArray != null && stringArray.length != 0) {
                for (String str : stringArray) {
                    arrayList.add(new w.b().g(str).a());
                }
            }
        }
        return arrayList;
    }

    public static Notification getPublicVersion(Notification notification) {
        return notification.publicVersion;
    }

    public static CharSequence getSettingsText(Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return f.d(notification);
        }
        return null;
    }

    public static String getShortcutId(Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return f.e(notification);
        }
        return null;
    }

    public static boolean getShowWhen(Notification notification) {
        return notification.extras.getBoolean(EXTRA_SHOW_WHEN);
    }

    public static String getSortKey(Notification notification) {
        return c.i(notification);
    }

    public static CharSequence getSubText(Notification notification) {
        return notification.extras.getCharSequence(EXTRA_SUB_TEXT);
    }

    public static long getTimeoutAfter(Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return f.f(notification);
        }
        return 0L;
    }

    public static boolean getUsesChronometer(Notification notification) {
        return notification.extras.getBoolean(EXTRA_SHOW_CHRONOMETER);
    }

    public static int getVisibility(Notification notification) {
        return notification.visibility;
    }

    public static boolean isGroupSummary(Notification notification) {
        return (notification.flags & 512) != 0;
    }

    public static Bitmap reduceLargeIconSize(Context context, Bitmap bitmap) {
        if (bitmap == null || Build.VERSION.SDK_INT >= 27) {
            return bitmap;
        }
        Resources resources = context.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R$dimen.compat_notification_large_icon_max_width);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R$dimen.compat_notification_large_icon_max_height);
        if (bitmap.getWidth() <= dimensionPixelSize && bitmap.getHeight() <= dimensionPixelSize2) {
            return bitmap;
        }
        double dMin = Math.min(((double) dimensionPixelSize) / ((double) Math.max(1, bitmap.getWidth())), ((double) dimensionPixelSize2) / ((double) Math.max(1, bitmap.getHeight())));
        return Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(((double) bitmap.getWidth()) * dMin), (int) Math.ceil(((double) bitmap.getHeight()) * dMin), true);
    }
}
