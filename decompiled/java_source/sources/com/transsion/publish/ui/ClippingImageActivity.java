package com.transsion.publish.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.ProgressBar;
import com.bumptech.glide.Glide;
import com.cloud.tmc.integration.event.EventConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.publish.api.PhotoEntity;
import com.transsion.publish.view.clip.ClipImageView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u0007\u0018\u0000 C2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001*B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\u0005J\u0019\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u001a\u001a\u00020\u00062\b\u0010\u0019\u001a\u0004\u0018\u00010\u0011H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0019\u0010\u001e\u001a\u00020\u00062\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0014¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0002H\u0016¢\u0006\u0004\b \u0010!J\u000f\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\"H\u0016¢\u0006\u0004\b%\u0010$J\u000f\u0010&\u001a\u00020\"H\u0016¢\u0006\u0004\b&\u0010$J\u000f\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\b(\u0010)R\u0018\u0010,\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0018\u00100\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00102\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u0010+R\u0016\u00106\u001a\u0002038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0016\u00108\u001a\u0002038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00105R\u0016\u0010:\u001a\u0002038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u00105R\u0016\u0010<\u001a\u0002038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u00105R\u0016\u0010@\u001a\u00020=8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R\u0016\u0010B\u001a\u0002038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u00105¨\u0006D"}, d2 = {"Lcom/transsion/publish/ui/ClippingImageActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lhp/a;", "", "<init>", "()V", "", "initView", "initData", "Lcom/transsion/publish/view/clip/ClipImageView;", "clipImageView", "Ljava/io/File;", "n0", "(Lcom/transsion/publish/view/clip/ClipImageView;)Ljava/io/File;", "u0", "(Lcom/transsion/publish/view/clip/ClipImageView;)V", "imageView", "", "uri", "r0", "(Lcom/transsion/publish/view/clip/ClipImageView;Ljava/lang/String;)V", "Landroid/content/Context;", "context", "s0", "(Landroid/content/Context;)V", "path", "t0", "(Ljava/lang/String;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "o0", "()Lhp/a;", "", "isTranslucent", "()Z", "isStatusDark", "isChangeStatusBar", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "a", "Ljava/lang/String;", "CROP_CACHE", "Lio/reactivex/rxjava3/disposables/c;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/reactivex/rxjava3/disposables/c;", "disposable", "c", "TAG", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", "width", "e", "height", "f", "cropWidth", "g", "cropHeight", "", "h", "J", "cropSize", "i", EventConstants.KEY_SOURCE, "j", "Publish_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ClippingImageActivity extends BaseActivity<hp.a> {

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private String CROP_CACHE;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private io.reactivex.rxjava3.disposables.c disposable;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private String TAG = "ClipHandler";

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private int width;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private int height;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private int cropWidth;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private int cropHeight;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private long cropSize;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private int source;

    /* JADX INFO: renamed from: com.transsion.publish.ui.ClippingImageActivity$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void b(Companion companion, Activity activity, String str, int i11, androidx.activity.result.b bVar, int i12, Object obj) {
            if ((i12 & 8) != 0) {
                bVar = null;
            }
            companion.a(activity, str, i11, bVar);
        }

        public final void a(Activity context, String uri, int i11, androidx.activity.result.b bVar) {
            Intrinsics.h(context, "context");
            Intrinsics.h(uri, "uri");
            Intent intent = new Intent(context, (Class<?>) ClippingImageActivity.class);
            intent.putExtra("uri", uri);
            intent.putExtra(EventConstants.KEY_SOURCE, i11);
            if (bVar != null) {
                bVar.a(intent);
            } else {
                context.startActivityForResult(intent, 10002);
            }
        }
    }

    public static final class b implements io.reactivex.rxjava3.core.o {
        b() {
        }

        @Override // io.reactivex.rxjava3.core.o
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onNext(File file) {
            Intrinsics.h(file, "file");
            lg.a.C0828a.f(lg.a.f68839a, ClippingImageActivity.this.TAG, "onNext e:" + file.getAbsolutePath(), false, 4, null);
            Intent intent = new Intent();
            PhotoEntity photoEntity = new PhotoEntity();
            photoEntity.setWidth(ClippingImageActivity.this.cropWidth);
            photoEntity.setHeight(ClippingImageActivity.this.cropHeight);
            photoEntity.setLocalPath(file.getAbsolutePath());
            photoEntity.setImageSize(ClippingImageActivity.this.cropSize);
            intent.putExtra("clip_result", photoEntity);
            ClippingImageActivity.this.setResult(10003, intent);
            ClippingImageActivity.this.finish();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.core.o
        public void onComplete() {
            ProgressBar clipLoading = ((hp.a) ClippingImageActivity.this.getMViewBinding()).f64721d;
            Intrinsics.g(clipLoading, "clipLoading");
            jg.c.g(clipLoading);
            io.reactivex.rxjava3.disposables.c cVar = ClippingImageActivity.this.disposable;
            if (cVar != null) {
                cVar.dispose();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.core.o
        public void onError(Throwable e11) {
            Intrinsics.h(e11, "e");
            ProgressBar clipLoading = ((hp.a) ClippingImageActivity.this.getMViewBinding()).f64721d;
            Intrinsics.g(clipLoading, "clipLoading");
            jg.c.g(clipLoading);
            lg.a.C0828a.f(lg.a.f68839a, ClippingImageActivity.this.TAG, "onError e:" + e11, false, 4, null);
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onSubscribe(io.reactivex.rxjava3.disposables.c d11) {
            Intrinsics.h(d11, "d");
            ClippingImageActivity.this.disposable = d11;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initData() {
        this.source = getIntent().getIntExtra(EventConstants.KEY_SOURCE, 0);
        String stringExtra = getIntent().getStringExtra("uri");
        ((hp.a) getMViewBinding()).f64722e.setStart(0);
        if (stringExtra != null) {
            ClipImageView srcPic = ((hp.a) getMViewBinding()).f64723f;
            Intrinsics.g(srcPic, "srcPic");
            r0(srcPic, stringExtra);
        }
        ((hp.a) getMViewBinding()).f64719b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.publish.ui.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ClippingImageActivity.p0(this.f50557a, view);
            }
        });
        ((hp.a) getMViewBinding()).f64724g.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.publish.ui.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ClippingImageActivity.q0(this.f50560a, view);
            }
        });
        int i11 = this.source;
        if (i11 == 0 || 5 == i11) {
            this.width = com.blankj.utilcode.util.y.b() - 2;
            this.height = mp.g.f69681a.a(this, 202.0f);
            ((hp.a) getMViewBinding()).f64722e.setSizeNeedChange(false);
            ((hp.a) getMViewBinding()).f64722e.setStartWH(this.width, this.height);
            ((hp.a) getMViewBinding()).f64722e.setSizeNeedChange(false);
            ((hp.a) getMViewBinding()).f64723f.setCropWH(this.width, this.height);
        } else {
            ((hp.a) getMViewBinding()).f64722e.setStart(1);
        }
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
    }

    private final void initView() {
        s0(this);
    }

    /* JADX WARN: Code duplicated, block: B:64:0x00f3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    private final File n0(ClipImageView clipImageView) throws Throwable {
        FileOutputStream fileOutputStream;
        Bitmap bitmapClip;
        FileOutputStream fileOutputStream2 = null;
        try {
            int i11 = this.source;
            if (i11 == 0 || 5 == i11) {
                Rect rect = ((hp.a) getMViewBinding()).f64722e.rect();
                Intrinsics.g(rect, "rect(...)");
                bitmapClip = ((hp.a) getMViewBinding()).f64723f.clip(rect);
            } else {
                bitmapClip = ((hp.a) getMViewBinding()).f64723f.clip();
            }
            File file = new File(this.CROP_CACHE);
            String str = System.currentTimeMillis() + "temp_crop.png";
            if (!file.exists() && !file.mkdirs()) {
                lg.a.C0828a.f(lg.a.f68839a, this.TAG, "cropImage, mkdirs failed, file is " + file.getAbsolutePath(), false, 4, null);
            }
            File file2 = new File(file, str);
            fileOutputStream = new FileOutputStream(file2);
            if (bitmapClip != null) {
                try {
                    try {
                        bitmapClip.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                    } catch (IOException e11) {
                        e = e11;
                        e.printStackTrace();
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.flush();
                            } catch (IOException e12) {
                                e12.printStackTrace();
                            }
                            try {
                                fileOutputStream.close();
                            } catch (IOException e13) {
                                e13.printStackTrace();
                            }
                        }
                        return null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream2 = fileOutputStream;
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.flush();
                        } catch (IOException e14) {
                            e14.printStackTrace();
                        }
                        try {
                            fileOutputStream2.close();
                        } catch (IOException e15) {
                            e15.printStackTrace();
                        }
                    }
                    throw th;
                }
            }
            Integer numValueOf = bitmapClip != null ? Integer.valueOf(bitmapClip.getWidth()) : null;
            Intrinsics.e(numValueOf);
            this.cropWidth = numValueOf.intValue();
            Integer numValueOf2 = bitmapClip != null ? Integer.valueOf(bitmapClip.getHeight()) : null;
            Intrinsics.e(numValueOf2);
            int iIntValue = numValueOf2.intValue();
            this.cropHeight = iIntValue;
            this.cropSize = this.cropWidth * iIntValue;
            try {
                fileOutputStream.flush();
            } catch (IOException e16) {
                e16.printStackTrace();
            }
            try {
                fileOutputStream.close();
            } catch (IOException e17) {
                e17.printStackTrace();
            }
            return file2;
        } catch (IOException e18) {
            e = e18;
            fileOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            if (fileOutputStream2 != null) {
                fileOutputStream2.flush();
                fileOutputStream2.close();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p0(ClippingImageActivity clippingImageActivity, View view) {
        clippingImageActivity.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void q0(ClippingImageActivity clippingImageActivity, View view) {
        ProgressBar clipLoading = ((hp.a) clippingImageActivity.getMViewBinding()).f64721d;
        Intrinsics.g(clipLoading, "clipLoading");
        jg.c.k(clipLoading);
        ClipImageView srcPic = ((hp.a) clippingImageActivity.getMViewBinding()).f64723f;
        Intrinsics.g(srcPic, "srcPic");
        clippingImageActivity.u0(srcPic);
    }

    private final void r0(ClipImageView imageView, String uri) {
        Glide.with(imageView).load2(Uri.fromFile(new File(uri))).into(imageView);
    }

    private final void s0(Context context) {
        String str;
        String str2 = this.CROP_CACHE;
        if (str2 == null || (str2 != null && StringsKt.W(str2, "/data/user/", false, 2, null))) {
            File fileA = mp.e.a(context);
            if (fileA != null) {
                str = fileA.getAbsolutePath() + "/crop/";
            } else {
                str = context.getCacheDir().getAbsolutePath() + "/crop/";
            }
            this.CROP_CACHE = str;
        }
        t0(this.CROP_CACHE);
    }

    private final void t0(String path) {
        if (path == null) {
            return;
        }
        com.blankj.utilcode.util.n.b(path);
    }

    private final void u0(final ClipImageView clipImageView) {
        io.reactivex.rxjava3.core.j.g(new io.reactivex.rxjava3.core.l() { // from class: com.transsion.publish.ui.c
            @Override // io.reactivex.rxjava3.core.l
            public final void a(io.reactivex.rxjava3.core.k kVar) throws Throwable {
                ClippingImageActivity.v0(this.f50562a, clipImageView, kVar);
            }
        }).v(io.reactivex.rxjava3.android.schedulers.b.c()).E(qz.a.c()).subscribe(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v0(ClippingImageActivity clippingImageActivity, ClipImageView clipImageView, io.reactivex.rxjava3.core.k emitter) throws Throwable {
        Intrinsics.h(emitter, "emitter");
        lg.a.C0828a.f(lg.a.f68839a, clippingImageActivity.TAG, "start....", false, 4, null);
        File fileN0 = clippingImageActivity.n0(clipImageView);
        if (emitter.isDisposed() || fileN0 == null) {
            return;
        }
        emitter.onNext(fileN0);
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isChangeStatusBar() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isStatusDark() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isTranslucent() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public hj.b newLogViewConfig() {
        return new hj.b("clipping_image", false, 2, null);
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: o0, reason: merged with bridge method [inline-methods] */
    public hp.a getViewBinding() {
        hp.a aVarC = hp.a.c(getLayoutInflater());
        Intrinsics.g(aVarC, "inflate(...)");
        return aVarC;
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initView();
        initData();
    }
}
