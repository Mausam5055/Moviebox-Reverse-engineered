package com.transsion.compressor.image;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes5.dex */
public class h implements Handler.Callback {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static Random f43995h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f43996a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f43997b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f43998c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e f43999d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.transsion.compressor.image.a f44000e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List f44001f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Handler f44002g;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f44003a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f44004b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f44005c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private e f44007e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private com.transsion.compressor.image.a f44008f;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f44006d = 100;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final List f44009g = new ArrayList();

        /* JADX INFO: renamed from: com.transsion.compressor.image.h$a$a, reason: collision with other inner class name */
        class C0617a extends c {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f44010b;

            C0617a(String str) {
                this.f44010b = str;
            }

            @Override // com.transsion.compressor.image.c
            public InputStream a() {
                return new FileInputStream(this.f44010b);
            }

            @Override // com.transsion.compressor.image.d
            public String getPath() {
                return this.f44010b;
            }
        }

        a(Context context) {
            this.f44003a = context;
        }

        static /* bridge */ /* synthetic */ f e(a aVar) {
            aVar.getClass();
            return null;
        }

        private h h() {
            return new h(this);
        }

        public void i() {
            try {
                File fileE = j.e(this.f44003a);
                if (fileE != null) {
                    this.f44004b = fileE.getAbsolutePath();
                }
                j.d(new File(this.f44004b));
            } catch (Exception unused) {
            }
        }

        public a j(com.transsion.compressor.image.a aVar) {
            this.f44008f = aVar;
            return this;
        }

        public void k() {
            h().g(this.f44003a);
        }

        public a l(String str) {
            this.f44009g.add(new C0617a(str));
            return this;
        }

        public a m(e eVar) {
            this.f44007e = eVar;
            return this;
        }
    }

    static {
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                f43995h = SecureRandom.getInstanceStrong();
            } else {
                f43995h = new Random();
            }
        } catch (NoSuchAlgorithmException e11) {
            j.f(Log.getStackTraceString(e11));
        }
    }

    private h(a aVar) {
        this.f43996a = aVar.f44004b;
        a.e(aVar);
        this.f44001f = aVar.f44009g;
        this.f43999d = aVar.f44007e;
        this.f43998c = aVar.f44006d;
        this.f44000e = aVar.f44008f;
        this.f43997b = aVar.f44005c;
        this.f44002g = new Handler(Looper.getMainLooper(), this);
    }

    private File c(Context context, d dVar) {
        try {
            return d(context, dVar);
        } finally {
            dVar.close();
        }
    }

    private File d(Context context, d dVar) {
        Checker checker = Checker.SINGLE;
        File fileE = e(context, checker.extSuffix(dVar));
        com.transsion.compressor.image.a aVar = this.f44000e;
        if (aVar != null) {
            return (aVar.a(dVar.getPath()) && checker.needCompress(this.f43998c, dVar.getPath())) ? new b(dVar, fileE, this.f43997b).a() : new File(dVar.getPath());
        }
        return checker.needCompress(this.f43998c, dVar.getPath()) ? new b(dVar, fileE, this.f43997b).a() : new File(dVar.getPath());
    }

    private File e(Context context, String str) {
        File fileE;
        if (TextUtils.isEmpty(this.f43996a) && (fileE = j.e(context)) != null) {
            this.f43996a = fileE.getAbsolutePath();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f43996a);
        sb2.append(File.separator);
        sb2.append(System.currentTimeMillis());
        sb2.append(f43995h.nextInt(1000));
        if (TextUtils.isEmpty(str)) {
            str = ".jpg";
        }
        sb2.append(str);
        File file = new File(sb2.toString());
        j.c(file);
        return file;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(d dVar, Context context) {
        try {
            Message messageObtainMessage = this.f44002g.obtainMessage(1);
            messageObtainMessage.obj = dVar.getPath();
            this.f44002g.sendMessage(messageObtainMessage);
            File fileC = c(context, dVar);
            int[] iArrA = j.a(fileC);
            Message messageObtainMessage2 = this.f44002g.obtainMessage(0, fileC);
            Bundle bundle = new Bundle();
            bundle.putIntArray("tag_image_info", iArrA);
            bundle.putLong("tag_image_size", fileC.length() / 1024);
            messageObtainMessage2.setData(bundle);
            this.f44002g.sendMessage(messageObtainMessage2);
        } catch (IOException e11) {
            Handler handler = this.f44002g;
            handler.sendMessage(handler.obtainMessage(2, e11));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(final Context context) {
        e eVar;
        e eVar2;
        if (context == null && (eVar2 = this.f43999d) != null) {
            eVar2.onError(new NullPointerException("context cannot be null"));
        }
        if (this.f44001f.size() == 0 && (eVar = this.f43999d) != null) {
            eVar.onError(new NullPointerException("image file cannot be null"));
            return;
        }
        Iterator it = this.f44001f.iterator();
        while (it.hasNext()) {
            final d dVar = (d) it.next();
            AsyncTask.SERIAL_EXECUTOR.execute(new Runnable() { // from class: com.transsion.compressor.image.g
                @Override // java.lang.Runnable
                public final void run() {
                    this.f43992a.f(dVar, context);
                }
            });
            it.remove();
        }
    }

    public static a h(Context context) {
        return new a(context.getApplicationContext());
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        e eVar = this.f43999d;
        if (eVar == null) {
            return true;
        }
        int i11 = message.what;
        if (i11 == 0) {
            File file = (File) message.obj;
            Bundle data = message.getData();
            this.f43999d.b(file, data.getIntArray("tag_image_info"), data.getLong("tag_image_size"));
            return false;
        }
        if (i11 == 1) {
            eVar.a((String) message.obj);
            return false;
        }
        if (i11 != 2) {
            return false;
        }
        eVar.onError((Throwable) message.obj);
        return false;
    }
}
