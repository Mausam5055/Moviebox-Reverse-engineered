package androidx.compose.ui.graphics.vector;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Object d(ArrayList arrayList) {
        return arrayList.get(arrayList.size() - 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object e(ArrayList arrayList) {
        return arrayList.remove(arrayList.size() - 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean f(ArrayList arrayList, Object obj) {
        return arrayList.add(obj);
    }
}
