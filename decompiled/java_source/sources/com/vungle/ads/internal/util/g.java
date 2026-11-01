package com.vungle.ads.internal.util;

import android.os.Build;
import android.webkit.URLUtil;
import com.vungle.ads.AssetFailedToDeleteError;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.io.FilesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes7.dex */
public final class g {
    public static final g INSTANCE = new g();
    private static a objectInputStreamProvider = new a() { // from class: com.vungle.ads.internal.util.f
        @Override // com.vungle.ads.internal.util.g.a
        public final ObjectInputStream provideObjectInputStream(InputStream inputStream) {
            return g.m447objectInputStreamProvider$lambda0(inputStream);
        }
    };
    private static final String TAG = g.class.getSimpleName();
    private static final List<Class<?>> allowedClasses = CollectionsKt.o(LinkedHashSet.class, HashSet.class, HashMap.class, ArrayList.class, File.class);

    public interface a {
        ObjectInputStream provideObjectInputStream(InputStream inputStream) throws IOException, ClassNotFoundException;
    }

    private g() {
    }

    @JvmStatic
    public static final void delete(File file) {
        if (file != null) {
            try {
                if (file.exists()) {
                    if (file.isDirectory()) {
                        deleteContents(file);
                    }
                    if (file.delete()) {
                        return;
                    }
                    o.a aVar = o.Companion;
                    String TAG2 = TAG;
                    Intrinsics.g(TAG2, "TAG");
                    aVar.d(TAG2, "Failed to delete file: " + file);
                }
            } catch (Exception e11) {
                o.a aVar2 = o.Companion;
                String TAG3 = TAG;
                Intrinsics.g(TAG3, "TAG");
                aVar2.e(TAG3, "Failed to delete file: " + e11.getLocalizedMessage());
            }
        }
    }

