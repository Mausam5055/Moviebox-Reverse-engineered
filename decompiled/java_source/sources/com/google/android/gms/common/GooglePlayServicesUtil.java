package com.google.android.gms.common;

import android.app.Activity;
import android.app.Dialog;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.HideFirstParty;
import com.google.android.gms.common.internal.zag;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;

/* JADX INFO: loaded from: classes3.dex */
public final class GooglePlayServicesUtil extends GooglePlayServicesUtilLight {

    @NonNull
    public static final String GMS_ERROR_DIALOG = "GooglePlayServicesErrorDialog";

    @NonNull
    @Deprecated
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";

    @Deprecated
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;

    @NonNull
    public static final String GOOGLE_PLAY_STORE_PACKAGE = "com.android.vending";

    private GooglePlayServicesUtil() {
    }

    @Nullable
    @Deprecated
    public static Dialog getErrorDialog(int i11, @NonNull Activity activity, int i12) {
        return getErrorDialog(i11, activity, i12, null);
    }

    @Nullable
    @Deprecated
    public static Dialog getErrorDialog(int i11, @NonNull Activity activity, int i12, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        if (true == GooglePlayServicesUtilLight.isPlayServicesPossiblyUpdating(activity, i11)) {
            i11 = 18;
        }
        return GoogleApiAvailability.getInstance().getErrorDialog(activity, i11, i12, onCancelListener);
    }

    @NonNull
    @Deprecated
    public static PendingIntent getErrorPendingIntent(int i11, @NonNull Context context, int i12) {
        return GoogleApiAvailabilityLight.getInstance().getErrorResolutionPendingIntent(context, i11, i12);
    }

    @NonNull
    @Deprecated
    public static String getErrorString(int i11) {
        return GooglePlayServicesUtilLight.getErrorString(i11);
    }

    @NonNull
    public static Context getRemoteContext(@NonNull Context context) {
        return GooglePlayServicesUtilLight.getRemoteContext(context);
    }

    @NonNull
    public static Resources getRemoteResource(@NonNull Context context) {
        return GooglePlayServicesUtilLight.getRemoteResource(context);
    }

    @ResultIgnorabilityUnspecified
    @HideFirstParty
    @Deprecated
    public static int isGooglePlayServicesAvailable(@NonNull Context context) {
        return GooglePlayServicesUtilLight.isGooglePlayServicesAvailable(context);
    }

    @KeepForSdk
    @Deprecated
    public static int isGooglePlayServicesAvailable(@NonNull Context context, int i11) {
        return GooglePlayServicesUtilLight.isGooglePlayServicesAvailable(context, i11);
    }

    @Deprecated
    public static boolean isUserRecoverableError(int i11) {
        return GooglePlayServicesUtilLight.isUserRecoverableError(i11);
    }

    @ResultIgnorabilityUnspecified
    @Deprecated
    public static boolean showErrorDialogFragment(int i11, @NonNull Activity activity, int i12) {
        return showErrorDialogFragment(i11, activity, i12, null);
    }

    @ResultIgnorabilityUnspecified
    @Deprecated
    public static boolean showErrorDialogFragment(int i11, @NonNull Activity activity, int i12, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        return showErrorDialogFragment(i11, activity, null, i12, onCancelListener);
    }

    @ResultIgnorabilityUnspecified
    public static boolean showErrorDialogFragment(int i11, @NonNull Activity activity, @Nullable Fragment fragment, int i12, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        if (true == GooglePlayServicesUtilLight.isPlayServicesPossiblyUpdating(activity, i11)) {
            i11 = 18;
        }
        int i13 = i11;
        GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.getInstance();
        if (fragment == null) {
            return googleApiAvailability.showErrorDialogFragment(activity, i13, i12, onCancelListener);
        }
        Dialog dialogZaa = googleApiAvailability.zaa(activity, i13, zag.zac(fragment, GoogleApiAvailability.getInstance().getErrorResolutionIntent(activity, i13, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D), i12), onCancelListener, null);
        if (dialogZaa == null) {
            return false;
        }
        googleApiAvailability.zad(activity, dialogZaa, GMS_ERROR_DIALOG, onCancelListener);
        return true;
    }

    @Deprecated
    public static void showErrorNotification(int i11, @NonNull Context context) {
        GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.getInstance();
        if (GooglePlayServicesUtilLight.isPlayServicesPossiblyUpdating(context, i11) || GooglePlayServicesUtilLight.isPlayStorePossiblyUpdating(context, i11)) {
            googleApiAvailability.zaf(context);
        } else {
            googleApiAvailability.showErrorNotification(context, i11);
        }
    }
}
