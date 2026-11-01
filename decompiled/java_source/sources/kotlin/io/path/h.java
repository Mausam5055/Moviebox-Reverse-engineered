package kotlin.io.path;

import java.nio.file.Path;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Path f67262a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f67263b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final h f67264c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Iterator f67265d;

    public h(Path path, Object obj, h hVar) {
        Intrinsics.h(path, "path");
        this.f67262a = path;
        this.f67263b = obj;
        this.f67264c = hVar;
    }

    public final Iterator a() {
        return this.f67265d;
    }

    public final Object b() {
        return this.f67263b;
    }

    public final h c() {
        return this.f67264c;
    }

    public final Path d() {
        return this.f67262a;
    }

    public final void e(Iterator it) {
        this.f67265d = it;
    }
}