    @JvmStatic
    public static final void deleteAndLogIfFailed(File file) {
        Intrinsics.h(file, "file");
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                Files.delete(file.toPath());
            } else if (!file.delete()) {
                new AssetFailedToDeleteError("Cannot delete " + file.getName()).logErrorNoReturnValue$vungle_ads_release();
            }
        } catch (Exception e11) {
            new AssetFailedToDeleteError("Failed to delete " + file.getName() + " with error :" + e11.getMessage()).logErrorNoReturnValue$vungle_ads_release();
        }
    }

    @JvmStatic
    public static final void deleteContents(File folder) {
        Intrinsics.h(folder, "folder");
        File[] fileArrListFiles = folder.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            delete(file);
        }
    }

    public static /* synthetic */ void getAllowedClasses$vungle_ads_release$annotations() {
    }

    private final String getIndentString(int i11) {
        StringBuilder sb2 = new StringBuilder();
        for (int i12 = 0; i12 < i11; i12++) {
            sb2.append("|  ");
        }
        String string = sb2.toString();
        Intrinsics.g(string, "sb.toString()");
        return string;
    }

    public static /* synthetic */ String guessFileName$default(g gVar, String str, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str2 = null;
        }
        return gVar.guessFileName(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: objectInputStreamProvider$lambda-0, reason: not valid java name */
    public static final ObjectInputStream m447objectInputStreamProvider$lambda0(InputStream inputStream) {
        return new r(inputStream, allowedClasses);
    }

    @JvmStatic
    public static final void printDirectoryTree(File file) {
    }

    private final void printDirectoryTree(File file, int i11, StringBuilder sb2) {
        if (file == null) {
            return;
        }
        if (!file.isDirectory()) {
            throw new IllegalArgumentException("folder is not a Directory");
        }
        sb2.append(getIndentString(i11));
        sb2.append("+--");
        sb2.append(file.getName());
        sb2.append("/\n");
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                printDirectoryTree(file2, i11 + 1, sb2);
            } else {
                Intrinsics.g(file2, "file");
                printFile(file2, i11 + 1, sb2);
            }
        }
    }

    private final void printFile(File file, int i11, StringBuilder sb2) {
        sb2.append(getIndentString(i11));
        sb2.append("+--");
        sb2.append(file.getName());
        sb2.append('\n');
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 3, insn: 0x0028: MOVE (r2 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:11:0x0028 */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.vungle.ads.internal.util.g] */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.vungle.ads.internal.util.g] */
    /* JADX WARN: Type inference failed for: r0v9, types: [com.vungle.ads.internal.util.g] */
    /* JADX WARN: Type inference failed for: r1v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.io.Closeable, java.io.FileInputStream, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v11, types: [com.vungle.ads.internal.util.g$a] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @JvmStatic
    public static final <T> T readSerializable(File file) {
        Closeable closeable;
        ObjectInputStream objectInputStreamProvideObjectInputStream;
        ?? r11;
        Intrinsics.h(file, "file");
        ?? Exists = file.exists();
        Closeable closeable2 = null;
        try {
            if (Exists == 0) {
                return null;
            }
            try {
                Exists = new FileInputStream(file);
                try {
                    objectInputStreamProvideObjectInputStream = objectInputStreamProvider.provideObjectInputStream(Exists);
                    try {
                        T t11 = (T) objectInputStreamProvideObjectInputStream.readObject();
                        ?? r12 = INSTANCE;
                        r12.closeQuietly(objectInputStreamProvideObjectInputStream);
                        r12.closeQuietly(Exists);
                        return t11;
                    } catch (IOException e11) {
                        e = e11;
                        o.a aVar = o.Companion;
                        String TAG2 = TAG;
                        Intrinsics.g(TAG2, "TAG");
                        aVar.e(TAG2, "IOException: " + e.getMessage());
                        r11 = Exists;
                        ?? r13 = INSTANCE;
                        r13.closeQuietly(objectInputStreamProvideObjectInputStream);
                        r13.closeQuietly(r11);
                        try {
                            delete(file);
                        } catch (IOException unused) {
                        }
                        return null;
                    } catch (ClassNotFoundException e12) {
                        e = e12;
                        o.a aVar2 = o.Companion;
                        String TAG3 = TAG;
                        Intrinsics.g(TAG3, "TAG");
                        aVar2.e(TAG3, "ClassNotFoundException: " + e.getMessage());
                        r11 = Exists;
                        ?? r14 = INSTANCE;
                        r14.closeQuietly(objectInputStreamProvideObjectInputStream);
                        r14.closeQuietly(r11);
                        delete(file);
                        return null;
                    } catch (Exception e13) {
                        e = e13;
                        o.a aVar3 = o.Companion;
                        String TAG4 = TAG;
                        Intrinsics.g(TAG4, "TAG");
                        aVar3.e(TAG4, "cannot read serializable " + e.getMessage());
                        r11 = Exists;
                        ?? r15 = INSTANCE;
                        r15.closeQuietly(objectInputStreamProvideObjectInputStream);
                        r15.closeQuietly(r11);
                        delete(file);
                        return null;
                    }
                } catch (IOException e14) {
                    e = e14;
                    objectInputStreamProvideObjectInputStream = null;
                } catch (ClassNotFoundException e15) {
                    e = e15;
                    objectInputStreamProvideObjectInputStream = null;
                } catch (Exception e16) {
                    e = e16;
                    objectInputStreamProvideObjectInputStream = null;
                } catch (Throwable th2) {
                    th = th2;
                    ?? r16 = INSTANCE;
                    r16.closeQuietly(closeable2);
                    r16.closeQuietly(Exists);
                    throw th;
                }
            } catch (IOException e17) {
                e = e17;
                Exists = 0;
                objectInputStreamProvideObjectInputStream = null;
            } catch (ClassNotFoundException e18) {
                e = e18;
                Exists = 0;
                objectInputStreamProvideObjectInputStream = null;
            } catch (Exception e19) {
                e = e19;
                Exists = 0;
                objectInputStreamProvideObjectInputStream = null;
            } catch (Throwable th3) {
                th = th3;
                Exists = 0;
            }
        } catch (Throwable th4) {
            th = th4;
            closeable2 = closeable;
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @JvmStatic
    public static final void writeSerializable(File file, Serializable serializable) {
        OutputStream fileOutputStream;
        ObjectOutputStream objectOutputStream;
        Intrinsics.h(file, "file");
        if (file.exists()) {
            deleteAndLogIfFailed(file);
        }
        if (serializable == null) {
            return;
        }
        OutputStream outputStream = null;
        try {
            fileOutputStream = new FileOutputStream(file);
            try {
                objectOutputStream = new ObjectOutputStream(fileOutputStream);
                try {
                    objectOutputStream.writeObject(serializable);
                    objectOutputStream.reset();
                    g gVar = INSTANCE;
                    gVar.closeQuietly(objectOutputStream);
                    gVar.closeQuietly(fileOutputStream);
                } catch (IOException e11) {
                    e = e11;
                    outputStream = fileOutputStream;
                    try {
                        o.a aVar = o.Companion;
                        String TAG2 = TAG;
                        Intrinsics.g(TAG2, "TAG");
                        aVar.e(TAG2, String.valueOf(e.getMessage()));
                        g gVar2 = INSTANCE;
                        gVar2.closeQuietly(objectOutputStream);
                        gVar2.closeQuietly(outputStream);
                    } catch (Throwable th2) {
                        th = th2;
                        fileOutputStream = outputStream;
                        outputStream = objectOutputStream;
                        g gVar3 = INSTANCE;
                        gVar3.closeQuietly(outputStream);
                        gVar3.closeQuietly(fileOutputStream);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    outputStream = objectOutputStream;
                    g gVar4 = INSTANCE;
                    gVar4.closeQuietly(outputStream);
                    gVar4.closeQuietly(fileOutputStream);
                    throw th;
                }
            } catch (IOException e12) {
                e = e12;
                objectOutputStream = null;
            } catch (Throwable th4) {
                th = th4;
                g gVar5 = INSTANCE;
                gVar5.closeQuietly(outputStream);
                gVar5.closeQuietly(fileOutputStream);
                throw th;
            }
        } catch (IOException e13) {
            e = e13;
            objectOutputStream = null;
        } catch (Throwable th5) {
            th = th5;
            fileOutputStream = null;
        }
    }

    public final void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public final List<Class<?>> getAllowedClasses$vungle_ads_release() {
        return allowedClasses;
    }

    public final a getObjectInputStreamProvider() {
        return objectInputStreamProvider;
    }

    public final String guessFileName(String url, String str) {
        Intrinsics.h(url, "url");
        String strGuessFileName = URLUtil.guessFileName(url, null, str);
        Intrinsics.g(strGuessFileName, "guessFileName(url, null, ext)");
        return strGuessFileName;
    }

    public final boolean isValidUrl(String str) {
        return (str == null || str.length() == 0 || HttpUrl.INSTANCE.parse(str) == null) ? false : true;
    }

    public final String readString(File file) {
        Intrinsics.h(file, "file");
        if (!file.exists()) {
            return null;
        }
        try {
            return FilesKt.i(file, null, 1, null);
        } catch (IOException e11) {
            o.a aVar = o.Companion;
            String TAG2 = TAG;
            Intrinsics.g(TAG2, "TAG");
            aVar.e(TAG2, "IOException: " + e11.getMessage());
            return null;
        } catch (Exception e12) {
            o.a aVar2 = o.Companion;
            String TAG3 = TAG;
            Intrinsics.g(TAG3, "TAG");
            aVar2.e(TAG3, "cannot read string " + e12.getMessage());
            return null;
        }
    }

    public final void setObjectInputStreamProvider(a aVar) {
        Intrinsics.h(aVar, "<set-?>");
        objectInputStreamProvider = aVar;
    }

    public final long size(File file) {
        long size = 0;
        if (file == null || !file.exists()) {
            return 0L;
        }
        if (!file.isDirectory()) {
            return file.length();
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            if (!(fileArrListFiles.length == 0)) {
                for (File file2 : fileArrListFiles) {
                    size += size(file2);
                }
            }
        }
        return size;
    }

    public final void writeString(File file, String str) {
        Intrinsics.h(file, "file");
        if (str == null) {
            return;
        }
        try {
            FilesKt.k(file, str, Charsets.UTF_8);
        } catch (IOException e11) {
            o.a aVar = o.Companion;
            String TAG2 = TAG;
            Intrinsics.g(TAG2, "TAG");
            aVar.e(TAG2, String.valueOf(e11.getMessage()));
        }
    }
}
