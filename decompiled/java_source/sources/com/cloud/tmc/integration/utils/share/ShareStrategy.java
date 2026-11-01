package com.cloud.tmc.integration.utils.share;

import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.provider.MediaStore;
import androidx.core.content.FileProvider;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.utils.ext.FileExtKt;
import com.cloud.tmc.integration.utils.share.config.IShareStrategy;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.io.FileInputStream;
import java.security.DigestInputStream;
import java.security.MessageDigest;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.u0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\"\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0004H\u0002J\b\u0010\u0010\u001a\u00020\u0004H\u0002J\u0012\u0010\u0011\u001a\u00020\u00062\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0002J#\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0013H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0016J\u001a\u0010\u0017\u001a\u0004\u0018\u00010\u00152\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\n\u0010\u0018\u001a\u0004\u0018\u00010\u0004H\u0002J\"\u0010\u0019\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0002J4\u0010\u001a\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0010\b\u0002\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u001cH\u0002J\b\u0010\u001d\u001a\u00020\u001eH\u0002J\"\u0010\u001f\u001a\u0004\u0018\u00010\u00152\u0006\u0010\t\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0004H\u0002\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006#"}, d2 = {"Lcom/cloud/tmc/integration/utils/share/ShareStrategy;", "Lcom/cloud/tmc/integration/utils/share/config/IShareStrategy;", "()V", "bytes2HexString", "", "data", "", "doShare", "", "context", "Landroid/content/Context;", "shareParams", "Lcom/cloud/tmc/integration/utils/share/ShareParams;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/cloud/tmc/integration/utils/share/OnShareListener;", "getExternalDownloadAppPath", "getExternalDownloadPath", "getFileMD5", OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE, "Ljava/io/File;", "getFileUriByCursor", "Landroid/net/Uri;", "(Landroid/content/Context;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getFileUriByProvider", "getSDCardPathByEnvironment", "handleShareChannels", "handleShareFile", "block", "Lkotlin/Function0;", "isSDCardEnableByEnvironment", "", "queryFileUriByCursor", "fileName", "absolutePath", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShareStrategy implements IShareStrategy {
    private static final String DIR_BYTEAPP = "MiniApp";
    private static final int MAX_QUERY_BY_CURSOR_COUNT = 3;
    private static final String TAG = "ShareStrategy";
    private static final Handler HANDLER = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: com.cloud.tmc.integration.utils.share.ShareStrategy$getFileUriByCursor$1, reason: invalid class name */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @DebugMetadata(c = "com.cloud.tmc.integration.utils.share.ShareStrategy", f = "ShareStrategy.kt", l = {141}, m = "getFileUriByCursor")
    static final class AnonymousClass1 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ShareStrategy.this.getFileUriByCursor(null, null, this);
        }
    }

    private final String bytes2HexString(byte[] data) {
        char[] charArray = "0123456789ABCDEF".toCharArray();
        Intrinsics.g(charArray, "this as java.lang.String).toCharArray()");
        StringBuilder sb2 = new StringBuilder(data.length * 2);
        for (byte b11 : data) {
            sb2.append(charArray[(b11 >> 4) & 15]);
            sb2.append(charArray[b11 & 15]);
        }
        String string = sb2.toString();
        Intrinsics.g(string, "r.toString()");
        return string;
    }

    private final String getExternalDownloadAppPath() {
        if (!isSDCardEnableByEnvironment()) {
            return "";
        }
        String absolutePath = new File(getExternalDownloadPath(), "MiniApp").getAbsolutePath();
        Intrinsics.g(absolutePath, "{\n            File(getEx…P).absolutePath\n        }");
        return absolutePath;
    }

    private final String getExternalDownloadPath() {
        if (!isSDCardEnableByEnvironment()) {
            return "";
        }
        String absolutePath = new File(getSDCardPathByEnvironment(), Environment.DIRECTORY_DOWNLOADS).getAbsolutePath();
        Intrinsics.g(absolutePath, "{\n            File(getSD…S).absolutePath\n        }");
        return absolutePath;
    }

    private final byte[] getFileMD5(File file) {
        if (file == null || !file.exists()) {
            return new byte[0];
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                DigestInputStream digestInputStream = new DigestInputStream(fileInputStream, MessageDigest.getInstance("MD5"));
                try {
                    while (digestInputStream.read(new byte[262144]) > 0) {
                    }
                    byte[] bArrDigest = digestInputStream.getMessageDigest().digest();
                    Intrinsics.g(bArrDigest, "digest.digest()");
                    CloseableKt.a(digestInputStream, null);
                    CloseableKt.a(fileInputStream, null);
                    return bArrDigest;
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        CloseableKt.a(digestInputStream, th2);
                        throw th3;
                    }
                }
            } catch (Throwable th4) {
                try {
                    throw th4;
                } catch (Throwable th5) {
                    CloseableKt.a(fileInputStream, th4);
                    throw th5;
                }
            }
        } catch (Throwable th6) {
            TmcLogger.e(TAG, "getFileMD5: ", th6);
            return new byte[0];
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00b1 -> B:33:0x00b4). Please report as a decompilation issue!!! */
    public final Object getFileUriByCursor(Context context, File file, Continuation<? super Uri> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        int i11;
        File file2;
        ShareStrategy shareStrategy;
        Uri uriQueryFileUriByCursor;
        Context context2;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            int i12 = anonymousClass1.label;
            if ((i12 & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i12 - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object obj = anonymousClass1.result;
        Object objF = IntrinsicsKt.f();
        int i13 = anonymousClass1.label;
        try {
            if (i13 == 0) {
                ResultKt.b(obj);
                File file3 = new File(getExternalDownloadAppPath(), file.getName());
                if (!file.getAbsolutePath().equals(file3.getAbsolutePath()) && !Intrinsics.c(bytes2HexString(getFileMD5(file)), bytes2HexString(getFileMD5(file3)))) {
                    if (!FileExtKt.moveTo$default(file, file3, false, false, 6, null)) {
                        return null;
                    }
                    FileExtKt.notifySystemToScan(file3);
                    i11 = 0;
                    file2 = file3;
                    shareStrategy = this;
                    uriQueryFileUriByCursor = null;
                    context2 = context;
                    if (uriQueryFileUriByCursor == null || i11 >= 3) {
                        return uriQueryFileUriByCursor;
                    }
                    anonymousClass1.L$0 = shareStrategy;
                    anonymousClass1.L$1 = context2;
                    anonymousClass1.L$2 = file2;
                    anonymousClass1.I$0 = i11;
                    anonymousClass1.label = 1;
                    if (u0.a(250L, anonymousClass1) == objF) {
                        return objF;
                    }
                }
                String name = file3.getName();
                Intrinsics.g(name, "destFile.name");
                String absolutePath = file3.getAbsolutePath();
                Intrinsics.g(absolutePath, "destFile.absolutePath");
                return queryFileUriByCursor(context, name, absolutePath);
            }
            if (i13 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i11 = anonymousClass1.I$0;
            file2 = (File) anonymousClass1.L$2;
            Context context3 = (Context) anonymousClass1.L$1;
            shareStrategy = (ShareStrategy) anonymousClass1.L$0;
            ResultKt.b(obj);
            context2 = context3;
            String name2 = file2.getName();
            Intrinsics.g(name2, "destFile.name");
            String absolutePath2 = file2.getAbsolutePath();
            Intrinsics.g(absolutePath2, "destFile.absolutePath");
            uriQueryFileUriByCursor = shareStrategy.queryFileUriByCursor(context2, name2, absolutePath2);
            TmcLogger.d(TAG, "getFileUriByCursor: queryFileUriByCursor uri: " + uriQueryFileUriByCursor + " count: " + i11);
            i11++;
            if (uriQueryFileUriByCursor == null) {
            }
            return uriQueryFileUriByCursor;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "getFileUriByCursor: ", th2);
            return null;
        }
    }

    private final Uri getFileUriByProvider(Context context, File file) {
        try {
            return FileProvider.getUriForFile(context, context.getPackageName() + ".fileprovider", file);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "getFileUri: ", th2);
            return null;
        }
    }

    private final String getSDCardPathByEnvironment() {
        return isSDCardEnableByEnvironment() ? Environment.getExternalStorageDirectory().getAbsolutePath() : "";
    }

    private final void handleShareChannels(final Context context, final ShareParams shareParams, final OnShareListener listener) {
        handleShareFile(context, shareParams, listener, new Function0<Unit>() { // from class: com.cloud.tmc.integration.utils.share.ShareStrategy.handleShareChannels.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m248invoke();
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m248invoke() {
                if (shareParams.getChannel() == 1) {
                    new ShareBySystem(context).share(shareParams, listener);
                    return;
                }
                TmcLogger.d(ShareStrategy.TAG, "handleShareChannels: no channel");
                OnShareListener onShareListener = listener;
                if (onShareListener != null) {
                    onShareListener.onShare(shareParams.getChannel(), 2);
                }
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:47:? A[RETURN, SYNTHETIC] */
    private final void handleShareFile(Context context, ShareParams shareParams, OnShareListener listener, final Function0<Unit> block) {
        File shareFile = shareParams.getShareFile();
        if (shareFile == null) {
            HANDLER.post(new Runnable() { // from class: com.cloud.tmc.integration.utils.share.b
                @Override // java.lang.Runnable
                public final void run() {
                    ShareStrategy.handleShareFile$lambda$2(block);
                }
            });
            return;
        }
        int i11 = Build.VERSION.SDK_INT;
        String[] strArr = i11 >= 33 ? new String[]{"android.permission.READ_MEDIA_IMAGES", "android.permission.READ_MEDIA_VIDEO"} : new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"};
        try {
            if (!ShareUtils.isGranted(context, (String[]) Arrays.copyOf(strArr, strArr.length)) && i11 < 34) {
                TmcLogger.e(TAG, "handleShareFile: has no write permission");
                if (listener != null) {
                    listener.onShare(shareParams.getChannel(), 2);
                    return;
                }
                return;
            }
            try {
                if (!shareFile.exists()) {
                    TmcLogger.e(TAG, "handleShareFile: file is not exist");
                    if (listener != null) {
                        listener.onShare(shareParams.getChannel(), 2);
                    }
                }
                if (!shareParams.isFileProvider()) {
                    k.d(o0.a(y0.b()), null, null, new ShareStrategy$handleShareFile$1$2(shareParams, this, context, shareFile, block, null), 3, null);
                    return;
                }
                try {
                    shareParams.setFileUri(getFileUriByProvider(context, shareFile));
                    HANDLER.post(new Runnable() { // from class: com.cloud.tmc.integration.utils.share.a
                        @Override // java.lang.Runnable
                        public final void run() {
                            ShareStrategy.handleShareFile$lambda$1$lambda$0(block);
                        }
                    });
                } catch (Throwable th2) {
                    th = th2;
                    TmcLogger.e(TAG, "handleShareFile: exception", th);
                    if (listener != null) {
                        listener.onShare(shareParams.getChannel(), 2);
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                TmcLogger.e(TAG, "handleShareFile: exception", th);
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void handleShareFile$default(ShareStrategy shareStrategy, Context context, ShareParams shareParams, OnShareListener onShareListener, Function0 function0, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            function0 = null;
        }
        shareStrategy.handleShareFile(context, shareParams, onShareListener, function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleShareFile$lambda$1$lambda$0(Function0 function0) {
        if (function0 != null) {
            function0.invoke();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleShareFile$lambda$2(Function0 function0) {
        if (function0 != null) {
            function0.invoke();
        }
    }

    private final boolean isSDCardEnableByEnvironment() {
        return Intrinsics.c("mounted", Environment.getExternalStorageState());
    }

    private final Uri queryFileUriByCursor(Context context, String fileName, String absolutePath) {
        Uri contentUri = MediaStore.Files.getContentUri("external");
        Intrinsics.g(contentUri, "getContentUri(\"external\")");
        Cursor cursorQuery = context.getContentResolver().query(contentUri, null, "_display_name=? AND _data=?", new String[]{fileName, absolutePath}, null);
        if (cursorQuery == null || !cursorQuery.moveToNext()) {
            if (cursorQuery == null) {
                return null;
            }
            cursorQuery.close();
            return null;
        }
        Uri uriWithAppendedId = ContentUris.withAppendedId(contentUri, cursorQuery.getLong(cursorQuery.getColumnIndex("_id")));
        Intrinsics.g(uriWithAppendedId, "withAppendedId(contentUri, id)");
        TmcLogger.d(TAG, "queryFileUriByCursor: uri: " + uriWithAppendedId + " displayName: " + cursorQuery.getString(cursorQuery.getColumnIndex("_display_name")) + " path: " + cursorQuery.getString(cursorQuery.getColumnIndex("_data")));
        cursorQuery.close();
        return uriWithAppendedId;
    }

    @Override // com.cloud.tmc.integration.utils.share.config.IShareStrategy
    public void doShare(Context context, ShareParams shareParams, OnShareListener listener) {
        Intrinsics.h(context, "context");
        Intrinsics.h(shareParams, "shareParams");
        TmcLogger.d(TAG, "doShare: " + shareParams);
        handleShareChannels(context, shareParams, listener);
    }
}
