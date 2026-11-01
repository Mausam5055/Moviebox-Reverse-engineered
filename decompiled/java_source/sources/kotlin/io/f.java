package kotlin.io;

import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public class f extends d {

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final class a implements Function2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f67249a = new a();

        a() {
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Void invoke(File file, IOException exception) throws IOException {
            Intrinsics.h(file, "<unused var>");
            Intrinsics.h(exception, "exception");
            throw exception;
        }
    }

    public static final String A(File file, File base) throws IOException {
        Intrinsics.h(file, "<this>");
        Intrinsics.h(base, "base");
        String strB = B(file, base);
        if (strB != null) {
            return strB;
        }
        throw new IllegalArgumentException("this and base files have different roots: " + file + " and " + base + '.');
    }

    private static final String B(File file, File file2) throws IOException {
        FilePathComponents filePathComponentsZ = z(b.b(file));
        FilePathComponents filePathComponentsZ2 = z(b.b(file2));
        if (!Intrinsics.c(filePathComponentsZ.getRoot(), filePathComponentsZ2.getRoot())) {
            return null;
        }
        int iC = filePathComponentsZ2.c();
        int iC2 = filePathComponentsZ.c();
        int iMin = Math.min(iC2, iC);
        int i11 = 0;
        while (i11 < iMin && Intrinsics.c(filePathComponentsZ.getSegments().get(i11), filePathComponentsZ2.getSegments().get(i11))) {
            i11++;
        }
        StringBuilder sb2 = new StringBuilder();
        int i12 = iC - 1;
        if (i11 <= i12) {
            while (!Intrinsics.c(((File) filePathComponentsZ2.getSegments().get(i12)).getName(), "..")) {
                sb2.append("..");
                if (i12 != i11) {
                    sb2.append(File.separatorChar);
                }
                if (i12 != i11) {
                    i12--;
                }
            }
            return null;
        }
        if (i11 < iC2) {
            if (i11 < iC) {
                sb2.append(File.separatorChar);
            }
            List listD0 = CollectionsKt.d0(filePathComponentsZ.getSegments(), i11);
            String separator = File.separator;
            Intrinsics.g(separator, "separator");
            CollectionsKt___CollectionsKt.p0(listD0, sb2, (Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE & 2) != 0 ? ", " : separator, (Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE & 4) != 0 ? "" : null, (Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE & 8) == 0 ? null : "", (Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE & 16) != 0 ? -1 : 0, (Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE & 32) != 0 ? "..." : null, (Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE & 64) != 0 ? null : null);
        }
        return sb2.toString();
    }

    public static final boolean q(File file, File target, boolean z10, final Function2 onError) {
        Intrinsics.h(file, "<this>");
        Intrinsics.h(target, "target");
        Intrinsics.h(onError, "onError");
        if (!file.exists()) {
            return onError.invoke(file, new NoSuchFileException(file, null, "The source file doesn't exist.", 2, null)) != OnErrorAction.TERMINATE;
        }
        try {
            for (File file2 : d.o(file).i(new Function2() { // from class: kotlin.io.e
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return f.s(onError, (File) obj, (IOException) obj2);
                }
            })) {
                if (file2.exists()) {
                    File file3 = new File(target, A(file2, file));
                    if (file3.exists() && (!file2.isDirectory() || !file3.isDirectory())) {
                        if (z10) {
                            if (file3.isDirectory()) {
                                if (!FilesKt.v(file3)) {
                                }
                            } else if (!file3.delete()) {
                            }
                        }
                        if (onError.invoke(file3, new FileAlreadyExistsException(file2, file3, "The destination file already exists.")) == OnErrorAction.TERMINATE) {
                            return false;
                        }
                    }
                    if (file2.isDirectory()) {
                        file3.mkdirs();
                    } else if (FilesKt.u(file2, file3, z10, 0, 4, null).length() != file2.length() && onError.invoke(file2, new IOException("Source file wasn't copied completely, length of destination file differs.")) == OnErrorAction.TERMINATE) {
                        return false;
                    }
                } else {
                    if (onError.invoke(file2, new NoSuchFileException(file2, null, "The source file doesn't exist.", 2, null)) == OnErrorAction.TERMINATE) {
                        return false;
                    }
                }
            }
            return true;
        } catch (TerminateException unused) {
            return false;
        }
    }

    public static /* synthetic */ boolean r(File file, File file2, boolean z10, Function2 function2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            function2 = a.f67249a;
        }
        return q(file, file2, z10, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s(Function2 function2, File f11, IOException e11) throws TerminateException {
        Intrinsics.h(f11, "f");
        Intrinsics.h(e11, "e");
        if (function2.invoke(f11, e11) != OnErrorAction.TERMINATE) {
            return Unit.f67061a;
        }
        throw new TerminateException(f11);
    }

    public static final File t(File file, File target, boolean z10, int i11) throws FileSystemException {
        Intrinsics.h(file, "<this>");
        Intrinsics.h(target, "target");
        if (!file.exists()) {
            throw new NoSuchFileException(file, null, "The source file doesn't exist.", 2, null);
        }
        if (target.exists()) {
            if (!z10) {
                throw new FileAlreadyExistsException(file, target, "The destination file already exists.");
            }
            if (!target.delete()) {
                throw new FileAlreadyExistsException(file, target, "Tried to overwrite the destination, but failed to delete it.");
            }
        }
        if (!file.isDirectory()) {
            File parentFile = target.getParentFile();
            if (parentFile != null) {
                parentFile.mkdirs();
            }
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(target);
                try {
                    ByteStreamsKt.a(fileInputStream, fileOutputStream, i11);
                    CloseableKt.a(fileOutputStream, null);
                    CloseableKt.a(fileInputStream, null);
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        CloseableKt.a(fileOutputStream, th2);
                        throw th3;
                    }
                }
            } catch (Throwable th4) {
                try {
                    throw th4;
                } catch (Throwable th5) {
                    CloseableKt.a(fileInputStream, th4);
                    throw th5;
                }
            }
        } else if (!target.mkdirs()) {
            throw new FileSystemException(file, target, "Failed to create target directory.");
        }
        return target;
    }

    public static /* synthetic */ File u(File file, File file2, boolean z10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            z10 = false;
        }
        if ((i12 & 4) != 0) {
            i11 = 8192;
        }
        return t(file, file2, z10, i11);
    }

    public static boolean v(File file) {
        Intrinsics.h(file, "<this>");
        while (true) {
            boolean z10 = true;
            for (File file2 : d.n(file)) {
                if (file2.delete() || !file2.exists()) {
                    if (z10) {
                    }
                }
                z10 = false;
            }
            return z10;
        }
    }

    public static String w(File file) {
        Intrinsics.h(file, "<this>");
        String name = file.getName();
        Intrinsics.g(name, "getName(...)");
        return StringsKt.c1(name, '.', "");
    }

    public static String x(File file) {
        Intrinsics.h(file, "<this>");
        String name = file.getName();
        Intrinsics.g(name, "getName(...)");
        return StringsKt.l1(name, ".", null, 2, null);
    }

    private static final List y(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            File file = (File) it.next();
            String name = file.getName();
            if (!Intrinsics.c(name, ".")) {
                if (!Intrinsics.c(name, "..")) {
                    arrayList.add(file);
                } else if (arrayList.isEmpty() || Intrinsics.c(((File) CollectionsKt.u0(arrayList)).getName(), "..")) {
                    arrayList.add(file);
                } else {
                    arrayList.remove(arrayList.size() - 1);
                }
            }
        }
        return arrayList;
    }

    private static final FilePathComponents z(FilePathComponents filePathComponents) {
        return new FilePathComponents(filePathComponents.getRoot(), y(filePathComponents.getSegments()));
    }
}
