package com.cloud.tmc.worker.utils;

import android.content.Context;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.cloud.tmc.worker.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nJ\u0018\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/cloud/tmc/worker/utils/IOUtil;", "", "()V", "sBufferSize", "", "getBytes", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE, "Ljava/io/File;", "path", "", "getFromAssets", "context", "Landroid/content/Context;", "fileName", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class IOUtil {
    public static final IOUtil INSTANCE = new IOUtil();
    private static final int sBufferSize = 52428800;

    private IOUtil() {
    }

    public final byte[] getBytes(File file) throws IOException {
        Intrinsics.h(file, "file");
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file), sBufferSize);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[0];
        while (true) {
            int i11 = bufferedInputStream.read(bArr, 0, sBufferSize);
            if (i11 == -1) {
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                Intrinsics.g(byteArray, "baos.toByteArray()");
                return byteArray;
            }
            byteArrayOutputStream.write(bArr, 0, i11);
        }
    }

    public final byte[] getBytes(String path) {
        Intrinsics.h(path, "path");
        return getBytes(new File(path));
    }

    public final String getFromAssets(Context context, String fileName) {
        Intrinsics.h(context, "context");
        Intrinsics.h(fileName, "fileName");
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(context.getResources().getAssets().open(fileName)));
            String str = "";
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    return str;
                }
                str = str + line;
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            return null;
        }
    }
}
