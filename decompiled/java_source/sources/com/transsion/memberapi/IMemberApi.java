package com.transsion.memberapi;

import android.app.Activity;
import androidx.fragment.app.Fragment;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.inject.Singleton;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.i1;
import zm.b;
import zm.c;
import zm.e;
import zm.k;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@Singleton
@Metadata(d1 = {"\u0000Â\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\bg\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004J%\u0010\b\u001a\u00020\u00022\u0014\u0010\u0007\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00020\u0005H&¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH&¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH&¢\u0006\u0004\b\r\u0010\fJ\u000f\u0010\u000f\u001a\u00020\u000eH&¢\u0006\u0004\b\u000f\u0010\u0010JA\u0010\u0019\u001a\u00020\u00022\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\b\u0010\u0007\u001a\u0004\u0018\u00010\u00152\b\b\u0002\u0010\u0016\u001a\u00020\n2\b\b\u0002\u0010\u0018\u001a\u00020\u0017H&¢\u0006\u0004\b\u0019\u0010\u001aJ\u0019\u0010\u001c\u001a\u00020\n2\b\u0010\u001b\u001a\u0004\u0018\u00010\u000eH&¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001eH&¢\u0006\u0004\b\u001f\u0010 J3\u0010#\u001a\u00020\u00022\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0014\u001a\u00020\u00132\b\u0010\"\u001a\u0004\u0018\u00010!2\u0006\u0010\u0007\u001a\u00020\u0015H&¢\u0006\u0004\b#\u0010$J3\u0010(\u001a\u00020\u00022\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010%\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u00172\b\u0010\u0007\u001a\u0004\u0018\u00010'H&¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\nH&¢\u0006\u0004\b*\u0010\fJ\u000f\u0010+\u001a\u00020\nH&¢\u0006\u0004\b+\u0010\fJ#\u0010-\u001a\u00020\u00022\u0012\b\u0002\u0010\u0007\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010,H&¢\u0006\u0004\b-\u0010.J@\u00103\u001a\u00020\u00022\b\u00100\u001a\u0004\u0018\u00010/2\n\b\u0002\u00101\u001a\u0004\u0018\u00010\u001e2\u0018\b\u0002\u00102\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010!\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005H¦@¢\u0006\u0004\b3\u00104J\u000f\u00105\u001a\u00020\u0002H&¢\u0006\u0004\b5\u0010\u0004J\u0019\u00108\u001a\u00020\u00022\b\b\u0002\u00107\u001a\u000206H&¢\u0006\u0004\b8\u00109J\u000f\u0010:\u001a\u00020\u0002H&¢\u0006\u0004\b:\u0010\u0004J\u0015\u0010<\u001a\b\u0012\u0004\u0012\u00020\n0;H&¢\u0006\u0004\b<\u0010=Ja\u0010E\u001a\u00020\u00022>\b\u0002\u0010C\u001a8\u0012\u0015\u0012\u0013\u0018\u00010\u0017¢\u0006\f\b?\u0012\b\b@\u0012\u0004\b\b(A\u0012\u0015\u0012\u0013\u0018\u00010\u0017¢\u0006\f\b?\u0012\b\b@\u0012\u0004\b\b(B\u0012\u0004\u0012\u00020\u0002\u0018\u00010>2\u0010\b\u0002\u0010D\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010,H&¢\u0006\u0004\bE\u0010FJ\u0080\u0001\u0010L\u001a\u00020\u00022\u0006\u0010H\u001a\u00020G2>\b\u0002\u0010I\u001a8\u0012\u0015\u0012\u0013\u0018\u00010\u0017¢\u0006\f\b?\u0012\b\b@\u0012\u0004\b\b(A\u0012\u0015\u0012\u0013\u0018\u00010\u0017¢\u0006\f\b?\u0012\b\b@\u0012\u0004\b\b(B\u0012\u0004\u0012\u00020\u0002\u0018\u00010>2'\b\u0002\u0010D\u001a!\u0012\u0015\u0012\u0013\u0018\u00010J¢\u0006\f\b?\u0012\b\b@\u0012\u0004\b\b(K\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005H&¢\u0006\u0004\bL\u0010MJ-\u0010P\u001a\u00020\u00022\u0006\u00100\u001a\u00020/2\n\b\u0002\u00101\u001a\u0004\u0018\u00010\u001e2\b\u0010O\u001a\u0004\u0018\u00010NH&¢\u0006\u0004\bP\u0010QJ%\u0010R\u001a\u00020\u00022\n\b\u0002\u00101\u001a\u0004\u0018\u00010\u001e2\b\u0010O\u001a\u0004\u0018\u00010NH&¢\u0006\u0004\bR\u0010SJ\u0011\u0010U\u001a\u0004\u0018\u00010TH&¢\u0006\u0004\bU\u0010VJ\u0019\u0010X\u001a\u00020\u00022\b\u0010W\u001a\u0004\u0018\u00010TH&¢\u0006\u0004\bX\u0010YJ1\u0010\\\u001a\u00020\u00022\u0006\u0010[\u001a\u00020Z2\u0018\b\u0002\u00102\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005H&¢\u0006\u0004\b\\\u0010]J\u0017\u0010_\u001a\u00020\u00022\u0006\u0010O\u001a\u00020^H&¢\u0006\u0004\b_\u0010`J\u0017\u0010a\u001a\u00020\u00022\u0006\u0010O\u001a\u00020^H&¢\u0006\u0004\ba\u0010`J\u0019\u0010c\u001a\u00020\u00022\b\u0010O\u001a\u0004\u0018\u00010bH&¢\u0006\u0004\bc\u0010dJ\u0019\u0010e\u001a\u00020\u00022\b\u0010O\u001a\u0004\u0018\u00010bH&¢\u0006\u0004\be\u0010dJ\u000f\u0010f\u001a\u00020\u0002H&¢\u0006\u0004\bf\u0010\u0004J\u000f\u0010g\u001a\u00020\u0002H&¢\u0006\u0004\bg\u0010\u0004J\u000f\u0010h\u001a\u00020\u0002H&¢\u0006\u0004\bh\u0010\u0004J\u0019\u0010j\u001a\u00020\n2\b\u0010i\u001a\u0004\u0018\u00010\u0006H&¢\u0006\u0004\bj\u0010k¨\u0006l"}, d2 = {"Lcom/transsion/memberapi/IMemberApi;", "", "", TtmlNode.TAG_P, "()V", "Lkotlin/Function1;", "Lcom/transsion/memberapi/MemberRemindData;", "callback", "m", "(Lkotlin/jvm/functions/Function1;)V", "", "B", "()Z", "f", "Landroidx/fragment/app/Fragment;", CampaignEx.JSON_KEY_AD_R, "()Landroidx/fragment/app/Fragment;", "Landroid/app/Activity;", "activity", "Lcom/transsion/memberapi/MemberSource;", EventConstants.KEY_SOURCE, "Lzm/b;", "scrollToTask", "", "sceneId", "a", "(Landroid/app/Activity;Lcom/transsion/memberapi/MemberSource;Lzm/b;ZLjava/lang/String;)V", "fragment", "j", "(Landroidx/fragment/app/Fragment;)Z", "", "D", "()I", "Lcom/transsion/memberapi/MemberCheckResult;", "memberCheckResult", "w", "(Landroid/app/Activity;Lcom/transsion/memberapi/MemberSource;Lcom/transsion/memberapi/MemberCheckResult;Lzm/b;)V", CampaignEx.JSON_KEY_TITLE, "buttonTitle", "Lzm/k;", "y", "(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lzm/k;)V", "c", "g", "Lkotlin/Function0;", "C", "(Lkotlin/jvm/functions/Function0;)V", "Lcom/transsion/memberapi/MemberSceneType;", "sceneType", "resolution", MediaItem.MUSIC_FLOAT_STATE_COMPLETION, "e", "(Lcom/transsion/memberapi/MemberSceneType;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "h", "", "bottomMargin", "x", "(F)V", "G", "Lkotlinx/coroutines/flow/i1;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Lkotlinx/coroutines/flow/i1;", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "code", "message", "onFailed", "onSuccess", "A", "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V", "Lcom/transsion/memberapi/MemberTaskItem;", WebConstants.FIELD_ITEM, "onFailure", "Lcom/transsion/memberapi/TaskRewards;", "data", "l", "(Lcom/transsion/memberapi/MemberTaskItem;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V", "Lzm/a;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "z", "(Lcom/transsion/memberapi/MemberSceneType;Ljava/lang/Integer;Lzm/a;)V", "o", "(Ljava/lang/Integer;Lzm/a;)V", "Lcom/transsion/memberapi/MemberDetail;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()Lcom/transsion/memberapi/MemberDetail;", "memberDetail", CampaignEx.JSON_KEY_AD_K, "(Lcom/transsion/memberapi/MemberDetail;)V", "Lcom/transsion/memberapi/OpType;", "opType", "n", "(Lcom/transsion/memberapi/OpType;Lkotlin/jvm/functions/Function1;)V", "Lzm/e;", "E", "(Lzm/e;)V", "t", "Lzm/c;", "s", "(Lzm/c;)V", TmcStartParams.KEY_URL_SHORT, "i", CampaignEx.JSON_KEY_AD_Q, "v", "memberRemindData", "F", "(Lcom/transsion/memberapi/MemberRemindData;)Z", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IMemberApi {

    /* JADX INFO: loaded from: classes5.dex */
    public static final class a {
        public static /* synthetic */ void a(IMemberApi iMemberApi, Function0 function0, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: checkShowAdState");
            }
            if ((i11 & 1) != 0) {
                function0 = null;
            }
            iMemberApi.C(function0);
        }

        public static /* synthetic */ void b(IMemberApi iMemberApi, Function2 function2, Function0 function0, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: claimMemberShipReward");
            }
            if ((i11 & 1) != 0) {
                function2 = null;
            }
            if ((i11 & 2) != 0) {
                function0 = null;
            }
            iMemberApi.A(function2, function0);
        }

        public static /* synthetic */ void c(IMemberApi iMemberApi, Activity activity, MemberSource memberSource, b bVar, boolean z10, String str, int i11, Object obj) {
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
            iMemberApi.a(activity, memberSource, bVar, z11, str);
        }
    }

    void A(Function2 onFailed, Function0 onSuccess);

    boolean B();

    void C(Function0 callback);

    int D();

    void E(e listener);

    boolean F(MemberRemindData memberRemindData);

    void G();

    void a(Activity activity, MemberSource source, b callback, boolean scrollToTask, String sceneId);

    MemberDetail b();

    boolean c();

    i1 d();

    Object e(MemberSceneType memberSceneType, Integer num, Function1 function1, Continuation continuation);

    boolean f();

    boolean g();

    void h();

    void i();

    boolean j(Fragment fragment);

    void k(MemberDetail memberDetail);

    void l(MemberTaskItem item, Function2 onFailure, Function1 onSuccess);

    void m(Function1 callback);

    void n(OpType opType, Function1 completion);

    void o(Integer resolution, zm.a listener);

    void p();

    void q();

    Fragment r();

    void s(c listener);

    void t(e listener);

    void u(c listener);

    void v();

    void w(Activity activity, MemberSource source, MemberCheckResult memberCheckResult, b callback);

    void x(float bottomMargin);

    void y(Activity activity, String title, String buttonTitle, k callback);

    void z(MemberSceneType sceneType, Integer resolution, zm.a listener);
}
