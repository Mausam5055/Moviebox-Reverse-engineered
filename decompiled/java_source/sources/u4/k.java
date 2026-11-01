package u4;

import com.airbnb.lottie.parser.moshi.JsonReader;

/* JADX INFO: loaded from: classes2.dex */
public class k {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final JsonReader.a f76646f = JsonReader.a.a("ef");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final JsonReader.a f76647g = JsonReader.a.a("nm", "v");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private q4.a f76648a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private q4.b f76649b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private q4.b f76650c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private q4.b f76651d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private q4.b f76652e;

    private void a(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        jsonReader.h();
        String strR = "";
        while (jsonReader.m()) {
            int iV = jsonReader.v(f76647g);
            if (iV == 0) {
                strR = jsonReader.r();
            } else if (iV == 1) {
                strR.hashCode();
                switch (strR) {
                    case "Distance":
                        this.f76651d = d.e(jsonReader, hVar);
                        break;
                    case "Opacity":
                        this.f76649b = d.f(jsonReader, hVar, false);
                        break;
                    case "Direction":
                        this.f76650c = d.f(jsonReader, hVar, false);
                        break;
                    case "Shadow Color":
                        this.f76648a = d.c(jsonReader, hVar);
                        break;
                    case "Softness":
                        this.f76652e = d.e(jsonReader, hVar);
                        break;
                    default:
                        jsonReader.x();
                        break;
                }
            } else {
                jsonReader.w();
                jsonReader.x();
            }
        }
        jsonReader.l();
    }

    j b(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        q4.b bVar;
        q4.b bVar2;
        q4.b bVar3;
        q4.b bVar4;
        while (jsonReader.m()) {
            if (jsonReader.v(f76646f) != 0) {
                jsonReader.w();
                jsonReader.x();
            } else {
                jsonReader.d();
                while (jsonReader.m()) {
                    a(jsonReader, hVar);
                }
                jsonReader.k();
            }
        }
        q4.a aVar = this.f76648a;
        if (aVar == null || (bVar = this.f76649b) == null || (bVar2 = this.f76650c) == null || (bVar3 = this.f76651d) == null || (bVar4 = this.f76652e) == null) {
            return null;
        }
        return new j(aVar, bVar, bVar2, bVar3, bVar4);
    }
}
