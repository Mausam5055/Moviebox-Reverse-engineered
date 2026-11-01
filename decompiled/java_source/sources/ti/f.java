package ti;

import android.content.Context;
import android.util.Log;
import com.blankj.utilcode.util.Utils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import kotlin.io.ByteStreamsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes6.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f76255a = new f();

    private f() {
    }

    public final boolean a(Context context, String assetFileName, File destinationFile) {
        Intrinsics.h(context, "context");
        Intrinsics.h(assetFileName, "assetFileName");
        Intrinsics.h(destinationFile, "destinationFile");
        try {
            InputStream inputStreamOpen = context.getAssets().open(assetFileName);
            Intrinsics.g(inputStreamOpen, "open(...)");
            FileOutputStream fileOutputStream = new FileOutputStream(destinationFile);
            ByteStreamsKt.b(inputStreamOpen, fileOutputStream, 0, 2, null);
            inputStreamOpen.close();
            fileOutputStream.close();
            return true;
        } catch (IOException e11) {
            oi.a.c(oi.a.f71022a, "AssetsUtil --> copyAssetFile() --> 复制失败 --> e = " + Log.getStackTraceString(e11), 6, false, 4, null);
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, java.lang.String] */
    public final String b(String fileName) throws Throwable {
        Intrinsics.h(fileName, "fileName");
        BufferedReader bufferedReader = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(Utils.a().getResources().getAssets().open(fileName)));
            try {
                Ref.ObjectRef objectRef = new Ref.ObjectRef();
                StringBuilder sb2 = new StringBuilder();
                while (true) {
                    ?? line = bufferedReader2.readLine();
                    objectRef.element = line;
                    if (line == 0) {
                        bufferedReader2.close();
                        String string = sb2.toString();
                        Intrinsics.g(string, "toString(...)");
                        bufferedReader2.close();
                        return string;
                    }
                    sb2.append((String) line);
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedReader = bufferedReader2;
                if (bufferedReader != null) {
                    bufferedReader.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
