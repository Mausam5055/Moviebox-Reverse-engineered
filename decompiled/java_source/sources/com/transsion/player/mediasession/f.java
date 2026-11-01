package com.transsion.player.mediasession;

import android.os.Bundle;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import ko.l0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class f extends MediaSessionCompat.b {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f48395i = new a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final MediaSessionCompat f48396f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final MediaService f48397g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private MediaItem f48398h;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public f(MediaSessionCompat mediaSessionCompat, MediaService mediaService) {
        Intrinsics.h(mediaService, "mediaService");
        this.f48396f = mediaSessionCompat;
        this.f48397g = mediaService;
    }

    private final void E(PlaybackStateCompat playbackStateCompat) {
        if (playbackStateCompat != null) {
            h.f48399a.o(this.f48397g, this.f48398h, Integer.valueOf(playbackStateCompat.getState()), this.f48396f);
        }
    }

    private final String F() {
        String simpleName = f.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final PlaybackStateCompat G(int i11) {
        Long position;
        MediaItem mediaItem = this.f48398h;
        PlaybackStateCompat playbackStateCompatA = new PlaybackStateCompat.d().b(775L).c(i11, (mediaItem == null || (position = mediaItem.getPosition()) == null) ? 0L : position.longValue(), 1.0f).a();
        MediaSessionCompat mediaSessionCompat = this.f48396f;
        if (mediaSessionCompat != null) {
            mediaSessionCompat.i(playbackStateCompatA);
        }
        Intrinsics.e(playbackStateCompatA);
        return playbackStateCompatA;
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.b
    public void A() {
        super.A();
        i.f48408a.a(F() + " --> mediaSessionCallback --> onSkipToPrevious() -- 暂不处理该事件");
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.b
    public void C() {
        super.C();
        i.f48408a.a(F() + " --> mediaSessionCallback --> onStop()");
        G(1);
        com.transsion.player.orplayer.g gVarH = l0.f66968a.h();
        if (gVarH != null) {
            gVarH.release();
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.b
    public void e(String str, Bundle bundle) {
        Long duration;
        super.e(str, bundle);
        PlaybackStateCompat playbackStateCompatG = null;
        this.f48398h = bundle != null ? (MediaItem) bundle.getParcelable("MediaItem") : null;
        if (Intrinsics.c(str, "transsion_play")) {
            MediaSessionCompat mediaSessionCompat = this.f48396f;
            if (mediaSessionCompat != null) {
                MediaMetadataCompat.b bVar = new MediaMetadataCompat.b();
                MediaItem mediaItem = this.f48398h;
                MediaMetadataCompat.b bVarC = bVar.c(MediaMetadataCompat.METADATA_KEY_MEDIA_ID, mediaItem != null ? mediaItem.getMediaId() : null);
                MediaItem mediaItem2 = this.f48398h;
                mediaSessionCompat.h(bVarC.b(MediaMetadataCompat.METADATA_KEY_DURATION, (mediaItem2 == null || (duration = mediaItem2.getDuration()) == null) ? 0L : duration.longValue()).a());
            }
            playbackStateCompatG = G(3);
        } else if (Intrinsics.c(str, "transsion_pause")) {
            playbackStateCompatG = G(2);
        }
        E(playbackStateCompatG);
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.b
    public void h() {
        super.h();
        i.f48408a.a(F() + " --> mediaSessionCallback --> onPause()");
        E(G(2));
        com.transsion.player.orplayer.g gVarH = l0.f66968a.h();
        if (gVarH != null) {
            gVarH.pause();
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.b
    public void i() {
        super.i();
        i.f48408a.a(F() + " --> mediaSessionCallback --> onPlay()");
        E(G(3));
        com.transsion.player.orplayer.g gVarH = l0.f66968a.h();
        if (gVarH != null) {
            gVarH.play();
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.b
    public void s(long j11) {
        super.s(j11);
        MediaItem mediaItem = this.f48398h;
        if (mediaItem != null) {
            mediaItem.setPosition(Long.valueOf(j11));
        }
        i.f48408a.a(F() + " --> mediaSessionCallback --> onSeekTo() --> mediaItem = " + this.f48398h);
        com.transsion.player.orplayer.g gVarH = l0.f66968a.h();
        if (gVarH != null) {
            gVarH.seekTo(j11);
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.b
    public void z() {
        super.z();
        i.f48408a.a(F() + " --> mediaSessionCallback --> onSkipToNext() -- 暂不处理该事件");
    }
}
