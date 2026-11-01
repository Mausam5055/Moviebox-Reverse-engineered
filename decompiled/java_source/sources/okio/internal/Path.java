package okio.internal;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.Buffer;
import okio.ByteString;

/* JADX INFO: renamed from: okio.internal.-Path, reason: invalid class name */
/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000H\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\f\n\u0002\b\u0006\n\u0002\u0010\u0005\n\u0000\u001a\u0015\u0010\u0014\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u000eH\u0080\b\u001a\u0017\u0010\u0016\u001a\u00020\u0017*\u00020\u000e2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0018H\u0080\b\u001a\r\u0010\u0019\u001a\u00020\r*\u00020\u000eH\u0080\b\u001a\r\u0010\u001a\u001a\u00020\u0017*\u00020\u000eH\u0080\b\u001a\r\u0010\u001b\u001a\u00020\u0017*\u00020\u000eH\u0080\b\u001a\r\u0010\u001c\u001a\u00020\u0017*\u00020\u000eH\u0080\b\u001a\r\u0010\u001d\u001a\u00020\u001e*\u00020\u000eH\u0080\b\u001a\r\u0010\u001f\u001a\u00020\u0001*\u00020\u000eH\u0080\b\u001a\r\u0010 \u001a\u00020\u000e*\u00020\u000eH\u0080\b\u001a\u000f\u0010!\u001a\u0004\u0018\u00010\u000e*\u00020\u000eH\u0080\b\u001a\u0015\u0010\"\u001a\u00020\u000e*\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u000eH\u0080\b\u001a\u001d\u0010#\u001a\u00020\u000e*\u00020\u000e2\u0006\u0010$\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020\u0017H\u0080\b\u001a\u001d\u0010#\u001a\u00020\u000e*\u00020\u000e2\u0006\u0010$\u001a\u00020&2\u0006\u0010%\u001a\u00020\u0017H\u0080\b\u001a\u001d\u0010#\u001a\u00020\u000e*\u00020\u000e2\u0006\u0010$\u001a\u00020\u00012\u0006\u0010%\u001a\u00020\u0017H\u0080\b\u001a\u001c\u0010#\u001a\u00020\u000e*\u00020\u000e2\u0006\u0010$\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020\u0017H\u0000\u001a\u000f\u0010'\u001a\u0004\u0018\u00010\u000e*\u00020\u000eH\u0080\b\u001a\u0013\u0010(\u001a\b\u0012\u0004\u0012\u00020\u001e0)*\u00020\u000eH\u0080\b\u001a\u0013\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00010)*\u00020\u000eH\u0080\b\u001a\u0014\u0010+\u001a\u00020\u000e*\u00020\u001e2\u0006\u0010%\u001a\u00020\u0017H\u0000\u001a\r\u0010,\u001a\u00020\u001e*\u00020\u000eH\u0080\b\u001a\u0014\u0010-\u001a\u0004\u0018\u00010.*\u00020\u000eH\u0080\b¢\u0006\u0002\u0010/\u001a\f\u00100\u001a\u00020\u0017*\u00020\u000eH\u0002\u001a\f\u00101\u001a\u00020\r*\u00020\u000eH\u0002\u001a\u0014\u00102\u001a\u00020\u0017*\u00020&2\u0006\u0010\u0011\u001a\u00020\u0001H\u0002\u001a\u0014\u00103\u001a\u00020\u000e*\u00020&2\u0006\u0010%\u001a\u00020\u0017H\u0000\u001a\f\u00104\u001a\u00020\u0001*\u000205H\u0002\u001a\f\u00104\u001a\u00020\u0001*\u00020\u001eH\u0002\"\u0016\u0010\u0000\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0002\u0010\u0003\"\u0016\u0010\u0004\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0005\u0010\u0003\"\u0016\u0010\u0006\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0007\u0010\u0003\"\u0016\u0010\b\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\t\u0010\u0003\"\u0016\u0010\n\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u000b\u0010\u0003\"\u0018\u0010\f\u001a\u00020\r*\u00020\u000e8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010\"\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u0001*\u00020\u000e8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u00066"}, d2 = {"ANY_SLASH", "Lokio/ByteString;", "getANY_SLASH$annotations", "()V", "BACKSLASH", "getBACKSLASH$annotations", "DOT", "getDOT$annotations", "DOT_DOT", "getDOT_DOT$annotations", "SLASH", "getSLASH$annotations", "indexOfLastSlash", "", "Lokio/Path;", "getIndexOfLastSlash", "(Lokio/Path;)I", "slash", "getSlash", "(Lokio/Path;)Lokio/ByteString;", "commonCompareTo", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "commonEquals", "", "", "commonHashCode", "commonIsAbsolute", "commonIsRelative", "commonIsRoot", "commonName", "", "commonNameBytes", "commonNormalized", "commonParent", "commonRelativeTo", "commonResolve", "child", "normalize", "Lokio/Buffer;", "commonRoot", "commonSegments", "", "commonSegmentsBytes", "commonToPath", "commonToString", "commonVolumeLetter", "", "(Lokio/Path;)Ljava/lang/Character;", "lastSegmentIsDotDot", "rootLength", "startsWithVolumeLetterAndColon", "toPath", "toSlash", "", "okio"}, k = 2, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@JvmName
@SourceDebugExtension
public final class Path {
    private static final ByteString ANY_SLASH;
    private static final ByteString BACKSLASH;
    private static final ByteString DOT;
    private static final ByteString DOT_DOT;
    private static final ByteString SLASH;

