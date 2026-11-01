package com.cloud.tmc.integration.callback;

import com.cloud.tmc.integration.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0003H\u0016J\b\u0010\u0007\u001a\u00020\u0003H\u0016J \u0010\b\u001a\u00020\u00032\u0016\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\b\u0012\u0004\u0012\u00020\u000b`\fH&JH\u0010\b\u001a\u00020\u00032\u0016\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\b\u0012\u0004\u0012\u00020\u000b`\f2\u001c\b\u0002\u0010\r\u001a\u0016\u0012\u0004\u0012\u00020\u000e\u0018\u00010\nj\n\u0012\u0004\u0012\u00020\u000e\u0018\u0001`\f2\b\b\u0002\u0010\u000f\u001a\u00020\u0005H\u0016¨\u0006\u0010"}, d2 = {"Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;", "", "onAuthorized", "", "granted", "", "onCancel", "onDialogClickCancel", "onSelected", "data", "Ljava/util/ArrayList;", "", "Lkotlin/collections/ArrayList;", "selectPosition", "", "finishActivity", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface OnPhotoSelectListener {

    @Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class DefaultImpls {
        public static void onCancel(OnPhotoSelectListener onPhotoSelectListener) {
        }

        public static void onDialogClickCancel(OnPhotoSelectListener onPhotoSelectListener) {
        }

        public static void onSelected(OnPhotoSelectListener onPhotoSelectListener, ArrayList<String> data, ArrayList<Integer> arrayList, boolean z10) {
            Intrinsics.h(data, "data");
            onPhotoSelectListener.onSelected(data);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ void onSelected$default(OnPhotoSelectListener onPhotoSelectListener, ArrayList arrayList, ArrayList arrayList2, boolean z10, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onSelected");
            }
            if ((i11 & 2) != 0) {
                arrayList2 = new ArrayList();
            }
            if ((i11 & 4) != 0) {
                z10 = false;
            }
            onPhotoSelectListener.onSelected(arrayList, arrayList2, z10);
        }
    }

    void onAuthorized(boolean granted);

    void onCancel();

    void onDialogClickCancel();

    void onSelected(ArrayList<String> data);

    void onSelected(ArrayList<String> data, ArrayList<Integer> selectPosition, boolean finishActivity);
}
