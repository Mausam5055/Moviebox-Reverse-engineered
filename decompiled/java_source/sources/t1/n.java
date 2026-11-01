package t1;

import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.z;

/* JADX INFO: loaded from: classes2.dex */
public interface n {
    boolean a(boolean z10);

    z b(z zVar);

    AudioProcessor[] getAudioProcessors();

    long getMediaDuration(long j11);

    long getSkippedOutputFrameCount();
}
