package com.google.firebase.messaging;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes4.dex */
public class g0 implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final URL f32084a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile Future f32085b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Task f32086c;

    private g0(URL url) {
        this.f32084a = url;
    }

    private byte[] h() throws IOException {
        URLConnection uRLConnectionOpenConnection = this.f32084a.openConnection();
        if (uRLConnectionOpenConnection.getContentLength() > 1048576) {
            throw new IOException("Content-Length exceeds max size of 1048576");
        }
        InputStream inputStream = uRLConnectionOpenConnection.getInputStream();
        try {
            byte[] bArrD = b.d(b.b(inputStream, 1048577L));
            if (inputStream != null) {
                inputStream.close();
            }
            if (Log.isLoggable("FirebaseMessaging", 2)) {
                Log.v("FirebaseMessaging", "Downloaded " + bArrD.length + " bytes from " + this.f32084a);
            }
            if (bArrD.length <= 1048576) {
                return bArrD;
            }
            throw new IOException("Image exceeds max size of 1048576");
        } catch (Throwable th2) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
            }
            throw th2;
        }
    }

    public static g0 i(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new g0(new URL(str));
        } catch (MalformedURLException unused) {
            Log.w("FirebaseMessaging", "Not downloading image, bad URL: " + str);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l(TaskCompletionSource taskCompletionSource) {
        try {
            taskCompletionSource.setResult(d());
        } catch (Exception e11) {
            taskCompletionSource.setException(e11);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f32085b.cancel(true);
    }

    public Bitmap d() throws IOException {
        if (Log.isLoggable("FirebaseMessaging", 4)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Starting download of: ");
            sb2.append(this.f32084a);
        }
        byte[] bArrH = h();
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrH, 0, bArrH.length);
        if (bitmapDecodeByteArray == null) {
            throw new IOException("Failed to decode image: " + this.f32084a);
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Successfully downloaded image: ");
            sb3.append(this.f32084a);
        }
        return bitmapDecodeByteArray;
    }

    public Task k() {
        return (Task) Preconditions.checkNotNull(this.f32086c);
    }

    public void m(ExecutorService executorService) {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f32085b = executorService.submit(new Runnable() { // from class: com.google.firebase.messaging.f0
            @Override // java.lang.Runnable
            public final void run() {
                this.f32079a.l(taskCompletionSource);
            }
        });
        this.f32086c = taskCompletionSource.getTask();
    }
}
