package com.transsion.memberapi;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.inject.Singleton;
import com.transsion.player.mediasession.MediaItem;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import zm.b;
import zm.f;
import zm.j;

/* JADX INFO: loaded from: classes5.dex */
@Singleton
@Metadata(d1 = {"\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\bg\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H&¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0007H&¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\tJ\u000f\u0010\u000b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u000b\u0010\tJ\u000f\u0010\f\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\f\u0010\tJ\u000f\u0010\r\u001a\u00020\u0007H&¢\u0006\u0004\b\r\u0010\tJ\u0019\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH&¢\u0006\u0004\b\u0011\u0010\u0012J\u0011\u0010\u0014\u001a\u0004\u0018\u00010\u0013H&¢\u0006\u0004\b\u0014\u0010\u0015J?\u0010\u001b\u001a\u00020\u00102\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0016H&¢\u0006\u0004\b\u001b\u0010\u001cJA\u0010#\u001a\u00020\u00102\b\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\b\u0010 \u001a\u0004\u0018\u00010\u001f2\b\u0010\u000f\u001a\u0004\u0018\u00010!2\b\b\u0002\u0010\"\u001a\u00020\u00022\b\b\u0002\u0010\u0019\u001a\u00020\u0016H&¢\u0006\u0004\b#\u0010$J2\u0010*\u001a\u00020\u00102\u0006\u0010&\u001a\u00020%2\u0018\b\u0002\u0010)\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010(\u0012\u0004\u0012\u00020\u0010\u0018\u00010'H¦@¢\u0006\u0004\b*\u0010+J\u009f\u0001\u00106\u001a\u0004\u0018\u0001052\u0006\u0010-\u001a\u00020,2\u0006\u0010.\u001a\u00020\u00072\u0010\b\u0002\u00100\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010/2\u0010\b\u0002\u00101\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010/2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u001f2\u001c\b\u0002\u00104\u001a\u0016\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0010\u0018\u0001022\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0016H&¢\u0006\u0004\b6\u00107J\u0017\u00109\u001a\u00020\u00102\u0006\u00108\u001a\u00020\u0016H&¢\u0006\u0004\b9\u0010:J\u0017\u0010<\u001a\u00020\u00102\u0006\u0010&\u001a\u00020;H&¢\u0006\u0004\b<\u0010=J\u000f\u0010>\u001a\u00020\u0010H&¢\u0006\u0004\b>\u0010?Jm\u0010E\u001a\u00020\u00102\u0006\u0010-\u001a\u00020,2\u0006\u0010\u0019\u001a\u00020\u00162\u0010\b\u0002\u0010@\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010/2\u0010\b\u0002\u0010A\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010/2\u0010\b\u0002\u0010B\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010/2\u0016\b\u0002\u0010D\u001a\u0010\u0012\u0004\u0012\u00020C\u0012\u0004\u0012\u00020\u0010\u0018\u00010'H&¢\u0006\u0004\bE\u0010FJG\u0010H\u001a\u00020\u00102\u0006\u0010-\u001a\u00020,2\u0016\b\u0002\u0010A\u001a\u0010\u0012\u0004\u0012\u00020G\u0012\u0004\u0012\u00020\u0010\u0018\u00010'2\u0016\b\u0002\u0010D\u001a\u0010\u0012\u0004\u0012\u00020C\u0012\u0004\u0012\u00020\u0010\u0018\u00010'H&¢\u0006\u0004\bH\u0010IJ\u000f\u0010J\u001a\u00020\u0010H&¢\u0006\u0004\bJ\u0010?JW\u0010K\u001a\u00020\u00102\u0006\u0010-\u001a\u00020,2\u0014\u0010A\u001a\u0010\u0012\u0004\u0012\u00020G\u0012\u0004\u0012\u00020\u0010\u0018\u00010'2\u0010\b\u0002\u0010B\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010/2\u0016\b\u0002\u0010D\u001a\u0010\u0012\u0004\u0012\u00020C\u0012\u0004\u0012\u00020\u0010\u0018\u00010'H&¢\u0006\u0004\bK\u0010LJ\u0011\u0010M\u001a\u0004\u0018\u00010\u0007H&¢\u0006\u0004\bM\u0010NJe\u0010Q\u001a\u00020\u00102\u0006\u0010-\u001a\u00020,2\n\b\u0002\u0010P\u001a\u0004\u0018\u00010O2\u0010\b\u0002\u0010B\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010/2\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0016H&¢\u0006\u0004\bQ\u0010RJ\u000f\u0010S\u001a\u00020\u0016H&¢\u0006\u0004\bS\u0010T¨\u0006U"}, d2 = {"Lcom/transsion/memberapi/IPremiumApi;", "", "", "c", "()Z", TmcStartParams.KEY_URL_SHORT, CampaignEx.JSON_KEY_AD_K, "", "t", "()I", "f", "w", "x", "i", "Lzm/j;", "callback", "", "g", "(Lzm/j;)V", "Lcom/transsion/memberapi/MemberDetail;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()Lcom/transsion/memberapi/MemberDetail;", "", "pageName", "traceId", "sceneId", "subjectId", "j", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Landroid/app/Activity;", "activity", "Lcom/transsion/memberapi/MemberSource;", EventConstants.KEY_SOURCE, "Lzm/b;", "scrollToTask", "a", "(Landroid/app/Activity;Lcom/transsion/memberapi/MemberSource;Lzm/b;ZLjava/lang/String;)V", "Lcom/transsion/memberapi/PremiumV2CheckAccessRequestBean;", "requestBean", "Lkotlin/Function1;", "Lcom/transsion/memberapi/PremiumV2CheckAccessDto;", MediaItem.MUSIC_FLOAT_STATE_COMPLETION, CampaignEx.JSON_KEY_AD_Q, "(Lcom/transsion/memberapi/PremiumV2CheckAccessRequestBean;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroid/content/Context;", "context", "screenState", "Lkotlin/Function0;", "onClose", "onPurchaseSucceed", "Lkotlin/Function2;", "Landroidx/fragment/app/DialogFragment;", "showDialog", "Landroid/view/View;", CampaignEx.JSON_KEY_AD_R, "(Landroid/content/Context;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/transsion/memberapi/MemberSource;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;", "oldUid", TtmlNode.TAG_P, "(Ljava/lang/String;)V", "Lcom/transsion/memberapi/PremiumConsumeRequestBean;", "s", "(Lcom/transsion/memberapi/PremiumConsumeRequestBean;)V", "v", "()V", "onRenew", "onShow", "onDismiss", "", "onLoadFailed", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V", "Lcom/transsion/memberapi/SkuPromotionItem;", "e", "(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "n", "l", "(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V", "o", "()Ljava/lang/Integer;", "Lzm/f;", "onPurchaseListener", "h", "(Landroid/content/Context;Lzm/f;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "m", "()Ljava/lang/String;", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IPremiumApi {

    public static final class a {
        public static /* synthetic */ View a(IPremiumApi iPremiumApi, Context context, int i11, Function0 function0, Function0 function1, MemberSource memberSource, Function2 function2, String str, String str2, String str3, String str4, int i12, Object obj) {
            if (obj == null) {
                return iPremiumApi.r(context, i11, (i12 & 4) != 0 ? null : function0, (i12 & 8) != 0 ? null : function1, (i12 & 16) != 0 ? null : memberSource, (i12 & 32) != 0 ? null : function2, (i12 & 64) != 0 ? null : str, (i12 & 128) != 0 ? null : str2, (i12 & 256) != 0 ? null : str3, (i12 & 512) != 0 ? null : str4);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getMemberLayoutView");
        }

        public static /* synthetic */ void b(IPremiumApi iPremiumApi, Context context, f fVar, Function0 function0, String str, String str2, String str3, String str4, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showMemberProDialog");
            }
            iPremiumApi.h(context, (i11 & 2) != 0 ? null : fVar, (i11 & 4) == 0 ? function0 : null, (i11 & 8) != 0 ? "" : str, (i11 & 16) != 0 ? "" : str2, (i11 & 32) != 0 ? "" : str3, (i11 & 64) == 0 ? str4 : "");
        }

        public static /* synthetic */ void c(IPremiumApi iPremiumApi, Context context, String str, Function0 function0, Function0 function1, Function0 function2, Function1 function3, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showMemberPromotionDialog");
            }
            iPremiumApi.d(context, str, (i11 & 4) != 0 ? null : function0, (i11 & 8) != 0 ? null : function1, (i11 & 16) != 0 ? null : function2, (i11 & 32) != 0 ? null : function3);
        }

        public static /* synthetic */ void d(IPremiumApi iPremiumApi, Activity activity, MemberSource memberSource, b bVar, boolean z10, String str, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: startMemberPage");
            }
            if ((i11 & 8) != 0) {
                z10 = false;
            }
            boolean z11 = z10;
            if ((i11 & 16) != 0) {
                str = "";
            }
            iPremiumApi.a(activity, memberSource, bVar, z11, str);
        }
    }

    void a(Activity activity, MemberSource source, b callback, boolean scrollToTask, String sceneId);

    MemberDetail b();

    boolean c();

    void d(Context context, String sceneId, Function0 onRenew, Function0 onShow, Function0 onDismiss, Function1 onLoadFailed);

    void e(Context context, Function1 onShow, Function1 onLoadFailed);

    int f();

    void g(j callback);

    void h(Context context, f onPurchaseListener, Function0 onDismiss, String pageName, String traceId, String sceneId, String subjectId);

    int i();

    void j(String pageName, String traceId, String sceneId, String subjectId);

    boolean k();

    void l(Context context, Function1 onShow, Function0 onDismiss, Function1 onLoadFailed);

    String m();

    void n();

    Integer o();

    void p(String oldUid);

    Object q(PremiumV2CheckAccessRequestBean premiumV2CheckAccessRequestBean, Function1 function1, Continuation continuation);

    View r(Context context, int screenState, Function0 onClose, Function0 onPurchaseSucceed, MemberSource source, Function2 showDialog, String pageName, String traceId, String sceneId, String subjectId);

    void s(PremiumConsumeRequestBean requestBean);

    int t();

    boolean u();

    void v();

    int w();

    int x();
}
