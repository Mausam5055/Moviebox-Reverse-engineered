package com.cloud.tmc.integration.utils;

import android.graphics.Bitmap;
import android.os.Build;
import android.view.View;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.callback.ISaveImgCallback;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.miniutils.constant.PermissionConstants;
import com.cloud.tmc.miniutils.util.ImageUtils;
import com.cloud.tmc.miniutils.util.PermissionUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\f\u001a\u00020\rH\u0007J\u0010\u0010\u000e\u001a\u00020\t2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/cloud/tmc/integration/utils/ImageSaveUtils;", "", "()V", "ERROR_CODE_FILE_NULL", "", "ERROR_CODE_NO_PERMISSION", "saveImage", "", "src", "Landroid/graphics/Bitmap;", "saveImgCallback", "Lcom/cloud/tmc/integration/callback/ISaveImgCallback;", "compressFormat", "Landroid/graphics/Bitmap$CompressFormat;", "view2Bitmap", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/view/View;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ImageSaveUtils {
    public static final int ERROR_CODE_FILE_NULL = 1;
    public static final int ERROR_CODE_NO_PERMISSION = 2;
    public static final ImageSaveUtils INSTANCE = new ImageSaveUtils();

    private ImageSaveUtils() {
    }

    @JvmStatic
    @JvmOverloads
    public static final void saveImage(Bitmap bitmap, ISaveImgCallback iSaveImgCallback) {
        saveImage$default(bitmap, iSaveImgCallback, null, 4, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void saveImage(final Bitmap src, final ISaveImgCallback saveImgCallback, Bitmap.CompressFormat compressFormat) {
        Intrinsics.h(compressFormat, "compressFormat");
        if (Build.VERSION.SDK_INT < 29) {
            PermissionUtils.permissionGroup(PermissionConstants.STORAGE_WRITE).callback(new PermissionUtils.SimpleCallback() { // from class: com.cloud.tmc.integration.utils.ImageSaveUtils.saveImage.1
                @Override // com.cloud.tmc.miniutils.util.PermissionUtils.SimpleCallback
                public void onDenied() {
                    ISaveImgCallback iSaveImgCallback = saveImgCallback;
                    if (iSaveImgCallback != null) {
                        iSaveImgCallback.onFail(2, "no Permission");
                    }
                }

                @Override // com.cloud.tmc.miniutils.util.PermissionUtils.SimpleCallback
                public void onGranted() {
                    File fileSave2Album = ImageUtils.save2Album(src, TmcConstants.DIR_BYTEAPP, Bitmap.CompressFormat.PNG, true);
                    if (fileSave2Album == null) {
                        ISaveImgCallback iSaveImgCallback = saveImgCallback;
                        if (iSaveImgCallback != null) {
                            iSaveImgCallback.onFail(1, "Image File NULL");
                            return;
                        }
                        return;
                    }
                    ISaveImgCallback iSaveImgCallback2 = saveImgCallback;
                    if (iSaveImgCallback2 != null) {
                        iSaveImgCallback2.onSuccess(fileSave2Album);
                    }
                }
            }).request();
            return;
        }
        File fileSave2Album = ImageUtils.save2Album(src, TmcConstants.DIR_BYTEAPP, Bitmap.CompressFormat.PNG, true);
        if (saveImgCallback != null) {
            saveImgCallback.onSuccess(fileSave2Album);
        }
    }

    public static /* synthetic */ void saveImage$default(Bitmap bitmap, ISaveImgCallback iSaveImgCallback, Bitmap.CompressFormat compressFormat, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            compressFormat = Bitmap.CompressFormat.PNG;
        }
        saveImage(bitmap, iSaveImgCallback, compressFormat);
    }

    public final Bitmap view2Bitmap(View view) {
        Bitmap bitmapView2Bitmap = ImageUtils.view2Bitmap(view);
        Intrinsics.g(bitmapView2Bitmap, "view2Bitmap(view)");
        return bitmapView2Bitmap;
    }
}
