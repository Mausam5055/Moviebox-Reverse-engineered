package com.transsion.share.share;

import android.app.Activity;
import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.PermissionUtils;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.push.PushConstants;
import com.transsion.share.R$id;
import com.transsion.share.R$layout;
import com.transsion.share.R$mipmap;
import com.transsion.share.R$string;
import com.transsion.share.R$style;
import com.transsion.share.bean.PostType;
import com.transsion.share.bean.ShareBean;
import com.transsion.share.bean.ShareType;
import com.transsion.share.share.ShareDialogFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import hj.i;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kr.o;
import kr.p;
import nh.m;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000¶\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018\u0000 \u008a\u00012\u00020\u0001:\u0001WB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\r\u0010\u0003J\u0019\u0010\u000f\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\nH\u0003¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0013\u001a\u00020\u00062\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u001d\u0010\u0019\u001a\u00020\u00182\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001b\u0010\u0003J;\u0010\"\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u00162\b\u0010 \u001a\u0004\u0018\u00010\u00162\b\u0010!\u001a\u0004\u0018\u00010\u0016H\u0002¢\u0006\u0004\b\"\u0010#J\u0017\u0010&\u001a\u00020\u00112\u0006\u0010%\u001a\u00020$H\u0002¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u0016H\u0002¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\u0016H\u0002¢\u0006\u0004\b*\u0010)J\u000f\u0010+\u001a\u00020\u0016H\u0002¢\u0006\u0004\b+\u0010)J#\u0010.\u001a\u00020\u00062\u0006\u0010,\u001a\u00020\u00162\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\u0016H\u0002¢\u0006\u0004\b.\u0010/J\u000f\u00100\u001a\u00020\u0016H\u0002¢\u0006\u0004\b0\u0010)J!\u00104\u001a\u00020\u00062\u0006\u00102\u001a\u0002012\b\u00103\u001a\u0004\u0018\u00010\u0016H\u0002¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u00020\u0006H\u0003¢\u0006\u0004\b6\u0010\u0003J\u0015\u00109\u001a\u00020\u00062\u0006\u00108\u001a\u000207¢\u0006\u0004\b9\u0010:J\u0019\u0010=\u001a\u00020\u00062\b\u0010<\u001a\u0004\u0018\u00010;H\u0016¢\u0006\u0004\b=\u0010>J!\u0010?\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010<\u001a\u0004\u0018\u00010;H\u0016¢\u0006\u0004\b?\u0010@J\u0019\u0010B\u001a\u00020A2\b\u0010<\u001a\u0004\u0018\u00010;H\u0016¢\u0006\u0004\bB\u0010CJ\u000f\u0010D\u001a\u00020\u0006H\u0016¢\u0006\u0004\bD\u0010\u0003J/\u0010I\u001a\u00020\u00062\u0006\u0010F\u001a\u00020E2\u000e\u0010\u0017\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00160\u00152\u0006\u0010H\u001a\u00020GH\u0016¢\u0006\u0004\bI\u0010JJ\u000f\u0010K\u001a\u00020\u0006H\u0016¢\u0006\u0004\bK\u0010\u0003J\u000f\u0010L\u001a\u00020\u0006H\u0016¢\u0006\u0004\bL\u0010\u0003J\u0017\u0010O\u001a\u00020\u00062\u0006\u0010N\u001a\u00020MH\u0016¢\u0006\u0004\bO\u0010PJ!\u0010S\u001a\u00020\u00062\b\u0010R\u001a\u0004\u0018\u00010Q2\b\u00103\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\bS\u0010TJ\u000f\u0010U\u001a\u00020\u0006H\u0016¢\u0006\u0004\bU\u0010\u0003R\u0018\u0010Y\u001a\u0004\u0018\u00010V8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010XR\u0018\u0010]\u001a\u0004\u0018\u00010Z8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010\\R\u0016\u0010a\u001a\u00020^8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b_\u0010`R\u0016\u0010d\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010cR\u0016\u0010f\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u0010cR\u0016\u0010h\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bg\u0010cR\u0018\u0010l\u001a\u0004\u0018\u00010i8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bj\u0010kR\u0018\u0010o\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010nR\u0018\u0010q\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010nR\u0018\u0010s\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010nR\u0018\u0010u\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bt\u0010nR\u0018\u0010x\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bv\u0010wR\u001d\u0010~\u001a\u0004\u0018\u00010y8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bz\u0010{\u001a\u0004\b|\u0010}R\u001a\u0010\u0081\u0001\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u007f\u0010\u0080\u0001R\u0018\u0010\u0083\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0082\u0001\u0010nR\u0018\u0010\u0085\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0084\u0001\u0010nR\u0018\u0010\u0087\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0086\u0001\u0010nR\u0018\u0010\u0089\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0088\u0001\u0010n¨\u0006\u008b\u0001"}, d2 = {"Lcom/transsion/share/share/ShareDialogFragment;", "Landroidx/fragment/app/DialogFragment;", "<init>", "()V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "B0", "(Landroid/view/View;)V", "", "Ljr/a;", "q0", "()Ljava/util/List;", "initViewModel", "shareData", "w0", "(Ljr/a;)V", "Lcom/transsion/share/bean/ShareBean;", "shareBean", "A0", "(Lcom/transsion/share/bean/ShareBean;)V", "", "", "permissions", "", "r0", "([Ljava/lang/String;)Z", "M0", PushConstants.PROVIDER_FIELD_PKG, "Landroid/app/Activity;", "activity", "shortUrl", CampaignEx.JSON_KEY_DESC, CampaignEx.JSON_KEY_TITLE, "H0", "(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Lcom/transsion/share/bean/ShareType;", "shareType", "u0", "(Lcom/transsion/share/bean/ShareType;)Lcom/transsion/share/bean/ShareBean;", "o0", "()Ljava/lang/String;", "p0", "n0", EventConstants.KEY_ACTION, "failMsg", "s0", "(Ljava/lang/String;Ljava/lang/String;)V", "v0", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "tag", "L0", "(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V", "x0", "Lcom/transsion/share/share/a;", "callback", "G0", "(Lcom/transsion/share/share/a;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "onDestroy", "", "requestCode", "", "grantResults", "onRequestPermissionsResult", "(I[Ljava/lang/String;[I)V", "onResume", "onPause", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "Landroid/content/Context;", "context", "K0", "(Landroid/content/Context;Ljava/lang/String;)V", TmcConstants.NAVIGATION_ON_START, "Lir/b;", "a", "Lir/b;", "actionViewModel", "Landroidx/recyclerview/widget/RecyclerView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroidx/recyclerview/widget/RecyclerView;", "shareList", "", "c", "J", "shareDataStartTime", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "isDelete", "e", "isDownload", "f", "isCheckOut", "Lcom/transsion/share/bean/PostType;", "g", "Lcom/transsion/share/bean/PostType;", "postType", "h", "Ljava/lang/String;", "authorId", "i", "reportType", "j", "ops", CampaignEx.JSON_KEY_AD_K, "downloadName", "l", "Lcom/transsion/share/share/a;", "shareItemCallback", "Lhj/b;", "m", "Lkotlin/Lazy;", "getLogViewConfig", "()Lhj/b;", "logViewConfig", "n", "Ljr/a;", "mShareData", "o", "mSubjectId", TtmlNode.TAG_P, "mShareTitle", CampaignEx.JSON_KEY_AD_Q, "mShareScore", CampaignEx.JSON_KEY_AD_R, "mSource", "s", "ShareLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShareDialogFragment extends DialogFragment {

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private ir.b actionViewModel;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private RecyclerView shareList;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private long shareDataStartTime;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private boolean isDelete;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private boolean isDownload;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private boolean isCheckOut;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private PostType postType;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private String authorId;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private String reportType;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private String ops;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private String downloadName;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private a shareItemCallback;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private final Lazy logViewConfig;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private jr.a mShareData;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private String mSubjectId;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private String mShareTitle;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private String mShareScore;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private String mSource;

    /* JADX INFO: renamed from: com.transsion.share.share.ShareDialogFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ShareDialogFragment a(PostType postType, String str, String str2, String reportType, String str3, String str4, boolean z10, boolean z11, boolean z12, String source, String str5, String str6) {
            Intrinsics.h(postType, "postType");
            Intrinsics.h(reportType, "reportType");
            Intrinsics.h(source, "source");
            ShareDialogFragment shareDialogFragment = new ShareDialogFragment();
            Bundle bundle = new Bundle();
            bundle.putSerializable("postType", postType);
            bundle.putString("subjectId", str);
            bundle.putBoolean("subject_delete", z11);
            bundle.putBoolean("subject_download", z10);
            bundle.putBoolean("subject_checkout", z12);
            bundle.putString("share_title", str3);
            bundle.putString("share_score", str4);
            bundle.putString(EventConstants.KEY_SOURCE, source);
            bundle.putString("author_id", str2);
            bundle.putString("report_type", reportType);
            bundle.putString("ops", str5);
            bundle.putString("download_name", str6);
            shareDialogFragment.setArguments(bundle);
            return shareDialogFragment;
        }
    }

    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f52565a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f52566b;

        static {
            int[] iArr = new int[ShareType.values().length];
            try {
                iArr[ShareType.DELETE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ShareType.DOWNLOAD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ShareType.COPY_LINK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ShareType.WHATSAPP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ShareType.TELEGRAM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ShareType.CHECKOUT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            f52565a = iArr;
            int[] iArr2 = new int[PostType.values().length];
            try {
                iArr2[PostType.POST_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[PostType.SUBJECT_TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[PostType.GROUP_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[PostType.STAFF_TYPE.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr2[PostType.SHORT_TV_TYPE.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr2[PostType.LIVE_TYPE.ordinal()] = 6;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr2[PostType.UGC_VIDEO.ordinal()] = 7;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr2[PostType.UGC_SHORT_TV.ordinal()] = 8;
            } catch (NoSuchFieldError unused14) {
            }
            f52566b = iArr2;
        }
    }

    public static final class c implements kr.a {
        c() {
        }

        @Override // kr.a
        public void a(jr.a shareData) {
            Intrinsics.h(shareData, "shareData");
            ShareDialogFragment.this.mShareData = shareData;
            if (shareData.c() == ShareType.DELETE) {
                if (!m.f70474a.e()) {
                    hr.a aVar = hr.a.f64825a;
                    String string = ShareDialogFragment.this.getString(R$string.player_no_network_tip2);
                    Intrinsics.g(string, "getString(...)");
                    aVar.f(string);
                    return;
                }
                a aVar2 = ShareDialogFragment.this.shareItemCallback;
                if (aVar2 != null) {
                    aVar2.a(ShareDialogFragment.this.mSubjectId, ShareDialogFragment.this.postType);
                }
                ShareDialogFragment.t0(ShareDialogFragment.this, RequestParameters.SUBRESOURCE_DELETE, null, 2, null);
                ShareDialogFragment.this.dismiss();
                return;
            }
            if (shareData.c() == ShareType.DOWNLOAD) {
                if (Build.VERSION.SDK_INT >= 29) {
                    ShareDialogFragment.this.w0(shareData);
                    return;
                }
                ShareDialogFragment shareDialogFragment = ShareDialogFragment.this;
                o oVar = o.f68384a;
                if (shareDialogFragment.r0(oVar.c())) {
                    ShareDialogFragment.this.w0(shareData);
                    return;
                } else {
                    ShareDialogFragment.this.requestPermissions(oVar.c(), 11);
                    return;
                }
            }
            if (shareData.c() == ShareType.CHECKOUT) {
                a aVar3 = ShareDialogFragment.this.shareItemCallback;
                if (aVar3 != null) {
                    aVar3.d(ShareDialogFragment.this.mSubjectId);
                }
                ShareDialogFragment.t0(ShareDialogFragment.this, "checkout", null, 2, null);
                ShareDialogFragment.this.dismiss();
                return;
            }
            if (shareData.c() != ShareType.REPORT) {
                ShareDialogFragment.this.w0(shareData);
                return;
            }
            ShareDialogFragment.t0(ShareDialogFragment.this, "report", null, 2, null);
            hr.a aVar4 = hr.a.f64825a;
            Context contextRequireContext = ShareDialogFragment.this.requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            aVar4.e(contextRequireContext, ShareDialogFragment.this.reportType, ShareDialogFragment.this.mSubjectId, ShareDialogFragment.this.shareItemCallback);
            ShareDialogFragment.this.dismiss();
        }
    }

    static final class d implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f52568a;

        d(Function1 function) {
            Intrinsics.h(function, "function");
            this.f52568a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f52568a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f52568a.invoke(obj);
        }
    }

    public ShareDialogFragment() {
        super(R$layout.player_share_dialog);
        this.logViewConfig = LazyKt.b(new Function0() { // from class: kr.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ShareDialogFragment.E0();
            }
        });
        this.mSubjectId = "";
        this.mShareTitle = "";
        this.mShareScore = "";
        this.mSource = "";
    }

    private final void A0(ShareBean shareBean) {
        FragmentActivity activity;
        FragmentActivity activity2;
        ShareType shareType = shareBean != null ? shareBean.getShareType() : null;
        switch (shareType == null ? -1 : b.f52565a[shareType.ordinal()]) {
            case 1:
                a aVar = this.shareItemCallback;
                if (aVar != null) {
                    a.C0656a.a(aVar, this.mSubjectId, null, 2, null);
                }
                t0(this, "delete ", null, 2, null);
                dismiss();
                break;
            case 2:
                a aVar2 = this.shareItemCallback;
                if (aVar2 != null) {
                    aVar2.c(shareBean.getDownUrl(), shareBean.getTitle(), "", shareBean.getCoverUrl());
                }
                t0(this, "download", null, 2, null);
                dismiss();
                break;
            case 3:
                String shortUrl = shareBean.getShortUrl();
                if (shortUrl != null) {
                    ClipData clipDataNewPlainText = ClipData.newPlainText("Simple test", shortUrl);
                    Context context = getContext();
                    Object systemService = context != null ? context.getSystemService("clipboard") : null;
                    Intrinsics.f(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
                    ((ClipboardManager) systemService).setPrimaryClip(clipDataNewPlainText);
                    hr.a aVar3 = hr.a.f64825a;
                    String string = getString(R$string.player_copy_link_success);
                    Intrinsics.g(string, "getString(...)");
                    aVar3.f(string);
                    dismiss();
                }
                a aVar4 = this.shareItemCallback;
                if (aVar4 != null) {
                    aVar4.e(this.mSubjectId);
                }
                t0(this, "copylink", null, 2, null);
                break;
            case 4:
                String shortUrl2 = shareBean.getShortUrl();
                if (shortUrl2 != null && (activity = getActivity()) != null) {
                    H0("com.whatsapp", activity, shortUrl2, shareBean.getDesc(), shareBean.getTitle());
                }
                a aVar5 = this.shareItemCallback;
                if (aVar5 != null) {
                    aVar5.e(this.mSubjectId);
                }
                t0(this, "whatsup", null, 2, null);
                break;
            case 5:
                String shortUrl3 = shareBean.getShortUrl();
                if (shortUrl3 != null && (activity2 = getActivity()) != null) {
                    H0("org.telegram.messenger", activity2, shortUrl3, shareBean.getDesc(), shareBean.getTitle());
                }
                a aVar6 = this.shareItemCallback;
                if (aVar6 != null) {
                    aVar6.e(this.mSubjectId);
                }
                t0(this, "Telegram", null, 2, null);
                break;
            case 6:
                a aVar7 = this.shareItemCallback;
                if (aVar7 != null) {
                    aVar7.d(this.mSubjectId);
                }
                t0(this, "checkout", null, 2, null);
                break;
        }
    }

    private final void B0(View view) {
        View viewFindViewById = view.findViewById(R$id.iv_close);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: kr.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ShareDialogFragment.C0(this.f68376a, view2);
                }
            });
        }
        this.shareList = (RecyclerView) view.findViewById(R$id.share_list);
        kr.c cVar = new kr.c(q0());
        RecyclerView recyclerView = this.shareList;
        if (recyclerView != null) {
            recyclerView.setLayoutManager(new LinearLayoutManager(view.getContext(), 0, false));
            recyclerView.setAdapter(cVar);
        }
        cVar.k(new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C0(ShareDialogFragment shareDialogFragment, View view) {
        shareDialogFragment.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit D0(ShareDialogFragment shareDialogFragment, ShareBean shareBean) {
        ShareType shareTypeC;
        if (shareBean != null) {
            shareDialogFragment.A0(shareBean);
            return Unit.f67061a;
        }
        jr.a aVar = shareDialogFragment.mShareData;
        shareDialogFragment.A0((aVar == null || (shareTypeC = aVar.c()) == null) ? null : shareDialogFragment.u0(shareTypeC));
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final hj.b E0() {
        return new hj.b("share_panel", false, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F0(ShareDialogFragment shareDialogFragment) {
        shareDialogFragment.x0();
    }

    private final void H0(String pkg, Activity activity, String shortUrl, String desc, String title) {
        if (!TextUtils.isEmpty(desc)) {
            shortUrl = desc + "\n" + shortUrl;
        }
        if (!TextUtils.isEmpty(title)) {
            shortUrl = title + "\n" + shortUrl;
        }
        if (TextUtils.equals(pkg, "com.whatsapp")) {
            p.f68388a.d(activity, shortUrl, new Function1() { // from class: kr.e
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return ShareDialogFragment.I0(this.f68374a, ((Boolean) obj).booleanValue());
                }
            });
        } else if (TextUtils.equals(pkg, "org.telegram.messenger")) {
            p.f68388a.c(activity, shortUrl, new Function1() { // from class: kr.f
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return ShareDialogFragment.J0(this.f68375a, ((Boolean) obj).booleanValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit I0(ShareDialogFragment shareDialogFragment, boolean z10) {
        if (z10) {
            shareDialogFragment.dismissAllowingStateLoss();
        } else {
            hr.a aVar = hr.a.f64825a;
            String string = shareDialogFragment.getString(R$string.tip_app_not_install);
            Intrinsics.g(string, "getString(...)");
            aVar.f(string);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit J0(ShareDialogFragment shareDialogFragment, boolean z10) {
        if (z10) {
            shareDialogFragment.dismissAllowingStateLoss();
        } else {
            hr.a aVar = hr.a.f64825a;
            String string = shareDialogFragment.getString(R$string.tip_app_not_install);
            Intrinsics.g(string, "getString(...)");
            aVar.f(string);
        }
        return Unit.f67061a;
    }

    private final void L0(FragmentManager fragmentManager, String tag) {
        try {
            fragmentManager.g0();
            if (!isAdded() && fragmentManager.k0(tag) == null) {
                show(fragmentManager, tag);
            }
        } catch (IllegalStateException e11) {
            e11.printStackTrace();
        } catch (Exception e12) {
            e12.printStackTrace();
        }
    }

    private final void M0() {
        String string = getString(R$string.permission_deny_down_tip, "\"" + hr.a.f64825a.b() + "\"", "\"" + getString(R$string.system_settings) + "\"");
        Intrinsics.g(string, "getString(...)");
        o oVar = o.f68384a;
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        oVar.f(contextRequireContext, "", string, new Function0() { // from class: kr.j
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ShareDialogFragment.N0(this.f68379a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit N0(ShareDialogFragment shareDialogFragment) {
        o oVar = o.f68384a;
        FragmentActivity activity = shareDialogFragment.getActivity();
        if (activity == null) {
            return Unit.f67061a;
        }
        o.j(oVar, activity, 0, 2, null);
        return Unit.f67061a;
    }

    private final hj.b getLogViewConfig() {
        return (hj.b) this.logViewConfig.getValue();
    }

    private final void initViewModel() {
        ir.b bVar = (ir.b) new v0(this).a(ir.b.class);
        bVar.g().j(getViewLifecycleOwner(), new d(new Function1() { // from class: kr.h
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ShareDialogFragment.D0(this.f68377a, (ShareBean) obj);
            }
        }));
        this.actionViewModel = bVar;
    }

    private final String n0() {
        PostType postType = this.postType;
        switch (postType == null ? -1 : b.f52566b[postType.ordinal()]) {
            case 1:
                return "/post/detail";
            case 2:
                return "/movie/detail";
            case 3:
                return "/room/detail";
            case 4:
                return "/movie/staff";
            case 5:
                return "/shorts/detail";
            case 6:
                return "/live/detail";
            case 7:
                return "/ugc_video/detail";
            case 8:
                return "/ugc_shorts/detail";
            default:
                return "";
        }
    }

    private final String o0() {
        String string;
        PostType postType = this.postType;
        int i11 = postType == null ? -1 : b.f52566b[postType.ordinal()];
        if (i11 == 1) {
            Context context = getContext();
            string = context != null ? context.getString(R$string.share_long_link_post_s) : null;
            Intrinsics.e(string);
            return string;
        }
        if (i11 == 2) {
            Context context2 = getContext();
            string = context2 != null ? context2.getString(R$string.share_long_link_sub_no_duration, this.mShareTitle, this.mShareScore) : null;
            Intrinsics.e(string);
            return string;
        }
        if (i11 != 3) {
            return "";
        }
        Context context3 = getContext();
        string = context3 != null ? context3.getString(R$string.share_long_link_group_s) : null;
        Intrinsics.e(string);
        return string;
    }

    private final String p0() {
        String strC = hr.a.f64825a.c();
        if (TextUtils.isEmpty(strC)) {
            strC = "0";
        }
        String strB = vg.a.f77324a.b();
        String strN0 = n0();
        Context context = getContext();
        String packageName = context != null ? context.getPackageName() : null;
        String str = strB + "?type=" + strN0 + "&package_name=" + packageName + "&id=" + this.mSubjectId + "&uid=" + strC;
        lg.a.C0828a.f(lg.a.f68839a, "ShareDialogFragment", "share long link:" + str, false, 4, null);
        return str;
    }

    private final List q0() {
        String str;
        String string;
        ArrayList arrayList = new ArrayList();
        ShareType shareType = ShareType.WHATSAPP;
        int i11 = R$mipmap.share_ic_whatsapp;
        String string2 = getString(R$string.player_whatsapp);
        Intrinsics.g(string2, "getString(...)");
        arrayList.add(new jr.a(shareType, i11, string2));
        ShareType shareType2 = ShareType.TELEGRAM;
        int i12 = R$mipmap.share_ic_telegram;
        String string3 = getString(R$string.player_telegram);
        Intrinsics.g(string3, "getString(...)");
        arrayList.add(new jr.a(shareType2, i12, string3));
        ShareType shareType3 = ShareType.COPY_LINK;
        int i13 = R$mipmap.share_ic_copy_link;
        String string4 = getString(R$string.share_copy_link);
        Intrinsics.g(string4, "getString(...)");
        arrayList.add(new jr.a(shareType3, i13, string4));
        if (this.isDownload) {
            String str2 = this.downloadName;
            if (str2 == null || str2.length() == 0) {
                string = getString(R$string.player_download);
            } else {
                string = this.downloadName;
                if (string == null) {
                    string = getString(R$string.player_download);
                    Intrinsics.g(string, "getString(...)");
                }
            }
            Intrinsics.e(string);
            arrayList.add(new jr.a(ShareType.DOWNLOAD, R$mipmap.share_ic_download, string));
        }
        if (this.isDelete) {
            ShareType shareType4 = ShareType.DELETE;
            int i14 = R$mipmap.share_ic_delete;
            String string5 = getString(R$string.player_delete);
            Intrinsics.g(string5, "getString(...)");
            arrayList.add(new jr.a(shareType4, i14, string5));
        }
        if (this.isCheckOut) {
            ShareType shareType5 = ShareType.CHECKOUT;
            int i15 = R$mipmap.share_ic_checkout;
            String string6 = getString(R$string.player_check_out);
            Intrinsics.g(string6, "getString(...)");
            arrayList.add(new jr.a(shareType5, i15, string6));
        }
        if (!Intrinsics.c(hr.a.f64825a.c(), this.authorId) && (str = this.reportType) != null && str.length() != 0) {
            ShareType shareType6 = ShareType.REPORT;
            int i16 = R$mipmap.share_ic_report;
            String string7 = getString(R$string.player_report);
            Intrinsics.g(string7, "getString(...)");
            arrayList.add(new jr.a(shareType6, i16, string7));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean r0(String[] permissions) {
        return PermissionUtils.s((String[]) Arrays.copyOf(permissions, permissions.length));
    }

    private final void s0(String action, String failMsg) {
        HashMap map = new HashMap();
        map.put("module_name", action);
        if (failMsg != null) {
        }
        map.put(v0(), this.mSubjectId);
        String str = this.ops;
        if (str == null) {
            str = "";
        }
        map.put("ops", str);
        i.f64505a.p("share_panel", map);
    }

    static /* synthetic */ void t0(ShareDialogFragment shareDialogFragment, String str, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str2 = "";
        }
        shareDialogFragment.s0(str, str2);
    }

    private final ShareBean u0(ShareType shareType) {
        ShareBean shareBean = new ShareBean();
        shareBean.setShareType(shareType);
        shareBean.setShortUrl(p0());
        shareBean.setDesc(o0());
        return shareBean;
    }

    private final String v0() {
        String str = this.mSource;
        switch (str.hashCode()) {
            case -1348386821:
                return !str.equals("UGCVideoDetail") ? "post_id" : "ugc_video_id";
            case 584244349:
                return !str.equals("subjectdetail") ? "post_id" : "subject_id";
            case 1232204688:
                return !str.equals("groupdetail") ? "post_id" : "group_id";
            case 2036233184:
                return !str.equals("usercenter") ? "post_id" : "host_uid";
            case 2092022001:
                str.equals("postdetail");
                return "post_id";
            default:
                return "post_id";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w0(jr.a shareData) {
        String string;
        if (shareData == null) {
            return;
        }
        m mVar = m.f70474a;
        if (!mVar.e() && (shareData.c() == ShareType.DELETE || shareData.c() == ShareType.DOWNLOAD)) {
            hr.a aVar = hr.a.f64825a;
            String string2 = getString(R$string.player_no_network_tip2);
            Intrinsics.g(string2, "getString(...)");
            aVar.f(string2);
            return;
        }
        if (!mVar.e()) {
            A0(u0(shareData.c()));
            return;
        }
        this.shareDataStartTime = System.currentTimeMillis();
        Bundle arguments = getArguments();
        String str = "";
        if (arguments == null || (string = arguments.getString("subjectId")) == null) {
            string = "";
        }
        this.mSubjectId = string;
        String strC = hr.a.f64825a.c();
        if (TextUtils.isEmpty(strC)) {
            strC = "0";
        }
        if (shareData.c() == ShareType.TELEGRAM) {
            str = "Telegram";
        } else if (shareData.c() == ShareType.WHATSAPP) {
            str = "WhatsApp";
        }
        String str2 = str;
        ir.b bVar = this.actionViewModel;
        if (bVar != null) {
            bVar.h(shareData.c(), n0(), this.mSubjectId, strC == null ? "0" : strC, str2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0076  */
    /* JADX WARN: Code duplicated, block: B:35:0x0078 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:36:0x007a  */
    private final void x0() {
        Window window;
        final View decorView;
        final View view;
        ViewGroup viewGroup;
        Drawable background;
        Drawable background2;
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null || (decorView = window.getDecorView()) == null || (view = getView()) == null) {
            return;
        }
        Intrinsics.g(requireContext(), "requireContext(...)");
        final int iA = com.blankj.utilcode.util.d.a();
        boolean z10 = view instanceof ViewGroup;
        if (z10) {
            ViewGroup viewGroup2 = (ViewGroup) view;
            viewGroup2.setFitsSystemWindows(false);
            if (viewGroup2.getBackground() == null) {
                View childAt = viewGroup2.getChildCount() > 0 ? viewGroup2.getChildAt(0) : null;
                if (childAt == null || (background2 = childAt.getBackground()) == null) {
                    view.setBackgroundColor(0);
                } else {
                    viewGroup2.setBackground(background2);
                }
            }
        }
        ViewCompat.setOnApplyWindowInsetsListener(decorView, new OnApplyWindowInsetsListener() { // from class: kr.k
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view2, WindowInsetsCompat windowInsetsCompat) {
                return ShareDialogFragment.y0(iA, view, view2, windowInsetsCompat);
            }
        });
        if (iA > 0) {
            if (z10) {
                ViewGroup viewGroup3 = (ViewGroup) view;
                if (viewGroup3.getChildCount() > 0) {
                    View childAt2 = viewGroup3.getChildAt(0);
                    if (childAt2 instanceof ViewGroup) {
                        viewGroup = (ViewGroup) childAt2;
                    } else {
                        viewGroup = null;
                    }
                } else if (z10) {
                    viewGroup = (ViewGroup) view;
                } else {
                    viewGroup = null;
                }
            } else if (z10) {
                viewGroup = (ViewGroup) view;
            } else {
                viewGroup = null;
            }
            if (viewGroup != null) {
                int paddingLeft = viewGroup.getPaddingLeft();
                int paddingTop = viewGroup.getPaddingTop();
                int paddingRight = viewGroup.getPaddingRight();
                int paddingBottom = viewGroup.getPaddingBottom();
                if (paddingBottom >= iA) {
                    iA = paddingBottom;
                }
                if (viewGroup.getPaddingBottom() != iA) {
                    viewGroup.setPadding(paddingLeft, paddingTop, paddingRight, iA);
                }
            }
            if (z10) {
                ViewGroup viewGroup4 = (ViewGroup) view;
                if (viewGroup4.getBackground() == null) {
                    View childAt3 = viewGroup4.getChildCount() > 0 ? viewGroup4.getChildAt(0) : null;
                    if (childAt3 != null && (background = childAt3.getBackground()) != null) {
                        viewGroup4.setBackground(background);
                    }
                }
            }
        }
        ViewCompat.requestApplyInsets(decorView);
        decorView.postDelayed(new Runnable() { // from class: kr.l
            @Override // java.lang.Runnable
            public final void run() {
                ShareDialogFragment.z0(decorView);
            }
        }, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:20:0x0051 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:21:0x0053  */
    public static final WindowInsetsCompat y0(int i11, View view, View v11, WindowInsetsCompat insets) {
        Intrinsics.h(v11, "v");
        Intrinsics.h(insets, "insets");
        z0.c insets2 = insets.getInsets(WindowInsetsCompat.Type.navigationBars());
        Intrinsics.g(insets2, "getInsets(...)");
        z0.c insets3 = insets.getInsets(WindowInsetsCompat.Type.systemGestures());
        Intrinsics.g(insets3, "getInsets(...)");
        int i12 = insets2.f79128d;
        if (i12 > 0 || (i12 = insets3.f79128d) > 0) {
            i11 = i12;
        } else if (i11 <= 0) {
            i11 = 0;
        }
        v11.setPadding(0, 0, 0, 0);
        if (i11 > 0) {
            boolean z10 = view instanceof ViewGroup;
            ViewGroup viewGroup = null;
            if (z10) {
                ViewGroup viewGroup2 = (ViewGroup) view;
                if (viewGroup2.getChildCount() > 0) {
                    View childAt = viewGroup2.getChildAt(0);
                    if (childAt instanceof ViewGroup) {
                        viewGroup = (ViewGroup) childAt;
                    }
                } else if (z10) {
                    viewGroup = (ViewGroup) view;
                }
            } else if (z10) {
                viewGroup = (ViewGroup) view;
            }
            if (viewGroup != null) {
                int paddingLeft = viewGroup.getPaddingLeft();
                int paddingTop = viewGroup.getPaddingTop();
                int paddingRight = viewGroup.getPaddingRight();
                int paddingBottom = viewGroup.getPaddingBottom();
                if (paddingBottom >= i11) {
                    i11 = paddingBottom;
                }
                if (viewGroup.getPaddingBottom() != i11) {
                    viewGroup.setPadding(paddingLeft, paddingTop, paddingRight, i11);
                }
            }
        }
        return insets;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z0(View view) {
        ViewCompat.requestApplyInsets(view);
    }

    public final void G0(a callback) {
        Intrinsics.h(callback, "callback");
        this.shareItemCallback = callback;
    }

    public final void K0(Context context, String tag) {
        if (context instanceof FragmentActivity) {
            FragmentActivity fragmentActivity = (FragmentActivity) context;
            if (fragmentActivity.isFinishing() || fragmentActivity.isDestroyed()) {
                return;
            }
            try {
                FragmentManager supportFragmentManager = ((FragmentActivity) context).getSupportFragmentManager();
                Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
                L0(supportFragmentManager, tag);
            } catch (IllegalStateException e11) {
                e11.printStackTrace();
            } catch (Exception e12) {
                e12.printStackTrace();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.h(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        dismiss();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.shareDialogTheme);
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(savedInstanceState);
        Intrinsics.g(dialogOnCreateDialog, "onCreateDialog(...)");
        Window window = dialogOnCreateDialog.getWindow();
        if (window != null) {
            window.setWindowAnimations(R$style.share_dialog_animations);
            window.setGravity(80);
            window.setDimAmount(0.5f);
            window.getDecorView().setPadding(0, 0, 0, 0);
            WindowManager.LayoutParams attributes = window.getAttributes();
            if (attributes == null) {
                attributes = new WindowManager.LayoutParams();
            }
            attributes.width = -1;
            window.setBackgroundDrawable(null);
            window.setAttributes(attributes);
        }
        return dialogOnCreateDialog;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig == null || !logViewConfig.d()) {
            return;
        }
        i.f64505a.B(logViewConfig);
    }

    @Override // androidx.fragment.app.Fragment
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        Intrinsics.h(permissions, "permissions");
        Intrinsics.h(grantResults, "grantResults");
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == 11) {
            if (!o.f68384a.k(grantResults)) {
                M0();
                return;
            }
            jr.a aVar = this.mShareData;
            if (aVar != null) {
                w0(aVar);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.o(SystemClock.elapsedRealtime());
            if (logViewConfig.c()) {
                i.f64505a.C(logViewConfig);
            }
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        Dialog dialog;
        Window window;
        super.onStart();
        if (Build.VERSION.SDK_INT < 35 || (dialog = getDialog()) == null || (window = dialog.getWindow()) == null) {
            return;
        }
        WindowCompat.setDecorFitsSystemWindows(window, false);
        window.setNavigationBarColor(0);
        window.setStatusBarColor(0);
        window.getDecorView().post(new Runnable() { // from class: kr.i
            @Override // java.lang.Runnable
            public final void run() {
                ShareDialogFragment.F0(this.f68378a);
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        String string;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Bundle arguments = getArguments();
        this.isDelete = arguments != null && arguments.getBoolean("subject_delete");
        Bundle arguments2 = getArguments();
        this.isDownload = arguments2 != null && arguments2.getBoolean("subject_download");
        Bundle arguments3 = getArguments();
        this.isCheckOut = arguments3 != null && arguments3.getBoolean("subject_checkout");
        Bundle arguments4 = getArguments();
        if (arguments4 == null || (string = arguments4.getString("subjectId")) == null) {
            string = "";
        }
        this.mSubjectId = string;
        Bundle arguments5 = getArguments();
        this.postType = (PostType) (arguments5 != null ? arguments5.getSerializable("postType") : null);
        Bundle arguments6 = getArguments();
        this.mShareTitle = String.valueOf(arguments6 != null ? arguments6.getString("share_title") : null);
        Bundle arguments7 = getArguments();
        this.mShareScore = String.valueOf(arguments7 != null ? arguments7.getString("share_score") : null);
        Bundle arguments8 = getArguments();
        this.mSource = String.valueOf(arguments8 != null ? arguments8.getString(EventConstants.KEY_SOURCE) : null);
        Bundle arguments9 = getArguments();
        this.authorId = arguments9 != null ? arguments9.getString("author_id") : null;
        Bundle arguments10 = getArguments();
        this.reportType = arguments10 != null ? arguments10.getString("report_type") : null;
        Bundle arguments11 = getArguments();
        this.ops = arguments11 != null ? arguments11.getString("ops") : null;
        Bundle arguments12 = getArguments();
        this.downloadName = arguments12 != null ? arguments12.getString("download_name") : null;
        B0(view);
        initViewModel();
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        hj.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 != null) {
            logViewConfig2.l(false);
        }
    }
}
