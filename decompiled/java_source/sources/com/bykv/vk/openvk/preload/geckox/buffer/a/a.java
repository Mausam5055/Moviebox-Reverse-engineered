package com.bykv.vk.openvk.preload.geckox.buffer.a;

import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f20632a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f20633b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f20634c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f20635d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f20636e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f20637f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f20638g;

    public static com.bykv.vk.openvk.preload.geckox.buffer.a a(File file, long j11) throws IOException {
        com.bykv.vk.openvk.preload.geckox.buffer.a aVarB = b(file, j11);
        GeckoLogger.d("gecko-debug-tag", "buffer type:" + aVarB.getClass());
        return aVarB;
    }

    private static com.bykv.vk.openvk.preload.geckox.buffer.a b(File file, long j11) throws IOException {
        if (j11 <= 0) {
            try {
                return new b(file);
            } catch (Exception e11) {
                throw new IOException("create FileBuffer failed! file:" + file.getAbsolutePath() + " caused by:" + e11.getMessage(), e11);
            }
        }
        try {
            return new c(j11, file);
        } catch (Exception e12) {
            throw new RuntimeException("create random access file failed! file:" + file.getAbsolutePath() + " caused by:" + e12.getMessage(), e12);
        }
    }
}
