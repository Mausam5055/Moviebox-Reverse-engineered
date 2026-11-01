package com.journeyapps.barcodescanner.camera;

import android.graphics.Rect;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import xe.q;

/* JADX INFO: loaded from: classes4.dex */
public abstract class PreviewScalingStrategy {
    public List a(List list, final q qVar) {
        if (qVar == null) {
            return list;
        }
        Collections.sort(list, new Comparator<q>() { // from class: com.journeyapps.barcodescanner.camera.PreviewScalingStrategy.1
            @Override // java.util.Comparator
            public int compare(q qVar2, q qVar3) {
                return Float.compare(PreviewScalingStrategy.this.c(qVar3, qVar), PreviewScalingStrategy.this.c(qVar2, qVar));
            }
        });
        return list;
    }

    public q b(List list, q qVar) {
        List listA = a(list, qVar);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Viewfinder size: ");
        sb2.append(qVar);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Preview in order of preference: ");
        sb3.append(listA);
        return (q) listA.get(0);
    }

    protected float c(q qVar, q qVar2) {
        return 0.5f;
    }

    public abstract Rect d(q qVar, q qVar2);
}
