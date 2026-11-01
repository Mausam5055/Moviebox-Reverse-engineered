package u4;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class h0 implements n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h0 f76635a = new h0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final JsonReader.a f76636b = JsonReader.a.a("c", "v", "i", "o");

    private h0() {
    }

    @Override // u4.n0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public r4.i a(JsonReader jsonReader, float f11) {
        if (jsonReader.t() == JsonReader.Token.BEGIN_ARRAY) {
            jsonReader.d();
        }
        jsonReader.h();
        List listF = null;
        List listF2 = null;
        List listF3 = null;
        boolean zN = false;
        while (jsonReader.m()) {
            int iV = jsonReader.v(f76636b);
            if (iV == 0) {
                zN = jsonReader.n();
            } else if (iV == 1) {
                listF = s.f(jsonReader, f11);
            } else if (iV == 2) {
                listF2 = s.f(jsonReader, f11);
            } else if (iV != 3) {
                jsonReader.w();
                jsonReader.x();
            } else {
                listF3 = s.f(jsonReader, f11);
            }
        }
        jsonReader.l();
        if (jsonReader.t() == JsonReader.Token.END_ARRAY) {
            jsonReader.k();
        }
        if (listF == null || listF2 == null || listF3 == null) {
            throw new IllegalArgumentException("Shape data was missing information.");
        }
        if (listF.isEmpty()) {
            return new r4.i(new PointF(), false, Collections.emptyList());
        }
        int size = listF.size();
        PointF pointF = (PointF) listF.get(0);
        ArrayList arrayList = new ArrayList(size);
        for (int i11 = 1; i11 < size; i11++) {
            PointF pointF2 = (PointF) listF.get(i11);
            int i12 = i11 - 1;
            arrayList.add(new p4.a(v4.k.a((PointF) listF.get(i12), (PointF) listF3.get(i12)), v4.k.a(pointF2, (PointF) listF2.get(i11)), pointF2));
        }
        if (zN) {
            PointF pointF3 = (PointF) listF.get(0);
            int i13 = size - 1;
            arrayList.add(new p4.a(v4.k.a((PointF) listF.get(i13), (PointF) listF3.get(i13)), v4.k.a(pointF3, (PointF) listF2.get(0)), pointF3));
        }
        return new r4.i(pointF, zN, arrayList);
    }
}