    static {
        ByteString.Companion companion = ByteString.INSTANCE;
        SLASH = companion.encodeUtf8("/");
        BACKSLASH = companion.encodeUtf8("\\");
        ANY_SLASH = companion.encodeUtf8("/\\");
        DOT = companion.encodeUtf8(".");
        DOT_DOT = companion.encodeUtf8("..");
    }

    public static final int commonCompareTo(okio.Path path, okio.Path other) {
        Intrinsics.h(path, "<this>");
        Intrinsics.h(other, "other");
        return path.getBytes().compareTo(other.getBytes());
    }

    public static final boolean commonEquals(okio.Path path, Object obj) {
        Intrinsics.h(path, "<this>");
        return (obj instanceof okio.Path) && Intrinsics.c(((okio.Path) obj).getBytes(), path.getBytes());
    }

    public static final int commonHashCode(okio.Path path) {
        Intrinsics.h(path, "<this>");
        return path.getBytes().hashCode();
    }

    public static final boolean commonIsAbsolute(okio.Path path) {
        Intrinsics.h(path, "<this>");
        return rootLength(path) != -1;
    }

    public static final boolean commonIsRelative(okio.Path path) {
        Intrinsics.h(path, "<this>");
        return rootLength(path) == -1;
    }

    public static final boolean commonIsRoot(okio.Path path) {
        Intrinsics.h(path, "<this>");
        return rootLength(path) == path.getBytes().size();
    }

    public static final String commonName(okio.Path path) {
        Intrinsics.h(path, "<this>");
        return path.nameBytes().utf8();
    }

    public static final ByteString commonNameBytes(okio.Path path) {
        Intrinsics.h(path, "<this>");
        int indexOfLastSlash = getIndexOfLastSlash(path);
        if (indexOfLastSlash != -1) {
            return ByteString.substring$default(path.getBytes(), indexOfLastSlash + 1, 0, 2, null);
        }
        return (path.volumeLetter() == null || path.getBytes().size() != 2) ? path.getBytes() : ByteString.EMPTY;
    }

    public static final okio.Path commonNormalized(okio.Path path) {
        Intrinsics.h(path, "<this>");
        return okio.Path.INSTANCE.get(path.toString(), true);
    }

    public static final okio.Path commonParent(okio.Path path) {
        Intrinsics.h(path, "<this>");
        if (Intrinsics.c(path.getBytes(), DOT) || Intrinsics.c(path.getBytes(), SLASH) || Intrinsics.c(path.getBytes(), BACKSLASH) || lastSegmentIsDotDot(path)) {
            return null;
        }
        int indexOfLastSlash = getIndexOfLastSlash(path);
        if (indexOfLastSlash == 2 && path.volumeLetter() != null) {
            if (path.getBytes().size() == 3) {
                return null;
            }
            return new okio.Path(ByteString.substring$default(path.getBytes(), 0, 3, 1, null));
        }
        if (indexOfLastSlash == 1 && path.getBytes().startsWith(BACKSLASH)) {
            return null;
        }
        if (indexOfLastSlash != -1 || path.volumeLetter() == null) {
            if (indexOfLastSlash == -1) {
                return new okio.Path(DOT);
            }
            return indexOfLastSlash == 0 ? new okio.Path(ByteString.substring$default(path.getBytes(), 0, 1, 1, null)) : new okio.Path(ByteString.substring$default(path.getBytes(), 0, indexOfLastSlash, 1, null));
        }
        if (path.getBytes().size() == 2) {
            return null;
        }
        return new okio.Path(ByteString.substring$default(path.getBytes(), 0, 2, 1, null));
    }

