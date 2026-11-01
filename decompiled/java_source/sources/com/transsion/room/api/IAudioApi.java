package com.transsion.room.api;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.therouter.inject.Singleton;
import com.transsion.baselib.db.audio.AudioBean;
import com.transsion.player.orplayer.f;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Singleton
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0004\bg\u0018\u00002\u00020\u0001J!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H&¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0006H&¢\u0006\u0004\b\u000b\u0010\nJ\u000f\u0010\f\u001a\u00020\u0006H&¢\u0006\u0004\b\f\u0010\nJ\u000f\u0010\r\u001a\u00020\u0006H&¢\u0006\u0004\b\r\u0010\nJ\u0017\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000eH&¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000eH&¢\u0006\u0004\b\u0012\u0010\u0011J\u000f\u0010\u0014\u001a\u00020\u0013H&¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0004H&¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0013H&¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0004H&¢\u0006\u0004\b\u001b\u0010\u0017J\u0017\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010 \u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u001eH&¢\u0006\u0004\b \u0010!¨\u0006\""}, d2 = {"Lcom/transsion/room/api/IAudioApi;", "", "Lcom/transsion/baselib/db/audio/AudioBean;", MimeTypes.BASE_TYPE_AUDIO, "", "needRequest", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Lcom/transsion/baselib/db/audio/AudioBean;Z)V", "start", "()V", "pause", "stop", "prepare", "Lcom/transsion/player/orplayer/f;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "addPlayerListener", "(Lcom/transsion/player/orplayer/f;)V", "removePlayerListener", "", "e", "()J", "f", "()Z", RequestParameters.POSITION, "seekTo", "(J)V", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Lcom/transsion/baselib/db/audio/AudioBean;)Z", "", "audioUrl", "a", "(Ljava/lang/String;)Z", "AudioApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IAudioApi {

    /* JADX INFO: loaded from: classes6.dex */
    public static final class a {
        public static /* synthetic */ void a(IAudioApi iAudioApi, AudioBean audioBean, boolean z10, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: start");
            }
            if ((i11 & 2) != 0) {
                z10 = true;
            }
            iAudioApi.d(audioBean, z10);
        }
    }

    boolean a(String audioUrl);

    void addPlayerListener(f listener);

    boolean b(AudioBean audio);

    boolean c();

    void d(AudioBean audio, boolean needRequest);

    long e();

    boolean f();

    void pause();

    void prepare();

    void removePlayerListener(f listener);

    void seekTo(long position);

    void start();

    void stop();
}
