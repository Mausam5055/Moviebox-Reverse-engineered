package android.support.v4.media.session;

import android.content.Context;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.media.MediaMetadataCompat;
import android.util.Log;
import android.view.KeyEvent;
import androidx.media.AudioAttributesCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class MediaControllerCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f769a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final MediaSessionCompat.Token f770b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set f771c;

    static class MediaControllerImplApi21 implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected final MediaController f772a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Object f773b = new Object();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final List f774c = new ArrayList();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private HashMap f775d = new HashMap();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final MediaSessionCompat.Token f776e;

        private static class ExtraBinderRequestResultReceiver extends ResultReceiver {
            private WeakReference<MediaControllerImplApi21> mMediaControllerImpl;

            ExtraBinderRequestResultReceiver(MediaControllerImplApi21 mediaControllerImplApi21) {
                super(null);
                this.mMediaControllerImpl = new WeakReference<>(mediaControllerImplApi21);
            }

            @Override // android.os.ResultReceiver
            protected void onReceiveResult(int i11, Bundle bundle) {
                MediaControllerImplApi21 mediaControllerImplApi21 = this.mMediaControllerImpl.get();
                if (mediaControllerImplApi21 == null || bundle == null) {
                    return;
                }
                synchronized (mediaControllerImplApi21.f773b) {
                    mediaControllerImplApi21.f776e.setExtraBinder(android.support.v4.media.session.b.a.Y0(androidx.core.app.f.a(bundle, "android.support.v4.media.session.EXTRA_BINDER")));
                    mediaControllerImplApi21.f776e.setSession2Token(androidx.versionedparcelable.a.b(bundle, "android.support.v4.media.session.SESSION_TOKEN2"));
                    mediaControllerImplApi21.d();
                }
            }
        }

        private static class a extends a.c {
            a(a aVar) {
                super(aVar);
            }

            @Override // android.support.v4.media.session.a
            public void H() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.a
            public void J(MediaMetadataCompat mediaMetadataCompat) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.a
            public void d0(ParcelableVolumeInfo parcelableVolumeInfo) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.a
            public void o0(Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.a
            public void p(List list) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.a
            public void z0(CharSequence charSequence) {
                throw new AssertionError();
            }
        }

        MediaControllerImplApi21(Context context, MediaSessionCompat.Token token) {
            this.f776e = token;
            this.f772a = new MediaController(context, (MediaSession.Token) token.getToken());
            if (token.getExtraBinder() == null) {
                e();
            }
        }

        private void e() {
            f("android.support.v4.media.session.command.GET_EXTRA_BINDER", null, new ExtraBinderRequestResultReceiver(this));
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public e a() {
            MediaController.TransportControls transportControls = this.f772a.getTransportControls();
            int i11 = Build.VERSION.SDK_INT;
            if (i11 >= 29) {
                return new i(transportControls);
            }
            return i11 >= 24 ? new h(transportControls) : new g(transportControls);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public boolean b(KeyEvent keyEvent) {
            return this.f772a.dispatchMediaButtonEvent(keyEvent);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final void c(a aVar, Handler handler) {
            this.f772a.registerCallback(aVar.f777a, handler);
            synchronized (this.f773b) {
                if (this.f776e.getExtraBinder() != null) {
                    a aVar2 = new a(aVar);
                    this.f775d.put(aVar, aVar2);
                    aVar.f779c = aVar2;
                    try {
                        this.f776e.getExtraBinder().e0(aVar2);
                        aVar.m(13, null, null);
                    } catch (RemoteException e11) {
                        Log.e("MediaControllerCompat", "Dead object in registerCallback.", e11);
                    }
                } else {
                    aVar.f779c = null;
                    this.f774c.add(aVar);
                }
            }
        }

        void d() {
            if (this.f776e.getExtraBinder() == null) {
                return;
            }
            for (a aVar : this.f774c) {
                a aVar2 = new a(aVar);
                this.f775d.put(aVar, aVar2);
                aVar.f779c = aVar2;
                try {
                    this.f776e.getExtraBinder().e0(aVar2);
                    aVar.m(13, null, null);
                } catch (RemoteException e11) {
                    Log.e("MediaControllerCompat", "Dead object in registerCallback.", e11);
                }
            }
            this.f774c.clear();
        }

        public void f(String str, Bundle bundle, ResultReceiver resultReceiver) {
            this.f772a.sendCommand(str, bundle, resultReceiver);
        }
    }

    public static abstract class a implements IBinder.DeathRecipient {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final MediaController.Callback f777a = new C0012a(this);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        b f778b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        android.support.v4.media.session.a f779c;

        /* JADX INFO: renamed from: android.support.v4.media.session.MediaControllerCompat$a$a, reason: collision with other inner class name */
        private static class C0012a extends MediaController.Callback {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final WeakReference f780a;

            C0012a(a aVar) {
                this.f780a = new WeakReference(aVar);
            }

            @Override // android.media.session.MediaController.Callback
            public void onAudioInfoChanged(MediaController.PlaybackInfo playbackInfo) {
                a aVar = (a) this.f780a.get();
                if (aVar != null) {
                    aVar.a(new d(playbackInfo.getPlaybackType(), AudioAttributesCompat.c(playbackInfo.getAudioAttributes()), playbackInfo.getVolumeControl(), playbackInfo.getMaxVolume(), playbackInfo.getCurrentVolume()));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onExtrasChanged(Bundle bundle) {
                MediaSessionCompat.a(bundle);
                a aVar = (a) this.f780a.get();
                if (aVar != null) {
                    aVar.c(bundle);
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onMetadataChanged(MediaMetadata mediaMetadata) {
                a aVar = (a) this.f780a.get();
                if (aVar != null) {
                    aVar.d(MediaMetadataCompat.fromMediaMetadata(mediaMetadata));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onPlaybackStateChanged(PlaybackState playbackState) {
                a aVar = (a) this.f780a.get();
                if (aVar == null || aVar.f779c != null) {
                    return;
                }
                aVar.e(PlaybackStateCompat.fromPlaybackState(playbackState));
            }

            @Override // android.media.session.MediaController.Callback
            public void onQueueChanged(List list) {
                a aVar = (a) this.f780a.get();
                if (aVar != null) {
                    aVar.f(MediaSessionCompat.QueueItem.fromQueueItemList(list));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onQueueTitleChanged(CharSequence charSequence) {
                a aVar = (a) this.f780a.get();
                if (aVar != null) {
                    aVar.g(charSequence);
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onSessionDestroyed() {
                a aVar = (a) this.f780a.get();
                if (aVar != null) {
                    aVar.i();
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onSessionEvent(String str, Bundle bundle) {
                MediaSessionCompat.a(bundle);
                a aVar = (a) this.f780a.get();
                if (aVar != null) {
                    aVar.j(str, bundle);
                }
            }
        }

        private class b extends Handler {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            boolean f781a;

            b(Looper looper) {
                super(looper);
                this.f781a = false;
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (this.f781a) {
                    switch (message.what) {
                        case 1:
                            Bundle data = message.getData();
                            MediaSessionCompat.a(data);
                            a.this.j((String) message.obj, data);
                            break;
                        case 2:
                            a.this.e((PlaybackStateCompat) message.obj);
                            break;
                        case 3:
                            a.this.d((MediaMetadataCompat) message.obj);
                            break;
                        case 4:
                            a.this.a((d) message.obj);
                            break;
                        case 5:
                            a.this.f((List) message.obj);
                            break;
                        case 6:
                            a.this.g((CharSequence) message.obj);
                            break;
                        case 7:
                            Bundle bundle = (Bundle) message.obj;
                            MediaSessionCompat.a(bundle);
                            a.this.c(bundle);
                            break;
                        case 8:
                            a.this.i();
                            break;
                        case 9:
                            a.this.h(((Integer) message.obj).intValue());
                            break;
                        case 11:
                            a.this.b(((Boolean) message.obj).booleanValue());
                            break;
                        case 12:
                            a.this.l(((Integer) message.obj).intValue());
                            break;
                        case 13:
                            a.this.k();
                            break;
                    }
                }
            }
        }

        private static class c extends android.support.v4.media.session.a.AbstractBinderC0014a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final WeakReference f783a;

            c(a aVar) {
                this.f783a = new WeakReference(aVar);
            }

            @Override // android.support.v4.media.session.a
            public void Q(int i11) {
                a aVar = (a) this.f783a.get();
                if (aVar != null) {
                    aVar.m(12, Integer.valueOf(i11), null);
                }
            }

            @Override // android.support.v4.media.session.a
            public void X0(PlaybackStateCompat playbackStateCompat) {
                a aVar = (a) this.f783a.get();
                if (aVar != null) {
                    aVar.m(2, playbackStateCompat, null);
                }
            }

            @Override // android.support.v4.media.session.a
            public void c(String str, Bundle bundle) {
                a aVar = (a) this.f783a.get();
                if (aVar != null) {
                    aVar.m(1, str, bundle);
                }
            }

            @Override // android.support.v4.media.session.a
            public void o() {
                a aVar = (a) this.f783a.get();
                if (aVar != null) {
                    aVar.m(13, null, null);
                }
            }

            @Override // android.support.v4.media.session.a
            public void onRepeatModeChanged(int i11) {
                a aVar = (a) this.f783a.get();
                if (aVar != null) {
                    aVar.m(9, Integer.valueOf(i11), null);
                }
            }

            @Override // android.support.v4.media.session.a
            public void v0(boolean z10) {
                a aVar = (a) this.f783a.get();
                if (aVar != null) {
                    aVar.m(11, Boolean.valueOf(z10), null);
                }
            }

            @Override // android.support.v4.media.session.a
            public void y0(boolean z10) {
            }
        }

        public void a(d dVar) {
        }

        public void b(boolean z10) {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            m(8, null, null);
        }

        public void c(Bundle bundle) {
        }

        public void d(MediaMetadataCompat mediaMetadataCompat) {
        }

        public void e(PlaybackStateCompat playbackStateCompat) {
        }

        public void f(List list) {
        }

        public void g(CharSequence charSequence) {
        }

        public void h(int i11) {
        }

        public void i() {
        }

        public void j(String str, Bundle bundle) {
        }

        public void k() {
        }

        public void l(int i11) {
        }

        void m(int i11, Object obj, Bundle bundle) {
            b bVar = this.f778b;
            if (bVar != null) {
                Message messageObtainMessage = bVar.obtainMessage(i11, obj);
                messageObtainMessage.setData(bundle);
                messageObtainMessage.sendToTarget();
            }
        }

        void n(Handler handler) {
            if (handler != null) {
                b bVar = new b(handler.getLooper());
                this.f778b = bVar;
                bVar.f781a = true;
            } else {
                b bVar2 = this.f778b;
                if (bVar2 != null) {
                    bVar2.f781a = false;
                    bVar2.removeCallbacksAndMessages(null);
                    this.f778b = null;
                }
            }
        }
    }

    interface b {
        e a();

        boolean b(KeyEvent keyEvent);

        void c(a aVar, Handler handler);
    }

    static class c extends MediaControllerImplApi21 {
        c(Context context, MediaSessionCompat.Token token) {
            super(context, token);
        }
    }

    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f784a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final AudioAttributesCompat f785b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f786c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f787d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f788e;

        d(int i11, AudioAttributesCompat audioAttributesCompat, int i12, int i13, int i14) {
            this.f784a = i11;
            this.f785b = audioAttributesCompat;
            this.f786c = i12;
            this.f787d = i13;
            this.f788e = i14;
        }
    }

    public static abstract class e {
        e() {
        }

        public abstract void a(String str, Bundle bundle);

        public abstract void b();

        public abstract void c();
    }

    static class f extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected final MediaController.TransportControls f789a;

        f(MediaController.TransportControls transportControls) {
            this.f789a = transportControls;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void a(String str, Bundle bundle) {
            MediaControllerCompat.e(str, bundle);
            this.f789a.sendCustomAction(str, bundle);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void b() {
            this.f789a.skipToNext();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void c() {
            this.f789a.skipToPrevious();
        }
    }

    static class g extends f {
        g(MediaController.TransportControls transportControls) {
            super(transportControls);
        }
    }

    static class h extends g {
        h(MediaController.TransportControls transportControls) {
            super(transportControls);
        }
    }

    static class i extends h {
        i(MediaController.TransportControls transportControls) {
            super(transportControls);
        }
    }

    public MediaControllerCompat(Context context, MediaSessionCompat.Token token) {
        if (token == null) {
            throw new IllegalArgumentException("sessionToken must not be null");
        }
        this.f771c = Collections.synchronizedSet(new HashSet());
        this.f770b = token;
        if (Build.VERSION.SDK_INT >= 29) {
            this.f769a = new c(context, token);
        } else {
            this.f769a = new MediaControllerImplApi21(context, token);
        }
    }

    public MediaControllerCompat(Context context, MediaSessionCompat mediaSessionCompat) {
        this(context, mediaSessionCompat.b());
    }

    static void e(String str, Bundle bundle) {
        if (str == null) {
            return;
        }
        if (str.equals("android.support.v4.media.session.action.FOLLOW") || str.equals("android.support.v4.media.session.action.UNFOLLOW")) {
            if (bundle == null || !bundle.containsKey("android.support.v4.media.session.ARGUMENT_MEDIA_ATTRIBUTE")) {
                throw new IllegalArgumentException("An extra field android.support.v4.media.session.ARGUMENT_MEDIA_ATTRIBUTE is required for this action " + str + ".");
            }
        }
    }

    public boolean a(KeyEvent keyEvent) {
        if (keyEvent != null) {
            return this.f769a.b(keyEvent);
        }
        throw new IllegalArgumentException("KeyEvent may not be null");
    }

    public e b() {
        return this.f769a.a();
    }

    public void c(a aVar) {
        d(aVar, null);
    }

    public void d(a aVar, Handler handler) {
        if (aVar == null) {
            throw new IllegalArgumentException("callback must not be null");
        }
        if (!this.f771c.add(aVar)) {
            Log.w("MediaControllerCompat", "the callback has already been registered");
            return;
        }
        if (handler == null) {
            handler = new Handler();
        }
        aVar.n(handler);
        this.f769a.c(aVar, handler);
    }
}