    public static final okio.Path commonRelativeTo(okio.Path path, okio.Path other) {
        Intrinsics.h(path, "<this>");
        Intrinsics.h(other, "other");
        if (!Intrinsics.c(path.getRoot(), other.getRoot())) {
            throw new IllegalArgumentException(("Paths of different roots cannot be relative to each other: " + path + " and " + other).toString());
        }
        List<ByteString> segmentsBytes = path.getSegmentsBytes();
        List<ByteString> segmentsBytes2 = other.getSegmentsBytes();
        int iMin = Math.min(segmentsBytes.size(), segmentsBytes2.size());
        int i11 = 0;
        while (i11 < iMin && Intrinsics.c(segmentsBytes.get(i11), segmentsBytes2.get(i11))) {
            i11++;
        }
        if (i11 == iMin && path.getBytes().size() == other.getBytes().size()) {
            return okio.Path.Companion.get$default(okio.Path.INSTANCE, ".", false, 1, (Object) null);
        }
        if (segmentsBytes2.subList(i11, segmentsBytes2.size()).indexOf(DOT_DOT) != -1) {
            throw new IllegalArgumentException(("Impossible relative path to resolve: " + path + " and " + other).toString());
        }
        Buffer buffer = new Buffer();
        ByteString slash = getSlash(other);
        if (slash == null && (slash = getSlash(path)) == null) {
            slash = toSlash(okio.Path.DIRECTORY_SEPARATOR);
        }
        int size = segmentsBytes2.size();
        for (int i12 = i11; i12 < size; i12++) {
            buffer.write(DOT_DOT);
            buffer.write(slash);
        }
        int size2 = segmentsBytes.size();
        while (i11 < size2) {
            buffer.write(segmentsBytes.get(i11));
            buffer.write(slash);
            i11++;
        }
        return toPath(buffer, false);
    }

    public static final okio.Path commonResolve(okio.Path path, String child, boolean z10) {
        Intrinsics.h(path, "<this>");
        Intrinsics.h(child, "child");
        return commonResolve(path, toPath(new Buffer().writeUtf8(child), false), z10);
    }

    public static final okio.Path commonResolve(okio.Path path, Buffer child, boolean z10) {
        Intrinsics.h(path, "<this>");
        Intrinsics.h(child, "child");
        return commonResolve(path, toPath(child, false), z10);
    }

    public static final okio.Path commonResolve(okio.Path path, ByteString child, boolean z10) {
        Intrinsics.h(path, "<this>");
        Intrinsics.h(child, "child");
        return commonResolve(path, toPath(new Buffer().write(child), false), z10);
    }

    public static final okio.Path commonResolve(okio.Path path, okio.Path child, boolean z10) {
        Intrinsics.h(path, "<this>");
        Intrinsics.h(child, "child");
        if (child.isAbsolute() || child.volumeLetter() != null) {
            return child;
        }
        ByteString slash = getSlash(path);
        if (slash == null && (slash = getSlash(child)) == null) {
            slash = toSlash(okio.Path.DIRECTORY_SEPARATOR);
        }
        Buffer buffer = new Buffer();
        buffer.write(path.getBytes());
        if (buffer.size() > 0) {
            buffer.write(slash);
        }
        buffer.write(child.getBytes());
        return toPath(buffer, z10);
    }

    public static final okio.Path commonRoot(okio.Path path) {
        Intrinsics.h(path, "<this>");
        int iRootLength = rootLength(path);
        if (iRootLength == -1) {
            return null;
        }
        return new okio.Path(path.getBytes().substring(0, iRootLength));
    }

