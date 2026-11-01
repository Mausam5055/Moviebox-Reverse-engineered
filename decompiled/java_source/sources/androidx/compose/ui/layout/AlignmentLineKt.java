package androidx.compose.ui.layout;

/* JADX INFO: loaded from: classes.dex */
public abstract class AlignmentLineKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final h f5094a = new h(AlignmentLineKt$FirstBaseline$1.INSTANCE);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final h f5095b = new h(AlignmentLineKt$LastBaseline$1.INSTANCE);

    public static final h a() {
        return f5094a;
    }

    public static final h b() {
        return f5095b;
    }

    public static final int c(a aVar, int i11, int i12) {
        return ((Number) aVar.a().invoke(Integer.valueOf(i11), Integer.valueOf(i12))).intValue();
    }
}
