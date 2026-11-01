package androidx.compose.ui.graphics;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class o4 {
    static {
        Path.a aVar = Path.f4275a;
    }

    public static /* synthetic */ void a(Path path, y.i iVar, Path.Direction direction, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addRect");
        }
        if ((i11 & 2) != 0) {
            direction = Path.Direction.CounterClockwise;
        }
        path.n(iVar, direction);
    }

    public static /* synthetic */ void b(Path path, y.k kVar, Path.Direction direction, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addRoundRect");
        }
        if ((i11 & 2) != 0) {
            direction = Path.Direction.CounterClockwise;
        }
        path.i(kVar, direction);
    }
}
