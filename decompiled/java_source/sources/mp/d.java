package mp;

import android.content.Context;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import java.io.IOException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class d {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f69675e = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private MediaPlayer f69676a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Handler f69677b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f69678c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f69679d;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(d dVar, MediaPlayer mediaPlayer) {
        MediaPlayer mediaPlayer2 = dVar.f69676a;
        if (mediaPlayer2 != null) {
            mediaPlayer2.start();
        }
    }

    public final boolean b() {
        try {
            MediaPlayer mediaPlayer = this.f69676a;
            return mediaPlayer != null && mediaPlayer.isPlaying();
        } catch (IllegalStateException unused) {
            return false;
        }
    }

    public final void c() {
        try {
            this.f69679d = true;
            MediaPlayer mediaPlayer = this.f69676a;
            if (mediaPlayer != null) {
                mediaPlayer.pause();
            }
        } catch (Exception e11) {
            String message = e11.getMessage();
            if (message != null) {
                lg.a.C0828a.f(lg.a.f68839a, "MediaPlayerHelper", message, false, 4, null);
            }
        }
    }

    public final void d(Context context, String path, boolean z10, MediaPlayer.OnCompletionListener onCompletionListener) {
        MediaPlayer mediaPlayer;
        Intrinsics.h(context, "context");
        Intrinsics.h(path, "path");
        if (TextUtils.isEmpty(path)) {
            return;
        }
        this.f69679d = false;
        if (this.f69676a == null) {
            MediaPlayer mediaPlayer2 = new MediaPlayer();
            this.f69676a = mediaPlayer2;
            mediaPlayer2.setLooping(z10);
        }
        try {
            MediaPlayer mediaPlayer3 = this.f69676a;
            if (mediaPlayer3 != null && mediaPlayer3.isPlaying()) {
                if (TextUtils.equals(this.f69678c, path)) {
                    MediaPlayer mediaPlayer4 = this.f69676a;
                    if (mediaPlayer4 != null) {
                        mediaPlayer4.pause();
                        return;
                    }
                    return;
                }
                MediaPlayer mediaPlayer5 = this.f69676a;
                if (mediaPlayer5 != null) {
                    mediaPlayer5.stop();
                }
                MediaPlayer mediaPlayer6 = this.f69676a;
                if (mediaPlayer6 != null) {
                    mediaPlayer6.reset();
                }
                MediaPlayer mediaPlayer7 = this.f69676a;
                if (mediaPlayer7 != null) {
                    mediaPlayer7.release();
                }
                this.f69676a = null;
                MediaPlayer mediaPlayer8 = new MediaPlayer();
                this.f69676a = mediaPlayer8;
                mediaPlayer8.setLooping(true);
            }
        } catch (IllegalStateException unused) {
            this.f69676a = null;
            this.f69678c = path;
            this.f69676a = MediaPlayer.create(context, Uri.parse(path));
        }
        try {
            MediaPlayer mediaPlayer9 = this.f69676a;
            if (mediaPlayer9 != null) {
                mediaPlayer9.reset();
            }
            this.f69678c = path;
            MediaPlayer mediaPlayer10 = this.f69676a;
            if (mediaPlayer10 != null) {
                mediaPlayer10.setDataSource(context, Uri.parse(path));
            }
            MediaPlayer mediaPlayer11 = this.f69676a;
            if (mediaPlayer11 != null) {
                mediaPlayer11.prepareAsync();
            }
            MediaPlayer mediaPlayer12 = this.f69676a;
            if (mediaPlayer12 != null) {
                mediaPlayer12.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: mp.c
                    @Override // android.media.MediaPlayer.OnPreparedListener
                    public final void onPrepared(MediaPlayer mediaPlayer13) {
                        d.e(this.f69674a, mediaPlayer13);
                    }
                });
            }
            if (onCompletionListener == null || (mediaPlayer = this.f69676a) == null) {
                return;
            }
            mediaPlayer.setOnCompletionListener(onCompletionListener);
        } catch (IOException e11) {
            String message = e11.getMessage();
            if (message != null) {
                lg.a.C0828a.f(lg.a.f68839a, "MediaPlayerHelper", message, false, 4, null);
            }
        } catch (IllegalArgumentException e12) {
            String message2 = e12.getMessage();
            if (message2 != null) {
                lg.a.C0828a.f(lg.a.f68839a, "MediaPlayerHelper", message2, false, 4, null);
            }
        } catch (IllegalStateException e13) {
            String message3 = e13.getMessage();
            if (message3 != null) {
                lg.a.C0828a.f(lg.a.f68839a, "MediaPlayerHelper", message3, false, 4, null);
            }
        } catch (SecurityException e14) {
            String message4 = e14.getMessage();
            if (message4 != null) {
                lg.a.C0828a.f(lg.a.f68839a, "MediaPlayerHelper", message4, false, 4, null);
            }
        }
    }

    public final void f() {
        try {
            MediaPlayer mediaPlayer = this.f69676a;
            if (mediaPlayer != null) {
                Intrinsics.e(mediaPlayer);
                if (mediaPlayer.isPlaying()) {
                    MediaPlayer mediaPlayer2 = this.f69676a;
                    Intrinsics.e(mediaPlayer2);
                    mediaPlayer2.stop();
                    MediaPlayer mediaPlayer3 = this.f69676a;
                    Intrinsics.e(mediaPlayer3);
                    mediaPlayer3.release();
                    this.f69677b = null;
                }
            }
        } catch (Exception unused) {
        }
    }
}
