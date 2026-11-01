package com.transsion.ad.strategy;

import android.text.TextUtils;
import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import java.io.BufferedInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import kotlin.KotlinNothingValueException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes5.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f42234a = new h();

    private h() {
    }

    private final String b() {
        String simpleName = h.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final boolean a(String str, String destination) {
        InputStream inputStreamByteStream;
        Intrinsics.h(destination, "destination");
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            Response responseExecute = FirebasePerfOkHttpClient.execute(ni.b.f70475a.d().newCall(new Request.Builder().url(str == null ? "" : str).build()));
            if (!responseExecute.isSuccessful()) {
                oi.a.g(oi.a.f71022a, null, f42234a.b() + " --> downloadFile() --> 素材加载失败 --> destination = " + destination + " --> response = " + responseExecute.message() + " --> url = " + str, 6, false, 9, null);
                return false;
            }
            ResponseBody responseBodyBody = responseExecute.body();
            if (responseBodyBody == null || (inputStreamByteStream = responseBodyBody.byteStream()) == null) {
                h hVar = f42234a;
                oi.a.g(oi.a.f71022a, null, hVar.b() + " --> downloadFile() --> 素材加载失败 --> response.body() == null || response.body?.byteStream()", 0, false, 13, null);
                return false;
            }
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStreamByteStream);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(destination);
                    try {
                        byte[] bArr = new byte[4096];
                        while (true) {
                            int i11 = bufferedInputStream.read(bArr);
                            if (i11 == -1) {
                                Unit unit = Unit.f67061a;
                                CloseableKt.a(fileOutputStream, null);
                                CloseableKt.a(bufferedInputStream, null);
                                CloseableKt.a(inputStreamByteStream, null);
                                return true;
                            }
                            fileOutputStream.write(bArr, 0, i11);
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                CloseableKt.a(bufferedInputStream, th);
                                throw th2;
                            }
                        }
                    } catch (Throwable th3) {
                        try {
                            throw th3;
                        } catch (Throwable th4) {
                            CloseableKt.a(fileOutputStream, th3);
                            throw th4;
                        }
                    }
                } catch (Throwable th5) {
                    throw th5;
                }
            } catch (Throwable th6) {
                try {
                    throw th6;
                } catch (Throwable th7) {
                    CloseableKt.a(inputStreamByteStream, th6);
                    throw th7;
                }
            }
        } catch (Throwable th8) {
            Result.Companion companion2 = Result.INSTANCE;
            Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(Result.m454constructorimpl(ResultKt.a(th8)));
            if (thM457exceptionOrNullimpl == null) {
                throw new KotlinNothingValueException();
            }
            oi.a.g(oi.a.f71022a, null, f42234a.b() + " --> downloadFile() --> 素材加载失败 --> destination = " + destination + " --> it = " + thM457exceptionOrNullimpl + " --> url = " + str, 6, false, 9, null);
            return false;
        }
    }
}
