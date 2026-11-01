package u4;

import android.graphics.PointF;
import com.airbnb.lottie.model.DocumentData;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.cloud.tmc.integration.params.TmcStartParams;

/* JADX INFO: loaded from: classes2.dex */
public class i implements n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final i f76637a = new i();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final JsonReader.a f76638b = JsonReader.a.a("t", "f", "s", "j", "tr", "lh", TmcStartParams.KEY_LANDSCAPE_SHORT, "fc", "sc", "sw", "of", "ps", "sz");

    private i() {
    }

    @Override // u4.n0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public DocumentData a(JsonReader jsonReader, float f11) {
        DocumentData.Justification justification = DocumentData.Justification.CENTER;
        jsonReader.h();
        DocumentData.Justification justification2 = justification;
        String strR = null;
        String strR2 = null;
        PointF pointF = null;
        PointF pointF2 = null;
        float fO = 0.0f;
        float fO2 = 0.0f;
        float fO3 = 0.0f;
        float fO4 = 0.0f;
        int iP = 0;
        int iD = 0;
        int iD2 = 0;
        boolean zN = true;
        while (jsonReader.m()) {
            switch (jsonReader.v(f76638b)) {
                case 0:
                    strR = jsonReader.r();
                    break;
                case 1:
                    strR2 = jsonReader.r();
                    break;
                case 2:
                    fO = (float) jsonReader.o();
                    break;
                case 3:
                    int iP2 = jsonReader.p();
                    justification2 = DocumentData.Justification.CENTER;
                    if (iP2 <= justification2.ordinal() && iP2 >= 0) {
                        justification2 = DocumentData.Justification.values()[iP2];
                    }
                    break;
                case 4:
                    iP = jsonReader.p();
                    break;
                case 5:
                    fO2 = (float) jsonReader.o();
                    break;
                case 6:
                    fO3 = (float) jsonReader.o();
                    break;
                case 7:
                    iD = s.d(jsonReader);
                    break;
                case 8:
                    iD2 = s.d(jsonReader);
                    break;
                case 9:
                    fO4 = (float) jsonReader.o();
                    break;
                case 10:
                    zN = jsonReader.n();
                    break;
                case 11:
                    jsonReader.d();
                    PointF pointF3 = new PointF(((float) jsonReader.o()) * f11, ((float) jsonReader.o()) * f11);
                    jsonReader.k();
                    pointF = pointF3;
                    break;
                case 12:
                    jsonReader.d();
                    PointF pointF4 = new PointF(((float) jsonReader.o()) * f11, ((float) jsonReader.o()) * f11);
                    jsonReader.k();
                    pointF2 = pointF4;
                    break;
                default:
                    jsonReader.w();
                    jsonReader.x();
                    break;
            }
        }
        jsonReader.l();
        return new DocumentData(strR, strR2, fO, justification2, iP, fO2, fO3, iD, iD2, fO4, zN, pointF, pointF2);
    }
}
