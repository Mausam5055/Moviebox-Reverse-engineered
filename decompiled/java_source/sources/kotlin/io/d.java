package kotlin.io;

import java.io.File;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
class d extends c {
    public static final FileTreeWalk m(File file, FileWalkDirection direction) {
        Intrinsics.h(file, "<this>");
        Intrinsics.h(direction, "direction");
        return new FileTreeWalk(file, direction);
    }

    public static final FileTreeWalk n(File file) {
        Intrinsics.h(file, "<this>");
        return m(file, FileWalkDirection.BOTTOM_UP);
    }

    public static final FileTreeWalk o(File file) {
        Intrinsics.h(file, "<this>");
        return m(file, FileWalkDirection.TOP_DOWN);
    }
}