    public static final List<String> commonSegments(okio.Path path) {
        Intrinsics.h(path, "<this>");
        ArrayList arrayList = new ArrayList();
        int iRootLength = rootLength(path);
        if (iRootLength == -1) {
            iRootLength = 0;
        } else if (iRootLength < path.getBytes().size() && path.getBytes().getByte(iRootLength) == 92) {
            iRootLength++;
        }
        int size = path.getBytes().size();
        int i11 = iRootLength;
        while (iRootLength < size) {
            if (path.getBytes().getByte(iRootLength) == 47 || path.getBytes().getByte(iRootLength) == 92) {
                arrayList.add(path.getBytes().substring(i11, iRootLength));
                i11 = iRootLength + 1;
            }
            iRootLength++;
        }
        if (i11 < path.getBytes().size()) {
            arrayList.add(path.getBytes().substring(i11, path.getBytes().size()));
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.v(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((ByteString) it.next()).utf8());
        }
        return arrayList2;
    }

    public static final List<ByteString> commonSegmentsBytes(okio.Path path) {
        Intrinsics.h(path, "<this>");
        ArrayList arrayList = new ArrayList();
        int iRootLength = rootLength(path);
        if (iRootLength == -1) {
            iRootLength = 0;
        } else if (iRootLength < path.getBytes().size() && path.getBytes().getByte(iRootLength) == 92) {
            iRootLength++;
        }
        int size = path.getBytes().size();
        int i11 = iRootLength;
        while (iRootLength < size) {
            if (path.getBytes().getByte(iRootLength) == 47 || path.getBytes().getByte(iRootLength) == 92) {
                arrayList.add(path.getBytes().substring(i11, iRootLength));
                i11 = iRootLength + 1;
            }
            iRootLength++;
        }
        if (i11 < path.getBytes().size()) {
            arrayList.add(path.getBytes().substring(i11, path.getBytes().size()));
        }
        return arrayList;
    }

    public static final okio.Path commonToPath(String str, boolean z10) {
        Intrinsics.h(str, "<this>");
        return toPath(new Buffer().writeUtf8(str), z10);
    }

    public static final String commonToString(okio.Path path) {
        Intrinsics.h(path, "<this>");
        return path.getBytes().utf8();
    }

    public static final Character commonVolumeLetter(okio.Path path) {
        Intrinsics.h(path, "<this>");
        if (ByteString.indexOf$default(path.getBytes(), SLASH, 0, 2, (Object) null) != -1 || path.getBytes().size() < 2 || path.getBytes().getByte(1) != 58) {
            return null;
        }
        char c11 = (char) path.getBytes().getByte(0);
        if (('a' > c11 || c11 >= '{') && ('A' > c11 || c11 >= '[')) {
            return null;
        }
        return Character.valueOf(c11);
    }

    private static /* synthetic */ void getANY_SLASH$annotations() {
    }

    private static /* synthetic */ void getBACKSLASH$annotations() {
    }

    private static /* synthetic */ void getDOT$annotations() {
    }

    private static /* synthetic */ void getDOT_DOT$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int getIndexOfLastSlash(okio.Path path) {
        int iLastIndexOf$default = ByteString.lastIndexOf$default(path.getBytes(), SLASH, 0, 2, (Object) null);
        return iLastIndexOf$default != -1 ? iLastIndexOf$default : ByteString.lastIndexOf$default(path.getBytes(), BACKSLASH, 0, 2, (Object) null);
    }

