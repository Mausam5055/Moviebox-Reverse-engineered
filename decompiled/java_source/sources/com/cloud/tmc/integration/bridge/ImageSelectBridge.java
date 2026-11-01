package com.cloud.tmc.integration.bridge;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.tmc.integration.callback.ISaveImgCallback;
import com.cloud.tmc.integration.callback.OnPhotoSelectListener;
import com.cloud.tmc.integration.proxy.DialogProxy;
import com.cloud.tmc.integration.proxy.ImageSelectProxy;
import com.cloud.tmc.integration.proxy.PathProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
import com.cloud.tmc.integration.utils.FileUtil;
import com.cloud.tmc.integration.utils.ImageSaveUtils;
import com.cloud.tmc.integration.utils.JsonObjectUtils;
import com.cloud.tmc.integration.utils.RegexUtils;
import com.cloud.tmc.integration.utils.compress.ImageCompressionUtils;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingParam;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy;
import com.cloud.tmc.kernel.resource.IImageResourceManager;
import com.cloud.tmc.kernel.resource.IPackageResourceManager;
import com.cloud.tmc.kernel.security.Permission;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.miniutils.constant.PermissionConstants;
import com.cloud.tmc.miniutils.util.FileUtils;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.cloud.tmc.miniutils.util.ImageUtils;
import com.cloud.tmc.miniutils.util.PermissionUtils;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ImageSelectBridge implements BridgeExtension {
    public static final String ERROR_MSG_CM001 = "Failed choose image from album, unknowError: CM001";
    public static final String ERROR_MSG_CM002 = "Failed take photo from camera, unknowError: CM002";
    public static final String TAG = "ImageSelectBridge";

    /* JADX INFO: renamed from: com.cloud.tmc.integration.bridge.ImageSelectBridge$1, reason: invalid class name */
    class AnonymousClass1 implements OnPhotoSelectListener {
        final /* synthetic */ App val$app;
        final /* synthetic */ BridgeCallback val$callback;

        AnonymousClass1(BridgeCallback bridgeCallback, App app) {
            this.val$callback = bridgeCallback;
            this.val$app = app;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSelected$0(ArrayList arrayList, App app, IImageResourceManager iImageResourceManager, List list, BridgeCallback bridgeCallback) {
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                try {
                    String str = (String) arrayList.get(i11);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(((PathProxy) TmcProxy.get(PathProxy.class)).getAppBaseFilePath(app.getAppId()));
                    char c11 = File.separatorChar;
                    sb2.append(c11);
                    sb2.append(TmcConstants.TEMP_DATA_PATH);
                    sb2.append(c11);
                    sb2.append(FileUtils.getFileByPath(str).getName());
                    String string = sb2.toString();
                    FileUtils.copy(str, string);
                    File file = new File(string);
                    list.add(ImageSelectBridge.this.getMediaObject(file, iImageResourceManager.generateVUrl(file.getAbsolutePath(), app.getAppId(), file.getName(), true)));
                } catch (Throwable th2) {
                    TmcLogger.e(ImageSelectBridge.TAG, th2);
                    if (bridgeCallback != null) {
                        bridgeCallback.sendFailResponse();
                        return;
                    }
                    return;
                }
            }
            if (bridgeCallback != null) {
                JsonObject image = ImageSelectBridge.this.getImage(list);
                TmcLogger.d(ImageSelectBridge.TAG, image.toString());
                bridgeCallback.sendSuccessResponse(image);
            }
        }

        @Override // com.cloud.tmc.integration.callback.OnPhotoSelectListener
        public void onAuthorized(boolean z10) {
            BridgeCallback bridgeCallback;
            if (z10 || (bridgeCallback = this.val$callback) == null) {
                return;
            }
            bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "Failed choose image from album, no permission: CM002").build());
        }

        @Override // com.cloud.tmc.integration.callback.OnPhotoSelectListener
        public void onCancel() {
            BridgeCallback bridgeCallback = this.val$callback;
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "Failed choose image from album, cencel select: CM003").build());
            }
        }

        @Override // com.cloud.tmc.integration.callback.OnPhotoSelectListener
        public void onDialogClickCancel() {
        }

        @Override // com.cloud.tmc.integration.callback.OnPhotoSelectListener
        public void onSelected(@NonNull final ArrayList<String> arrayList) {
            final IImageResourceManager imageResourceManagerProxy = this.val$app.getImageResourceManagerProxy();
            final ArrayList arrayList2 = new ArrayList();
            ExecutorType executorType = ExecutorType.IO;
            final App app = this.val$app;
            final BridgeCallback bridgeCallback = this.val$callback;
            ExecutorUtils.execute(executorType, new Runnable() { // from class: com.cloud.tmc.integration.bridge.h
                @Override // java.lang.Runnable
                public final void run() {
                    this.f23276a.lambda$onSelected$0(arrayList, app, imageResourceManagerProxy, arrayList2, bridgeCallback);
                }
            });
        }

        @Override // com.cloud.tmc.integration.callback.OnPhotoSelectListener
        public void onSelected(@NonNull ArrayList<String> arrayList, @Nullable ArrayList<Integer> arrayList2, boolean z10) {
        }
    }

    private void chooseMediaFromAlbum(App app, int i11, BridgeCallback bridgeCallback, Context context) {
        if (app.getAppContext() == null || context == null) {
            return;
        }
        try {
            imageSelect(context, i11, app, bridgeCallback);
        } catch (Exception e11) {
            TmcLogger.e(TAG, e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JsonObject getImage(@NonNull List<HashMap<String, Object>> list) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("tempFiles", GsonUtils.toJson(list));
        jsonObject.addProperty("mediaType", "image");
        return jsonObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HashMap<String, Object> getMediaObject(File file, String str) {
        HashMap<String, Object> map = new HashMap<>();
        map.put(NativeRequestBridge.KEY_TEMP_FILE_PATH, str);
        map.put("size", Long.valueOf(FileUtils.getLength(file)));
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(file.getAbsolutePath(), options);
            int i11 = options.outHeight;
            int i12 = options.outWidth;
            map.put("height", Integer.valueOf(i11));
            map.put("width", Integer.valueOf(i12));
        } catch (Throwable th2) {
            map.put("height", 0);
            map.put("width", 0);
            TmcLogger.e(TAG, th2);
        }
        map.put("fileType", "image");
        return map;
    }

    private void imageSelect(Context context, int i11, App app, BridgeCallback bridgeCallback) {
        if (app == null || TextUtils.isEmpty(app.getAppId())) {
            bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", ERROR_MSG_CM001).build());
        } else {
            ((ImageSelectProxy) TmcProxy.get(ImageSelectProxy.class)).imageSelect(context, i11, new AnonymousClass1(bridgeCallback, app));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveImageToPhotosAlbum$0(final App app, final BridgeCallback bridgeCallback, final String str) {
        try {
            AppContext appContext = app.getAppContext();
            if (appContext == null) {
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "Failed saved image to album, download result is empty: SA005").build());
                    return;
                }
                return;
            }
            Context context = appContext.getContext();
            if (context != null) {
                ImageSaveUtils.saveImage(ImageUtils.getBitmap(((ImageLoaderProxy) TmcProxy.get(ImageLoaderProxy.class)).loadImgFile(context, str)), new ISaveImgCallback() { // from class: com.cloud.tmc.integration.bridge.ImageSelectBridge.3
                    @Override // com.cloud.tmc.integration.callback.ISaveImgCallback
                    public void onFail(int i11, @Nullable String str2) {
                        BridgeCallback bridgeCallback2 = bridgeCallback;
                        if (bridgeCallback2 != null) {
                            bridgeCallback2.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "Failed saved image to album, download failed: SA003").build());
                        }
                    }

                    @Override // com.cloud.tmc.integration.callback.ISaveImgCallback
                    public void onSuccess(File file) {
                        app.getImageResourceManagerProxy().generateVUrl(str, app.getAppId(), file.getName());
                        BridgeCallback bridgeCallback2 = bridgeCallback;
                        if (bridgeCallback2 != null) {
                            bridgeCallback2.sendSuccessResponse(new JsonObject());
                        }
                    }
                });
            } else if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "Failed saved image to album, download result is empty: SA005").build());
            }
        } catch (Throwable unused) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "Failed saved image to album, download failed: SA003").build());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean showPreviewImages(boolean z10, int i11, BridgeCallback bridgeCallback, Context context, JsonArray jsonArray) {
        try {
            int iMax = Math.max(0, i11 - 1);
            ArrayList<String> arrayList = new ArrayList<>();
            Iterator<JsonElement> it = jsonArray.iterator();
            while (it.hasNext()) {
                String asString = it.next().getAsString();
                if (!TextUtils.isEmpty(asString) && RegexUtils.isURL(asString)) {
                    arrayList.add(asString);
                }
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "Failed preview image, url is not a valid URL: PI004").build());
                }
                return true;
            }
            if (iMax >= arrayList.size()) {
                iMax = arrayList.size() - 1;
            }
            ((ImageSelectProxy) TmcProxy.get(ImageSelectProxy.class)).imagePreview(context, arrayList, z10, iMax, bridgeCallback);
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse();
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "Failed preview image, unknowError : PI003").build());
            }
        }
        return false;
    }

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void chooseMedia(@BindingNode(App.class) App app, @BindingParam(name = {"count"}) int i11, @BindingParam(name = {"mediaType"}) JsonArray jsonArray, @BindingParam(name = {"sourceType"}) JsonArray jsonArray2, @BindingParam(name = {"maxDuration"}) int i12, @BindingParam(name = {"sizeType"}) JsonArray jsonArray3, @BindingParam(name = {"camera"}) String str, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", ERROR_MSG_CM001).build());
                return;
            }
            return;
        }
        AppContext appContext = app.getAppContext();
        if (appContext == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", ERROR_MSG_CM001).build());
                return;
            }
            return;
        }
        Context context = appContext.getContext();
        if (context == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", ERROR_MSG_CM001).build());
                return;
            }
            return;
        }
        for (int i13 = 0; i13 < jsonArray2.size(); i13++) {
            if (jsonArray2.get(i13).getAsString().equals("camera")) {
                chooseMediaFromAlbum(app, i11, bridgeCallback, context);
                return;
            }
        }
        chooseMediaFromAlbum(app, i11, bridgeCallback, context);
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public void compressImage(@BindingNode(App.class) App app, @BindingParam(name = {"src"}) String str, @BindingParam(intDefault = 80, name = {"quality"}) int i11, @BindingParam(name = {"compressedWidth"}) int i12, @BindingParam(name = {"compressedHeight"}) int i13, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null || TextUtils.isEmpty(str)) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "Parameter error: CI10001").build());
                return;
            }
            return;
        }
        if (i11 < 0 || i11 > 100) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "Quality must be 0..100: CI10002").build());
                return;
            }
            return;
        }
        try {
            File file = FileUtil.getFile(app, str);
            if (file != null && FileUtil.access(file)) {
                String strNotifyNewFileGenerateVUrl = FileUtil.notifyNewFileGenerateVUrl(app.getAppId(), null, ImageCompressionUtils.compressImage(file, i11, i12, i13, ((PathProxy) TmcProxy.get(PathProxy.class)).getAppBaseFilePath(app.getAppId()) + File.separatorChar + TmcConstants.TEMP_DATA_PATH));
                if (bridgeCallback != null) {
                    bridgeCallback.sendSuccessResponse(JsonObjectUtils.create().addProperty(NativeRequestBridge.KEY_TEMP_FILE_PATH, strNotifyNewFileGenerateVUrl).build());
                    return;
                }
                return;
            }
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "Original file not exists: CI10003").build());
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "Parameter error: CI10001").build());
            }
        }
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onFinalized() {
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onInitialized() {
    }

    @Override // com.cloud.tmc.kernel.security.Guard
    public Permission permit() {
        return null;
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void previewImage(@BindingNode(App.class) App app, @BindingParam(name = {"urls"}) String str, @BindingParam(name = {"showmenu"}) final boolean z10, @BindingParam(name = {"current"}) final int i11, @BindingCallback final BridgeCallback bridgeCallback) {
        JsonArray asJsonArray;
        if (app == null || app.getAppContext() == null || app.getAppContext().getContext() == null || TextUtils.isEmpty(str)) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "Failed preview image, parameter error: PI001").build());
                return;
            }
            return;
        }
        try {
            asJsonArray = JsonParser.parseString(str).getAsJsonArray();
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "Failed to parse", th2);
            asJsonArray = null;
        }
        final JsonArray jsonArray = asJsonArray;
        if (jsonArray != null && !jsonArray.isEmpty()) {
            final Context context = app.getAppContext().getContext();
            PermissionUtils.permissionGroup(PermissionConstants.STORAGE_READ).callback(new PermissionUtils.SimpleCallback() { // from class: com.cloud.tmc.integration.bridge.ImageSelectBridge.2
                @Override // com.cloud.tmc.miniutils.util.PermissionUtils.SimpleCallback
                public void onDenied() {
                    ((DialogProxy) TmcProxy.get(DialogProxy.class)).showStoragePermissionDialog(context, null, null);
                    BridgeCallback bridgeCallback2 = bridgeCallback;
                    if (bridgeCallback2 != null) {
                        bridgeCallback2.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "Failed preview image, no permission : PI002").build());
                    }
                }

                @Override // com.cloud.tmc.miniutils.util.PermissionUtils.SimpleCallback
                public void onGranted() {
                    ImageSelectBridge.showPreviewImages(z10, i11, bridgeCallback, context, jsonArray);
                }
            }).request();
        } else if (bridgeCallback != null) {
            bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "Failed preview image, parameter error: PI001").build());
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public void saveImageToPhotosAlbum(@BindingNode(App.class) final App app, @BindingParam(name = {NativeRequestBridge.KEY_FILE_PATH}) final String str, @BindingCallback final BridgeCallback bridgeCallback) {
        if (app == null || app.getAppContext() == null || app.getAppContext().getContext() == null || str == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "Failed saved image to album, unknown Error: SA001").build());
                return;
            }
            return;
        }
        try {
            if (!str.contains(".miniapp.transsion.com")) {
                ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.integration.bridge.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f23272a.lambda$saveImageToPhotosAlbum$0(app, bridgeCallback, str);
                    }
                });
                return;
            }
            String imagePath = app.getImageResourceManagerProxy().getImagePath(str);
            if (imagePath == null) {
                imagePath = app.getIFileResourceManager().getFilePath(app.getAppId(), str);
            }
            if (imagePath == null) {
                imagePath = ((IPackageResourceManager) TmcProxy.get(IPackageResourceManager.class)).getFilePath(app.getAppId(), str);
            }
            if (imagePath != null) {
                ImageSaveUtils.saveImage(ImageUtils.getBitmap(new File(imagePath)), new ISaveImgCallback() { // from class: com.cloud.tmc.integration.bridge.ImageSelectBridge.4
                    @Override // com.cloud.tmc.integration.callback.ISaveImgCallback
                    public void onFail(int i11, @Nullable String str2) {
                        BridgeCallback bridgeCallback2 = bridgeCallback;
                        if (bridgeCallback2 != null) {
                            bridgeCallback2.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "Failed saved image to album, save failed: SA002").build());
                        }
                    }

                    @Override // com.cloud.tmc.integration.callback.ISaveImgCallback
                    public void onSuccess(File file) {
                        BridgeCallback bridgeCallback2 = bridgeCallback;
                        if (bridgeCallback2 != null) {
                            bridgeCallback2.sendSuccessResponse(new JsonObject());
                        }
                    }
                });
            } else if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "Failed saved image to album, error path: SA004").build());
            }
        } catch (Exception e11) {
            TmcLogger.e("[ImageSelectBridge]: Failed saved image to Album", e11);
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "Failed saved image to album, unknown Error: SA001").build());
            }
        }
    }
}
