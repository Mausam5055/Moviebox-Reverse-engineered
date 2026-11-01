package ba;

import com.google.android.exoplayer2.o1;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

/* JADX INFO: loaded from: classes3.dex */
public interface k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final k f16298a = new a();

    class a implements k {
        a() {
        }

        @Override // ba.k
        public boolean a(o1 o1Var) {
            String str = o1Var.f25496l;
            return MimeTypes.TEXT_VTT.equals(str) || MimeTypes.TEXT_SSA.equals(str) || MimeTypes.APPLICATION_TTML.equals(str) || MimeTypes.APPLICATION_MP4VTT.equals(str) || MimeTypes.APPLICATION_SUBRIP.equals(str) || MimeTypes.APPLICATION_TX3G.equals(str) || MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_MP4CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str) || MimeTypes.APPLICATION_DVBSUBS.equals(str) || MimeTypes.APPLICATION_PGS.equals(str) || "text/x-exoplayer-cues".equals(str);
        }

        @Override // ba.k
        public j b(o1 o1Var) {
            String str = o1Var.f25496l;
            if (str != null) {
                switch (str) {
                    case "application/dvbsubs":
                        return new da.a(o1Var.f25498n);
                    case "application/pgs":
                        return new ea.a();
                    case "application/x-mp4-vtt":
                        return new ka.a();
                    case "text/vtt":
                        return new ka.h();
                    case "application/x-quicktime-tx3g":
                        return new ja.a(o1Var.f25498n);
                    case "text/x-ssa":
                        return new ga.a(o1Var.f25498n);
                    case "application/x-mp4-cea-608":
                    case "application/cea-608":
                        return new ca.a(str, o1Var.D, 16000L);
                    case "text/x-exoplayer-cues":
                        return new g();
                    case "application/cea-708":
                        return new ca.c(o1Var.D, o1Var.f25498n);
                    case "application/x-subrip":
                        return new ha.a();
                    case "application/ttml+xml":
                        return new ia.c();
                }
            }
            throw new IllegalArgumentException("Attempted to create decoder for unsupported MIME type: " + str);
        }
    }

    boolean a(o1 o1Var);

    j b(o1 o1Var);
}
