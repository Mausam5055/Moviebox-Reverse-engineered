package androidx.media;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.media.browse.MediaBrowser;
import android.media.session.MediaSession;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.service.media.MediaBrowserService;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class MediaBrowserServiceCompat extends Service {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static final boolean f9710i = Log.isLoggable("MBServiceCompat", 3);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private f f9711a;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    ConnectionRecord f9716f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    MediaSessionCompat.Token f9718h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ServiceBinderImpl f9712b = new ServiceBinderImpl();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final ConnectionRecord f9713c = new ConnectionRecord("android.media.session.MediaController", -1, -1, null, null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final ArrayList f9714d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final androidx.collection.a f9715e = new androidx.collection.a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final o f9717g = new o(this);

    /* JADX INFO: Access modifiers changed from: private */
    class ConnectionRecord implements IBinder.DeathRecipient {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f9719a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f9720b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f9721c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final androidx.media.b f9722d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Bundle f9723e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final m f9724f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final HashMap f9725g = new HashMap();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public e f9726h;

        ConnectionRecord(String str, int i11, int i12, Bundle bundle, m mVar) {
            this.f9719a = str;
            this.f9720b = i11;
            this.f9721c = i12;
            this.f9722d = new androidx.media.b(str, i11, i12);
            this.f9723e = bundle;
            this.f9724f = mVar;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            MediaBrowserServiceCompat.this.f9717g.post(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ConnectionRecord.1
                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord connectionRecord = ConnectionRecord.this;
                    MediaBrowserServiceCompat.this.f9715e.remove(connectionRecord.f9724f.asBinder());
                }
            });
        }
    }

    class MediaBrowserServiceImplApi21 implements f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final List f9728a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        MediaBrowserService f9729b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Messenger f9730c;

        /* JADX INFO: renamed from: androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$3, reason: invalid class name */
        class AnonymousClass3 implements Runnable {
            final /* synthetic */ Bundle val$options;
            final /* synthetic */ String val$parentId;

            AnonymousClass3(String str, Bundle bundle) {
                this.val$parentId = str;
                this.val$options = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                Iterator<Object> it = MediaBrowserServiceCompat.this.f9715e.keySet().iterator();
                while (it.hasNext()) {
                    MediaBrowserServiceImplApi21.this.c((ConnectionRecord) MediaBrowserServiceCompat.this.f9715e.get((IBinder) it.next()), this.val$parentId, this.val$options);
                }
            }
        }

        /* JADX INFO: renamed from: androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$4, reason: invalid class name */
        class AnonymousClass4 implements Runnable {
            final /* synthetic */ Bundle val$options;
            final /* synthetic */ String val$parentId;
            final /* synthetic */ androidx.media.b val$remoteUserInfo;

            AnonymousClass4(androidx.media.b bVar, String str, Bundle bundle) {
                this.val$remoteUserInfo = bVar;
                this.val$parentId = str;
                this.val$options = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                for (int i11 = 0; i11 < MediaBrowserServiceCompat.this.f9715e.size(); i11++) {
                    ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserServiceCompat.this.f9715e.valueAt(i11);
                    if (connectionRecord.f9722d.equals(this.val$remoteUserInfo)) {
                        MediaBrowserServiceImplApi21.this.c(connectionRecord, this.val$parentId, this.val$options);
                    }
                }
            }
        }

        class a extends k {

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ l f9732f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Object obj, l lVar) {
                super(obj);
                this.f9732f = lVar;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.media.MediaBrowserServiceCompat.k
            /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
            public void d(List list) {
                List listEmptyList;
                if (list == null) {
                    listEmptyList = Build.VERSION.SDK_INT >= 24 ? null : Collections.emptyList();
                } else {
                    ArrayList arrayList = new ArrayList(list.size());
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        MediaBrowserCompat.MediaItem mediaItem = (MediaBrowserCompat.MediaItem) it.next();
                        Parcel parcelObtain = Parcel.obtain();
                        mediaItem.writeToParcel(parcelObtain, 0);
                        arrayList.add(parcelObtain);
                    }
                    listEmptyList = arrayList;
                }
                this.f9732f.b(listEmptyList);
            }
        }

        class b extends MediaBrowserService {
            b(Context context) {
                attachBaseContext(context);
            }

            @Override // android.service.media.MediaBrowserService
            public MediaBrowserService.BrowserRoot onGetRoot(String str, int i11, Bundle bundle) {
                MediaSessionCompat.a(bundle);
                e eVarD = MediaBrowserServiceImplApi21.this.d(str, i11, bundle == null ? null : new Bundle(bundle));
                if (eVarD == null) {
                    return null;
                }
                return new MediaBrowserService.BrowserRoot(eVarD.f9747a, eVarD.f9748b);
            }

            @Override // android.service.media.MediaBrowserService
            public void onLoadChildren(String str, MediaBrowserService.Result result) {
                MediaBrowserServiceImplApi21.this.e(str, new l(result));
            }
        }

        MediaBrowserServiceImplApi21() {
        }

        @Override // androidx.media.MediaBrowserServiceCompat.f
        public void a(final MediaSessionCompat.Token token) {
            MediaBrowserServiceCompat.this.f9717g.a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi21.1
                @Override // java.lang.Runnable
                public void run() {
                    MediaBrowserServiceImplApi21.this.f(token);
                }
            });
        }

        @Override // androidx.media.MediaBrowserServiceCompat.f
        public IBinder b(Intent intent) {
            return this.f9729b.onBind(intent);
        }

        void c(ConnectionRecord connectionRecord, String str, Bundle bundle) {
            List<androidx.core.util.e> list = (List) connectionRecord.f9725g.get(str);
            if (list != null) {
                for (androidx.core.util.e eVar : list) {
                    if (androidx.media.a.b(bundle, (Bundle) eVar.f8268b)) {
                        MediaBrowserServiceCompat.this.n(str, connectionRecord, (Bundle) eVar.f8268b, bundle);
                    }
                }
            }
        }

        public e d(String str, int i11, Bundle bundle) {
            Bundle bundleC;
            int i12 = -1;
            if (bundle == null || bundle.getInt("extra_client_version", 0) == 0) {
                bundleC = null;
            } else {
                bundle.remove("extra_client_version");
                this.f9730c = new Messenger(MediaBrowserServiceCompat.this.f9717g);
                bundleC = new Bundle();
                bundleC.putInt("extra_service_version", 2);
                androidx.core.app.f.b(bundleC, "extra_messenger", this.f9730c.getBinder());
                MediaSessionCompat.Token token = MediaBrowserServiceCompat.this.f9718h;
                if (token != null) {
                    android.support.v4.media.session.b extraBinder = token.getExtraBinder();
                    androidx.core.app.f.b(bundleC, "extra_session_binder", extraBinder == null ? null : extraBinder.asBinder());
                } else {
                    this.f9728a.add(bundleC);
                }
                i12 = bundle.getInt("extra_calling_pid", -1);
                bundle.remove("extra_calling_pid");
            }
            ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.new ConnectionRecord(str, i12, i11, bundle, null);
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat.f9716f = connectionRecord;
            e eVarF = mediaBrowserServiceCompat.f(str, i11, bundle);
            MediaBrowserServiceCompat mediaBrowserServiceCompat2 = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat2.f9716f = null;
            if (eVarF == null) {
                return null;
            }
            if (this.f9730c != null) {
                mediaBrowserServiceCompat2.f9714d.add(connectionRecord);
            }
            if (bundleC == null) {
                bundleC = eVarF.c();
            } else if (eVarF.c() != null) {
                bundleC.putAll(eVarF.c());
            }
            return new e(eVarF.d(), bundleC);
        }

        public void e(String str, l lVar) {
            a aVar = new a(str, lVar);
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat.f9716f = mediaBrowserServiceCompat.f9713c;
            mediaBrowserServiceCompat.g(str, aVar);
            MediaBrowserServiceCompat.this.f9716f = null;
        }

        void f(MediaSessionCompat.Token token) {
            if (!this.f9728a.isEmpty()) {
                android.support.v4.media.session.b extraBinder = token.getExtraBinder();
                if (extraBinder != null) {
                    Iterator it = this.f9728a.iterator();
                    while (it.hasNext()) {
                        androidx.core.app.f.b((Bundle) it.next(), "extra_session_binder", extraBinder.asBinder());
                    }
                }
                this.f9728a.clear();
            }
            this.f9729b.setSessionToken((MediaSession.Token) token.getToken());
        }
    }

    private class ServiceBinderImpl {
        ServiceBinderImpl() {
        }

        public void a(final String str, final IBinder iBinder, final Bundle bundle, final m mVar) {
            MediaBrowserServiceCompat.this.f9717g.a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.3
                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserServiceCompat.this.f9715e.get(mVar.asBinder());
                    if (connectionRecord != null) {
                        MediaBrowserServiceCompat.this.a(str, connectionRecord, iBinder, bundle);
                        return;
                    }
                    Log.w("MBServiceCompat", "addSubscription for callback that isn't registered id=" + str);
                }
            });
        }

        public void b(final String str, final int i11, final int i12, final Bundle bundle, final m mVar) {
            if (MediaBrowserServiceCompat.this.d(str, i12)) {
                MediaBrowserServiceCompat.this.f9717g.a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.1
                    /* JADX WARN: Type inference fix 'apply assigned field type' failed
                    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
                    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                     */
                    @Override // java.lang.Runnable
                    public void run() {
                        IBinder iBinderAsBinder = mVar.asBinder();
                        MediaBrowserServiceCompat.this.f9715e.remove(iBinderAsBinder);
                        ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.new ConnectionRecord(str, i11, i12, bundle, mVar);
                        MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
                        mediaBrowserServiceCompat.f9716f = connectionRecord;
                        e eVarF = mediaBrowserServiceCompat.f(str, i12, bundle);
                        connectionRecord.f9726h = eVarF;
                        MediaBrowserServiceCompat mediaBrowserServiceCompat2 = MediaBrowserServiceCompat.this;
                        mediaBrowserServiceCompat2.f9716f = null;
                        if (eVarF == null) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("No root for client ");
                            sb2.append(str);
                            sb2.append(" from service ");
                            sb2.append(getClass().getName());
                            try {
                                mVar.b();
                                return;
                            } catch (RemoteException unused) {
                                Log.w("MBServiceCompat", "Calling onConnectFailed() failed. Ignoring. pkg=" + str);
                                return;
                            }
                        }
                        try {
                            mediaBrowserServiceCompat2.f9715e.put(iBinderAsBinder, connectionRecord);
                            iBinderAsBinder.linkToDeath(connectionRecord, 0);
                            if (MediaBrowserServiceCompat.this.f9718h != null) {
                                mVar.c(connectionRecord.f9726h.d(), MediaBrowserServiceCompat.this.f9718h, connectionRecord.f9726h.c());
                            }
                        } catch (RemoteException unused2) {
                            Log.w("MBServiceCompat", "Calling onConnect() failed. Dropping client. pkg=" + str);
                            MediaBrowserServiceCompat.this.f9715e.remove(iBinderAsBinder);
                        }
                    }
                });
                return;
            }
            throw new IllegalArgumentException("Package/uid mismatch: uid=" + i12 + " package=" + str);
        }

        public void c(final m mVar) {
            MediaBrowserServiceCompat.this.f9717g.a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.2
                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserServiceCompat.this.f9715e.remove(mVar.asBinder());
                    if (connectionRecord != null) {
                        connectionRecord.f9724f.asBinder().unlinkToDeath(connectionRecord, 0);
                    }
                }
            });
        }

        public void d(final String str, final ResultReceiver resultReceiver, final m mVar) {
            if (TextUtils.isEmpty(str) || resultReceiver == null) {
                return;
            }
            MediaBrowserServiceCompat.this.f9717g.a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.5
                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserServiceCompat.this.f9715e.get(mVar.asBinder());
                    if (connectionRecord != null) {
                        MediaBrowserServiceCompat.this.o(str, connectionRecord, resultReceiver);
                        return;
                    }
                    Log.w("MBServiceCompat", "getMediaItem for callback that isn't registered id=" + str);
                }
            });
        }

        public void e(final m mVar, final String str, final int i11, final int i12, final Bundle bundle) {
            MediaBrowserServiceCompat.this.f9717g.a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.6
                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord connectionRecord;
                    IBinder iBinderAsBinder = mVar.asBinder();
                    MediaBrowserServiceCompat.this.f9715e.remove(iBinderAsBinder);
                    Iterator it = MediaBrowserServiceCompat.this.f9714d.iterator();
                    while (true) {
                        connectionRecord = null;
                        if (!it.hasNext()) {
                            break;
                        }
                        ConnectionRecord connectionRecord2 = (ConnectionRecord) it.next();
                        if (connectionRecord2.f9721c == i12) {
                            connectionRecord = (TextUtils.isEmpty(str) || i11 <= 0) ? MediaBrowserServiceCompat.this.new ConnectionRecord(connectionRecord2.f9719a, connectionRecord2.f9720b, connectionRecord2.f9721c, bundle, mVar) : null;
                            it.remove();
                            break;
                        }
                    }
                    if (connectionRecord == null) {
                        connectionRecord = MediaBrowserServiceCompat.this.new ConnectionRecord(str, i11, i12, bundle, mVar);
                    }
                    MediaBrowserServiceCompat.this.f9715e.put(iBinderAsBinder, connectionRecord);
                    try {
                        iBinderAsBinder.linkToDeath(connectionRecord, 0);
                    } catch (RemoteException unused) {
                        Log.w("MBServiceCompat", "IBinder is already dead.");
                    }
                }
            });
        }

        public void f(final String str, final IBinder iBinder, final m mVar) {
            MediaBrowserServiceCompat.this.f9717g.a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.4
                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserServiceCompat.this.f9715e.get(mVar.asBinder());
                    if (connectionRecord == null) {
                        Log.w("MBServiceCompat", "removeSubscription for callback that isn't registered id=" + str);
                        return;
                    }
                    if (MediaBrowserServiceCompat.this.q(str, connectionRecord, iBinder)) {
                        return;
                    }
                    Log.w("MBServiceCompat", "removeSubscription called for " + str + " which is not subscribed");
                }
            });
        }

        public void g(final String str, final Bundle bundle, final ResultReceiver resultReceiver, final m mVar) {
            if (TextUtils.isEmpty(str) || resultReceiver == null) {
                return;
            }
            MediaBrowserServiceCompat.this.f9717g.a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.8
                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserServiceCompat.this.f9715e.get(mVar.asBinder());
                    if (connectionRecord != null) {
                        MediaBrowserServiceCompat.this.p(str, bundle, connectionRecord, resultReceiver);
                        return;
                    }
                    Log.w("MBServiceCompat", "search for callback that isn't registered query=" + str);
                }
            });
        }

        public void h(final String str, final Bundle bundle, final ResultReceiver resultReceiver, final m mVar) {
            if (TextUtils.isEmpty(str) || resultReceiver == null) {
                return;
            }
            MediaBrowserServiceCompat.this.f9717g.a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.9
                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserServiceCompat.this.f9715e.get(mVar.asBinder());
                    if (connectionRecord != null) {
                        MediaBrowserServiceCompat.this.m(str, bundle, connectionRecord, resultReceiver);
                        return;
                    }
                    Log.w("MBServiceCompat", "sendCustomAction for callback that isn't registered action=" + str + ", extras=" + bundle);
                }
            });
        }

        public void i(final m mVar) {
            MediaBrowserServiceCompat.this.f9717g.a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.7
                @Override // java.lang.Runnable
                public void run() {
                    IBinder iBinderAsBinder = mVar.asBinder();
                    ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserServiceCompat.this.f9715e.remove(iBinderAsBinder);
                    if (connectionRecord != null) {
                        iBinderAsBinder.unlinkToDeath(connectionRecord, 0);
                    }
                }
            });
        }
    }

    class a extends k {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ ConnectionRecord f9736f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f9737g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ Bundle f9738h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final /* synthetic */ Bundle f9739i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Object obj, ConnectionRecord connectionRecord, String str, Bundle bundle, Bundle bundle2) {
            super(obj);
            this.f9736f = connectionRecord;
            this.f9737g = str;
            this.f9738h = bundle;
            this.f9739i = bundle2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media.MediaBrowserServiceCompat.k
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public void d(List list) {
            if (MediaBrowserServiceCompat.this.f9715e.get(this.f9736f.f9724f.asBinder()) != this.f9736f) {
                if (MediaBrowserServiceCompat.f9710i) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Not sending onLoadChildren result for connection that has been disconnected. pkg=");
                    sb2.append(this.f9736f.f9719a);
                    sb2.append(" id=");
                    sb2.append(this.f9737g);
                    return;
                }
                return;
            }
            if ((a() & 1) != 0) {
                list = MediaBrowserServiceCompat.this.b(list, this.f9738h);
            }
            try {
                this.f9736f.f9724f.a(this.f9737g, list, this.f9738h, this.f9739i);
            } catch (RemoteException unused) {
                Log.w("MBServiceCompat", "Calling onLoadChildren() failed for id=" + this.f9737g + " package=" + this.f9736f.f9719a);
            }
        }
    }

    class b extends k {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ ResultReceiver f9741f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Object obj, ResultReceiver resultReceiver) {
            super(obj);
            this.f9741f = resultReceiver;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media.MediaBrowserServiceCompat.k
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public void d(MediaBrowserCompat.MediaItem mediaItem) {
            if ((a() & 2) != 0) {
                this.f9741f.send(-1, null);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putParcelable("media_item", mediaItem);
            this.f9741f.send(0, bundle);
        }
    }

    class c extends k {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ ResultReceiver f9743f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(Object obj, ResultReceiver resultReceiver) {
            super(obj);
            this.f9743f = resultReceiver;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media.MediaBrowserServiceCompat.k
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public void d(List list) {
            if ((a() & 4) != 0 || list == null) {
                this.f9743f.send(-1, null);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putParcelableArray("search_results", (Parcelable[]) list.toArray(new MediaBrowserCompat.MediaItem[0]));
            this.f9743f.send(0, bundle);
        }
    }

    class d extends k {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ ResultReceiver f9745f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(Object obj, ResultReceiver resultReceiver) {
            super(obj);
            this.f9745f = resultReceiver;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.k
        void c(Bundle bundle) {
            this.f9745f.send(-1, bundle);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media.MediaBrowserServiceCompat.k
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public void d(Bundle bundle) {
            this.f9745f.send(0, bundle);
        }
    }

    public static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f9747a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Bundle f9748b;

        public e(String str, Bundle bundle) {
            if (str == null) {
                throw new IllegalArgumentException("The root id in BrowserRoot cannot be null. Use null for BrowserRoot instead");
            }
            this.f9747a = str;
            this.f9748b = bundle;
        }

        public Bundle c() {
            return this.f9748b;
        }

        public String d() {
            return this.f9747a;
        }
    }

    interface f {
        void a(MediaSessionCompat.Token token);

        IBinder b(Intent intent);

        void onCreate();
    }

    class g extends MediaBrowserServiceImplApi21 {

        class a extends k {

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ l f9750f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Object obj, l lVar) {
                super(obj);
                this.f9750f = lVar;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.media.MediaBrowserServiceCompat.k
            /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
            public void d(MediaBrowserCompat.MediaItem mediaItem) {
                if (mediaItem == null) {
                    this.f9750f.b(null);
                    return;
                }
                Parcel parcelObtain = Parcel.obtain();
                mediaItem.writeToParcel(parcelObtain, 0);
                this.f9750f.b(parcelObtain);
            }
        }

        class b extends MediaBrowserServiceImplApi21.b {
            b(Context context) {
                super(context);
            }

            @Override // android.service.media.MediaBrowserService
            public void onLoadItem(String str, MediaBrowserService.Result result) {
                g.this.g(str, new l(result));
            }
        }

        g() {
            super();
        }

        public void g(String str, l lVar) {
            a aVar = new a(str, lVar);
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat.f9716f = mediaBrowserServiceCompat.f9713c;
            mediaBrowserServiceCompat.i(str, aVar);
            MediaBrowserServiceCompat.this.f9716f = null;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.f
        public void onCreate() {
            b bVar = new b(MediaBrowserServiceCompat.this);
            this.f9729b = bVar;
            bVar.onCreate();
        }
    }

    class h extends g {

        class a extends k {

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ l f9754f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            final /* synthetic */ Bundle f9755g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Object obj, l lVar, Bundle bundle) {
                super(obj);
                this.f9754f = lVar;
                this.f9755g = bundle;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.media.MediaBrowserServiceCompat.k
            /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
            public void d(List list) {
                if (list == null) {
                    this.f9754f.b(null);
                    return;
                }
                if ((a() & 1) != 0) {
                    list = MediaBrowserServiceCompat.this.b(list, this.f9755g);
                }
                ArrayList arrayList = new ArrayList(list.size());
                for (MediaBrowserCompat.MediaItem mediaItem : list) {
                    Parcel parcelObtain = Parcel.obtain();
                    mediaItem.writeToParcel(parcelObtain, 0);
                    arrayList.add(parcelObtain);
                }
                this.f9754f.b(arrayList);
            }
        }

        class b extends g.b {
            b(Context context) {
                super(context);
            }

            @Override // android.service.media.MediaBrowserService
            public void onLoadChildren(String str, MediaBrowserService.Result result, Bundle bundle) {
                MediaSessionCompat.a(bundle);
                h hVar = h.this;
                MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
                mediaBrowserServiceCompat.f9716f = mediaBrowserServiceCompat.f9713c;
                hVar.h(str, new l(result), bundle);
                MediaBrowserServiceCompat.this.f9716f = null;
            }
        }

        h() {
            super();
        }

        public void h(String str, l lVar, Bundle bundle) {
            a aVar = new a(str, lVar, bundle);
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat.f9716f = mediaBrowserServiceCompat.f9713c;
            mediaBrowserServiceCompat.h(str, aVar, bundle);
            MediaBrowserServiceCompat.this.f9716f = null;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.g, androidx.media.MediaBrowserServiceCompat.f
        public void onCreate() {
            b bVar = new b(MediaBrowserServiceCompat.this);
            this.f9729b = bVar;
            bVar.onCreate();
        }
    }

    class i extends h {
        i() {
            super();
        }
    }

    class j implements f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ MediaBrowserServiceCompat f9759a;

        abstract void c(ConnectionRecord connectionRecord, String str, Bundle bundle);
    }

    public static class k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f9760a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f9761b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f9762c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f9763d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f9764e;

        k(Object obj) {
            this.f9760a = obj;
        }

        int a() {
            return this.f9764e;
        }

        boolean b() {
            return this.f9761b || this.f9762c || this.f9763d;
        }

        void c(Bundle bundle) {
            throw new UnsupportedOperationException("It is not supported to send an error for " + this.f9760a);
        }

        abstract void d(Object obj);

        public void e(Bundle bundle) {
            if (!this.f9762c && !this.f9763d) {
                this.f9763d = true;
                c(bundle);
            } else {
                throw new IllegalStateException("sendError() called when either sendResult() or sendError() had already been called for: " + this.f9760a);
            }
        }

        public void f(Object obj) {
            if (!this.f9762c && !this.f9763d) {
                this.f9762c = true;
                d(obj);
            } else {
                throw new IllegalStateException("sendResult() called when either sendResult() or sendError() had already been called for: " + this.f9760a);
            }
        }

        void g(int i11) {
            this.f9764e = i11;
        }
    }

    static class l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        MediaBrowserService.Result f9765a;

        l(MediaBrowserService.Result result) {
            this.f9765a = result;
        }

        List a(List list) {
            if (list == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList(list.size());
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Parcel parcel = (Parcel) it.next();
                parcel.setDataPosition(0);
                arrayList.add((MediaBrowser.MediaItem) MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
                parcel.recycle();
            }
            return arrayList;
        }

        public void b(Object obj) {
            if (obj instanceof List) {
                this.f9765a.sendResult(a((List) obj));
                return;
            }
            if (!(obj instanceof Parcel)) {
                this.f9765a.sendResult(null);
                return;
            }
            Parcel parcel = (Parcel) obj;
            parcel.setDataPosition(0);
            this.f9765a.sendResult(MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
            parcel.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    interface m {
        void a(String str, List list, Bundle bundle, Bundle bundle2);

        IBinder asBinder();

        void b();

        void c(String str, MediaSessionCompat.Token token, Bundle bundle);
    }

    private static class n implements m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Messenger f9766a;

        n(Messenger messenger) {
            this.f9766a = messenger;
        }

        private void d(int i11, Bundle bundle) throws RemoteException {
            Message messageObtain = Message.obtain();
            messageObtain.what = i11;
            messageObtain.arg1 = 2;
            messageObtain.setData(bundle);
            this.f9766a.send(messageObtain);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.m
        public void a(String str, List list, Bundle bundle, Bundle bundle2) throws RemoteException {
            Bundle bundle3 = new Bundle();
            bundle3.putString("data_media_item_id", str);
            bundle3.putBundle("data_options", bundle);
            bundle3.putBundle("data_notify_children_changed_options", bundle2);
            if (list != null) {
                bundle3.putParcelableArrayList("data_media_item_list", list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list));
            }
            d(3, bundle3);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.m
        public IBinder asBinder() {
            return this.f9766a.getBinder();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.m
        public void b() throws RemoteException {
            d(2, null);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.m
        public void c(String str, MediaSessionCompat.Token token, Bundle bundle) throws RemoteException {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putInt("extra_service_version", 2);
            Bundle bundle2 = new Bundle();
            bundle2.putString("data_media_item_id", str);
            bundle2.putParcelable("data_media_session_token", token);
            bundle2.putBundle("data_root_hints", bundle);
            d(1, bundle2);
        }
    }

    private static final class o extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private MediaBrowserServiceCompat f9767a;

        o(MediaBrowserServiceCompat mediaBrowserServiceCompat) {
            this.f9767a = mediaBrowserServiceCompat;
        }

        public void a(Runnable runnable) {
            if (Thread.currentThread() == getLooper().getThread()) {
                runnable.run();
            } else {
                post(runnable);
            }
        }

        public void b() {
            this.f9767a = null;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            MediaBrowserServiceCompat mediaBrowserServiceCompat = this.f9767a;
            if (mediaBrowserServiceCompat != null) {
                mediaBrowserServiceCompat.c(message);
            } else {
                removeCallbacksAndMessages(null);
            }
        }

        @Override // android.os.Handler
        public boolean sendMessageAtTime(Message message, long j11) {
            Bundle data = message.getData();
            data.setClassLoader(MediaBrowserCompat.class.getClassLoader());
            data.putInt("data_calling_uid", Binder.getCallingUid());
            int callingPid = Binder.getCallingPid();
            if (callingPid > 0) {
                data.putInt("data_calling_pid", callingPid);
            } else if (!data.containsKey("data_calling_pid")) {
                data.putInt("data_calling_pid", -1);
            }
            return super.sendMessageAtTime(message, j11);
        }
    }

    void a(String str, ConnectionRecord connectionRecord, IBinder iBinder, Bundle bundle) {
        List<androidx.core.util.e> arrayList = (List) connectionRecord.f9725g.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        for (androidx.core.util.e eVar : arrayList) {
            if (iBinder == eVar.f8267a && androidx.media.a.a(bundle, (Bundle) eVar.f8268b)) {
                return;
            }
        }
        arrayList.add(new androidx.core.util.e(iBinder, bundle));
        connectionRecord.f9725g.put(str, arrayList);
        n(str, connectionRecord, bundle, null);
        this.f9716f = connectionRecord;
        k(str, bundle);
        this.f9716f = null;
    }

    List b(List list, Bundle bundle) {
        if (list == null) {
            return null;
        }
        int i11 = bundle.getInt("android.media.browse.extra.PAGE", -1);
        int i12 = bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1);
        if (i11 == -1 && i12 == -1) {
            return list;
        }
        int i13 = i12 * i11;
        int size = i13 + i12;
        if (i11 < 0 || i12 < 1 || i13 >= list.size()) {
            return Collections.emptyList();
        }
        if (size > list.size()) {
            size = list.size();
        }
        return list.subList(i13, size);
    }

    void c(Message message) {
        Bundle data = message.getData();
        switch (message.what) {
            case 1:
                Bundle bundle = data.getBundle("data_root_hints");
                MediaSessionCompat.a(bundle);
                this.f9712b.b(data.getString("data_package_name"), data.getInt("data_calling_pid"), data.getInt("data_calling_uid"), bundle, new n(message.replyTo));
                break;
            case 2:
                this.f9712b.c(new n(message.replyTo));
                break;
            case 3:
                Bundle bundle2 = data.getBundle("data_options");
                MediaSessionCompat.a(bundle2);
                this.f9712b.a(data.getString("data_media_item_id"), androidx.core.app.f.a(data, "data_callback_token"), bundle2, new n(message.replyTo));
                break;
            case 4:
                this.f9712b.f(data.getString("data_media_item_id"), androidx.core.app.f.a(data, "data_callback_token"), new n(message.replyTo));
                break;
            case 5:
                this.f9712b.d(data.getString("data_media_item_id"), (ResultReceiver) data.getParcelable("data_result_receiver"), new n(message.replyTo));
                break;
            case 6:
                Bundle bundle3 = data.getBundle("data_root_hints");
                MediaSessionCompat.a(bundle3);
                this.f9712b.e(new n(message.replyTo), data.getString("data_package_name"), data.getInt("data_calling_pid"), data.getInt("data_calling_uid"), bundle3);
                break;
            case 7:
                this.f9712b.i(new n(message.replyTo));
                break;
            case 8:
                Bundle bundle4 = data.getBundle("data_search_extras");
                MediaSessionCompat.a(bundle4);
                this.f9712b.g(data.getString("data_search_query"), bundle4, (ResultReceiver) data.getParcelable("data_result_receiver"), new n(message.replyTo));
                break;
            case 9:
                Bundle bundle5 = data.getBundle("data_custom_action_extras");
                MediaSessionCompat.a(bundle5);
                this.f9712b.h(data.getString("data_custom_action"), bundle5, (ResultReceiver) data.getParcelable("data_result_receiver"), new n(message.replyTo));
                break;
            default:
                Log.w("MBServiceCompat", "Unhandled message: " + message + "\n  Service version: 2\n  Client version: " + message.arg1);
                break;
        }
    }

    boolean d(String str, int i11) {
        if (str == null) {
            return false;
        }
        for (String str2 : getPackageManager().getPackagesForUid(i11)) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.app.Service
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public void e(String str, Bundle bundle, k kVar) {
        kVar.e(null);
    }

    public abstract e f(String str, int i11, Bundle bundle);

    public abstract void g(String str, k kVar);

    public void h(String str, k kVar, Bundle bundle) {
        kVar.g(1);
        g(str, kVar);
    }

    public void i(String str, k kVar) {
        kVar.g(2);
        kVar.f(null);
    }

    public void j(String str, Bundle bundle, k kVar) {
        kVar.g(4);
        kVar.f(null);
    }

    public void k(String str, Bundle bundle) {
    }

    public void l(String str) {
    }

    void m(String str, Bundle bundle, ConnectionRecord connectionRecord, ResultReceiver resultReceiver) {
        d dVar = new d(str, resultReceiver);
        this.f9716f = connectionRecord;
        e(str, bundle, dVar);
        this.f9716f = null;
        if (dVar.b()) {
            return;
        }
        throw new IllegalStateException("onCustomAction must call detach() or sendResult() or sendError() before returning for action=" + str + " extras=" + bundle);
    }

    void n(String str, ConnectionRecord connectionRecord, Bundle bundle, Bundle bundle2) {
        a aVar = new a(str, connectionRecord, str, bundle, bundle2);
        this.f9716f = connectionRecord;
        if (bundle == null) {
            g(str, aVar);
        } else {
            h(str, aVar, bundle);
        }
        this.f9716f = null;
        if (aVar.b()) {
            return;
        }
        throw new IllegalStateException("onLoadChildren must call detach() or sendResult() before returning for package=" + connectionRecord.f9719a + " id=" + str);
    }

    void o(String str, ConnectionRecord connectionRecord, ResultReceiver resultReceiver) {
        b bVar = new b(str, resultReceiver);
        this.f9716f = connectionRecord;
        i(str, bVar);
        this.f9716f = null;
        if (bVar.b()) {
            return;
        }
        throw new IllegalStateException("onLoadItem must call detach() or sendResult() before returning for id=" + str);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f9711a.b(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 28) {
            this.f9711a = new i();
        } else if (i11 >= 26) {
            this.f9711a = new h();
        } else {
            this.f9711a = new g();
        }
        this.f9711a.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.f9717g.b();
    }

    void p(String str, Bundle bundle, ConnectionRecord connectionRecord, ResultReceiver resultReceiver) {
        c cVar = new c(str, resultReceiver);
        this.f9716f = connectionRecord;
        j(str, bundle, cVar);
        this.f9716f = null;
        if (cVar.b()) {
            return;
        }
        throw new IllegalStateException("onSearch must call detach() or sendResult() before returning for query=" + str);
    }

    boolean q(String str, ConnectionRecord connectionRecord, IBinder iBinder) {
        boolean z10 = false;
        try {
            if (iBinder != null) {
                List list = (List) connectionRecord.f9725g.get(str);
                if (list != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        if (iBinder == ((androidx.core.util.e) it.next()).f8267a) {
                            it.remove();
                            z10 = true;
                        }
                    }
                    if (list.size() == 0) {
                        connectionRecord.f9725g.remove(str);
                    }
                }
            } else if (connectionRecord.f9725g.remove(str) != null) {
                z10 = true;
            }
            this.f9716f = connectionRecord;
            l(str);
            this.f9716f = null;
            return z10;
        } catch (Throwable th2) {
            this.f9716f = connectionRecord;
            l(str);
            this.f9716f = null;
            throw th2;
        }
    }

    public void r(MediaSessionCompat.Token token) {
        if (token == null) {
            throw new IllegalArgumentException("Session token may not be null");
        }
        if (this.f9718h != null) {
            throw new IllegalStateException("The session token has already been set");
        }
        this.f9718h = token;
        this.f9711a.a(token);
    }
}
