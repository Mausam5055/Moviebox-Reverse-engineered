package android.support.v4.media;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.media.MediaDescription;
import android.media.browse.MediaBrowser;
import android.os.BadParcelableException;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class MediaBrowserCompat {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final boolean f722b = Log.isLoggable("MediaBrowserCompat", 3);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f723a;

    private static class CustomActionResultReceiver extends ResultReceiver {
        private final String mAction;
        private final d mCallback;
        private final Bundle mExtras;

        @Override // android.support.v4.os.ResultReceiver
        protected void onReceiveResult(int i11, Bundle bundle) {
            if (this.mCallback == null) {
                return;
            }
            MediaSessionCompat.a(bundle);
            if (i11 == -1) {
                this.mCallback.a(this.mAction, this.mExtras, bundle);
                return;
            }
            if (i11 == 0) {
                this.mCallback.c(this.mAction, this.mExtras, bundle);
                return;
            }
            if (i11 == 1) {
                this.mCallback.b(this.mAction, this.mExtras, bundle);
                return;
            }
            Log.w("MediaBrowserCompat", "Unknown result code: " + i11 + " (extras=" + this.mExtras + ", resultData=" + bundle + ")");
        }
    }

    private static class ItemReceiver extends ResultReceiver {
        private final e mCallback;
        private final String mMediaId;

        @Override // android.support.v4.os.ResultReceiver
        protected void onReceiveResult(int i11, Bundle bundle) {
            if (bundle != null) {
                bundle = MediaSessionCompat.j(bundle);
            }
            if (i11 != 0 || bundle == null || !bundle.containsKey("media_item")) {
                this.mCallback.a(this.mMediaId);
                return;
            }
            Parcelable parcelable = bundle.getParcelable("media_item");
            if (parcelable == null || (parcelable instanceof MediaItem)) {
                this.mCallback.b((MediaItem) parcelable);
            } else {
                this.mCallback.a(this.mMediaId);
            }
        }
    }

    static class MediaBrowserImplBase implements f, j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Context f724a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final ComponentName f725b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final c f726c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final Bundle f727d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final b f728e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f729f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        MediaServiceConnection f730g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        l f731h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        Messenger f732i;

        /* JADX INFO: renamed from: android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$1, reason: invalid class name */
        class AnonymousClass1 implements Runnable {
            final /* synthetic */ MediaBrowserImplBase this$0;

            AnonymousClass1(MediaBrowserImplBase mediaBrowserImplBase) {
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean zBindService;
                MediaBrowserImplBase mediaBrowserImplBase = this.this$0;
                if (mediaBrowserImplBase.f729f == 0) {
                    return;
                }
                mediaBrowserImplBase.f729f = 2;
                if (MediaBrowserCompat.f722b && mediaBrowserImplBase.f730g != null) {
                    throw new RuntimeException("mServiceConnection should be null. Instead it is " + this.this$0.f730g);
                }
                if (mediaBrowserImplBase.f731h != null) {
                    throw new RuntimeException("mServiceBinderWrapper should be null. Instead it is " + this.this$0.f731h);
                }
                if (mediaBrowserImplBase.f732i != null) {
                    throw new RuntimeException("mCallbacksMessenger should be null. Instead it is " + this.this$0.f732i);
                }
                Intent intent = new Intent("android.media.browse.MediaBrowserService");
                intent.setComponent(this.this$0.f725b);
                MediaBrowserImplBase mediaBrowserImplBase2 = this.this$0;
                mediaBrowserImplBase2.f730g = new MediaServiceConnection(mediaBrowserImplBase2);
                try {
                    MediaBrowserImplBase mediaBrowserImplBase3 = this.this$0;
                    zBindService = mediaBrowserImplBase3.f724a.bindService(intent, mediaBrowserImplBase3.f730g, 1);
                } catch (Exception unused) {
                    Log.e("MediaBrowserCompat", "Failed binding to service " + this.this$0.f725b);
                    zBindService = false;
                }
                if (!zBindService) {
                    this.this$0.f();
                    this.this$0.f726c.b();
                }
                if (MediaBrowserCompat.f722b) {
                    this.this$0.d();
                }
            }
        }

        /* JADX INFO: renamed from: android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$2, reason: invalid class name */
        class AnonymousClass2 implements Runnable {
            final /* synthetic */ MediaBrowserImplBase this$0;

            AnonymousClass2(MediaBrowserImplBase mediaBrowserImplBase) {
            }

            @Override // java.lang.Runnable
            public void run() {
                MediaBrowserImplBase mediaBrowserImplBase = this.this$0;
                Messenger messenger = mediaBrowserImplBase.f732i;
                if (messenger != null) {
                    try {
                        mediaBrowserImplBase.f731h.c(messenger);
                    } catch (RemoteException unused) {
                        Log.w("MediaBrowserCompat", "RemoteException during connect for " + this.this$0.f725b);
                    }
                }
                MediaBrowserImplBase mediaBrowserImplBase2 = this.this$0;
                int i11 = mediaBrowserImplBase2.f729f;
                mediaBrowserImplBase2.f();
                if (i11 != 0) {
                    this.this$0.f729f = i11;
                }
                if (MediaBrowserCompat.f722b) {
                    this.this$0.d();
                }
            }
        }

        /* JADX INFO: renamed from: android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$3, reason: invalid class name */
        class AnonymousClass3 implements Runnable {
            final /* synthetic */ MediaBrowserImplBase this$0;
            final /* synthetic */ e val$cb;
            final /* synthetic */ String val$mediaId;

            AnonymousClass3(MediaBrowserImplBase mediaBrowserImplBase, e eVar, String str) {
                this.val$cb = eVar;
                this.val$mediaId = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.val$cb.a(this.val$mediaId);
            }
        }

        /* JADX INFO: renamed from: android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$4, reason: invalid class name */
        class AnonymousClass4 implements Runnable {
            final /* synthetic */ MediaBrowserImplBase this$0;
            final /* synthetic */ e val$cb;
            final /* synthetic */ String val$mediaId;

            AnonymousClass4(MediaBrowserImplBase mediaBrowserImplBase, e eVar, String str) {
                this.val$cb = eVar;
                this.val$mediaId = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.val$cb.a(this.val$mediaId);
            }
        }

        /* JADX INFO: renamed from: android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$5, reason: invalid class name */
        class AnonymousClass5 implements Runnable {
            final /* synthetic */ MediaBrowserImplBase this$0;
            final /* synthetic */ k val$callback;
            final /* synthetic */ Bundle val$extras;
            final /* synthetic */ String val$query;

            AnonymousClass5(MediaBrowserImplBase mediaBrowserImplBase, k kVar, String str, Bundle bundle) {
                this.val$callback = kVar;
                this.val$query = str;
                this.val$extras = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.val$callback.a(this.val$query, this.val$extras);
            }
        }

        /* JADX INFO: renamed from: android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$6, reason: invalid class name */
        class AnonymousClass6 implements Runnable {
            final /* synthetic */ MediaBrowserImplBase this$0;
            final /* synthetic */ String val$action;
            final /* synthetic */ d val$callback;
            final /* synthetic */ Bundle val$extras;

            AnonymousClass6(MediaBrowserImplBase mediaBrowserImplBase, d dVar, String str, Bundle bundle) {
                this.val$callback = dVar;
                this.val$action = str;
                this.val$extras = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.val$callback.a(this.val$action, this.val$extras, null);
            }
        }

        private class MediaServiceConnection implements ServiceConnection {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ MediaBrowserImplBase f733a;

            MediaServiceConnection(MediaBrowserImplBase mediaBrowserImplBase) {
            }

            private void b(Runnable runnable) {
                if (Thread.currentThread() == this.f733a.f728e.getLooper().getThread()) {
                    runnable.run();
                } else {
                    this.f733a.f728e.post(runnable);
                }
            }

            boolean a(String str) {
                int i11;
                MediaBrowserImplBase mediaBrowserImplBase = this.f733a;
                if (mediaBrowserImplBase.f730g == this && (i11 = mediaBrowserImplBase.f729f) != 0 && i11 != 1) {
                    return true;
                }
                int i12 = mediaBrowserImplBase.f729f;
                if (i12 == 0 || i12 == 1) {
                    return false;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append(" for ");
                sb2.append(this.f733a.f725b);
                sb2.append(" with mServiceConnection=");
                sb2.append(this.f733a.f730g);
                sb2.append(" this=");
                sb2.append(this);
                return false;
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(final ComponentName componentName, final IBinder iBinder) {
                b(new Runnable() { // from class: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.1
                    @Override // java.lang.Runnable
                    public void run() {
                        boolean z10 = MediaBrowserCompat.f722b;
                        if (z10) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("MediaServiceConnection.onServiceConnected name=");
                            sb2.append(componentName);
                            sb2.append(" binder=");
                            sb2.append(iBinder);
                            MediaServiceConnection.this.f733a.d();
                        }
                        if (MediaServiceConnection.this.a("onServiceConnected")) {
                            MediaBrowserImplBase mediaBrowserImplBase = MediaServiceConnection.this.f733a;
                            mediaBrowserImplBase.f731h = new l(iBinder, mediaBrowserImplBase.f727d);
                            MediaServiceConnection.this.f733a.f732i = new Messenger(MediaServiceConnection.this.f733a.f728e);
                            MediaBrowserImplBase mediaBrowserImplBase2 = MediaServiceConnection.this.f733a;
                            mediaBrowserImplBase2.f728e.a(mediaBrowserImplBase2.f732i);
                            MediaServiceConnection.this.f733a.f729f = 2;
                            if (z10) {
                                try {
                                    MediaServiceConnection.this.f733a.d();
                                } catch (RemoteException unused) {
                                    Log.w("MediaBrowserCompat", "RemoteException during connect for " + MediaServiceConnection.this.f733a.f725b);
                                    if (MediaBrowserCompat.f722b) {
                                        MediaServiceConnection.this.f733a.d();
                                        return;
                                    }
                                    return;
                                }
                            }
                            MediaBrowserImplBase mediaBrowserImplBase3 = MediaServiceConnection.this.f733a;
                            mediaBrowserImplBase3.f731h.b(mediaBrowserImplBase3.f724a, mediaBrowserImplBase3.f732i);
                        }
                    }
                });
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(final ComponentName componentName) {
                b(new Runnable() { // from class: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (MediaBrowserCompat.f722b) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("MediaServiceConnection.onServiceDisconnected name=");
                            sb2.append(componentName);
                            sb2.append(" this=");
                            sb2.append(this);
                            sb2.append(" mServiceConnection=");
                            sb2.append(MediaServiceConnection.this.f733a.f730g);
                            MediaServiceConnection.this.f733a.d();
                        }
                        if (MediaServiceConnection.this.a("onServiceDisconnected")) {
                            MediaBrowserImplBase mediaBrowserImplBase = MediaServiceConnection.this.f733a;
                            mediaBrowserImplBase.f731h = null;
                            mediaBrowserImplBase.f732i = null;
                            mediaBrowserImplBase.f728e.a(null);
                            MediaBrowserImplBase mediaBrowserImplBase2 = MediaServiceConnection.this.f733a;
                            mediaBrowserImplBase2.f729f = 4;
                            mediaBrowserImplBase2.f726c.c();
                        }
                    }
                });
            }
        }

        abstract void d();

        abstract void f();
    }

    @SuppressLint({"BanParcelableUsage"})
    public static class MediaItem implements Parcelable {
        public static final Parcelable.Creator<MediaItem> CREATOR = new a();
        public static final int FLAG_BROWSABLE = 1;
        public static final int FLAG_PLAYABLE = 2;
        private final MediaDescriptionCompat mDescription;
        private final int mFlags;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MediaItem createFromParcel(Parcel parcel) {
                return new MediaItem(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public MediaItem[] newArray(int i11) {
                return new MediaItem[i11];
            }
        }

        MediaItem(Parcel parcel) {
            this.mFlags = parcel.readInt();
            this.mDescription = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        }

        public MediaItem(@NonNull MediaDescriptionCompat mediaDescriptionCompat, int i11) {
            if (mediaDescriptionCompat == null) {
                throw new IllegalArgumentException("description cannot be null");
            }
            if (TextUtils.isEmpty(mediaDescriptionCompat.getMediaId())) {
                throw new IllegalArgumentException("description must have a non-empty media id");
            }
            this.mFlags = i11;
            this.mDescription = mediaDescriptionCompat;
        }

        public static MediaItem fromMediaItem(Object obj) {
            if (obj == null) {
                return null;
            }
            MediaBrowser.MediaItem mediaItem = (MediaBrowser.MediaItem) obj;
            return new MediaItem(MediaDescriptionCompat.fromMediaDescription(a.a(mediaItem)), a.b(mediaItem));
        }

        public static List<MediaItem> fromMediaItemList(List<?> list) {
            if (list == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList(list.size());
            Iterator<?> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(fromMediaItem(it.next()));
            }
            return arrayList;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @NonNull
        public MediaDescriptionCompat getDescription() {
            return this.mDescription;
        }

        public int getFlags() {
            return this.mFlags;
        }

        @Nullable
        public String getMediaId() {
            return this.mDescription.getMediaId();
        }

        public boolean isBrowsable() {
            return (this.mFlags & 1) != 0;
        }

        public boolean isPlayable() {
            return (this.mFlags & 2) != 0;
        }

        @NonNull
        public String toString() {
            return "MediaItem{mFlags=" + this.mFlags + ", mDescription=" + this.mDescription + '}';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            parcel.writeInt(this.mFlags);
            this.mDescription.writeToParcel(parcel, i11);
        }
    }

    private static class SearchResultReceiver extends ResultReceiver {
        private final k mCallback;
        private final Bundle mExtras;
        private final String mQuery;

        @Override // android.support.v4.os.ResultReceiver
        protected void onReceiveResult(int i11, Bundle bundle) {
            if (bundle != null) {
                bundle = MediaSessionCompat.j(bundle);
            }
            if (i11 != 0 || bundle == null || !bundle.containsKey("search_results")) {
                this.mCallback.a(this.mQuery, this.mExtras);
                return;
            }
            Parcelable[] parcelableArray = bundle.getParcelableArray("search_results");
            if (parcelableArray == null) {
                this.mCallback.a(this.mQuery, this.mExtras);
                return;
            }
            ArrayList arrayList = new ArrayList(parcelableArray.length);
            for (Parcelable parcelable : parcelableArray) {
                arrayList.add((MediaItem) parcelable);
            }
            this.mCallback.b(this.mQuery, this.mExtras, arrayList);
        }
    }

    private static class a {
        static MediaDescription a(MediaBrowser.MediaItem mediaItem) {
            return mediaItem.getDescription();
        }

        static int b(MediaBrowser.MediaItem mediaItem) {
            return mediaItem.getFlags();
        }
    }

    private static class b extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WeakReference f734a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private WeakReference f735b;

        b(j jVar) {
            this.f734a = new WeakReference(jVar);
        }

        void a(Messenger messenger) {
            this.f735b = new WeakReference(messenger);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            WeakReference weakReference = this.f735b;
            if (weakReference == null || weakReference.get() == null || this.f734a.get() == null) {
                return;
            }
            Bundle data = message.getData();
            MediaSessionCompat.a(data);
            j jVar = (j) this.f734a.get();
            Messenger messenger = (Messenger) this.f735b.get();
            try {
                int i11 = message.what;
                if (i11 == 1) {
                    Bundle bundle = data.getBundle("data_root_hints");
                    MediaSessionCompat.a(bundle);
                    jVar.e(messenger, data.getString("data_media_item_id"), (MediaSessionCompat.Token) data.getParcelable("data_media_session_token"), bundle);
                } else if (i11 == 2) {
                    jVar.h(messenger);
                } else if (i11 != 3) {
                    Log.w("MediaBrowserCompat", "Unhandled message: " + message + "\n  Client version: 1\n  Service version: " + message.arg1);
                } else {
                    Bundle bundle2 = data.getBundle("data_options");
                    MediaSessionCompat.a(bundle2);
                    Bundle bundle3 = data.getBundle("data_notify_children_changed_options");
                    MediaSessionCompat.a(bundle3);
                    jVar.b(messenger, data.getString("data_media_item_id"), data.getParcelableArrayList("data_media_item_list"), bundle2, bundle3);
                }
            } catch (BadParcelableException unused) {
                Log.e("MediaBrowserCompat", "Could not unparcel the data.");
                if (message.what == 1) {
                    jVar.h(messenger);
                }
            }
        }
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final MediaBrowser.ConnectionCallback f736a = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        b f737b;

        private class a extends MediaBrowser.ConnectionCallback {
            a() {
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public void onConnected() {
                b bVar = c.this.f737b;
                if (bVar != null) {
                    bVar.onConnected();
                }
                c.this.a();
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public void onConnectionFailed() {
                b bVar = c.this.f737b;
                if (bVar != null) {
                    bVar.d();
                }
                c.this.b();
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public void onConnectionSuspended() {
                b bVar = c.this.f737b;
                if (bVar != null) {
                    bVar.f();
                }
                c.this.c();
            }
        }

        interface b {
            void d();

            void f();

            void onConnected();
        }

        public void a() {
        }

        public void b() {
        }

        public void c() {
        }

        void d(b bVar) {
            this.f737b = bVar;
        }
    }

    public static abstract class d {
        public void a(String str, Bundle bundle, Bundle bundle2) {
        }

        public void b(String str, Bundle bundle, Bundle bundle2) {
        }

        public void c(String str, Bundle bundle, Bundle bundle2) {
        }
    }

    public static abstract class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final MediaBrowser.ItemCallback f739a = new a();

        private class a extends MediaBrowser.ItemCallback {
            a() {
            }

            @Override // android.media.browse.MediaBrowser.ItemCallback
            public void onError(String str) {
                e.this.a(str);
            }

            @Override // android.media.browse.MediaBrowser.ItemCallback
            public void onItemLoaded(MediaBrowser.MediaItem mediaItem) {
                e.this.b(MediaItem.fromMediaItem(mediaItem));
            }
        }

        public void a(String str) {
        }

        public void b(MediaItem mediaItem) {
        }
    }

    interface f {
        MediaSessionCompat.Token a();

        void c();

        void disconnect();

        void g(String str, Bundle bundle, n nVar);

        String getRoot();

        void i(String str, n nVar);

        boolean isConnected();
    }

    static class g implements f, j, c.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Context f741a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        protected final MediaBrowser f742b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        protected final Bundle f743c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        protected final b f744d = new b(this);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final androidx.collection.a f745e = new androidx.collection.a();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        protected int f746f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        protected l f747g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        protected Messenger f748h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private MediaSessionCompat.Token f749i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private Bundle f750j;

        g(Context context, ComponentName componentName, c cVar, Bundle bundle) {
            this.f741a = context;
            Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
            this.f743c = bundle2;
            bundle2.putInt("extra_client_version", 1);
            bundle2.putInt("extra_calling_pid", Process.myPid());
            cVar.d(this);
            this.f742b = new MediaBrowser(context, componentName, cVar.f736a, bundle2);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.f
        public MediaSessionCompat.Token a() {
            if (this.f749i == null) {
                this.f749i = MediaSessionCompat.Token.fromToken(this.f742b.getSessionToken());
            }
            return this.f749i;
        }

        @Override // android.support.v4.media.MediaBrowserCompat.j
        public void b(Messenger messenger, String str, List list, Bundle bundle, Bundle bundle2) {
            if (this.f748h != messenger) {
                return;
            }
            m mVar = (m) this.f745e.get(str);
            if (mVar == null) {
                if (MediaBrowserCompat.f722b) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("onLoadChildren for id that isn't subscribed id=");
                    sb2.append(str);
                    return;
                }
                return;
            }
            n nVarA = mVar.a(bundle);
            if (nVarA != null) {
                if (bundle == null) {
                    if (list == null) {
                        nVarA.c(str);
                        return;
                    }
                    this.f750j = bundle2;
                    nVarA.a(str, list);
                    this.f750j = null;
                    return;
                }
                if (list == null) {
                    nVarA.d(str, bundle);
                    return;
                }
                this.f750j = bundle2;
                nVarA.b(str, list, bundle);
                this.f750j = null;
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.f
        public void c() {
            this.f742b.connect();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.c.b
        public void d() {
        }

        @Override // android.support.v4.media.MediaBrowserCompat.f
        public void disconnect() {
            Messenger messenger;
            l lVar = this.f747g;
            if (lVar != null && (messenger = this.f748h) != null) {
                try {
                    lVar.g(messenger);
                } catch (RemoteException unused) {
                }
            }
            this.f742b.disconnect();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.j
        public void e(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle) {
        }

        @Override // android.support.v4.media.MediaBrowserCompat.c.b
        public void f() {
            this.f747g = null;
            this.f748h = null;
            this.f749i = null;
            this.f744d.a(null);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.f
        public void g(String str, Bundle bundle, n nVar) {
            m mVar = (m) this.f745e.get(str);
            if (mVar == null) {
                mVar = new m();
                this.f745e.put(str, mVar);
            }
            nVar.e(mVar);
            Bundle bundle2 = bundle == null ? null : new Bundle(bundle);
            mVar.e(bundle2, nVar);
            l lVar = this.f747g;
            if (lVar == null) {
                this.f742b.subscribe(str, nVar.f755a);
                return;
            }
            try {
                lVar.a(str, nVar.f756b, bundle2, this.f748h);
            } catch (RemoteException unused) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Remote error subscribing media item: ");
                sb2.append(str);
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.f
        public String getRoot() {
            return this.f742b.getRoot();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.j
        public void h(Messenger messenger) {
        }

        @Override // android.support.v4.media.MediaBrowserCompat.f
        public void i(String str, n nVar) {
            m mVar = (m) this.f745e.get(str);
            if (mVar == null) {
                return;
            }
            l lVar = this.f747g;
            if (lVar != null) {
                try {
                    if (nVar == null) {
                        lVar.e(str, null, this.f748h);
                    } else {
                        List listB = mVar.b();
                        List listC = mVar.c();
                        for (int size = listB.size() - 1; size >= 0; size--) {
                            if (listB.get(size) == nVar) {
                                this.f747g.e(str, nVar.f756b, this.f748h);
                                listB.remove(size);
                                listC.remove(size);
                            }
                        }
                    }
                } catch (RemoteException unused) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("removeSubscription failed with RemoteException parentId=");
                    sb2.append(str);
                }
            } else if (nVar == null) {
                this.f742b.unsubscribe(str);
            } else {
                List listB2 = mVar.b();
                List listC2 = mVar.c();
                for (int size2 = listB2.size() - 1; size2 >= 0; size2--) {
                    if (listB2.get(size2) == nVar) {
                        listB2.remove(size2);
                        listC2.remove(size2);
                    }
                }
                if (listB2.size() == 0) {
                    this.f742b.unsubscribe(str);
                }
            }
            if (mVar.d() || nVar == null) {
                this.f745e.remove(str);
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.f
        public boolean isConnected() {
            return this.f742b.isConnected();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.c.b
        public void onConnected() {
            try {
                Bundle extras = this.f742b.getExtras();
                if (extras == null) {
                    return;
                }
                this.f746f = extras.getInt("extra_service_version", 0);
                IBinder iBinderA = androidx.core.app.f.a(extras, "extra_messenger");
                if (iBinderA != null) {
                    this.f747g = new l(iBinderA, this.f743c);
                    Messenger messenger = new Messenger(this.f744d);
                    this.f748h = messenger;
                    this.f744d.a(messenger);
                    try {
                        this.f747g.d(this.f741a, this.f748h);
                    } catch (RemoteException unused) {
                    }
                }
                android.support.v4.media.session.b bVarY0 = android.support.v4.media.session.b.a.Y0(androidx.core.app.f.a(extras, "extra_session_binder"));
                if (bVarY0 != null) {
                    this.f749i = MediaSessionCompat.Token.fromToken(this.f742b.getSessionToken(), bVarY0);
                }
            } catch (IllegalStateException e11) {
                Log.e("MediaBrowserCompat", "Unexpected IllegalStateException", e11);
            }
        }
    }

    static class h extends g {
        h(Context context, ComponentName componentName, c cVar, Bundle bundle) {
            super(context, componentName, cVar, bundle);
        }
    }

    static class i extends h {
        i(Context context, ComponentName componentName, c cVar, Bundle bundle) {
            super(context, componentName, cVar, bundle);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.g, android.support.v4.media.MediaBrowserCompat.f
        public void g(String str, Bundle bundle, n nVar) {
            if (this.f747g != null && this.f746f >= 2) {
                super.g(str, bundle, nVar);
            } else if (bundle == null) {
                this.f742b.subscribe(str, nVar.f755a);
            } else {
                this.f742b.subscribe(str, bundle, nVar.f755a);
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.g, android.support.v4.media.MediaBrowserCompat.f
        public void i(String str, n nVar) {
            if (this.f747g != null && this.f746f >= 2) {
                super.i(str, nVar);
            } else if (nVar == null) {
                this.f742b.unsubscribe(str);
            } else {
                this.f742b.unsubscribe(str, nVar.f755a);
            }
        }
    }

    interface j {
        void b(Messenger messenger, String str, List list, Bundle bundle, Bundle bundle2);

        void e(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle);

        void h(Messenger messenger);
    }

    public static abstract class k {
        public void a(String str, Bundle bundle) {
        }

        public void b(String str, Bundle bundle, List list) {
        }
    }

    private static class l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Messenger f751a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Bundle f752b;

        public l(IBinder iBinder, Bundle bundle) {
            this.f751a = new Messenger(iBinder);
            this.f752b = bundle;
        }

        private void f(int i11, Bundle bundle, Messenger messenger) throws RemoteException {
            Message messageObtain = Message.obtain();
            messageObtain.what = i11;
            messageObtain.arg1 = 1;
            messageObtain.setData(bundle);
            messageObtain.replyTo = messenger;
            this.f751a.send(messageObtain);
        }

        void a(String str, IBinder iBinder, Bundle bundle, Messenger messenger) throws RemoteException {
            Bundle bundle2 = new Bundle();
            bundle2.putString("data_media_item_id", str);
            androidx.core.app.f.b(bundle2, "data_callback_token", iBinder);
            bundle2.putBundle("data_options", bundle);
            f(3, bundle2, messenger);
        }

        void b(Context context, Messenger messenger) throws RemoteException {
            Bundle bundle = new Bundle();
            bundle.putString("data_package_name", context.getPackageName());
            bundle.putInt("data_calling_pid", Process.myPid());
            bundle.putBundle("data_root_hints", this.f752b);
            f(1, bundle, messenger);
        }

        void c(Messenger messenger) throws RemoteException {
            f(2, null, messenger);
        }

        void d(Context context, Messenger messenger) throws RemoteException {
            Bundle bundle = new Bundle();
            bundle.putString("data_package_name", context.getPackageName());
            bundle.putInt("data_calling_pid", Process.myPid());
            bundle.putBundle("data_root_hints", this.f752b);
            f(6, bundle, messenger);
        }

        void e(String str, IBinder iBinder, Messenger messenger) throws RemoteException {
            Bundle bundle = new Bundle();
            bundle.putString("data_media_item_id", str);
            androidx.core.app.f.b(bundle, "data_callback_token", iBinder);
            f(4, bundle, messenger);
        }

        void g(Messenger messenger) throws RemoteException {
            f(7, null, messenger);
        }
    }

    private static class m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f753a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final List f754b = new ArrayList();

        public n a(Bundle bundle) {
            for (int i11 = 0; i11 < this.f754b.size(); i11++) {
                if (androidx.media.a.a((Bundle) this.f754b.get(i11), bundle)) {
                    return (n) this.f753a.get(i11);
                }
            }
            return null;
        }

        public List b() {
            return this.f753a;
        }

        public List c() {
            return this.f754b;
        }

        public boolean d() {
            return this.f753a.isEmpty();
        }

        public void e(Bundle bundle, n nVar) {
            for (int i11 = 0; i11 < this.f754b.size(); i11++) {
                if (androidx.media.a.a((Bundle) this.f754b.get(i11), bundle)) {
                    this.f753a.set(i11, nVar);
                    return;
                }
            }
            this.f753a.add(nVar);
            this.f754b.add(bundle);
        }
    }

    public static abstract class n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final MediaBrowser.SubscriptionCallback f755a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final IBinder f756b = new Binder();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        WeakReference f757c;

        private class a extends MediaBrowser.SubscriptionCallback {
            a() {
            }

            List a(List list, Bundle bundle) {
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

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onChildrenLoaded(String str, List list) {
                WeakReference weakReference = n.this.f757c;
                m mVar = weakReference == null ? null : (m) weakReference.get();
                if (mVar == null) {
                    n.this.a(str, MediaItem.fromMediaItemList(list));
                    return;
                }
                List<MediaItem> listFromMediaItemList = MediaItem.fromMediaItemList(list);
                List listB = mVar.b();
                List listC = mVar.c();
                for (int i11 = 0; i11 < listB.size(); i11++) {
                    Bundle bundle = (Bundle) listC.get(i11);
                    if (bundle == null) {
                        n.this.a(str, listFromMediaItemList);
                    } else {
                        n.this.b(str, a(listFromMediaItemList, bundle), bundle);
                    }
                }
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onError(String str) {
                n.this.c(str);
            }
        }

        private class b extends a {
            b() {
                super();
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onChildrenLoaded(String str, List list, Bundle bundle) {
                MediaSessionCompat.a(bundle);
                n.this.b(str, MediaItem.fromMediaItemList(list), bundle);
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onError(String str, Bundle bundle) {
                MediaSessionCompat.a(bundle);
                n.this.d(str, bundle);
            }
        }

        public n() {
            if (Build.VERSION.SDK_INT >= 26) {
                this.f755a = new b();
            } else {
                this.f755a = new a();
            }
        }

        public void a(String str, List list) {
        }

        public void b(String str, List list, Bundle bundle) {
        }

        public void c(String str) {
        }

        public void d(String str, Bundle bundle) {
        }

        void e(m mVar) {
            this.f757c = new WeakReference(mVar);
        }
    }

    public MediaBrowserCompat(Context context, ComponentName componentName, c cVar, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f723a = new i(context, componentName, cVar, bundle);
        } else {
            this.f723a = new h(context, componentName, cVar, bundle);
        }
    }

    public void a() {
        this.f723a.c();
    }

    public void b() {
        this.f723a.disconnect();
    }

    public String c() {
        return this.f723a.getRoot();
    }

    public MediaSessionCompat.Token d() {
        return this.f723a.a();
    }

    public boolean e() {
        return this.f723a.isConnected();
    }

    public void f(String str, n nVar) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("parentId is empty");
        }
        if (nVar == null) {
            throw new IllegalArgumentException("callback is null");
        }
        this.f723a.g(str, null, nVar);
    }

    public void g(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("parentId is empty");
        }
        this.f723a.i(str, null);
    }
}
