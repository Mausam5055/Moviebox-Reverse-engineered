package com.journeyapps.barcodescanner.camera;

import android.graphics.Rect;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import xe.q;

/* JADX INFO: loaded from: classes4.dex */
public class LegacyPreviewScalingStrategy extends PreviewScalingStrategy {
    public static q e(q qVar, q qVar2) {
        q qVarE;
        if (qVar2.b(qVar)) {
            while (true) {
                qVarE = qVar.e(2, 3);
                q qVarE2 = qVar.e(1, 2);
                if (!qVar2.b(qVarE2)) {
                    break;
                }
                qVar = qVarE2;
            }
            return qVar2.b(qVarE) ? qVarE : qVar;
        }
        do {
            q qVarE3 = qVar.e(3, 2);
            qVar = qVar.e(2, 1);
            if (qVar2.b(qVarE3)) {
                return qVarE3;
            }
        } while (!qVar2.b(qVar));
        return qVar;
    }

    @Override // com.journeyapps.barcodescanner.camera.PreviewScalingStrategy
    public q b(List list, final q qVar) {
        if (qVar == null) {
            return (q) list.get(0);
        }
        Collections.sort(list, new Comparator<q>() { // from class: com.journeyapps.barcodescanner.camera.LegacyPreviewScalingStrategy.1
            @Override // java.util.Comparator
            public int compare(q qVar2, q qVar3) {
                int i11 = LegacyPreviewScalingStrategy.e(qVar2, qVar).f78234a - qVar2.f78234a;
                int i12 = LegacyPreviewScalingStrategy.e(qVar3, qVar).f78234a - qVar3.f78234a;
                if (i11 == 0 && i12 == 0) {
                    return qVar2.compareTo(qVar3);
                }
                if (i11 == 0) {
                    return -1;
                }
                if (i12 == 0) {
                    return 1;
                }
                if (i11 < 0 && i12 < 0) {
                    return qVar2.compareTo(qVar3);
                }
                if (i11 <= 0 || i12 <= 0) {
                    return i11 < 0 ? -1 : 1;
                }
                return -qVar2.compareTo(qVar3);
            }
        });
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Viewfinder size: ");
        sb2.append(qVar);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Preview in order of preference: ");
        sb3.append(list);
        return (q) list.get(0);
    }

    @Override // com.journeyapps.barcodescanner.camera.PreviewScalingStrategy
    public Rect d(q qVar, q qVar2) {
        q qVarE = e(qVar, qVar2);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Preview: ");
        sb2.append(qVar);
        sb2.append("; Scaled: ");
        sb2.append(qVarE);
        sb2.append("; Want: ");
        sb2.append(qVar2);
        int i11 = (qVarE.f78234a - qVar2.f78234a) / 2;
        int i12 = (qVarE.f78235b - qVar2.f78235b) / 2;
        return new Rect(-i11, -i12, qVarE.f78234a - i11, qVarE.f78235b - i12);
    }
}
