package okio;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\bH\u0016J\u0010\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\bH\u0016J\u0018\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\nH\u0016J\u0018\u0010\u0014\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\bH\u0016J\u0018\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0016\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\b0\u00172\u0006\u0010\u0012\u001a\u00020\bH\u0016J\u0018\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00172\u0006\u0010\u0012\u001a\u00020\bH\u0016J\u001e\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\b0\u001a2\u0006\u0010\u0012\u001a\u00020\b2\u0006\u0010\u001b\u001a\u00020\nH\u0016J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u0010\u001a\u00020\bH\u0016J \u0010\u001e\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020 H\u0016J\u0018\u0010\"\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0010\u0010#\u001a\u00020$2\u0006\u0010\u0007\u001a\u00020\bH\u0016J \u0010%\u001a\u00020$2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010&\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\nH\u0016J\u0010\u0010\r\u001a\u00020'2\u0006\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010(\u001a\u00020 H\u0016R\u0013\u0010\u0002\u001a\u00020\u00018\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0004¨\u0006)"}, d2 = {"Lokio/ForwardingFileSystem;", "Lokio/FileSystem;", "delegate", "(Lokio/FileSystem;)V", "()Lokio/FileSystem;", "appendingSink", "Lokio/Sink;", OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE, "Lokio/Path;", "mustExist", "", "atomicMove", "", EventConstants.KEY_SOURCE, "target", "canonicalize", "path", "createDirectory", OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_DIR, "mustCreate", "createSymlink", RequestParameters.SUBRESOURCE_DELETE, "list", "", "listOrNull", "listRecursively", "Lkotlin/sequences/Sequence;", "followSymlinks", "metadataOrNull", "Lokio/FileMetadata;", "onPathParameter", "functionName", "", "parameterName", "onPathResult", "openReadOnly", "Lokio/FileHandle;", "openReadWrite", "sink", "Lokio/Source;", "toString", "okio"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public abstract class ForwardingFileSystem extends FileSystem {
    private final FileSystem delegate;

    public ForwardingFileSystem(FileSystem delegate) {
        Intrinsics.h(delegate, "delegate");
        this.delegate = delegate;
    }

    @Override // okio.FileSystem
    public Sink appendingSink(Path file, boolean mustExist) throws IOException {
        Intrinsics.h(file, "file");
        return this.delegate.appendingSink(onPathParameter(file, "appendingSink", OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE), mustExist);
    }

    @Override // okio.FileSystem
    public void atomicMove(Path source, Path target) throws IOException {
        Intrinsics.h(source, "source");
        Intrinsics.h(target, "target");
        this.delegate.atomicMove(onPathParameter(source, "atomicMove", EventConstants.KEY_SOURCE), onPathParameter(target, "atomicMove", "target"));
    }

    @Override // okio.FileSystem
    public Path canonicalize(Path path) throws IOException {
        Intrinsics.h(path, "path");
        return onPathResult(this.delegate.canonicalize(onPathParameter(path, "canonicalize", "path")), "canonicalize");
    }

    @Override // okio.FileSystem
    public void createDirectory(Path dir, boolean mustCreate) throws IOException {
        Intrinsics.h(dir, "dir");
        this.delegate.createDirectory(onPathParameter(dir, "createDirectory", OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_DIR), mustCreate);
    }

    @Override // okio.FileSystem
    public void createSymlink(Path source, Path target) throws IOException {
        Intrinsics.h(source, "source");
        Intrinsics.h(target, "target");
        this.delegate.createSymlink(onPathParameter(source, "createSymlink", EventConstants.KEY_SOURCE), onPathParameter(target, "createSymlink", "target"));
    }

    @JvmName
    /* JADX INFO: renamed from: delegate, reason: from getter */
    public final FileSystem getDelegate() {
        return this.delegate;
    }

    @Override // okio.FileSystem
    public void delete(Path path, boolean mustExist) throws IOException {
        Intrinsics.h(path, "path");
        this.delegate.delete(onPathParameter(path, RequestParameters.SUBRESOURCE_DELETE, "path"), mustExist);
    }

    @Override // okio.FileSystem
    public List<Path> list(Path dir) throws IOException {
        Intrinsics.h(dir, "dir");
        List<Path> list = this.delegate.list(onPathParameter(dir, "list", OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_DIR));
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(onPathResult((Path) it.next(), "list"));
        }
        CollectionsKt.z(arrayList);
        return arrayList;
    }

    @Override // okio.FileSystem
    public List<Path> listOrNull(Path dir) {
        Intrinsics.h(dir, "dir");
        List<Path> listListOrNull = this.delegate.listOrNull(onPathParameter(dir, "listOrNull", OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_DIR));
        if (listListOrNull == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = listListOrNull.iterator();
        while (it.hasNext()) {
            arrayList.add(onPathResult((Path) it.next(), "listOrNull"));
        }
        CollectionsKt.z(arrayList);
        return arrayList;
    }

    @Override // okio.FileSystem
    public Sequence<Path> listRecursively(Path dir, boolean followSymlinks) {
        Intrinsics.h(dir, "dir");
        return SequencesKt.y(this.delegate.listRecursively(onPathParameter(dir, "listRecursively", OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_DIR), followSymlinks), new Function1<Path, Path>() { // from class: okio.ForwardingFileSystem.listRecursively.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Path invoke(Path it) {
                Intrinsics.h(it, "it");
                return ForwardingFileSystem.this.onPathResult(it, "listRecursively");
            }
        });
    }

    @Override // okio.FileSystem
    public FileMetadata metadataOrNull(Path path) throws IOException {
        Intrinsics.h(path, "path");
        FileMetadata fileMetadataMetadataOrNull = this.delegate.metadataOrNull(onPathParameter(path, "metadataOrNull", "path"));
        if (fileMetadataMetadataOrNull == null) {
            return null;
        }
        return fileMetadataMetadataOrNull.getSymlinkTarget() == null ? fileMetadataMetadataOrNull : fileMetadataMetadataOrNull.copy((251 & 1) != 0 ? fileMetadataMetadataOrNull.isRegularFile : false, (251 & 2) != 0 ? fileMetadataMetadataOrNull.isDirectory : false, (251 & 4) != 0 ? fileMetadataMetadataOrNull.symlinkTarget : onPathResult(fileMetadataMetadataOrNull.getSymlinkTarget(), "metadataOrNull"), (251 & 8) != 0 ? fileMetadataMetadataOrNull.size : null, (251 & 16) != 0 ? fileMetadataMetadataOrNull.createdAtMillis : null, (251 & 32) != 0 ? fileMetadataMetadataOrNull.lastModifiedAtMillis : null, (251 & 64) != 0 ? fileMetadataMetadataOrNull.lastAccessedAtMillis : null, (251 & 128) != 0 ? fileMetadataMetadataOrNull.extras : null);
    }

    public Path onPathParameter(Path path, String functionName, String parameterName) {
        Intrinsics.h(path, "path");
        Intrinsics.h(functionName, "functionName");
        Intrinsics.h(parameterName, "parameterName");
        return path;
    }

    public Path onPathResult(Path path, String functionName) {
        Intrinsics.h(path, "path");
        Intrinsics.h(functionName, "functionName");
        return path;
    }

    @Override // okio.FileSystem
    public FileHandle openReadOnly(Path file) throws IOException {
        Intrinsics.h(file, "file");
        return this.delegate.openReadOnly(onPathParameter(file, "openReadOnly", OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE));
    }

    @Override // okio.FileSystem
    public FileHandle openReadWrite(Path file, boolean mustCreate, boolean mustExist) throws IOException {
        Intrinsics.h(file, "file");
        return this.delegate.openReadWrite(onPathParameter(file, "openReadWrite", OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE), mustCreate, mustExist);
    }

    @Override // okio.FileSystem
    public Sink sink(Path file, boolean mustCreate) throws IOException {
        Intrinsics.h(file, "file");
        return this.delegate.sink(onPathParameter(file, "sink", OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE), mustCreate);
    }

    @Override // okio.FileSystem
    public Source source(Path file) throws IOException {
        Intrinsics.h(file, "file");
        return this.delegate.source(onPathParameter(file, EventConstants.KEY_SOURCE, OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE));
    }

    public String toString() {
        return Reflection.b(getClass()).g() + '(' + this.delegate + ')';
    }
}
