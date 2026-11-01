package z9;

import com.google.android.exoplayer2.source.rtsp.j;

/* JADX INFO: loaded from: classes4.dex */
public final class a {
    public e a(j jVar) {
        String str = (String) com.google.android.exoplayer2.util.a.e(jVar.f26431c.f25496l);
        str.hashCode();
        switch (str) {
            case "audio/mp4a-latm":
                return new b(jVar);
            case "audio/ac3":
                return new c(jVar);
            case "video/avc":
                return new d(jVar);
            default:
                return null;
        }
    }
}
