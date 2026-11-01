package i2;

import androidx.media3.common.r;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import i3.l;
import i3.s;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public interface g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g f64885a = new a();

    class a implements g {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final i3.h f64886b = new i3.h();

        a() {
        }

        @Override // i2.g
        public boolean a(r rVar) {
            String str = rVar.f10161o;
            return this.f64886b.a(rVar) || Objects.equals(str, MimeTypes.APPLICATION_CEA608) || Objects.equals(str, MimeTypes.APPLICATION_MP4CEA608) || Objects.equals(str, MimeTypes.APPLICATION_CEA708);
        }

        @Override // i2.g
        public l b(r rVar) {
            String str = rVar.f10161o;
            if (str != null) {
                switch (str) {
                    case "application/x-mp4-cea-608":
                    case "application/cea-608":
                        return new j3.a(str, rVar.J, 16000L);
                    case "application/cea-708":
                        return new j3.c(rVar.J, rVar.f10164r);
                }
            }
            if (!this.f64886b.a(rVar)) {
                throw new IllegalArgumentException("Attempted to create decoder for unsupported MIME type: " + str);
            }
            s sVarC = this.f64886b.c(rVar);
            return new b(sVarC.getClass().getSimpleName() + "Decoder", sVarC);
        }
    }

    boolean a(r rVar);

    l b(r rVar);
}
