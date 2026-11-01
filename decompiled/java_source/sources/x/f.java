package x;

import android.util.SparseArray;
import android.view.ViewStructure;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillValue;
import java.util.Map;
import kotlin.NotImplementedError;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class f {
    public static final void a(d dVar, SparseArray sparseArray) {
        int size = sparseArray.size();
        for (int i11 = 0; i11 < size; i11++) {
            int iKeyAt = sparseArray.keyAt(i11);
            AutofillValue autofillValueA = e.a(sparseArray.get(iKeyAt));
            r rVar = r.f77996a;
            if (rVar.d(autofillValueA)) {
                dVar.b().b(iKeyAt, rVar.i(autofillValueA).toString());
            } else {
                if (rVar.b(autofillValueA)) {
                    throw new NotImplementedError("An operation is not implemented: b/138604541: Add onFill() callback for date");
                }
                if (rVar.c(autofillValueA)) {
                    throw new NotImplementedError("An operation is not implemented: b/138604541: Add onFill() callback for list");
                }
                if (rVar.e(autofillValueA)) {
                    throw new NotImplementedError("An operation is not implemented: b/138604541:  Add onFill() callback for toggle");
                }
            }
        }
    }

    public static final void b(d dVar, ViewStructure viewStructure) {
        int iA = h.f77995a.a(viewStructure, dVar.b().a().size());
        for (Map.Entry entry : dVar.b().a().entrySet()) {
            int iIntValue = ((Number) entry.getKey()).intValue();
            android.support.v4.media.session.c.a(entry.getValue());
            h hVar = h.f77995a;
            ViewStructure viewStructureB = hVar.b(viewStructure, iA);
            if (viewStructureB != null) {
                r rVar = r.f77996a;
                AutofillId autofillIdA = rVar.a(viewStructure);
                Intrinsics.e(autofillIdA);
                rVar.g(viewStructureB, autofillIdA, iIntValue);
                hVar.d(viewStructureB, iIntValue, dVar.c().getContext().getPackageName(), null, null);
                rVar.h(viewStructureB, x.f77999a.a());
                throw null;
            }
            iA++;
        }
    }
}
