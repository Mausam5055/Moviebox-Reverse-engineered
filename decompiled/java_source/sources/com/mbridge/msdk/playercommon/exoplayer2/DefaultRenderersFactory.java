package com.mbridge.msdk.playercommon.exoplayer2;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.audio.AudioCapabilities;
import com.mbridge.msdk.playercommon.exoplayer2.audio.AudioProcessor;
import com.mbridge.msdk.playercommon.exoplayer2.audio.AudioRendererEventListener;
import com.mbridge.msdk.playercommon.exoplayer2.audio.MediaCodecAudioRenderer;
import com.mbridge.msdk.playercommon.exoplayer2.drm.DrmSessionManager;
import com.mbridge.msdk.playercommon.exoplayer2.drm.FrameworkMediaCrypto;
import com.mbridge.msdk.playercommon.exoplayer2.mediacodec.MediaCodecSelector;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.MetadataOutput;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.MetadataRenderer;
import com.mbridge.msdk.playercommon.exoplayer2.text.TextOutput;
import com.mbridge.msdk.playercommon.exoplayer2.text.TextRenderer;
import com.mbridge.msdk.playercommon.exoplayer2.video.MediaCodecVideoRenderer;
import com.mbridge.msdk.playercommon.exoplayer2.video.VideoRendererEventListener;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class DefaultRenderersFactory implements RenderersFactory {
    public static final long DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS = 5000;
    public static final int EXTENSION_RENDERER_MODE_OFF = 0;
    public static final int EXTENSION_RENDERER_MODE_ON = 1;
    public static final int EXTENSION_RENDERER_MODE_PREFER = 2;
    protected static final int MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY = 50;
    private static final String TAG = "DefaultRenderersFactory";
    private final long allowedVideoJoiningTimeMs;
    private final Context context;

    @Nullable
    private final DrmSessionManager<FrameworkMediaCrypto> drmSessionManager;
    private final int extensionRendererMode;

    @Retention(RetentionPolicy.SOURCE)
    public @interface ExtensionRendererMode {
    }

    public DefaultRenderersFactory(Context context) {
        this(context, 0);
    }

    public DefaultRenderersFactory(Context context, int i11) {
        this(context, null, i11, 5000L);
    }

    public DefaultRenderersFactory(Context context, int i11, long j11) {
        this(context, null, i11, j11);
    }

    @Deprecated
    public DefaultRenderersFactory(Context context, @Nullable DrmSessionManager<FrameworkMediaCrypto> drmSessionManager) {
        this(context, drmSessionManager, 0);
    }

    @Deprecated
    public DefaultRenderersFactory(Context context, @Nullable DrmSessionManager<FrameworkMediaCrypto> drmSessionManager, int i11) {
        this(context, drmSessionManager, i11, 5000L);
    }

    @Deprecated
    public DefaultRenderersFactory(Context context, @Nullable DrmSessionManager<FrameworkMediaCrypto> drmSessionManager, int i11, long j11) {
        this.context = context;
        this.extensionRendererMode = i11;
        this.allowedVideoJoiningTimeMs = j11;
        this.drmSessionManager = drmSessionManager;
    }

    protected AudioProcessor[] buildAudioProcessors() {
        return new AudioProcessor[0];
    }

    protected void buildAudioRenderers(Context context, @Nullable DrmSessionManager<FrameworkMediaCrypto> drmSessionManager, AudioProcessor[] audioProcessorArr, Handler handler, AudioRendererEventListener audioRendererEventListener, int i11, ArrayList<Renderer> arrayList) {
        int i12;
        int i13;
        arrayList.add(new MediaCodecAudioRenderer(context, MediaCodecSelector.DEFAULT, drmSessionManager, false, handler, audioRendererEventListener, AudioCapabilities.getCapabilities(context), audioProcessorArr));
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
                    arrayList.add(size, (Renderer) Class.forName("com.mbridge.msdk.playercommon.exoplayer2.ext.opus.LibopusAudioRenderer").getConstructor(Handler.class, AudioRendererEventListener.class, AudioProcessor[].class).newInstance(handler, audioRendererEventListener, audioProcessorArr));
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
                        arrayList.add(i12, (Renderer) Class.forName("com.mbridge.msdk.playercommon.exoplayer2.ext.flac.LibflacAudioRenderer").getConstructor(Handler.class, AudioRendererEventListener.class, AudioProcessor[].class).newInstance(handler, audioRendererEventListener, audioProcessorArr));
                    } catch (ClassNotFoundException unused3) {
                        i12 = i13;
                        i13 = i12;
                    }
                } catch (Exception e11) {
                    throw new RuntimeException("Error instantiating FLAC extension", e11);
                }
            } catch (ClassNotFoundException unused4) {
            }
            try {
                arrayList.add(i13, (Renderer) Class.forName("com.mbridge.msdk.playercommon.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer").getConstructor(Handler.class, AudioRendererEventListener.class, AudioProcessor[].class).newInstance(handler, audioRendererEventListener, audioProcessorArr));
            } catch (ClassNotFoundException unused5) {
            } catch (Exception e12) {
                throw new RuntimeException("Error instantiating FFmpeg extension", e12);
            }
        } catch (Exception e13) {
            throw new RuntimeException("Error instantiating Opus extension", e13);
        }
    }

    protected void buildMetadataRenderers(Context context, MetadataOutput metadataOutput, Looper looper, int i11, ArrayList<Renderer> arrayList) {
        arrayList.add(new MetadataRenderer(metadataOutput, looper));
    }

    protected void buildMiscellaneousRenderers(Context context, Handler handler, int i11, ArrayList<Renderer> arrayList) {
    }

    protected void buildTextRenderers(Context context, TextOutput textOutput, Looper looper, int i11, ArrayList<Renderer> arrayList) {
        arrayList.add(new TextRenderer(textOutput, looper));
    }

    protected void buildVideoRenderers(Context context, @Nullable DrmSessionManager<FrameworkMediaCrypto> drmSessionManager, long j11, Handler handler, VideoRendererEventListener videoRendererEventListener, int i11, ArrayList<Renderer> arrayList) {
        arrayList.add(new MediaCodecVideoRenderer(context, MediaCodecSelector.DEFAULT, j11, drmSessionManager, false, handler, videoRendererEventListener, 50));
        if (i11 == 0) {
            return;
        }
        int size = arrayList.size();
        if (i11 == 2) {
            size--;
        }
        try {
            arrayList.add(size, (Renderer) Class.forName("com.mbridge.msdk.playercommon.exoplayer2.ext.vp9.LibvpxVideoRenderer").getConstructor(Boolean.TYPE, Long.TYPE, Handler.class, VideoRendererEventListener.class, Integer.TYPE).newInstance(Boolean.TRUE, Long.valueOf(j11), handler, videoRendererEventListener, 50));
        } catch (ClassNotFoundException unused) {
        } catch (Exception e11) {
            throw new RuntimeException("Error instantiating VP9 extension", e11);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.RenderersFactory
    public Renderer[] createRenderers(Handler handler, VideoRendererEventListener videoRendererEventListener, AudioRendererEventListener audioRendererEventListener, TextOutput textOutput, MetadataOutput metadataOutput, @Nullable DrmSessionManager<FrameworkMediaCrypto> drmSessionManager) {
        DrmSessionManager<FrameworkMediaCrypto> drmSessionManager2 = drmSessionManager == null ? this.drmSessionManager : drmSessionManager;
        ArrayList<Renderer> arrayList = new ArrayList<>();
        DrmSessionManager<FrameworkMediaCrypto> drmSessionManager3 = drmSessionManager2;
        buildVideoRenderers(this.context, drmSessionManager3, this.allowedVideoJoiningTimeMs, handler, videoRendererEventListener, this.extensionRendererMode, arrayList);
        buildAudioRenderers(this.context, drmSessionManager3, buildAudioProcessors(), handler, audioRendererEventListener, this.extensionRendererMode, arrayList);
        buildTextRenderers(this.context, textOutput, handler.getLooper(), this.extensionRendererMode, arrayList);
        buildMetadataRenderers(this.context, metadataOutput, handler.getLooper(), this.extensionRendererMode, arrayList);
        buildMiscellaneousRenderers(this.context, handler, this.extensionRendererMode, arrayList);
        return (Renderer[]) arrayList.toArray(new Renderer[arrayList.size()]);
    }
}
