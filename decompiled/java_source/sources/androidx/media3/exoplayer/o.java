package androidx.media3.exoplayer;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.audio.DefaultAudioSink;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class o implements b4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f12286a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.media3.exoplayer.mediacodec.k f12287b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f12290e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f12292g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f12293h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f12294i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f12295j;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f12288c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f12289d = 5000;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private androidx.media3.exoplayer.mediacodec.h0 f12291f = androidx.media3.exoplayer.mediacodec.h0.f12211a;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f12296k = C.TIME_UNSET;

    public o(Context context) {
        this.f12286a = context;
        this.f12287b = new androidx.media3.exoplayer.mediacodec.k(context);
    }

    @Override // androidx.media3.exoplayer.b4
    public w3[] a(Handler handler, androidx.media3.exoplayer.video.i0 i0Var, androidx.media3.exoplayer.audio.x xVar, i2.h hVar, e2.b bVar) {
        ArrayList arrayList = new ArrayList();
        k(this.f12286a, this.f12288c, this.f12291f, this.f12290e, handler, i0Var, this.f12289d, arrayList);
        AudioSink audioSinkD = d(this.f12286a, this.f12292g, this.f12293h);
        if (audioSinkD != null) {
            c(this.f12286a, this.f12288c, this.f12291f, this.f12290e, audioSinkD, handler, xVar, arrayList);
        }
        j(this.f12286a, hVar, handler.getLooper(), this.f12288c, arrayList);
        g(this.f12286a, bVar, handler.getLooper(), this.f12288c, arrayList);
        e(this.f12286a, this.f12288c, arrayList);
        f(arrayList);
        h(this.f12286a, handler, this.f12288c, arrayList);
        return (w3[]) arrayList.toArray(new w3[0]);
    }

    @Override // androidx.media3.exoplayer.b4
    public w3 b(w3 w3Var, Handler handler, androidx.media3.exoplayer.video.i0 i0Var, androidx.media3.exoplayer.audio.x xVar, i2.h hVar, e2.b bVar) {
        if (w3Var.getTrackType() == 2) {
            return i(w3Var, this.f12286a, this.f12288c, this.f12291f, this.f12290e, handler, i0Var, this.f12289d);
        }
        return null;
    }

    protected void c(Context context, int i11, androidx.media3.exoplayer.mediacodec.h0 h0Var, boolean z10, AudioSink audioSink, Handler handler, androidx.media3.exoplayer.audio.x xVar, ArrayList arrayList) {
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        arrayList.add(new androidx.media3.exoplayer.audio.a1(context, m(), h0Var, z10, handler, xVar, audioSink));
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
                    arrayList.add(size, (w3) Class.forName("androidx.media3.decoder.midi.MidiRenderer").getConstructor(Context.class, Handler.class, androidx.media3.exoplayer.audio.x.class, AudioSink.class).newInstance(context, handler, xVar, audioSink));
                    androidx.media3.common.util.u.f("DefaultRenderersFactory", "Loaded MidiRenderer.");
                } catch (ClassNotFoundException unused) {
                    size = i12;
                    i12 = size;
                }
            } catch (ClassNotFoundException unused2) {
            }
            try {
                try {
                    i13 = i12 + 1;
                    try {
                        arrayList.add(i12, (w3) Class.forName("androidx.media3.decoder.opus.LibopusAudioRenderer").getConstructor(Handler.class, androidx.media3.exoplayer.audio.x.class, AudioSink.class).newInstance(handler, xVar, audioSink));
                        androidx.media3.common.util.u.f("DefaultRenderersFactory", "Loaded LibopusAudioRenderer.");
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
                            arrayList.add(i13, (w3) Class.forName("androidx.media3.decoder.flac.LibflacAudioRenderer").getConstructor(Handler.class, androidx.media3.exoplayer.audio.x.class, AudioSink.class).newInstance(handler, xVar, audioSink));
                            androidx.media3.common.util.u.f("DefaultRenderersFactory", "Loaded LibflacAudioRenderer.");
                        } catch (ClassNotFoundException unused5) {
                            i13 = i14;
                            i14 = i13;
                        }
                    } catch (ClassNotFoundException unused6) {
                    }
                    try {
                        try {
                            i15 = i14 + 1;
                            try {
                                arrayList.add(i14, (w3) Class.forName("androidx.media3.decoder.ffmpeg.FfmpegAudioRenderer").getConstructor(Handler.class, androidx.media3.exoplayer.audio.x.class, AudioSink.class).newInstance(handler, xVar, audioSink));
                                androidx.media3.common.util.u.f("DefaultRenderersFactory", "Loaded FfmpegAudioRenderer.");
                            } catch (ClassNotFoundException unused7) {
                                i14 = i15;
                                i15 = i14;
                            }
                        } catch (ClassNotFoundException unused8) {
                        }
                        try {
                            try {
                                i16 = i15 + 1;
                                try {
                                    arrayList.add(i15, (w3) Class.forName("androidx.media3.decoder.iamf.LibiamfAudioRenderer").getConstructor(Context.class, Handler.class, androidx.media3.exoplayer.audio.x.class, AudioSink.class).newInstance(context, handler, xVar, audioSink));
                                    androidx.media3.common.util.u.f("DefaultRenderersFactory", "Loaded LibiamfAudioRenderer.");
                                } catch (ClassNotFoundException unused9) {
                                    i15 = i16;
                                    i16 = i15;
                                }
                            } catch (ClassNotFoundException unused10) {
                            }
                            try {
                                arrayList.add(i16, (w3) Class.forName("androidx.media3.decoder.mpegh.MpeghAudioRenderer").getConstructor(Handler.class, androidx.media3.exoplayer.audio.x.class, AudioSink.class).newInstance(handler, xVar, audioSink));
                                androidx.media3.common.util.u.f("DefaultRenderersFactory", "Loaded MpeghAudioRenderer.");
                            } catch (ClassNotFoundException unused11) {
                            } catch (Exception e11) {
                                throw new IllegalStateException("Error instantiating MPEG-H extension", e11);
                            }
                        } catch (Exception e12) {
                            throw new IllegalStateException("Error instantiating IAMF extension", e12);
                        }
                    } catch (Exception e13) {
                        throw new IllegalStateException("Error instantiating FFmpeg extension", e13);
                    }
                } catch (Exception e14) {
                    throw new IllegalStateException("Error instantiating FLAC extension", e14);
                }
            } catch (Exception e15) {
                throw new IllegalStateException("Error instantiating Opus extension", e15);
            }
        } catch (Exception e16) {
            throw new IllegalStateException("Error instantiating MIDI extension", e16);
        }
    }

    protected AudioSink d(Context context, boolean z10, boolean z11) {
        return new DefaultAudioSink.g(context).o(z10).n(z11).j();
    }

    protected void e(Context context, int i11, ArrayList arrayList) {
        arrayList.add(new k2.b());
    }

    protected void f(ArrayList arrayList) {
        arrayList.add(new d2.e(n(), null));
    }

    protected void g(Context context, e2.b bVar, Looper looper, int i11, ArrayList arrayList) {
        arrayList.add(new e2.c(bVar, looper));
        arrayList.add(new e2.c(bVar, looper));
    }

    protected void h(Context context, Handler handler, int i11, ArrayList arrayList) {
    }

    protected w3 i(w3 w3Var, Context context, int i11, androidx.media3.exoplayer.mediacodec.h0 h0Var, boolean z10, Handler handler, androidx.media3.exoplayer.video.i0 i0Var, long j11) {
        if (this.f12294i && w3Var.getClass() == androidx.media3.exoplayer.video.j.class) {
            return new androidx.media3.exoplayer.video.j.d(context).q(m()).v(h0Var).p(j11).r(z10).s(handler).t(i0Var).u(50).o(this.f12295j).n(this.f12296k).m();
        }
        return null;
    }

    protected void j(Context context, i2.h hVar, Looper looper, int i11, ArrayList arrayList) {
        arrayList.add(new i2.i(hVar, looper));
    }

    protected void k(Context context, int i11, androidx.media3.exoplayer.mediacodec.h0 h0Var, boolean z10, Handler handler, androidx.media3.exoplayer.video.i0 i0Var, long j11, ArrayList arrayList) {
        String str;
        int i12;
        arrayList.add(new androidx.media3.exoplayer.video.j.d(context).q(m()).v(h0Var).p(j11).r(z10).s(handler).t(i0Var).u(50).o(this.f12295j).n(this.f12296k).m());
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
                    arrayList.add(size, (w3) Class.forName("androidx.media3.decoder.vp9.LibvpxVideoRenderer").getConstructor(Long.TYPE, Handler.class, androidx.media3.exoplayer.video.i0.class, Integer.TYPE).newInstance(Long.valueOf(j11), handler, i0Var, 50));
                    str = "DefaultRenderersFactory";
                    try {
                        androidx.media3.common.util.u.f(str, "Loaded LibvpxVideoRenderer.");
                    } catch (ClassNotFoundException unused) {
                        size = i12;
                        i12 = size;
                    }
                } catch (ClassNotFoundException unused2) {
                    str = "DefaultRenderersFactory";
                }
            } catch (Exception e11) {
                throw new IllegalStateException("Error instantiating VP9 extension", e11);
            }
        } catch (ClassNotFoundException unused3) {
            str = "DefaultRenderersFactory";
        }
        try {
            try {
                int i13 = androidx.media3.decoder.av1.c.f10945c0;
                int i14 = i12 + 1;
                try {
                    arrayList.add(i12, (w3) androidx.media3.decoder.av1.c.class.getConstructor(Long.TYPE, Handler.class, androidx.media3.exoplayer.video.i0.class, Integer.TYPE).newInstance(Long.valueOf(j11), handler, i0Var, 50));
                    androidx.media3.common.util.u.f(str, "Loaded Libgav1VideoRenderer.");
                } catch (ClassNotFoundException unused4) {
                }
                i12 = i14;
            } catch (Exception e12) {
                throw new IllegalStateException("Error instantiating AV1 extension", e12);
            }
        } catch (ClassNotFoundException unused5) {
        }
        try {
            arrayList.add(i12, (w3) Class.forName("androidx.media3.decoder.ffmpeg.ExperimentalFfmpegVideoRenderer").getConstructor(Long.TYPE, Handler.class, androidx.media3.exoplayer.video.i0.class, Integer.TYPE).newInstance(Long.valueOf(j11), handler, i0Var, 50));
            androidx.media3.common.util.u.f(str, "Loaded FfmpegVideoRenderer.");
        } catch (ClassNotFoundException unused6) {
        } catch (Exception e13) {
            throw new IllegalStateException("Error instantiating FFmpeg extension", e13);
        }
    }

    public final o l() {
        this.f12287b.b();
        return this;
    }

    protected androidx.media3.exoplayer.mediacodec.t.b m() {
        return this.f12287b;
    }

    protected d2.c.a n() {
        return d2.c.a.f61129a;
    }

    public final o o(boolean z10) {
        this.f12290e = z10;
        return this;
    }

    public final o p(int i11) {
        this.f12288c = i11;
        return this;
    }
}
