package okio;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 .2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001.B\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0011\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0000H\u0096\u0002J\u0016\u0010 \u001a\u00020\u00002\u0006\u0010!\u001a\u00020\rH\u0087\u0002¢\u0006\u0002\b\"J\u0016\u0010 \u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u0003H\u0087\u0002¢\u0006\u0002\b\"J\u0016\u0010 \u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u0000H\u0087\u0002¢\u0006\u0002\b\"J\u0013\u0010#\u001a\u00020\b2\b\u0010\u001f\u001a\u0004\u0018\u00010$H\u0096\u0002J\b\u0010%\u001a\u00020\u001eH\u0016J\u0006\u0010&\u001a\u00020\u0000J\u000e\u0010'\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u0000J\u0018\u0010\"\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\r2\b\b\u0002\u0010(\u001a\u00020\bJ\u0018\u0010\"\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u00032\b\b\u0002\u0010(\u001a\u00020\bJ\u0018\u0010\"\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u00002\b\b\u0002\u0010(\u001a\u00020\bJ\u0006\u0010)\u001a\u00020*J\u0006\u0010+\u001a\u00020,J\b\u0010-\u001a\u00020\rH\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\tR\u0011\u0010\n\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\n\u0010\tR\u0011\u0010\u000b\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\tR\u0011\u0010\f\u001a\u00020\r8G¢\u0006\u0006\u001a\u0004\b\f\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u00038G¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0006R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u00008G¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u00008F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0011R\u0017\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\r0\u00158F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u0017\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00030\u00158F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0017R\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u001b8G¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001c¨\u0006/"}, d2 = {"Lokio/Path;", "", "bytes", "Lokio/ByteString;", "(Lokio/ByteString;)V", "getBytes$okio", "()Lokio/ByteString;", "isAbsolute", "", "()Z", "isRelative", "isRoot", "name", "", "()Ljava/lang/String;", "nameBytes", "parent", "()Lokio/Path;", "root", "getRoot", "segments", "", "getSegments", "()Ljava/util/List;", "segmentsBytes", "getSegmentsBytes", "volumeLetter", "", "()Ljava/lang/Character;", "compareTo", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, TtmlNode.TAG_DIV, "child", "resolve", "equals", "", "hashCode", "normalized", "relativeTo", "normalize", "toFile", "Ljava/io/File;", "toNioPath", "Ljava/nio/file/Path;", "toString", "Companion", "okio"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class Path implements Comparable<Path> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @JvmField
    public static final String DIRECTORY_SEPARATOR;
    private final ByteString bytes;

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001b\u0010\u0005\u001a\u00020\u0006*\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\tH\u0007¢\u0006\u0002\b\nJ\u001b\u0010\u0005\u001a\u00020\u0006*\u00020\u000b2\b\b\u0002\u0010\b\u001a\u00020\tH\u0007¢\u0006\u0002\b\nJ\u001b\u0010\f\u001a\u00020\u0006*\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\tH\u0007¢\u0006\u0002\b\nR\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lokio/Path$Companion;", "", "()V", "DIRECTORY_SEPARATOR", "", "toOkioPath", "Lokio/Path;", "Ljava/io/File;", "normalize", "", "get", "Ljava/nio/file/Path;", "toPath", "okio"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ Path get$default(Companion companion, File file, boolean z10, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                z10 = false;
            }
            return companion.get(file, z10);
        }

        public static /* synthetic */ Path get$default(Companion companion, String str, boolean z10, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                z10 = false;
            }
            return companion.get(str, z10);
        }

        public static /* synthetic */ Path get$default(Companion companion, java.nio.file.Path path, boolean z10, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                z10 = false;
            }
            return companion.get(path, z10);
        }

        @JvmStatic
        @JvmOverloads
        @JvmName
        public final Path get(File file) {
            Intrinsics.h(file, "<this>");
            return get$default(this, file, false, 1, (Object) null);
        }

        @JvmStatic
        @JvmOverloads
        @JvmName
        public final Path get(File file, boolean z10) {
            Intrinsics.h(file, "<this>");
            String string = file.toString();
            Intrinsics.g(string, "toString(...)");
            return get(string, z10);
        }

        @JvmStatic
        @JvmOverloads
        @JvmName
        public final Path get(String str) {
            Intrinsics.h(str, "<this>");
            return get$default(this, str, false, 1, (Object) null);
        }

        @JvmStatic
        @JvmOverloads
        @JvmName
        public final Path get(String str, boolean z10) {
            Intrinsics.h(str, "<this>");
            return okio.internal.Path.commonToPath(str, z10);
        }

        @JvmStatic
        @JvmOverloads
        @JvmName
        public final Path get(java.nio.file.Path path) {
            Intrinsics.h(path, "<this>");
            return get$default(this, path, false, 1, (Object) null);
        }

        @JvmStatic
        @JvmOverloads
        @JvmName
        public final Path get(java.nio.file.Path path, boolean z10) {
            Intrinsics.h(path, "<this>");
            return get(path.toString(), z10);
        }
    }

    static {
        String separator = File.separator;
        Intrinsics.g(separator, "separator");
        DIRECTORY_SEPARATOR = separator;
    }

    public Path(ByteString bytes) {
        Intrinsics.h(bytes, "bytes");
        this.bytes = bytes;
    }

    @JvmStatic
    @JvmOverloads
    @JvmName
    public static final Path get(File file) {
        return INSTANCE.get(file);
    }

    @JvmStatic
    @JvmOverloads
    @JvmName
    public static final Path get(File file, boolean z10) {
        return INSTANCE.get(file, z10);
    }

    @JvmStatic
    @JvmOverloads
    @JvmName
    public static final Path get(String str) {
        return INSTANCE.get(str);
    }

    @JvmStatic
    @JvmOverloads
    @JvmName
    public static final Path get(String str, boolean z10) {
        return INSTANCE.get(str, z10);
    }

    @JvmStatic
    @JvmOverloads
    @JvmName
    public static final Path get(java.nio.file.Path path) {
        return INSTANCE.get(path);
    }

    @JvmStatic
    @JvmOverloads
    @JvmName
    public static final Path get(java.nio.file.Path path, boolean z10) {
        return INSTANCE.get(path, z10);
    }

    public static /* synthetic */ Path resolve$default(Path path, String str, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        return path.resolve(str, z10);
    }

    public static /* synthetic */ Path resolve$default(Path path, ByteString byteString, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        return path.resolve(byteString, z10);
    }

    public static /* synthetic */ Path resolve$default(Path path, Path path2, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        return path.resolve(path2, z10);
    }

    @Override // java.lang.Comparable
    public int compareTo(Path other) {
        Intrinsics.h(other, "other");
        return getBytes().compareTo(other.getBytes());
    }

    public boolean equals(Object other) {
        return (other instanceof Path) && Intrinsics.c(((Path) other).getBytes(), getBytes());
    }

    /* JADX INFO: renamed from: getBytes$okio, reason: from getter */
    public final ByteString getBytes() {
        return this.bytes;
    }

    public final Path getRoot() {
        int iRootLength = okio.internal.Path.rootLength(this);
        if (iRootLength == -1) {
            return null;
        }
        return new Path(getBytes().substring(0, iRootLength));
    }

    public final List<String> getSegments() {
        ArrayList arrayList = new ArrayList();
        int iRootLength = okio.internal.Path.rootLength(this);
        if (iRootLength == -1) {
            iRootLength = 0;
        } else if (iRootLength < getBytes().size() && getBytes().getByte(iRootLength) == 92) {
            iRootLength++;
        }
        int size = getBytes().size();
        int i11 = iRootLength;
        while (iRootLength < size) {
            if (getBytes().getByte(iRootLength) == 47 || getBytes().getByte(iRootLength) == 92) {
                arrayList.add(getBytes().substring(i11, iRootLength));
                i11 = iRootLength + 1;
            }
            iRootLength++;
        }
        if (i11 < getBytes().size()) {
            arrayList.add(getBytes().substring(i11, getBytes().size()));
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.v(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((ByteString) it.next()).utf8());
        }
        return arrayList2;
    }

    public final List<ByteString> getSegmentsBytes() {
        ArrayList arrayList = new ArrayList();
        int iRootLength = okio.internal.Path.rootLength(this);
        if (iRootLength == -1) {
            iRootLength = 0;
        } else if (iRootLength < getBytes().size() && getBytes().getByte(iRootLength) == 92) {
            iRootLength++;
        }
        int size = getBytes().size();
        int i11 = iRootLength;
        while (iRootLength < size) {
            if (getBytes().getByte(iRootLength) == 47 || getBytes().getByte(iRootLength) == 92) {
                arrayList.add(getBytes().substring(i11, iRootLength));
                i11 = iRootLength + 1;
            }
            iRootLength++;
        }
        if (i11 < getBytes().size()) {
            arrayList.add(getBytes().substring(i11, getBytes().size()));
        }
        return arrayList;
    }

    public int hashCode() {
        return getBytes().hashCode();
    }

    public final boolean isAbsolute() {
        return okio.internal.Path.rootLength(this) != -1;
    }

    public final boolean isRelative() {
        return okio.internal.Path.rootLength(this) == -1;
    }

    public final boolean isRoot() {
        return okio.internal.Path.rootLength(this) == getBytes().size();
    }

    @JvmName
    public final String name() {
        return nameBytes().utf8();
    }

    @JvmName
    public final ByteString nameBytes() {
        int indexOfLastSlash = okio.internal.Path.getIndexOfLastSlash(this);
        if (indexOfLastSlash != -1) {
            return ByteString.substring$default(getBytes(), indexOfLastSlash + 1, 0, 2, null);
        }
        return (volumeLetter() == null || getBytes().size() != 2) ? getBytes() : ByteString.EMPTY;
    }

    public final Path normalized() {
        return INSTANCE.get(toString(), true);
    }

    @JvmName
    public final Path parent() {
        Path path;
        if (Intrinsics.c(getBytes(), okio.internal.Path.DOT) || Intrinsics.c(getBytes(), okio.internal.Path.SLASH) || Intrinsics.c(getBytes(), okio.internal.Path.BACKSLASH) || okio.internal.Path.lastSegmentIsDotDot(this)) {
            return null;
        }
        int indexOfLastSlash = okio.internal.Path.getIndexOfLastSlash(this);
        if (indexOfLastSlash != 2 || volumeLetter() == null) {
            if (indexOfLastSlash == 1 && getBytes().startsWith(okio.internal.Path.BACKSLASH)) {
                return null;
            }
            if (indexOfLastSlash != -1 || volumeLetter() == null) {
                if (indexOfLastSlash == -1) {
                    return new Path(okio.internal.Path.DOT);
                }
                if (indexOfLastSlash != 0) {
                    return new Path(ByteString.substring$default(getBytes(), 0, indexOfLastSlash, 1, null));
                }
                path = new Path(ByteString.substring$default(getBytes(), 0, 1, 1, null));
            } else {
                if (getBytes().size() == 2) {
                    return null;
                }
                path = new Path(ByteString.substring$default(getBytes(), 0, 2, 1, null));
            }
        } else {
            if (getBytes().size() == 3) {
                return null;
            }
            path = new Path(ByteString.substring$default(getBytes(), 0, 3, 1, null));
        }
        return path;
    }

    public final Path relativeTo(Path other) {
        Intrinsics.h(other, "other");
        if (!Intrinsics.c(getRoot(), other.getRoot())) {
            throw new IllegalArgumentException(("Paths of different roots cannot be relative to each other: " + this + " and " + other).toString());
        }
        List<ByteString> segmentsBytes = getSegmentsBytes();
        List<ByteString> segmentsBytes2 = other.getSegmentsBytes();
        int iMin = Math.min(segmentsBytes.size(), segmentsBytes2.size());
        int i11 = 0;
        while (i11 < iMin && Intrinsics.c(segmentsBytes.get(i11), segmentsBytes2.get(i11))) {
            i11++;
        }
        if (i11 == iMin && getBytes().size() == other.getBytes().size()) {
            return Companion.get$default(INSTANCE, ".", false, 1, (Object) null);
        }
        if (segmentsBytes2.subList(i11, segmentsBytes2.size()).indexOf(okio.internal.Path.DOT_DOT) != -1) {
            throw new IllegalArgumentException(("Impossible relative path to resolve: " + this + " and " + other).toString());
        }
        Buffer buffer = new Buffer();
        ByteString slash = okio.internal.Path.getSlash(other);
        if (slash == null && (slash = okio.internal.Path.getSlash(this)) == null) {
            slash = okio.internal.Path.toSlash(DIRECTORY_SEPARATOR);
        }
        int size = segmentsBytes2.size();
        for (int i12 = i11; i12 < size; i12++) {
            buffer.write(okio.internal.Path.DOT_DOT);
            buffer.write(slash);
        }
        int size2 = segmentsBytes.size();
        while (i11 < size2) {
            buffer.write(segmentsBytes.get(i11));
            buffer.write(slash);
            i11++;
        }
        return okio.internal.Path.toPath(buffer, false);
    }

    @JvmName
    public final Path resolve(String child) {
        Intrinsics.h(child, "child");
        return okio.internal.Path.commonResolve(this, okio.internal.Path.toPath(new Buffer().writeUtf8(child), false), false);
    }

    public final Path resolve(String child, boolean normalize) {
        Intrinsics.h(child, "child");
        return okio.internal.Path.commonResolve(this, okio.internal.Path.toPath(new Buffer().writeUtf8(child), false), normalize);
    }

    @JvmName
    public final Path resolve(ByteString child) {
        Intrinsics.h(child, "child");
        return okio.internal.Path.commonResolve(this, okio.internal.Path.toPath(new Buffer().write(child), false), false);
    }

    public final Path resolve(ByteString child, boolean normalize) {
        Intrinsics.h(child, "child");
        return okio.internal.Path.commonResolve(this, okio.internal.Path.toPath(new Buffer().write(child), false), normalize);
    }

    @JvmName
    public final Path resolve(Path child) {
        Intrinsics.h(child, "child");
        return okio.internal.Path.commonResolve(this, child, false);
    }

    public final Path resolve(Path child, boolean normalize) {
        Intrinsics.h(child, "child");
        return okio.internal.Path.commonResolve(this, child, normalize);
    }

    public final File toFile() {
        return new File(toString());
    }

    public final java.nio.file.Path toNioPath() {
        java.nio.file.Path path = Paths.get(toString(), new String[0]);
        Intrinsics.g(path, "get(...)");
        return path;
    }

    public String toString() {
        return getBytes().utf8();
    }

    @JvmName
    public final Character volumeLetter() {
        if (ByteString.indexOf$default(getBytes(), okio.internal.Path.SLASH, 0, 2, (Object) null) != -1 || getBytes().size() < 2 || getBytes().getByte(1) != 58) {
            return null;
        }
        char c11 = (char) getBytes().getByte(0);
        if (('a' > c11 || c11 >= '{') && ('A' > c11 || c11 >= '[')) {
            return null;
        }
        return Character.valueOf(c11);
    }
}