    private static /* synthetic */ void getSLASH$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ByteString getSlash(okio.Path path) {
        ByteString bytes = path.getBytes();
        ByteString byteString = SLASH;
        if (ByteString.indexOf$default(bytes, byteString, 0, 2, (Object) null) != -1) {
            return byteString;
        }
        ByteString bytes2 = path.getBytes();
        ByteString byteString2 = BACKSLASH;
        if (ByteString.indexOf$default(bytes2, byteString2, 0, 2, (Object) null) != -1) {
            return byteString2;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean lastSegmentIsDotDot(okio.Path path) {
        return path.getBytes().endsWith(DOT_DOT) && (path.getBytes().size() == 2 || path.getBytes().rangeEquals(path.getBytes().size() + (-3), SLASH, 0, 1) || path.getBytes().rangeEquals(path.getBytes().size() + (-3), BACKSLASH, 0, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int rootLength(okio.Path path) {
        if (path.getBytes().size() == 0) {
            return -1;
        }
        if (path.getBytes().getByte(0) == 47) {
            return 1;
        }
        if (path.getBytes().getByte(0) == 92) {
            if (path.getBytes().size() <= 2 || path.getBytes().getByte(1) != 92) {
                return 1;
            }
            int iIndexOf = path.getBytes().indexOf(BACKSLASH, 2);
            return iIndexOf == -1 ? path.getBytes().size() : iIndexOf;
        }
        if (path.getBytes().size() > 2 && path.getBytes().getByte(1) == 58 && path.getBytes().getByte(2) == 92) {
            char c11 = (char) path.getBytes().getByte(0);
            if ('a' <= c11 && c11 < '{') {
                return 3;
            }
            if ('A' <= c11 && c11 < '[') {
                return 3;
            }
        }
        return -1;
    }

    private static final boolean startsWithVolumeLetterAndColon(Buffer buffer, ByteString byteString) {
        if (!Intrinsics.c(byteString, BACKSLASH) || buffer.size() < 2 || buffer.getByte(1L) != 58) {
            return false;
        }
        char c11 = (char) buffer.getByte(0L);
        return ('a' <= c11 && c11 < '{') || ('A' <= c11 && c11 < '[');
    }

    public static final okio.Path toPath(Buffer buffer, boolean z10) throws EOFException {
        ByteString byteString;
        ByteString byteString2;
        Intrinsics.h(buffer, "<this>");
        Buffer buffer2 = new Buffer();
        ByteString slash = null;
        int i11 = 0;
        while (true) {
            if (!buffer.rangeEquals(0L, SLASH)) {
                byteString = BACKSLASH;
                if (!buffer.rangeEquals(0L, byteString)) {
                    break;
                }
            }
            byte b11 = buffer.readByte();
            if (slash == null) {
                slash = toSlash(b11);
            }
            i11++;
        }
        boolean z11 = i11 >= 2 && Intrinsics.c(slash, byteString);
        if (z11) {
            Intrinsics.e(slash);
            buffer2.write(slash);
            buffer2.write(slash);
        } else if (i11 > 0) {
            Intrinsics.e(slash);
            buffer2.write(slash);
        } else {
            long jIndexOfElement = buffer.indexOfElement(ANY_SLASH);
            if (slash == null) {
                slash = jIndexOfElement == -1 ? toSlash(okio.Path.DIRECTORY_SEPARATOR) : toSlash(buffer.getByte(jIndexOfElement));
            }
            if (startsWithVolumeLetterAndColon(buffer, slash)) {
                if (jIndexOfElement == 2) {
                    buffer2.write(buffer, 3L);
                } else {
                    buffer2.write(buffer, 2L);
                }
            }
        }
        boolean z12 = buffer2.size() > 0;
        ArrayList arrayList = new ArrayList();
        while (!buffer.exhausted()) {
            long jIndexOfElement2 = buffer.indexOfElement(ANY_SLASH);
            if (jIndexOfElement2 == -1) {
                byteString2 = buffer.readByteString();
            } else {
                byteString2 = buffer.readByteString(jIndexOfElement2);
                buffer.readByte();
            }
            ByteString byteString3 = DOT_DOT;
            if (Intrinsics.c(byteString2, byteString3)) {
                if (!z12 || !arrayList.isEmpty()) {
                    if (!z10 || (!z12 && (arrayList.isEmpty() || Intrinsics.c(CollectionsKt.u0(arrayList), byteString3)))) {
                        arrayList.add(byteString2);
                    } else if (!z11 || arrayList.size() != 1) {
                        CollectionsKt.M(arrayList);
                    }
                }
            } else if (!Intrinsics.c(byteString2, DOT) && !Intrinsics.c(byteString2, ByteString.EMPTY)) {
                arrayList.add(byteString2);
            }
        }
        int size = arrayList.size();
        for (int i12 = 0; i12 < size; i12++) {
            if (i12 > 0) {
                buffer2.write(slash);
            }
            buffer2.write((ByteString) arrayList.get(i12));
        }
        if (buffer2.size() == 0) {
            buffer2.write(DOT);
        }
        return new okio.Path(buffer2.readByteString());
    }

    private static final ByteString toSlash(byte b11) {
        if (b11 == 47) {
            return SLASH;
        }
        if (b11 == 92) {
            return BACKSLASH;
        }
        throw new IllegalArgumentException("not a directory separator: " + ((int) b11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ByteString toSlash(String str) {
        if (Intrinsics.c(str, "/")) {
            return SLASH;
        }
        if (Intrinsics.c(str, "\\")) {
            return BACKSLASH;
        }
        throw new IllegalArgumentException("not a directory separator: " + str);
    }
}
