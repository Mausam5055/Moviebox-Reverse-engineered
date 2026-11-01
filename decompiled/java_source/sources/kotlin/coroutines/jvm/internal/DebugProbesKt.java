package kotlin.coroutines.jvm.internal;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.player.mediasession.MediaItem;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\u001a)\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u00002\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0001¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u001b\u0010\u0007\u001a\u00020\u00062\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0001H\u0001¢\u0006\u0004\b\u0007\u0010\b\u001a\u001b\u0010\t\u001a\u00020\u00062\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0001H\u0001¢\u0006\u0004\b\t\u0010\b¨\u0006\n"}, d2 = {"T", "Lkotlin/coroutines/Continuation;", MediaItem.MUSIC_FLOAT_STATE_COMPLETION, "a", "(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "frame", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Lkotlin/coroutines/Continuation;)V", "c", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DebugProbesKt {
    public static final Continuation a(Continuation completion) {
        Intrinsics.h(completion, "completion");
        return completion;
    }

    public static final void b(Continuation frame) {
        Intrinsics.h(frame, "frame");
    }

    public static final void c(Continuation frame) {
        Intrinsics.h(frame, "frame");
    }
}
