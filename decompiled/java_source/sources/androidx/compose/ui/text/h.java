package androidx.compose.ui.text;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class h {
    /* JADX INFO: Access modifiers changed from: private */
    public static final List b(List list, int i11, int i12) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i13 = 0; i13 < size; i13++) {
            Object obj = list.get(i13);
            AnnotatedString.c cVar = (AnnotatedString.c) obj;
            if (d.k(i11, i12, cVar.f(), cVar.d())) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size2 = arrayList.size();
        for (int i14 = 0; i14 < size2; i14++) {
            AnnotatedString.c cVar2 = (AnnotatedString.c) arrayList.get(i14);
            if (i11 > cVar2.f() || cVar2.d() > i12) {
                throw new IllegalArgumentException("placeholder can not overlap with paragraph.");
            }
            arrayList2.add(new AnnotatedString.c(cVar2.e(), cVar2.f() - i11, cVar2.d() - i11));
        }
        return arrayList2;
    }
}
