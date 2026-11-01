package e2;

import androidx.media3.common.r;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import z2.h;

/* JADX INFO: loaded from: classes2.dex */
public interface a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f61488a = new C0742a();

    /* JADX INFO: renamed from: e2.a$a, reason: collision with other inner class name */
    class C0742a implements a {
        C0742a() {
        }

        @Override // e2.a
        public boolean a(r rVar) {
            String str = rVar.f10161o;
            return MimeTypes.APPLICATION_ID3.equals(str) || MimeTypes.APPLICATION_EMSG.equals(str) || MimeTypes.APPLICATION_SCTE35.equals(str) || "application/x-icy".equals(str) || "application/vnd.dvb.ait".equals(str);
        }

        @Override // e2.a
        public u2.a b(r rVar) {
            String str = rVar.f10161o;
            if (str != null) {
                switch (str) {
                    case "application/vnd.dvb.ait":
                        return new v2.b();
                    case "application/x-icy":
                        return new y2.a();
                    case "application/id3":
                        return new h();
                    case "application/x-emsg":
                        return new w2.b();
                    case "application/x-scte35":
                        return new b3.c();
                }
            }
            throw new IllegalArgumentException("Attempted to create decoder for unsupported MIME type: " + str);
        }
    }

    boolean a(r rVar);

    u2.a b(r rVar);
}
