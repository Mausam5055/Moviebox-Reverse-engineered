package i3;

import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class h implements s.a {
    @Override // i3.s.a
    public boolean a(androidx.media3.common.r rVar) {
        String str = rVar.f10161o;
        return Objects.equals(str, MimeTypes.TEXT_SSA) || Objects.equals(str, MimeTypes.TEXT_VTT) || Objects.equals(str, MimeTypes.APPLICATION_MP4VTT) || Objects.equals(str, MimeTypes.APPLICATION_SUBRIP) || Objects.equals(str, MimeTypes.APPLICATION_TX3G) || Objects.equals(str, MimeTypes.APPLICATION_PGS) || Objects.equals(str, MimeTypes.APPLICATION_VOBSUB) || Objects.equals(str, MimeTypes.APPLICATION_DVBSUBS) || Objects.equals(str, MimeTypes.APPLICATION_TTML);
    }

    @Override // i3.s.a
    public int b(androidx.media3.common.r rVar) {
        String str = rVar.f10161o;
        if (str != null) {
            switch (str) {
                case "application/dvbsubs":
                case "application/pgs":
                case "application/x-mp4-vtt":
                    return 2;
                case "text/vtt":
                    return 1;
                case "application/x-quicktime-tx3g":
                    return 2;
                case "text/x-ssa":
                    return 1;
                case "application/vobsub":
                    return 2;
                case "application/x-subrip":
                case "application/ttml+xml":
                    return 1;
            }
        }
        throw new IllegalArgumentException("Unsupported MIME type: " + str);
    }

    @Override // i3.s.a
    public s c(androidx.media3.common.r rVar) {
        String str = rVar.f10161o;
        if (str != null) {
            switch (str) {
                case "application/dvbsubs":
                    return new k3.a(rVar.f10164r);
                case "application/pgs":
                    return new l3.a();
                case "application/x-mp4-vtt":
                    return new r3.a();
                case "text/vtt":
                    return new r3.g();
                case "application/x-quicktime-tx3g":
                    return new p3.a(rVar.f10164r);
                case "text/x-ssa":
                    return new m3.b(rVar.f10164r);
                case "application/vobsub":
                    return new q3.a(rVar.f10164r);
                case "application/x-subrip":
                    return new n3.a();
                case "application/ttml+xml":
                    return new o3.d();
            }
        }
        throw new IllegalArgumentException("Unsupported MIME type: " + str);
    }
}
