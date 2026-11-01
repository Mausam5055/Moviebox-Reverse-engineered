package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.Person;
import android.app.RemoteInput;
import android.content.Context;
import android.content.LocusId;
import android.graphics.drawable.Icon;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.RemoteViews;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class r implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f8079a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Notification.Builder f8080b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final NotificationCompat.m f8081c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RemoteViews f8082d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private RemoteViews f8083e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List f8084f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Bundle f8085g = new Bundle();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f8086h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private RemoteViews f8087i;

    static class a {
        static Notification.Builder a(Notification.Builder builder, Notification.Action action) {
            return builder.addAction(action);
        }

        static Notification.Action.Builder b(Notification.Action.Builder builder, Bundle bundle) {
            return builder.addExtras(bundle);
        }

        static Notification.Action.Builder c(Notification.Action.Builder builder, RemoteInput remoteInput) {
            return builder.addRemoteInput(remoteInput);
        }

        static Notification.Action d(Notification.Action.Builder builder) {
            return builder.build();
        }

        static String e(Notification notification) {
            return notification.getGroup();
        }

        static Notification.Builder f(Notification.Builder builder, String str) {
            return builder.setGroup(str);
        }

        static Notification.Builder g(Notification.Builder builder, boolean z10) {
            return builder.setGroupSummary(z10);
        }

        static Notification.Builder h(Notification.Builder builder, boolean z10) {
            return builder.setLocalOnly(z10);
        }

        static Notification.Builder i(Notification.Builder builder, String str) {
            return builder.setSortKey(str);
        }
    }

    static class b {
        static Notification.Builder a(Notification.Builder builder, String str) {
            return builder.addPerson(str);
        }

        static Notification.Builder b(Notification.Builder builder, String str) {
            return builder.setCategory(str);
        }

        static Notification.Builder c(Notification.Builder builder, int i11) {
            return builder.setColor(i11);
        }

        static Notification.Builder d(Notification.Builder builder, Notification notification) {
            return builder.setPublicVersion(notification);
        }

        static Notification.Builder e(Notification.Builder builder, Uri uri, Object obj) {
            return builder.setSound(uri, (AudioAttributes) obj);
        }

        static Notification.Builder f(Notification.Builder builder, int i11) {
            return builder.setVisibility(i11);
        }
    }

    static class c {
        static Notification.Action.Builder a(Icon icon, CharSequence charSequence, PendingIntent pendingIntent) {
            return new Notification.Action.Builder(icon, charSequence, pendingIntent);
        }

        static Notification.Builder b(Notification.Builder builder, Icon icon) {
            return builder.setLargeIcon(icon);
        }

        static Notification.Builder c(Notification.Builder builder, Object obj) {
            return builder.setSmallIcon((Icon) obj);
        }
    }

    static class d {
        static Notification.Action.Builder a(Notification.Action.Builder builder, boolean z10) {
            return builder.setAllowGeneratedReplies(z10);
        }

        static Notification.Builder b(Notification.Builder builder, RemoteViews remoteViews) {
            return builder.setCustomBigContentView(remoteViews);
        }

        static Notification.Builder c(Notification.Builder builder, RemoteViews remoteViews) {
            return builder.setCustomContentView(remoteViews);
        }

        static Notification.Builder d(Notification.Builder builder, RemoteViews remoteViews) {
            return builder.setCustomHeadsUpContentView(remoteViews);
        }

        static Notification.Builder e(Notification.Builder builder, CharSequence[] charSequenceArr) {
            return builder.setRemoteInputHistory(charSequenceArr);
        }
    }

    static class e {
        static Notification.Builder a(Context context, String str) {
            return new Notification.Builder(context, str);
        }

        static Notification.Builder b(Notification.Builder builder, int i11) {
            return builder.setBadgeIconType(i11);
        }

        static Notification.Builder c(Notification.Builder builder, boolean z10) {
            return builder.setColorized(z10);
        }

        static Notification.Builder d(Notification.Builder builder, int i11) {
            return builder.setGroupAlertBehavior(i11);
        }

        static Notification.Builder e(Notification.Builder builder, CharSequence charSequence) {
            return builder.setSettingsText(charSequence);
        }

        static Notification.Builder f(Notification.Builder builder, String str) {
            return builder.setShortcutId(str);
        }

        static Notification.Builder g(Notification.Builder builder, long j11) {
            return builder.setTimeoutAfter(j11);
        }
    }

    static class f {
        static Notification.Builder a(Notification.Builder builder, Person person) {
            return builder.addPerson(person);
        }

        static Notification.Action.Builder b(Notification.Action.Builder builder, int i11) {
            return builder.setSemanticAction(i11);
        }
    }

    static class g {
        static Notification.Builder a(Notification.Builder builder, boolean z10) {
            return builder.setAllowSystemGeneratedContextualActions(z10);
        }

        static Notification.Builder b(Notification.Builder builder, Notification.BubbleMetadata bubbleMetadata) {
            return builder.setBubbleMetadata(bubbleMetadata);
        }

        static Notification.Action.Builder c(Notification.Action.Builder builder, boolean z10) {
            return builder.setContextual(z10);
        }

        static Notification.Builder d(Notification.Builder builder, Object obj) {
            return builder.setLocusId((LocusId) obj);
        }
    }

    static class h {
        static Notification.Action.Builder a(Notification.Action.Builder builder, boolean z10) {
            return builder.setAuthenticationRequired(z10);
        }

        static Notification.Builder b(Notification.Builder builder, int i11) {
            return builder.setForegroundServiceBehavior(i11);
        }
    }

    r(NotificationCompat.m mVar) {
        int i11;
        this.f8081c = mVar;
        Context context = mVar.f8016a;
        this.f8079a = context;
        if (Build.VERSION.SDK_INT >= 26) {
            this.f8080b = e.a(context, mVar.L);
        } else {
            this.f8080b = new Notification.Builder(mVar.f8016a);
        }
        Notification notification = mVar.U;
        this.f8080b.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, mVar.f8024i).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(mVar.f8020e).setContentText(mVar.f8021f).setContentInfo(mVar.f8026k).setContentIntent(mVar.f8022g).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(mVar.f8023h, (notification.flags & 128) != 0).setNumber(mVar.f8027l).setProgress(mVar.f8036u, mVar.f8037v, mVar.f8038w);
        Notification.Builder builder = this.f8080b;
        IconCompat iconCompat = mVar.f8025j;
        c.b(builder, iconCompat == null ? null : iconCompat.x(context));
        this.f8080b.setSubText(mVar.f8033r).setUsesChronometer(mVar.f8030o).setPriority(mVar.f8028m);
        NotificationCompat.p pVar = mVar.f8032q;
        if (pVar instanceof NotificationCompat.n) {
            Iterator it = ((NotificationCompat.n) pVar).q().iterator();
            while (it.hasNext()) {
                b((NotificationCompat.b) it.next());
            }
        } else {
            Iterator it2 = mVar.f8017b.iterator();
            while (it2.hasNext()) {
                b((NotificationCompat.b) it2.next());
            }
        }
        Bundle bundle = mVar.E;
        if (bundle != null) {
            this.f8085g.putAll(bundle);
        }
        int i12 = Build.VERSION.SDK_INT;
        this.f8082d = mVar.I;
        this.f8083e = mVar.J;
        this.f8080b.setShowWhen(mVar.f8029n);
        a.h(this.f8080b, mVar.A);
        a.f(this.f8080b, mVar.f8039x);
        a.i(this.f8080b, mVar.f8041z);
        a.g(this.f8080b, mVar.f8040y);
        this.f8086h = mVar.Q;
        b.b(this.f8080b, mVar.D);
        b.c(this.f8080b, mVar.F);
        b.f(this.f8080b, mVar.G);
        b.d(this.f8080b, mVar.H);
        b.e(this.f8080b, notification.sound, notification.audioAttributes);
        List listE = i12 < 28 ? e(g(mVar.f8018c), mVar.X) : mVar.X;
        if (listE != null && !listE.isEmpty()) {
            Iterator it3 = listE.iterator();
            while (it3.hasNext()) {
                b.a(this.f8080b, (String) it3.next());
            }
        }
        this.f8087i = mVar.K;
        if (mVar.f8019d.size() > 0) {
            Bundle bundle2 = mVar.g().getBundle("android.car.EXTENSIONS");
            bundle2 = bundle2 == null ? new Bundle() : bundle2;
            Bundle bundle3 = new Bundle(bundle2);
            Bundle bundle4 = new Bundle();
            for (int i13 = 0; i13 < mVar.f8019d.size(); i13++) {
                bundle4.putBundle(Integer.toString(i13), s.e((NotificationCompat.b) mVar.f8019d.get(i13)));
            }
            bundle2.putBundle("invisible_actions", bundle4);
            bundle3.putBundle("invisible_actions", bundle4);
            mVar.g().putBundle("android.car.EXTENSIONS", bundle2);
            this.f8085g.putBundle("android.car.EXTENSIONS", bundle3);
        }
        int i14 = Build.VERSION.SDK_INT;
        Object obj = mVar.W;
        if (obj != null) {
            c.c(this.f8080b, obj);
        }
        if (i14 >= 24) {
            this.f8080b.setExtras(mVar.E);
            d.e(this.f8080b, mVar.f8035t);
            RemoteViews remoteViews = mVar.I;
            if (remoteViews != null) {
                d.c(this.f8080b, remoteViews);
            }
            RemoteViews remoteViews2 = mVar.J;
            if (remoteViews2 != null) {
                d.b(this.f8080b, remoteViews2);
            }
            RemoteViews remoteViews3 = mVar.K;
            if (remoteViews3 != null) {
                d.d(this.f8080b, remoteViews3);
            }
        }
        if (i14 >= 26) {
            e.b(this.f8080b, mVar.M);
            e.e(this.f8080b, mVar.f8034s);
            e.f(this.f8080b, mVar.N);
            e.g(this.f8080b, mVar.P);
            e.d(this.f8080b, mVar.Q);
            if (mVar.C) {
                e.c(this.f8080b, mVar.B);
            }
            if (!TextUtils.isEmpty(mVar.L)) {
                this.f8080b.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
        }
        if (i14 >= 28) {
            Iterator it4 = mVar.f8018c.iterator();
            while (it4.hasNext()) {
                f.a(this.f8080b, ((w) it4.next()).i());
            }
        }
        int i15 = Build.VERSION.SDK_INT;
        if (i15 >= 29) {
            g.a(this.f8080b, mVar.S);
            g.b(this.f8080b, NotificationCompat.l.k(mVar.T));
            androidx.core.content.c cVar = mVar.O;
            if (cVar != null) {
                g.d(this.f8080b, cVar.b());
            }
        }
        if (i15 >= 31 && (i11 = mVar.R) != 0) {
            h.b(this.f8080b, i11);
        }
        if (mVar.V) {
            if (this.f8081c.f8040y) {
                this.f8086h = 2;
            } else {
                this.f8086h = 1;
            }
            this.f8080b.setVibrate(null);
            this.f8080b.setSound(null);
            int i16 = notification.defaults & (-4);
            notification.defaults = i16;
            this.f8080b.setDefaults(i16);
            if (i15 >= 26) {
                if (TextUtils.isEmpty(this.f8081c.f8039x)) {
                    a.f(this.f8080b, NotificationCompat.GROUP_KEY_SILENT);
                }
                e.d(this.f8080b, this.f8086h);
            }
        }
    }

    private void b(NotificationCompat.b bVar) {
        IconCompat iconCompatD = bVar.d();
        Notification.Action.Builder builderA = c.a(iconCompatD != null ? iconCompatD.w() : null, bVar.h(), bVar.a());
        if (bVar.e() != null) {
            for (RemoteInput remoteInput : y.b(bVar.e())) {
                a.c(builderA, remoteInput);
            }
        }
        Bundle bundle = bVar.c() != null ? new Bundle(bVar.c()) : new Bundle();
        bundle.putBoolean("android.support.allowGeneratedReplies", bVar.b());
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 24) {
            d.a(builderA, bVar.b());
        }
        bundle.putInt("android.support.action.semanticAction", bVar.f());
        if (i11 >= 28) {
            f.b(builderA, bVar.f());
        }
        if (i11 >= 29) {
            g.c(builderA, bVar.j());
        }
        if (i11 >= 31) {
            h.a(builderA, bVar.i());
        }
        bundle.putBoolean("android.support.action.showsUserInterface", bVar.g());
        a.b(builderA, bundle);
        a.a(this.f8080b, a.d(builderA));
    }

    private static List e(List list, List list2) {
        if (list == null) {
            return list2;
        }
        if (list2 == null) {
            return list;
        }
        androidx.collection.b bVar = new androidx.collection.b(list.size() + list2.size());
        bVar.addAll(list);
        bVar.addAll(list2);
        return new ArrayList(bVar);
    }

    private static List g(List list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((w) it.next()).h());
        }
        return arrayList;
    }

    private void h(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        notification.defaults &= -4;
    }

    @Override // androidx.core.app.o
    public Notification.Builder a() {
        return this.f8080b;
    }

    public Notification c() {
        Bundle extras;
        RemoteViews remoteViewsO;
        RemoteViews remoteViewsM;
        NotificationCompat.p pVar = this.f8081c.f8032q;
        if (pVar != null) {
            pVar.b(this);
        }
        RemoteViews remoteViewsN = pVar != null ? pVar.n(this) : null;
        Notification notificationD = d();
        if (remoteViewsN != null) {
            notificationD.contentView = remoteViewsN;
        } else {
            RemoteViews remoteViews = this.f8081c.I;
            if (remoteViews != null) {
                notificationD.contentView = remoteViews;
            }
        }
        if (pVar != null && (remoteViewsM = pVar.m(this)) != null) {
            notificationD.bigContentView = remoteViewsM;
        }
        if (pVar != null && (remoteViewsO = this.f8081c.f8032q.o(this)) != null) {
            notificationD.headsUpContentView = remoteViewsO;
        }
        if (pVar != null && (extras = NotificationCompat.getExtras(notificationD)) != null) {
            pVar.a(extras);
        }
        return notificationD;
    }

    protected Notification d() {
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 26) {
            return this.f8080b.build();
        }
        if (i11 >= 24) {
            Notification notificationBuild = this.f8080b.build();
            if (this.f8086h != 0) {
                if (a.e(notificationBuild) != null && (notificationBuild.flags & 512) != 0 && this.f8086h == 2) {
                    h(notificationBuild);
                }
                if (a.e(notificationBuild) != null && (notificationBuild.flags & 512) == 0 && this.f8086h == 1) {
                    h(notificationBuild);
                }
            }
            return notificationBuild;
        }
        this.f8080b.setExtras(this.f8085g);
        Notification notificationBuild2 = this.f8080b.build();
        RemoteViews remoteViews = this.f8082d;
        if (remoteViews != null) {
            notificationBuild2.contentView = remoteViews;
        }
        RemoteViews remoteViews2 = this.f8083e;
        if (remoteViews2 != null) {
            notificationBuild2.bigContentView = remoteViews2;
        }
        RemoteViews remoteViews3 = this.f8087i;
        if (remoteViews3 != null) {
            notificationBuild2.headsUpContentView = remoteViews3;
        }
        if (this.f8086h != 0) {
            if (a.e(notificationBuild2) != null && (notificationBuild2.flags & 512) != 0 && this.f8086h == 2) {
                h(notificationBuild2);
            }
            if (a.e(notificationBuild2) != null && (notificationBuild2.flags & 512) == 0 && this.f8086h == 1) {
                h(notificationBuild2);
            }
        }
        return notificationBuild2;
    }

    Context f() {
        return this.f8079a;
    }
}
