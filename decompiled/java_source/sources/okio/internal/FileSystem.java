package okio.internal;

import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequenceScope;
import kotlin.sequences.SequencesKt;
import okio.BufferedSink;
import okio.FileMetadata;
import okio.Okio;
import okio.Path;
import okio.Source;

/* JADX INFO: renamed from: okio.internal.-FileSystem, reason: invalid class name */
/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u00004\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aI\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00072\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0080@ø\u0001\u0000¢\u0006\u0002\u0010\f\u001a\u001c\u0010\r\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0003H\u0000\u001a\u001c\u0010\u0010\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\nH\u0000\u001a\u001c\u0010\u0013\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\nH\u0000\u001a\u0014\u0010\u0016\u001a\u00020\n*\u00020\u00052\u0006\u0010\b\u001a\u00020\u0003H\u0000\u001a\"\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00030\u0018*\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0000\u001a\u0014\u0010\u0019\u001a\u00020\u001a*\u00020\u00052\u0006\u0010\b\u001a\u00020\u0003H\u0000\u001a\u0016\u0010\u001b\u001a\u0004\u0018\u00010\u0003*\u00020\u00052\u0006\u0010\b\u001a\u00020\u0003H\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001c"}, d2 = {"collectRecursively", "", "Lkotlin/sequences/SequenceScope;", "Lokio/Path;", "fileSystem", "Lokio/FileSystem;", "stack", "Lkotlin/collections/ArrayDeque;", "path", "followSymlinks", "", "postorder", "(Lkotlin/sequences/SequenceScope;Lokio/FileSystem;Lkotlin/collections/ArrayDeque;Lokio/Path;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "commonCopy", EventConstants.KEY_SOURCE, "target", "commonCreateDirectories", OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_DIR, "mustCreate", "commonDeleteRecursively", "fileOrDirectory", "mustExist", "commonExists", "commonListRecursively", "Lkotlin/sequences/Sequence;", "commonMetadata", "Lokio/FileMetadata;", "symlinkTarget", "okio"}, k = 2, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@JvmName
@SourceDebugExtension
public final class FileSystem {

    /* JADX INFO: renamed from: okio.internal.-FileSystem$collectRecursively$1, reason: invalid class name */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @DebugMetadata(c = "okio.internal.-FileSystem", f = "FileSystem.kt", l = {Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE, 135, 145}, m = "collectRecursively")
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        boolean Z$0;
        boolean Z$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FileSystem.collectRecursively(null, null, null, null, false, false, this);
        }
    }

    /* JADX INFO: renamed from: okio.internal.-FileSystem$commonListRecursively$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlin/sequences/SequenceScope;", "Lokio/Path;"}, k = 3, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @DebugMetadata(c = "okio.internal.-FileSystem$commonListRecursively$1", f = "FileSystem.kt", l = {96}, m = "invokeSuspend")
    static final class C10851 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super Path>, Continuation<? super Unit>, Object> {
        final /* synthetic */ Path $dir;
        final /* synthetic */ boolean $followSymlinks;
        final /* synthetic */ okio.FileSystem $this_commonListRecursively;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10851(Path path, okio.FileSystem fileSystem, boolean z10, Continuation<? super C10851> continuation) {
            super(2, continuation);
            this.$dir = path;
            this.$this_commonListRecursively = fileSystem;
            this.$followSymlinks = z10;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C10851 c10851 = new C10851(this.$dir, this.$this_commonListRecursively, this.$followSymlinks, continuation);
            c10851.L$0 = obj;
            return c10851;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SequenceScope<? super Path> sequenceScope, Continuation<? super Unit> continuation) {
            return ((C10851) create(sequenceScope, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            SequenceScope sequenceScope;
            ArrayDeque arrayDeque;
            Iterator<Path> it;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                SequenceScope sequenceScope2 = (SequenceScope) this.L$0;
                ArrayDeque arrayDeque2 = new ArrayDeque();
                arrayDeque2.addLast(this.$dir);
                sequenceScope = sequenceScope2;
                arrayDeque = arrayDeque2;
                it = this.$this_commonListRecursively.list(this.$dir).iterator();
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                it = (Iterator) this.L$2;
                ArrayDeque arrayDeque3 = (ArrayDeque) this.L$1;
                SequenceScope sequenceScope3 = (SequenceScope) this.L$0;
                ResultKt.b(obj);
                arrayDeque = arrayDeque3;
                sequenceScope = sequenceScope3;
            }
            while (it.hasNext()) {
                Path next = it.next();
                okio.FileSystem fileSystem = this.$this_commonListRecursively;
                boolean z10 = this.$followSymlinks;
                this.L$0 = sequenceScope;
                this.L$1 = arrayDeque;
                this.L$2 = it;
                this.label = 1;
                if (FileSystem.collectRecursively(sequenceScope, fileSystem, arrayDeque, next, z10, false, this) == objF) {
                    return objF;
                }
            }
            return Unit.f67061a;
        }
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00f6 A[Catch: all -> 0x005d, TRY_LEAVE, TryCatch #1 {all -> 0x005d, blocks: (B:17:0x0058, B:48:0x00f0, B:50:0x00f6), top: B:69:0x0058 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x0132  */
    /* JADX WARN: Code duplicated, block: B:62:0x0145 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:65:0x0149  */
    /* JADX WARN: Code duplicated, block: B:72:0x011f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:? A[LOOP:0: B:48:0x00f0->B:74:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    public static final Object collectRecursively(SequenceScope<? super Path> sequenceScope, okio.FileSystem fileSystem, ArrayDeque<Path> arrayDeque, Path path, boolean z10, boolean z11, Continuation<? super Unit> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        okio.FileSystem fileSystem2;
        ArrayDeque<Path> arrayDeque2;
        boolean z12;
        okio.FileSystem fileSystem3;
        SequenceScope<? super Path> sequenceScope2;
        boolean z13;
        ArrayDeque<Path> arrayDeque3;
        Path path2;
        boolean z14;
        boolean z15;
        Iterator<Path> it;
        Path next;
        Path path3 = path;
        boolean z16 = z11;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            int i11 = anonymousClass1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i11 - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object obj = anonymousClass1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = anonymousClass1.label;
        int i13 = 0;
        if (i12 == 0) {
            ResultKt.b(obj);
            if (z16) {
                fileSystem2 = fileSystem;
                arrayDeque2 = arrayDeque;
                z12 = z10;
            } else {
                anonymousClass1.L$0 = sequenceScope;
                fileSystem2 = fileSystem;
                anonymousClass1.L$1 = fileSystem2;
                arrayDeque2 = arrayDeque;
                anonymousClass1.L$2 = arrayDeque2;
                anonymousClass1.L$3 = path3;
                z12 = z10;
                anonymousClass1.Z$0 = z12;
                anonymousClass1.Z$1 = z16;
                anonymousClass1.label = 1;
                if (sequenceScope.a(path3, anonymousClass1) == objF) {
                    return objF;
                }
            }
            fileSystem3 = fileSystem2;
            boolean z17 = z12;
            sequenceScope2 = sequenceScope;
            z13 = z17;
        } else {
            if (i12 != 1) {
                if (i12 == 2) {
                    z15 = anonymousClass1.Z$1;
                    z14 = anonymousClass1.Z$0;
                    it = (Iterator) anonymousClass1.L$4;
                    path2 = (Path) anonymousClass1.L$3;
                    arrayDeque3 = (ArrayDeque) anonymousClass1.L$2;
                    fileSystem3 = (okio.FileSystem) anonymousClass1.L$1;
                    sequenceScope2 = (SequenceScope) anonymousClass1.L$0;
                    try {
                        ResultKt.b(obj);
                        while (it.hasNext()) {
                            next = it.next();
                            anonymousClass1.L$0 = sequenceScope2;
                            anonymousClass1.L$1 = fileSystem3;
                            anonymousClass1.L$2 = arrayDeque3;
                            anonymousClass1.L$3 = path2;
                            anonymousClass1.L$4 = it;
                            anonymousClass1.Z$0 = z14;
                            anonymousClass1.Z$1 = z15;
                            anonymousClass1.label = 2;
                            if (collectRecursively(sequenceScope2, fileSystem3, arrayDeque3, next, z14, z15, anonymousClass1) == objF) {
                                return objF;
                            }
                        }
                        arrayDeque3.removeLast();
                        z16 = z15;
                        path3 = path2;
                        if (z16) {
                            return Unit.f67061a;
                        }
                        anonymousClass1.L$0 = null;
                        anonymousClass1.L$1 = null;
                        anonymousClass1.L$2 = null;
                        anonymousClass1.L$3 = null;
                        anonymousClass1.L$4 = null;
                        anonymousClass1.label = 3;
                        if (sequenceScope2.a(path3, anonymousClass1) == objF) {
                            return objF;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        arrayDeque3.removeLast();
                        throw th;
                    }
                } else {
                    if (i12 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return Unit.f67061a;
            }
            boolean z18 = anonymousClass1.Z$1;
            boolean z19 = anonymousClass1.Z$0;
            Path path4 = (Path) anonymousClass1.L$3;
            arrayDeque2 = (ArrayDeque) anonymousClass1.L$2;
            fileSystem3 = (okio.FileSystem) anonymousClass1.L$1;
            sequenceScope2 = (SequenceScope) anonymousClass1.L$0;
            ResultKt.b(obj);
            z16 = z18;
            z13 = z19;
            path3 = path4;
        }
        List<Path> listListOrNull = fileSystem3.listOrNull(path3);
        if (listListOrNull == null) {
            listListOrNull = CollectionsKt.l();
        }
        if (!listListOrNull.isEmpty()) {
            Path path5 = path3;
            while (true) {
                if (z13 && arrayDeque2.contains(path5)) {
                    throw new IOException("symlink cycle at " + path3);
                }
                Path pathSymlinkTarget = symlinkTarget(fileSystem3, path5);
                if (pathSymlinkTarget != null) {
                    i13++;
                    path5 = pathSymlinkTarget;
                } else if (z13 || i13 == 0) {
                    arrayDeque2.addLast(path5);
                    try {
                        arrayDeque3 = arrayDeque2;
                        path2 = path3;
                        z14 = z13;
                        z15 = z16;
                        it = listListOrNull.iterator();
                        while (it.hasNext()) {
                            next = it.next();
                            anonymousClass1.L$0 = sequenceScope2;
                            anonymousClass1.L$1 = fileSystem3;
                            anonymousClass1.L$2 = arrayDeque3;
                            anonymousClass1.L$3 = path2;
                            anonymousClass1.L$4 = it;
                            anonymousClass1.Z$0 = z14;
                            anonymousClass1.Z$1 = z15;
                            anonymousClass1.label = 2;
                            if (collectRecursively(sequenceScope2, fileSystem3, arrayDeque3, next, z14, z15, anonymousClass1) == objF) {
                                return objF;
                            }
                        }
                        arrayDeque3.removeLast();
                        z16 = z15;
                        path3 = path2;
                    } catch (Throwable th3) {
                        th = th3;
                        arrayDeque3 = arrayDeque2;
                        arrayDeque3.removeLast();
                        throw th;
                    }
                }
            }
        }
        if (z16) {
            return Unit.f67061a;
        }
        anonymousClass1.L$0 = null;
        anonymousClass1.L$1 = null;
        anonymousClass1.L$2 = null;
        anonymousClass1.L$3 = null;
        anonymousClass1.L$4 = null;
        anonymousClass1.label = 3;
        if (sequenceScope2.a(path3, anonymousClass1) == objF) {
            return objF;
        }
        return Unit.f67061a;
    }

    public static final void commonCopy(okio.FileSystem fileSystem, Path source, Path target) throws IOException {
        Long lValueOf;
        Throwable th2;
        Long lValueOf2;
        Intrinsics.h(fileSystem, "<this>");
        Intrinsics.h(source, "source");
        Intrinsics.h(target, "target");
        Source source2 = fileSystem.source(source);
        Throwable th3 = null;
        try {
            BufferedSink bufferedSinkBuffer = Okio.buffer(fileSystem.sink(target));
            try {
                lValueOf2 = Long.valueOf(bufferedSinkBuffer.writeAll(source2));
                if (bufferedSinkBuffer != null) {
                    try {
                        bufferedSinkBuffer.close();
                    } catch (Throwable th4) {
                        th2 = th4;
                    }
                }
                th2 = null;
            } catch (Throwable th5) {
                if (bufferedSinkBuffer != null) {
                    try {
                        bufferedSinkBuffer.close();
                    } catch (Throwable th6) {
                        ExceptionsKt.a(th5, th6);
                    }
                }
                th2 = th5;
                lValueOf2 = null;
            }
            if (th2 != null) {
                throw th2;
            }
            Intrinsics.e(lValueOf2);
            lValueOf = Long.valueOf(lValueOf2.longValue());
            if (source2 != null) {
                try {
                    source2.close();
                } catch (Throwable th7) {
                    th3 = th7;
                }
            }
            if (th3 != null) {
                throw th3;
            }
            Intrinsics.e(lValueOf);
        } catch (Throwable th8) {
            if (source2 != null) {
                try {
                    source2.close();
                } catch (Throwable th9) {
                    ExceptionsKt.a(th8, th9);
                }
            }
            th3 = th8;
            lValueOf = null;
        }
    }

    public static final void commonCreateDirectories(okio.FileSystem fileSystem, Path dir, boolean z10) throws IOException {
        Intrinsics.h(fileSystem, "<this>");
        Intrinsics.h(dir, "dir");
        ArrayDeque arrayDeque = new ArrayDeque();
        for (Path pathParent = dir; pathParent != null && !fileSystem.exists(pathParent); pathParent = pathParent.parent()) {
            arrayDeque.addFirst(pathParent);
        }
        if (z10 && arrayDeque.isEmpty()) {
            throw new IOException(dir + " already exists.");
        }
        Iterator<E> it = arrayDeque.iterator();
        while (it.hasNext()) {
            fileSystem.createDirectory((Path) it.next());
        }
    }

    public static final void commonDeleteRecursively(okio.FileSystem fileSystem, Path fileOrDirectory, boolean z10) throws IOException {
        Intrinsics.h(fileSystem, "<this>");
        Intrinsics.h(fileOrDirectory, "fileOrDirectory");
        Iterator f67431a = SequencesKt.b(new FileSystem$commonDeleteRecursively$sequence$1(fileSystem, fileOrDirectory, null)).getF67431a();
        while (f67431a.hasNext()) {
            fileSystem.delete((Path) f67431a.next(), z10 && !f67431a.hasNext());
        }
    }

    public static final boolean commonExists(okio.FileSystem fileSystem, Path path) throws IOException {
        Intrinsics.h(fileSystem, "<this>");
        Intrinsics.h(path, "path");
        return fileSystem.metadataOrNull(path) != null;
    }

    public static final Sequence<Path> commonListRecursively(okio.FileSystem fileSystem, Path dir, boolean z10) throws IOException {
        Intrinsics.h(fileSystem, "<this>");
        Intrinsics.h(dir, "dir");
        return SequencesKt.b(new C10851(dir, fileSystem, z10, null));
    }

    public static final FileMetadata commonMetadata(okio.FileSystem fileSystem, Path path) throws IOException {
        Intrinsics.h(fileSystem, "<this>");
        Intrinsics.h(path, "path");
        FileMetadata fileMetadataMetadataOrNull = fileSystem.metadataOrNull(path);
        if (fileMetadataMetadataOrNull != null) {
            return fileMetadataMetadataOrNull;
        }
        throw new FileNotFoundException("no such file: " + path);
    }

    public static final Path symlinkTarget(okio.FileSystem fileSystem, Path path) throws IOException {
        Intrinsics.h(fileSystem, "<this>");
        Intrinsics.h(path, "path");
        Path symlinkTarget = fileSystem.metadata(path).getSymlinkTarget();
        if (symlinkTarget == null) {
            return null;
        }
        Path pathParent = path.parent();
        Intrinsics.e(pathParent);
        return pathParent.resolve(symlinkTarget);
    }
}
