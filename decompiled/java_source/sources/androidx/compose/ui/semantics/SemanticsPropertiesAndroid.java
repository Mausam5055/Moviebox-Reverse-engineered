package androidx.compose.ui.semantics;

import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class SemanticsPropertiesAndroid {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SemanticsPropertiesAndroid f5945a = new SemanticsPropertiesAndroid();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final SemanticsPropertyKey f5946b = new SemanticsPropertyKey("TestTagsAsResourceId", false, new Function2<Boolean, Boolean, Boolean>() { // from class: androidx.compose.ui.semantics.SemanticsPropertiesAndroid$TestTagsAsResourceId$1
        public final Boolean invoke(Boolean bool, boolean z10) {
            return bool;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            return invoke((Boolean) obj, ((Boolean) obj2).booleanValue());
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f5947c = 8;

    private SemanticsPropertiesAndroid() {
    }

    public final SemanticsPropertyKey a() {
        return f5946b;
    }
}
