package kotlin.io.path;

import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.List;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
final class e extends SimpleFileVisitor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f67259a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private h f67260b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ArrayDeque f67261c = new ArrayDeque();

    public e(boolean z10) {
        this.f67259a = z10;
    }

    public FileVisitResult a(Path dir, BasicFileAttributes attrs) throws IOException {
        Intrinsics.h(dir, "dir");
        Intrinsics.h(attrs, "attrs");
        this.f67261c.add(new h(dir, attrs.fileKey(), this.f67260b));
        FileVisitResult fileVisitResultPreVisitDirectory = super.preVisitDirectory(dir, attrs);
        Intrinsics.g(fileVisitResultPreVisitDirectory, "preVisitDirectory(...)");
        return fileVisitResultPreVisitDirectory;
    }

    public final List b(h directoryNode) throws IOException {
        Intrinsics.h(directoryNode, "directoryNode");
        this.f67260b = directoryNode;
        Files.walkFileTree(directoryNode.d(), LinkFollowing.f67250a.b(this.f67259a), 1, b.a(this));
        this.f67261c.removeFirst();
        ArrayDeque arrayDeque = this.f67261c;
        this.f67261c = new ArrayDeque();
        return arrayDeque;
    }

    public FileVisitResult c(Path file, BasicFileAttributes attrs) throws IOException {
        Intrinsics.h(file, "file");
        Intrinsics.h(attrs, "attrs");
        this.f67261c.add(new h(file, null, this.f67260b));
        FileVisitResult fileVisitResultVisitFile = super.visitFile(file, attrs);
        Intrinsics.g(fileVisitResultVisitFile, "visitFile(...)");
        return fileVisitResultVisitFile;
    }

    @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public /* bridge */ /* synthetic */ FileVisitResult preVisitDirectory(Object obj, BasicFileAttributes basicFileAttributes) {
        return a(a.a(obj), basicFileAttributes);
    }

    @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public /* bridge */ /* synthetic */ FileVisitResult visitFile(Object obj, BasicFileAttributes basicFileAttributes) {
        return c(a.a(obj), basicFileAttributes);
    }
}
