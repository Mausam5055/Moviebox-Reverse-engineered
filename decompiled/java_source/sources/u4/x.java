package u4;

import com.airbnb.lottie.model.content.Mask;
import com.airbnb.lottie.parser.moshi.JsonReader;

/* JADX INFO: loaded from: classes2.dex */
abstract class x {
    static Mask a(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        jsonReader.h();
        Mask.MaskMode maskMode = null;
        q4.h hVarK = null;
        q4.d dVarH = null;
        boolean zN = false;
        while (jsonReader.m()) {
            String strQ = jsonReader.q();
            strQ.hashCode();
            switch (strQ) {
                case "o":
                    dVarH = d.h(jsonReader, hVar);
                    break;
                case "pt":
                    hVarK = d.k(jsonReader, hVar);
                    break;
                case "inv":
                    zN = jsonReader.n();
                    break;
                case "mode":
                    String strR = jsonReader.r();
                    strR.hashCode();
                    switch (strR) {
                        case "a":
                            maskMode = Mask.MaskMode.MASK_MODE_ADD;
                            break;
                        case "i":
                            hVar.a("Animation contains intersect masks. They are not supported but will be treated like add masks.");
                            maskMode = Mask.MaskMode.MASK_MODE_INTERSECT;
                            break;
                        case "n":
                            maskMode = Mask.MaskMode.MASK_MODE_NONE;
                            break;
                        case "s":
                            maskMode = Mask.MaskMode.MASK_MODE_SUBTRACT;
                            break;
                        default:
                            v4.f.c("Unknown mask mode " + strQ + ". Defaulting to Add.");
                            maskMode = Mask.MaskMode.MASK_MODE_ADD;
                            break;
                    }
                    break;
                default:
                    jsonReader.x();
                    break;
            }
        }
        jsonReader.l();
        return new Mask(maskMode, hVarK, dVarH, zN);
    }
}
