package u4;

import com.airbnb.lottie.parser.moshi.JsonReader;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes2.dex */
abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f76630a = JsonReader.a.a("nm", TtmlNode.TAG_P, "s", "hd", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D);

    static r4.b a(JsonReader jsonReader, com.airbnb.lottie.h hVar, int i11) {
        boolean z10 = i11 == 3;
        boolean zN = false;
        String strR = null;
        q4.o oVarB = null;
        q4.f fVarI = null;
        while (jsonReader.m()) {
            int iV = jsonReader.v(f76630a);
            if (iV == 0) {
                strR = jsonReader.r();
            } else if (iV == 1) {
                oVarB = a.b(jsonReader, hVar);
            } else if (iV == 2) {
                fVarI = d.i(jsonReader, hVar);
            } else if (iV == 3) {
                zN = jsonReader.n();
            } else if (iV != 4) {
                jsonReader.w();
                jsonReader.x();
            } else {
                z10 = jsonReader.p() == 3;
            }
        }
        return new r4.b(strR, oVarB, fVarI, z10, zN);
    }
}
