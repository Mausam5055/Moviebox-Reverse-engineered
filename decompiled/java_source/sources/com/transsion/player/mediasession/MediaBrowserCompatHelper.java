package com.transsion.player.mediasession;

import android.app.Application;
import android.content.ComponentName;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import com.blankj.utilcode.util.ThreadUtils;
import com.blankj.utilcode.util.Utils;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class MediaBrowserCompatHelper {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f48381h = new a(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Lazy f48382i = LazyKt.b(new Function0() { // from class: com.transsion.player.mediasession.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return MediaBrowserCompatHelper.q();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private MediaBrowserCompat f48386d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private MediaControllerCompat f48387e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f48389g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MediaBrowserCompat.n f48383a = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final MediaControllerCompat.a f48384b = new c();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final MediaBrowserCompat.c f48385c = new b();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List f48388f = new ArrayList();

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final MediaBrowserCompatHelper a() {
            return (MediaBrowserCompatHelper) MediaBrowserCompatHelper.f48382i.getValue();
        }
    }

    public static final class b extends MediaBrowserCompat.c {
        b() {
        }

        @Override // android.support.v4.media.MediaBrowserCompat.c
        public void a() {
            String strC;
            super.a();
            try {
                try {
                    MediaBrowserCompat mediaBrowserCompat = MediaBrowserCompatHelper.this.f48386d;
                    if (mediaBrowserCompat != null && (strC = mediaBrowserCompat.c()) != null) {
                        MediaBrowserCompatHelper mediaBrowserCompatHelper = MediaBrowserCompatHelper.this;
                        MediaBrowserCompat mediaBrowserCompat2 = mediaBrowserCompatHelper.f48386d;
                        if (mediaBrowserCompat2 != null) {
                            mediaBrowserCompat2.g(strC);
                        }
                        MediaBrowserCompat mediaBrowserCompat3 = mediaBrowserCompatHelper.f48386d;
                        if (mediaBrowserCompat3 != null) {
                            mediaBrowserCompat3.f(strC, mediaBrowserCompatHelper.f48383a);
                        }
                    }
                    MediaBrowserCompatHelper mediaBrowserCompatHelper2 = MediaBrowserCompatHelper.this;
                    Application applicationA = Utils.a();
                    MediaBrowserCompat mediaBrowserCompat4 = MediaBrowserCompatHelper.this.f48386d;
                    Intrinsics.e(mediaBrowserCompat4);
                    mediaBrowserCompatHelper2.f48387e = new MediaControllerCompat(applicationA, mediaBrowserCompat4.d());
                    MediaControllerCompat mediaControllerCompat = MediaBrowserCompatHelper.this.f48387e;
                    if (mediaControllerCompat != null) {
                        mediaControllerCompat.c(MediaBrowserCompatHelper.this.f48384b);
                    }
                    List<Function1> list = MediaBrowserCompatHelper.this.f48388f;
                    MediaBrowserCompatHelper mediaBrowserCompatHelper3 = MediaBrowserCompatHelper.this;
                    for (Function1 function1 : list) {
                        MediaControllerCompat mediaControllerCompat2 = mediaBrowserCompatHelper3.f48387e;
                        function1.invoke(mediaControllerCompat2 != null ? mediaControllerCompat2.b() : null);
                    }
                    MediaBrowserCompatHelper.this.f48388f.clear();
                } catch (Exception e11) {
                    e11.printStackTrace();
                    i.f48408a.a("mediaSource --> connectionCallback --> e = " + Log.getStackTraceString(e11));
                }
            } finally {
                MediaBrowserCompatHelper.this.f48389g = false;
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.c
        public void b() {
            super.b();
            MediaBrowserCompatHelper.this.f48389g = false;
        }

        @Override // android.support.v4.media.MediaBrowserCompat.c
        public void c() {
            super.c();
        }
    }

    public static final class c extends MediaControllerCompat.a {
        c() {
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public void d(MediaMetadataCompat metadata) {
            Intrinsics.h(metadata, "metadata");
            super.d(metadata);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public void e(PlaybackStateCompat playbackStateCompat) {
            super.e(playbackStateCompat);
        }
    }

    public static final class d extends MediaBrowserCompat.n {
        d() {
        }

        @Override // android.support.v4.media.MediaBrowserCompat.n
        public void a(String parentId, List children) {
            Intrinsics.h(parentId, "parentId");
            Intrinsics.h(children, "children");
            super.a(parentId, children);
            i.f48408a.a("mediaSource --> subscriptionCallback --> onChildrenLoaded() --> parentId = " + parentId + " -- children = " + children);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit A(MediaControllerCompat.e eVar) {
        if (eVar != null) {
            eVar.c();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MediaBrowserCompatHelper q() {
        return new MediaBrowserCompatHelper();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s(MediaItem mediaItem, MediaControllerCompat.e eVar) {
        if (eVar != null) {
            eVar.a("transsion_pause", androidx.core.os.d.b(new Pair("MediaItem", mediaItem)));
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit u(MediaItem mediaItem, MediaControllerCompat.e eVar) {
        if (eVar != null) {
            eVar.a("transsion_play", androidx.core.os.d.b(new Pair("MediaItem", mediaItem)));
        }
        return Unit.f67061a;
    }

    private final void w(Function1 function1) {
        p(function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit y(MediaControllerCompat.e eVar) {
        if (eVar != null) {
            eVar.b();
        }
        return Unit.f67061a;
    }

    public final void p(Function1 function1) {
        Object objD;
        try {
            Result.Companion companion = Result.INSTANCE;
            MediaBrowserCompat mediaBrowserCompat = this.f48386d;
            Object obj = null;
            if (mediaBrowserCompat != null && mediaBrowserCompat.e()) {
                if (function1 != null) {
                    MediaControllerCompat mediaControllerCompat = this.f48387e;
                    function1.invoke(mediaControllerCompat != null ? mediaControllerCompat.b() : null);
                    return;
                }
                return;
            }
            if (this.f48389g) {
                if (function1 != null) {
                    this.f48388f.add(function1);
                    return;
                }
                return;
            }
            this.f48389g = true;
            Application applicationA = Utils.a();
            if (applicationA != null) {
                if (ThreadUtils.j()) {
                    if (function1 != null) {
                        this.f48388f.add(function1);
                    }
                    MediaBrowserCompat mediaBrowserCompat2 = new MediaBrowserCompat(applicationA, new ComponentName(applicationA, (Class<?>) MediaService.class), this.f48385c, null);
                    this.f48386d = mediaBrowserCompat2;
                    mediaBrowserCompat2.a();
                    objD = Unit.f67061a;
                } else {
                    objD = k.d(o0.a(y0.c()), null, null, new MediaBrowserCompatHelper$init$1$2$2(function1, this, applicationA, null), 3, null);
                }
                obj = objD;
            }
            Result.m454constructorimpl(obj);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    public final void r(final MediaItem mediaItem) {
        w(new Function1() { // from class: com.transsion.player.mediasession.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MediaBrowserCompatHelper.s(mediaItem, (MediaControllerCompat.e) obj);
            }
        });
    }

    public final void t(final MediaItem mediaItem) {
        w(new Function1() { // from class: com.transsion.player.mediasession.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MediaBrowserCompatHelper.u(mediaItem, (MediaControllerCompat.e) obj);
            }
        });
    }

    public final void v(String mediaId) {
        Intrinsics.h(mediaId, "mediaId");
    }

    public final void x() {
        w(new Function1() { // from class: com.transsion.player.mediasession.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MediaBrowserCompatHelper.y((MediaControllerCompat.e) obj);
            }
        });
    }

    public final void z() {
        w(new Function1() { // from class: com.transsion.player.mediasession.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MediaBrowserCompatHelper.A((MediaControllerCompat.e) obj);
            }
        });
    }
}
