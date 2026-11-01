package androidx.compose.runtime.saveable;

import androidx.compose.runtime.i;
import androidx.compose.runtime.k;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public abstract class SaveableStateHolderKt {
    public static final a a(i iVar, int i11) {
        if (k.H()) {
            k.Q(15454635, i11, -1, "androidx.compose.runtime.saveable.rememberSaveableStateHolder (SaveableStateHolder.kt:60)");
        }
        iVar.P(-796080049);
        SaveableStateHolderImpl saveableStateHolderImpl = (SaveableStateHolderImpl) RememberSaveableKt.c(new Object[0], SaveableStateHolderImpl.f3894d.a(), null, new Function0<SaveableStateHolderImpl>() { // from class: androidx.compose.runtime.saveable.SaveableStateHolderKt$rememberSaveableStateHolder$1
            @Override // kotlin.jvm.functions.Function0
            public final SaveableStateHolderImpl invoke() {
                return new SaveableStateHolderImpl(null, 1, null);
            }
        }, iVar, 3072, 4);
        saveableStateHolderImpl.i((b) iVar.l(SaveableStateRegistryKt.d()));
        iVar.K();
        if (k.H()) {
            k.P();
        }
        return saveableStateHolderImpl;
    }
}
