package com.transsion.room.api;

import android.content.Context;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import aq.a;
import aq.c;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.inject.Singleton;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Singleton
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bg\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H&¢\u0006\u0004\b\b\u0010\tJB\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2!\u0010\u0013\u001a\u001d\u0012\u0013\u0012\u00110\f¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u00120\u000eH&¢\u0006\u0004\b\u0014\u0010\u0015J<\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\n2#\u0010\u0013\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0016¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\u00120\u000eH&¢\u0006\u0004\b\u0018\u0010\u0019JJ\u0010\u001f\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001a2)\u0010\u0013\u001a%\u0012\u001b\u0012\u0019\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u001d¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u001e\u0012\u0004\u0012\u00020\u00120\u000eH&¢\u0006\u0004\b\u001f\u0010 J\u001f\u0010&\u001a\u00020%2\u0006\u0010\"\u001a\u00020!2\u0006\u0010$\u001a\u00020#H&¢\u0006\u0004\b&\u0010'¨\u0006("}, d2 = {"Lcom/transsion/room/api/IRoomApi;", "", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Ljava/lang/String;", "Landroidx/fragment/app/Fragment;", "fragment", "Laq/a;", "f", "(Landroidx/fragment/app/Fragment;)Laq/a;", "Landroidx/fragment/app/FragmentActivity;", "activity", "", "isNeedDialog", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "isGranted", "", "callback", "a", "(Landroidx/fragment/app/FragmentActivity;ZLkotlin/jvm/functions/Function1;)V", "Lcom/transsion/room/api/bean/LocationPlace;", "data", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V", "", "latitude", "longitude", "", "place", "e", "(DDLkotlin/jvm/functions/Function1;)V", "Landroid/content/Context;", "context", "Lcom/transsion/room/api/RoomsViewType;", NativeComponentConstants.KEY_COMPONENT_TYPE, "Laq/c;", "c", "(Landroid/content/Context;Lcom/transsion/room/api/RoomsViewType;)Laq/c;", "RoomApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IRoomApi {
    void a(FragmentActivity activity, boolean isNeedDialog, Function1 callback);

    void b(FragmentActivity activity, Function1 callback);

    c c(Context context, RoomsViewType type);

    String d();

    void e(double latitude, double longitude, Function1 callback);

    a f(Fragment fragment);
}
