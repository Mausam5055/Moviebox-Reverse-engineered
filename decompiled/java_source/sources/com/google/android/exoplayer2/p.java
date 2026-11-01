package com.google.android.exoplayer2;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.audio.DefaultAudioSink;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class p implements b3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f25586a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f25590e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f25592g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f25593h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f25594i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.exoplayer2.mediacodec.j f25587b = new com.google.android.exoplayer2.mediacodec.j();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f25588c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f25589d = 5000;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.google.android.exoplayer2.mediacodec.o f25591f = com.google.android.exoplayer2.mediacodec.o.f25409a;

    public p(Context context) {
        this.f25586a = context;
    }

    @Override // com.google.android.exoplayer2.b3
    public x2[] a(Handler handler, com.google.android.exoplayer2.video.w wVar, com.google.android.exoplayer2.audio.r rVar, ba.o oVar, com.google.android.exoplayer2.metadata.e eVar) {
        ArrayList arrayList = new ArrayList();
        h(this.f25586a, this.f25588c, this.f25591f, this.f25590e, handler, wVar, this.f25589d, arrayList);
        AudioSink audioSinkC = c(this.f25586a, this.f25592g, this.f25593h, this.f25594i);
        if (audioSinkC != null) {
            b(this.f25586a, this.f25588c, this.f25591f, this.f25590e, audioSinkC, handler, rVar, arrayList);
        }
        g(this.f25586a, oVar, handler.getLooper(), this.f25588c, arrayList);
        e(this.f25586a, eVar, handler.getLooper(), this.f25588c, arrayList);
        d(this.f25586a, this.f25588c, arrayList);
        f(this.f25586a, handler, this.f25588c, arrayList);
        return (x2[]) arrayList.toArray(new x2[0]);
    }

    protected void b(Context context, int i11, com.google.android.exoplayer2.mediacodec.o oVar, boolean z10, AudioSink audioSink, Handler handler, com.google.android.exoplayer2.audio.r rVar, ArrayList arrayList) {
        int i12;
        int i13;
        int i14;
        arrayList.add(new com.google.android.exoplayer2.audio.a0(context, i(), oVar, z10, handler, rVar, audioSink));
        if (i11 == 0) {
            return;
        }
        int size = arrayList.size();
        if (i11 == 2) {
            size--;
        }
        try {
            try {
                i12 = size + 1;
                try {
                    arrayList.add(size, (x2) Class.forName("com.google.android.exoplayer2.decoder.midi.MidiRenderer").getConstructor(null).newInstance(null));
                    com.google.android.exoplayer2.util.s.f("DefaultRenderersFactory", "Loaded MidiRenderer.");
                } catch (ClassNotFoundException unused) {
                    size = i12;
                    i12 = size;
                }
            } catch (Exception e11) {
                throw new RuntimeException("Error instantiating MIDI extension", e11);
            }
        } catch (ClassNotFoundException unused2) {
        }
        try {
            try {
                i13 = i12 + 1;
                try {
                    arrayList.add(i12, (x2) Class.forName("com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer").getConstructor(Handler.class, com.google.android.exoplayer2.audio.r.class, AudioSink.class).newInstance(handler, rVar, audioSink));
                    com.google.android.exoplayer2.util.s.f("DefaultRenderersFactory", "Loaded LibopusAudioRenderer.");
                } catch (ClassNotFoundException unused3) {
                    i12 = i13;
                    i13 = i12;
                }
            } catch (ClassNotFoundException unused4) {
            }
            try {
                try {
                    i14 = i13 + 1;
                    try {
                        arrayList.add(i13, (x2) Class.forName("com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer").getConstructor(Handler.class, com.google.android.exoplayer2.audio.r.class, AudioSink.class).newInstance(handler, rVar, audioSink));
                        com.google.android.exoplayer2.util.s.f("DefaultRenderersFactory", "Loaded LibflacAudioRenderer.");
                    } catch (ClassNotFoundException unused5) {
                        i13 = i14;
                        i14 = i13;
                    }
                } catch (ClassNotFoundException unused6) {
                }
                try {
                    arrayList.add(i14, (x2) Class.forName("com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer").getConstructor(Handler.class, com.google.android.exoplayer2.audio.r.class, AudioSink.class).newInstance(handler, rVar, audioSink));
                    com.google.android.exoplayer2.util.s.f("DefaultRenderersFactory", "Loaded FfmpegAudioRenderer.");
                } catch (ClassNotFoundException unused7) {
                } catch (Exception e12) {
                    throw new RuntimeException("Error instantiating FFmpeg extension", e12);
                }
            } catch (Exception e13) {
                throw new RuntimeException("Error instantiating FLAC extension", e13);
            }
        } catch (Exception e14) {
            throw new RuntimeException("Error instantiating Opus extension", e14);
        }
    }

    protected AudioSink c(Context context, boolean z10, boolean z11, boolean z12) {
        return new DefaultAudioSink.d().g(com.google.android.exoplayer2.audio.f.c(context)).i(z10).h(z11).j(z12 ? 1 : 0).f();
    }

    protected void d(Context context, int i11, ArrayList arrayList) {
        arrayList.add(new ma.b());
    }

    protected void e(Context context, com.google.android.exoplayer2.metadata.e eVar, Looper looper, int i11, ArrayList arrayList) {
        arrayList.add(new com.google.android.exoplayer2.metadata.f(eVar, looper));
    }

    protected void f(Context context, Handler handler, int i11, ArrayList arrayList) {
    }

    protected void g(Context context, ba.o oVar, Looper looper, int i11, ArrayList arrayList) {
        arrayList.add(new ba.p(oVar, looper));
    }

    protected void h(Context context, int i11, com.google.android.exoplayer2.mediacodec.o oVar, boolean z10, Handler handler, com.google.android.exoplayer2.video.w wVar, long j11, ArrayList arrayList) {
        int i12;
        arrayList.add(new com.google.android.exoplayer2.video.g(context, i(), oVar, j11, z10, handler, wVar, 50));
        if (i11 == 0) {
            return;
        }
        int size = arrayList.size();
        if (i11 == 2) {
            size--;
        }
        try {
            try {
                i12 = size + 1;
                try {
                    arrayList.add(size, (x2) Class.forName("com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer").getConstructor(Long.TYPE, Handler.class, com.google.android.exoplayer2.video.w.class, Integer.TYPE).newInstance(Long.valueOf(j11), handler, wVar, 50));
                    com.google.android.exoplayer2.util.s.f("DefaultRenderersFactory", "Loaded LibvpxVideoRenderer.");
                } catch (ClassNotFoundException unused) {
                    size = i12;
                    i12 = size;
                }
            } catch (ClassNotFoundException unused2) {
            }
            try {
                arrayList.add(i12, (x2) Class.forName("com.google.android.exoplayer2.ext.av1.Libgav1VideoRenderer").getConstructor(Long.TYPE, Handler.class, com.google.android.exoplayer2.video.w.class, Integer.TYPE).newInstance(Long.valueOf(j11), handler, wVar, 50));
                com.google.android.exoplayer2.util.s.f("DefaultRenderersFactory", "Loaded Libgav1VideoRenderer.");
            } catch (ClassNotFoundException unused3) {
            } catch (Exception e11) {
                throw new RuntimeException("Error instantiating AV1 extension", e11);
            }
        } catch (Exception e12) {
            throw new RuntimeException("Error instantiating VP9 extension", e12);
        }
    }

    protected com.google.android.exoplayer2.mediacodec.l.b i() {
        return this.f25587b;
    }

    public p j(boolean z10) {
        this.f25590e = z10;
        return this;
    }
}
