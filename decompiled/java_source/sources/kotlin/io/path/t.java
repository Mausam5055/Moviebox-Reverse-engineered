package kotlin.io.path;

import java.io.IOException;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public class t extends PathsKt__PathRecursiveFunctionsKt {
    public static final String b(Path path) {
        Intrinsics.h(path, "<this>");
        Path fileName = path.getFileName();
        String string = fileName != null ? fileName.toString() : null;
        return string == null ? "" : string;
    }

    public static final List c(Path path, String glob) throws IOException {
        Intrinsics.h(path, "<this>");
        Intrinsics.h(glob, "glob");
        DirectoryStream directoryStreamNewDirectoryStream = Files.newDirectoryStream(path, glob);
        try {
            DirectoryStream directoryStreamA = s.a(directoryStreamNewDirectoryStream);
            Intrinsics.e(directoryStreamA);
            List listR0 = CollectionsKt.R0(directoryStreamA);
            CloseableKt.a(directoryStreamNewDirectoryStream, null);
            return listR0;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                CloseableKt.a(directoryStreamNewDirectoryStream, th2);
                throw th3;
            }
        }
    }

    public static /* synthetic */ List d(Path path, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = "*";
        }
        return c(path, str);
    }
}
