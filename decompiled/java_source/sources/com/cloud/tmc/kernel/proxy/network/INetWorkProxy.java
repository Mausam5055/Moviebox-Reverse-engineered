package com.cloud.tmc.kernel.proxy.network;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.integration.defaultImpl.TmcNetworkImpl")
public interface INetWorkProxy extends Proxiable {
    public static final String HEADER_CALLBACK_ID = "callbackId";

    void cancelDownloadCall(String str, IAbortCallback iAbortCallback);

    void cancelHttpRequest(@NonNull String str, IAbortCallback iAbortCallback);

    void cancelUploadCall(String str, IAbortCallback iAbortCallback);

    void clearDownloadCall();

    void delete(@NonNull String str, @Nullable Map<String, String> map, @Nullable Map<String, String> map2, @Nullable Map<String, String> map3, @NonNull Boolean bool, @NonNull IResponseCallback iResponseCallback);

    void downloadPackage(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Map<String, String> map, @Nullable String str4, PackageDownloadCallback packageDownloadCallback);

    void get(@NonNull String str, @Nullable Map<String, String> map, @Nullable Map<String, String> map2, @NonNull Boolean bool, @NonNull IResponseCallback iResponseCallback);

    void post(@NonNull String str, @Nullable Map<String, String> map, @Nullable Map<String, String> map2, @Nullable Map<String, String> map3, @NonNull Boolean bool, @NonNull IResponseCallback iResponseCallback);

    void postJson(@NonNull String str, @Nullable Map<String, String> map, @Nullable Map<String, String> map2, @Nullable Object obj, @NonNull Boolean bool, @NonNull IResponseCallback iResponseCallback);

    void postMultipart(@NonNull String str, @Nullable Map<String, String> map, @Nullable Map<String, String> map2, @Nullable Map<String, String> map3, @NonNull Boolean bool, @NonNull IResponseCallback iResponseCallback);

    void postV2(@NonNull String str, @Nullable Map<String, String> map, @Nullable Map<String, String> map2, @Nullable Map<String, String> map3, @NonNull Boolean bool, @NonNull IResponseCallback iResponseCallback);

    void put(@NonNull String str, @Nullable Map<String, String> map, @Nullable Map<String, String> map2, @Nullable Map<String, String> map3, @NonNull Boolean bool, @NonNull IResponseCallback iResponseCallback);

    void startPreConnect();

    void uploadFile(@NonNull String str, @NonNull String str2, @Nullable String str3, @Nullable Map<String, String> map, @Nullable Map<String, String> map2, @Nullable Map<String, String> map3, @NonNull Boolean bool, @NonNull IUploadCallback iUploadCallback);
}
