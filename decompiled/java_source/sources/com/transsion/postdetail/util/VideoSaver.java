package com.transsion.postdetail.util;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class VideoSaver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final VideoSaver f50158a = new VideoSaver();

    private VideoSaver() {
    }

    private final Object a(Context context, InputStream inputStream, String str, Continuation continuation) {
        try {
            File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_MOVIES);
            if (!externalStoragePublicDirectory.exists()) {
                externalStoragePublicDirectory.mkdirs();
            }
            File file = new File(externalStoragePublicDirectory, str);
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                ByteStreamsKt.b(inputStream, fileOutputStream, 0, 2, null);
                CloseableKt.a(fileOutputStream, null);
                c cVar = c.f50161a;
                String absolutePath = file.getAbsolutePath();
                Intrinsics.g(absolutePath, "getAbsolutePath(...)");
                cVar.a(context, absolutePath);
                return Uri.fromFile(file);
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    CloseableKt.a(fileOutputStream, th2);
                    throw th3;
                }
            }
        } catch (Exception unused) {
            return null;
        }
    }

    private final Object b(Context context, InputStream inputStream, String str, Continuation continuation) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("_display_name", str);
            contentValues.put("mime_type", MimeTypes.VIDEO_MP4);
            contentValues.put("is_pending", Boxing.d(1));
            Uri uriInsert = context.getContentResolver().insert(Build.VERSION.SDK_INT >= 29 ? MediaStore.Video.Media.getContentUri("external_primary") : MediaStore.Video.Media.EXTERNAL_CONTENT_URI, contentValues);
            if (uriInsert != null) {
                OutputStream outputStreamOpenOutputStream = context.getContentResolver().openOutputStream(uriInsert);
                if (outputStreamOpenOutputStream != null) {
                    try {
                        Boxing.e(ByteStreamsKt.b(inputStream, outputStreamOpenOutputStream, 0, 2, null));
                        CloseableKt.a(outputStreamOpenOutputStream, null);
                    } catch (Throwable th2) {
                        try {
                            throw th2;
                        } catch (Throwable th3) {
                            CloseableKt.a(outputStreamOpenOutputStream, th2);
                            throw th3;
                        }
                    }
                }
                contentValues.clear();
                contentValues.put("is_pending", Boxing.d(0));
                Boxing.d(context.getContentResolver().update(uriInsert, contentValues, null, null));
            }
            return uriInsert;
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c(Context context, String str, String str2, Continuation continuation) throws Throwable {
        VideoSaver$saveVideoToGallery$1 videoSaver$saveVideoToGallery$1;
        if (continuation instanceof VideoSaver$saveVideoToGallery$1) {
            videoSaver$saveVideoToGallery$1 = (VideoSaver$saveVideoToGallery$1) continuation;
            int i11 = videoSaver$saveVideoToGallery$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                videoSaver$saveVideoToGallery$1.label = i11 - Integer.MIN_VALUE;
            } else {
                videoSaver$saveVideoToGallery$1 = new VideoSaver$saveVideoToGallery$1(this, continuation);
            }
        } else {
            videoSaver$saveVideoToGallery$1 = new VideoSaver$saveVideoToGallery$1(this, continuation);
        }
        Object objA = videoSaver$saveVideoToGallery$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = videoSaver$saveVideoToGallery$1.label;
        try {
            if (i12 != 0) {
                if (i12 == 1) {
                    ResultKt.b(objA);
                    return (Uri) objA;
                }
                if (i12 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objA);
                return (Uri) objA;
            }
            ResultKt.b(objA);
            InputStream inputStreamOpenStream = FirebasePerfUrlConnection.openStream(new URL(str));
            Intrinsics.g(inputStreamOpenStream, "openStream(...)");
            if (Build.VERSION.SDK_INT >= 29) {
                videoSaver$saveVideoToGallery$1.label = 1;
                objA = b(context, inputStreamOpenStream, str2, videoSaver$saveVideoToGallery$1);
                if (objA == objF) {
                    return objF;
                }
                return (Uri) objA;
            }
            videoSaver$saveVideoToGallery$1.label = 2;
            objA = a(context, inputStreamOpenStream, str2, videoSaver$saveVideoToGallery$1);
            if (objA == objF) {
                return objF;
            }
            return (Uri) objA;
        } catch (Exception e11) {
            e11.printStackTrace();
            return null;
        }
    }
}
