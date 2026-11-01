package com.journeyapps.barcodescanner;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import androidx.core.app.ActivityCompat;
import com.google.android.gms.iid.InstanceID;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.client.android.R$string;
import gd.e;
import gd.h;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class d {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final String f34007o = "d";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static int f34008p = 250;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Activity f34009a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private DecoratedBarcodeView f34010b;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private h f34016h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private e f34017i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Handler f34018j;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final CameraPreview.f f34021m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f34022n;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f34011c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f34012d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f34013e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f34014f = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f34015g = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f34019k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private xe.a f34020l = new a();

    class a implements xe.a {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(xe.c cVar) {
            d.this.B(cVar);
        }

        @Override // xe.a
        public void a(List list) {
        }

        @Override // xe.a
        public void b(final xe.c cVar) {
            d.this.f34010b.pause();
            d.this.f34017i.f();
            d.this.f34018j.post(new Runnable() { // from class: com.journeyapps.barcodescanner.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33933a.d(cVar);
                }
            });
        }
    }

    class b implements CameraPreview.f {
        b() {
        }

        @Override // com.journeyapps.barcodescanner.CameraPreview.f
        public void a() {
        }

        @Override // com.journeyapps.barcodescanner.CameraPreview.f
        public void b() {
            if (d.this.f34019k) {
                String unused = d.f34007o;
                d.this.s();
            }
        }

        @Override // com.journeyapps.barcodescanner.CameraPreview.f
        public void c(Exception exc) {
            d dVar = d.this;
            dVar.m(dVar.f34009a.getString(R$string.zxing_msg_camera_framework_bug));
        }

        @Override // com.journeyapps.barcodescanner.CameraPreview.f
        public void d() {
        }

        @Override // com.journeyapps.barcodescanner.CameraPreview.f
        public void e() {
        }
    }

    public d(Activity activity, DecoratedBarcodeView decoratedBarcodeView) {
        b bVar = new b();
        this.f34021m = bVar;
        this.f34022n = false;
        this.f34009a = activity;
        this.f34010b = decoratedBarcodeView;
        decoratedBarcodeView.getBarcodeView().addStateListener(bVar);
        this.f34018j = new Handler();
        this.f34016h = new h(activity, new Runnable() { // from class: xe.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f78202a.s();
            }
        });
        this.f34017i = new e(activity);
    }

    public static Intent A(xe.c cVar, String str) {
        Intent intent = new Intent("com.google.zxing.client.android.SCAN");
        intent.addFlags(524288);
        intent.putExtra("SCAN_RESULT", cVar.toString());
        intent.putExtra("SCAN_RESULT_FORMAT", cVar.a().toString());
        byte[] bArrC = cVar.c();
        if (bArrC != null && bArrC.length > 0) {
            intent.putExtra("SCAN_RESULT_BYTES", bArrC);
        }
        Map mapD = cVar.d();
        if (mapD != null) {
            ResultMetadataType resultMetadataType = ResultMetadataType.UPC_EAN_EXTENSION;
            if (mapD.containsKey(resultMetadataType)) {
                intent.putExtra("SCAN_RESULT_UPC_EAN_EXTENSION", mapD.get(resultMetadataType).toString());
            }
            Number number = (Number) mapD.get(ResultMetadataType.ORIENTATION);
            if (number != null) {
                intent.putExtra("SCAN_RESULT_ORIENTATION", number.intValue());
            }
            String str2 = (String) mapD.get(ResultMetadataType.ERROR_CORRECTION_LEVEL);
            if (str2 != null) {
                intent.putExtra("SCAN_RESULT_ERROR_CORRECTION_LEVEL", str2);
            }
            Iterable iterable = (Iterable) mapD.get(ResultMetadataType.BYTE_SEGMENTS);
            if (iterable != null) {
                Iterator it = iterable.iterator();
                int i11 = 0;
                while (it.hasNext()) {
                    intent.putExtra("SCAN_RESULT_BYTE_SEGMENTS_" + i11, (byte[]) it.next());
                    i11++;
                }
            }
        }
        if (str != null) {
            intent.putExtra("SCAN_RESULT_IMAGE_PATH", str);
        }
        return intent;
    }

    private void D() {
        Intent intent = new Intent("com.google.zxing.client.android.SCAN");
        intent.putExtra("MISSING_CAMERA_PERMISSION", true);
        this.f34009a.setResult(0, intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public void s() {
        this.f34009a.finish();
    }

    private String o(xe.c cVar) {
        if (this.f34012d) {
            Bitmap bitmapB = cVar.b();
            try {
                File fileCreateTempFile = File.createTempFile("barcodeimage", ".jpg", this.f34009a.getCacheDir());
                FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
                bitmapB.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                fileOutputStream.close();
                return fileCreateTempFile.getAbsolutePath();
            } catch (IOException e11) {
                Log.w(f34007o, "Unable to create temporary file and store bitmap! " + e11);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q(DialogInterface dialogInterface, int i11) {
        s();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r(DialogInterface dialogInterface) {
        s();
    }

    private void z() {
        if (androidx.core.content.b.checkSelfPermission(this.f34009a, "android.permission.CAMERA") == 0) {
            this.f34010b.resume();
        } else {
            if (this.f34022n) {
                return;
            }
            ActivityCompat.g(this.f34009a, new String[]{"android.permission.CAMERA"}, f34008p);
            this.f34022n = true;
        }
    }

    protected void B(xe.c cVar) {
        this.f34009a.setResult(-1, A(cVar, o(cVar)));
        k();
    }

    protected void C() {
        Intent intent = new Intent("com.google.zxing.client.android.SCAN");
        intent.putExtra(InstanceID.ERROR_TIMEOUT, true);
        this.f34009a.setResult(0, intent);
        k();
    }

    public void E(boolean z10, String str) {
        this.f34013e = z10;
        if (str == null) {
            str = "";
        }
        this.f34014f = str;
    }

    protected void k() {
        if (this.f34010b.getBarcodeView().isCameraClosed()) {
            s();
        } else {
            this.f34019k = true;
        }
        this.f34010b.pause();
        this.f34016h.d();
    }

    public void l() {
        this.f34010b.decodeSingle(this.f34020l);
    }

    protected void m(String str) {
        if (this.f34009a.isFinishing() || this.f34015g || this.f34019k) {
            return;
        }
        if (str.isEmpty()) {
            str = this.f34009a.getString(R$string.zxing_msg_camera_framework_bug);
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this.f34009a);
        builder.setTitle(this.f34009a.getString(R$string.zxing_app_name));
        builder.setMessage(str);
        builder.setPositiveButton(R$string.zxing_button_ok, new DialogInterface.OnClickListener() { // from class: xe.e
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i11) {
                this.f78203a.q(dialogInterface, i11);
            }
        });
        builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: xe.f
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                this.f78204a.r(dialogInterface);
            }
        });
        builder.show();
    }

    public void p(Intent intent, Bundle bundle) {
        this.f34009a.getWindow().addFlags(128);
        if (bundle != null) {
            this.f34011c = bundle.getInt("SAVED_ORIENTATION_LOCK", -1);
        }
        if (intent != null) {
            if (intent.getBooleanExtra("SCAN_ORIENTATION_LOCKED", true)) {
                t();
            }
            if ("com.google.zxing.client.android.SCAN".equals(intent.getAction())) {
                this.f34010b.initializeFromIntent(intent);
            }
            if (!intent.getBooleanExtra("BEEP_ENABLED", true)) {
                this.f34017i.g(false);
            }
            if (intent.hasExtra("SHOW_MISSING_CAMERA_PERMISSION_DIALOG")) {
                E(intent.getBooleanExtra("SHOW_MISSING_CAMERA_PERMISSION_DIALOG", true), intent.getStringExtra("MISSING_CAMERA_PERMISSION_DIALOG_MESSAGE"));
            }
            if (intent.hasExtra(InstanceID.ERROR_TIMEOUT)) {
                this.f34018j.postDelayed(new Runnable() { // from class: com.journeyapps.barcodescanner.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f33932a.C();
                    }
                }, intent.getLongExtra(InstanceID.ERROR_TIMEOUT, 0L));
            }
            if (intent.getBooleanExtra("BARCODE_IMAGE_ENABLED", false)) {
                this.f34012d = true;
            }
        }
    }

    protected void t() {
        if (this.f34011c == -1) {
            int rotation = this.f34009a.getWindowManager().getDefaultDisplay().getRotation();
            int i11 = this.f34009a.getResources().getConfiguration().orientation;
            int i12 = 0;
            if (i11 == 2) {
                if (rotation != 0 && rotation != 1) {
                    i12 = 8;
                }
            } else if (i11 == 1) {
                i12 = (rotation == 0 || rotation == 3) ? 1 : 9;
            }
            this.f34011c = i12;
        }
        this.f34009a.setRequestedOrientation(this.f34011c);
    }

    public void u() {
        this.f34015g = true;
        this.f34016h.d();
        this.f34018j.removeCallbacksAndMessages(null);
    }

    public void v() {
        this.f34016h.d();
        this.f34010b.pauseAndWait();
    }

    public void w(int i11, String[] strArr, int[] iArr) {
        if (i11 == f34008p) {
            if (iArr.length > 0 && iArr[0] == 0) {
                this.f34010b.resume();
                return;
            }
            D();
            if (this.f34013e) {
                m(this.f34014f);
            } else {
                k();
            }
        }
    }

    public void x() {
        z();
        this.f34016h.h();
    }

    public void y(Bundle bundle) {
        bundle.putInt("SAVED_ORIENTATION_LOCK", this.f34011c);
    }
}
