package kotlin.io;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.util.ArrayDeque;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.AbstractIterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010(\n\u0002\b\u0010\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u001f\u001d&B\u008b\u0001\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0014\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0018\u00010\u0006\u00128\u0010\u0011\u001a4\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\t\u0018\u00010\u000b\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015B\u001b\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0014\u0010\u0016J\u0016\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00020\u0017H\u0096\u0002¢\u0006\u0004\b\u0018\u0010\u0019J'\u0010\u001b\u001a\u00020\u00002\u0018\u0010\u001a\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\t0\u000b¢\u0006\u0004\b\u001b\u0010\u001cR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\"\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\"\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0018\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010\"RF\u0010\u0011\u001a4\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\t\u0018\u00010\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010$R\u0014\u0010\u0013\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010%¨\u0006'"}, d2 = {"Lkotlin/io/FileTreeWalk;", "Lkotlin/sequences/Sequence;", "Ljava/io/File;", "start", "Lkotlin/io/FileWalkDirection;", "direction", "Lkotlin/Function1;", "", "onEnter", "", "onLeave", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "f", "Ljava/io/IOException;", "e", "onFail", "", "maxDepth", "<init>", "(Ljava/io/File;Lkotlin/io/FileWalkDirection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V", "(Ljava/io/File;Lkotlin/io/FileWalkDirection;)V", "", "iterator", "()Ljava/util/Iterator;", "function", "i", "(Lkotlin/jvm/functions/Function2;)Lkotlin/io/FileTreeWalk;", "a", "Ljava/io/File;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/io/FileWalkDirection;", "c", "Lkotlin/jvm/functions/Function1;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/jvm/functions/Function2;", "I", "FileTreeWalkIterator", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class FileTreeWalk implements Sequence<File> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final File start;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final FileWalkDirection direction;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final Function1 onEnter;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final Function1 onLeave;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final Function2 onFail;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final int maxDepth;

    private final class FileTreeWalkIterator extends AbstractIterator {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ArrayDeque f67212c;

        @Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        public /* synthetic */ class WhenMappings {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f67214a;

            static {
                int[] iArr = new int[FileWalkDirection.values().length];
                try {
                    iArr[FileWalkDirection.TOP_DOWN.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[FileWalkDirection.BOTTOM_UP.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                f67214a = iArr;
            }
        }

        private final class a extends a {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private boolean f67215b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private File[] f67216c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f67217d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private boolean f67218e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ FileTreeWalkIterator f67219f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(FileTreeWalkIterator fileTreeWalkIterator, File rootDir) {
                super(rootDir);
                Intrinsics.h(rootDir, "rootDir");
                this.f67219f = fileTreeWalkIterator;
            }

            @Override // kotlin.io.FileTreeWalk.b
            public File b() {
                if (!this.f67218e && this.f67216c == null) {
                    Function1 function1 = FileTreeWalk.this.onEnter;
                    if (function1 != null && !((Boolean) function1.invoke(a())).booleanValue()) {
                        return null;
                    }
                    File[] fileArrListFiles = a().listFiles();
                    this.f67216c = fileArrListFiles;
                    if (fileArrListFiles == null) {
                        Function2 function2 = FileTreeWalk.this.onFail;
                        if (function2 != null) {
                            function2.invoke(a(), new AccessDeniedException(a(), null, "Cannot list files in a directory", 2, null));
                        }
                        this.f67218e = true;
                    }
                }
                File[] fileArr = this.f67216c;
                if (fileArr != null) {
                    int i11 = this.f67217d;
                    Intrinsics.e(fileArr);
                    if (i11 < fileArr.length) {
                        File[] fileArr2 = this.f67216c;
                        Intrinsics.e(fileArr2);
                        int i12 = this.f67217d;
                        this.f67217d = i12 + 1;
                        return fileArr2[i12];
                    }
                }
                if (!this.f67215b) {
                    this.f67215b = true;
                    return a();
                }
                Function1 function3 = FileTreeWalk.this.onLeave;
                if (function3 != null) {
                    function3.invoke(a());
                }
                return null;
            }
        }

        private final class b extends b {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private boolean f67220b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ FileTreeWalkIterator f67221c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(FileTreeWalkIterator fileTreeWalkIterator, File rootFile) {
                super(rootFile);
                Intrinsics.h(rootFile, "rootFile");
                this.f67221c = fileTreeWalkIterator;
            }

            @Override // kotlin.io.FileTreeWalk.b
            public File b() {
                if (this.f67220b) {
                    return null;
                }
                this.f67220b = true;
                return a();
            }
        }

        private final class c extends a {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private boolean f67222b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private File[] f67223c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f67224d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ FileTreeWalkIterator f67225e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(FileTreeWalkIterator fileTreeWalkIterator, File rootDir) {
                super(rootDir);
                Intrinsics.h(rootDir, "rootDir");
                this.f67225e = fileTreeWalkIterator;
            }

            /* JADX WARN: Code restructure failed: missing block: B:30:0x007f, code lost:
            
                if (r0.length == 0) goto L31;
             */
            @Override // kotlin.io.FileTreeWalk.b
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public File b() {
                Function2 function2;
                if (!this.f67222b) {
                    Function1 function1 = FileTreeWalk.this.onEnter;
                    if (function1 != null && !((Boolean) function1.invoke(a())).booleanValue()) {
                        return null;
                    }
                    this.f67222b = true;
                    return a();
                }
                File[] fileArr = this.f67223c;
                if (fileArr != null) {
                    int i11 = this.f67224d;
                    Intrinsics.e(fileArr);
                    if (i11 >= fileArr.length) {
                        Function1 function3 = FileTreeWalk.this.onLeave;
                        if (function3 != null) {
                            function3.invoke(a());
                        }
                        return null;
                    }
                }
                if (this.f67223c == null) {
                    File[] fileArrListFiles = a().listFiles();
                    this.f67223c = fileArrListFiles;
                    if (fileArrListFiles == null && (function2 = FileTreeWalk.this.onFail) != null) {
                        function2.invoke(a(), new AccessDeniedException(a(), null, "Cannot list files in a directory", 2, null));
                    }
                    File[] fileArr2 = this.f67223c;
                    if (fileArr2 != null) {
                        Intrinsics.e(fileArr2);
                    }
                    Function1 function4 = FileTreeWalk.this.onLeave;
                    if (function4 != null) {
                        function4.invoke(a());
                    }
                    return null;
                }
                File[] fileArr3 = this.f67223c;
                Intrinsics.e(fileArr3);
                int i12 = this.f67224d;
                this.f67224d = i12 + 1;
                return fileArr3[i12];
            }
        }

        public FileTreeWalkIterator() {
            ArrayDeque arrayDeque = new ArrayDeque();
            this.f67212c = arrayDeque;
            if (FileTreeWalk.this.start.isDirectory()) {
                arrayDeque.push(h(FileTreeWalk.this.start));
            } else if (FileTreeWalk.this.start.isFile()) {
                arrayDeque.push(new b(this, FileTreeWalk.this.start));
            } else {
                c();
            }
        }

        private final a h(File file) {
            int i11 = WhenMappings.f67214a[FileTreeWalk.this.direction.ordinal()];
            if (i11 == 1) {
                return new c(this, file);
            }
            if (i11 == 2) {
                return new a(this, file);
            }
            throw new NoWhenBranchMatchedException();
        }

        private final File i() {
            while (true) {
                b bVar = (b) this.f67212c.peek();
                if (bVar == null) {
                    return null;
                }
                File fileB = bVar.b();
                if (fileB == null) {
                    this.f67212c.pop();
                } else {
                    if (Intrinsics.c(fileB, bVar.a()) || !fileB.isDirectory() || this.f67212c.size() >= FileTreeWalk.this.maxDepth) {
                        return fileB;
                    }
                    this.f67212c.push(h(fileB));
                }
            }
        }

        @Override // kotlin.collections.AbstractIterator
        protected void a() {
            File fileI = i();
            if (fileI != null) {
                e(fileI);
            } else {
                c();
            }
        }
    }

    private static abstract class a extends b {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(File rootDir) {
            super(rootDir);
            Intrinsics.h(rootDir, "rootDir");
        }
    }

    private static abstract class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final File f67226a;

        public b(File root) {
            Intrinsics.h(root, "root");
            this.f67226a = root;
        }

        public final File a() {
            return this.f67226a;
        }

        public abstract File b();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FileTreeWalk(File start, FileWalkDirection direction) {
        this(start, direction, null, null, null, 0, 32, null);
        Intrinsics.h(start, "start");
        Intrinsics.h(direction, "direction");
    }

    private FileTreeWalk(File file, FileWalkDirection fileWalkDirection, Function1 function1, Function1 function2, Function2 function3, int i11) {
        this.start = file;
        this.direction = fileWalkDirection;
        this.onEnter = function1;
        this.onLeave = function2;
        this.onFail = function3;
        this.maxDepth = i11;
    }

    /* synthetic */ FileTreeWalk(File file, FileWalkDirection fileWalkDirection, Function1 function1, Function1 function2, Function2 function3, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(file, (i12 & 2) != 0 ? FileWalkDirection.TOP_DOWN : fileWalkDirection, function1, function2, function3, (i12 & 32) != 0 ? Integer.MAX_VALUE : i11);
    }

    public final FileTreeWalk i(Function2 function) {
        Intrinsics.h(function, "function");
        return new FileTreeWalk(this.start, this.direction, this.onEnter, this.onLeave, function, this.maxDepth);
    }

    @Override // kotlin.sequences.Sequence
    /* JADX INFO: renamed from: iterator */
    public Iterator getF67431a() {
        return new FileTreeWalkIterator();
    }
}
