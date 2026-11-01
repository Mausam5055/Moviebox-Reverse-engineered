package f3;

import androidx.media3.common.y;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
abstract class k {
    public static String a(androidx.media3.common.r rVar) {
        String str = rVar.f10161o;
        if (y.t(str)) {
            return MimeTypes.VIDEO_MP4;
        }
        if (y.o(str)) {
            return MimeTypes.AUDIO_MP4;
        }
        if (!y.q(str)) {
            return MimeTypes.APPLICATION_MP4;
        }
        if (Objects.equals(str, "image/heic")) {
            return "image/heif";
        }
        return Objects.equals(str, "image/avif") ? "image/avif" : MimeTypes.APPLICATION_MP4;
    }

    public static String b(List list) {
        Iterator it = list.iterator();
        boolean z10 = false;
        String str = null;
        while (it.hasNext()) {
            String str2 = ((w) it.next()).f62326a.f62297g.f10161o;
            if (y.t(str2)) {
                return MimeTypes.VIDEO_MP4;
            }
            if (y.o(str2)) {
                z10 = true;
            } else if (y.q(str2)) {
                if (Objects.equals(str2, "image/heic")) {
                    str = "image/heif";
                } else if (Objects.equals(str2, "image/avif")) {
                    str = "image/avif";
                }
            }
        }
        if (z10) {
            return MimeTypes.AUDIO_MP4;
        }
        return str != null ? str : MimeTypes.APPLICATION_MP4;
    }
}
