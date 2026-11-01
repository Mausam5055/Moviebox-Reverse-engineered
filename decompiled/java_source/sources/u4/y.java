package u4;

import com.airbnb.lottie.model.content.MergePaths;
import com.airbnb.lottie.parser.moshi.JsonReader;

/* JADX INFO: loaded from: classes2.dex */
abstract class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f76683a = JsonReader.a.a("nm", "mm", "hd");

    static MergePaths a(JsonReader jsonReader) {
        String strR = null;
        boolean zN = false;
        MergePaths.MergePathsMode mergePathsModeForId = null;
        while (jsonReader.m()) {
            int iV = jsonReader.v(f76683a);
            if (iV == 0) {
                strR = jsonReader.r();
            } else if (iV == 1) {
                mergePathsModeForId = MergePaths.MergePathsMode.forId(jsonReader.p());
            } else if (iV != 2) {
                jsonReader.w();
                jsonReader.x();
            } else {
                zN = jsonReader.n();
            }
        }
        return new MergePaths(strR, mergePathsModeForId, zN);
    }
}
