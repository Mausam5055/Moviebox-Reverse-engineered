package com.transsion.postdetail.ui.fragment;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.Editable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.activity.result.ActivityResult;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.FragmentManager;
import androidx.p009lifecycle.Lifecycle;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.net.bean.BaseDto;
import com.tn.lib.view.DefaultView;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.moviedetailapi.bean.CommentBean;
import com.transsion.ninegridview.preview.GifImagePreviewActivity;
import com.transsion.postdetail.R$drawable;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.R$string;
import com.transsion.postdetail.bean.CommentBody;
import com.transsion.postdetail.bean.CommentLikeBean;
import com.transsion.postdetail.bean.CommentLikeBody;
import com.transsion.postdetail.bean.CommentListBean;
import com.transsion.postdetail.bean.Pager;
import com.transsion.postdetail.comment.CommentDeleteDialogFragment;
import com.transsion.postdetail.comment.SocialStatus;
import com.transsion.postdetail.viewmodel.CommentViewModel;
import com.transsion.postdetailapi.CommentTopicType;
import com.transsion.publish.api.PhotoEntity;
import com.transsion.publish.ui.SelectImageActivity;
import com.transsion.upload.bean.UploadFileType;
import com.transsion.upload.bean.UploadTstTokenStorageType;
import com.transsion.web.api.WebConstants;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0088\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\r\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001f\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 ì\u00012\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u00042\u00020\u0005:\u0002x{B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\u0007J\u000f\u0010\n\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u0007J\u000f\u0010\u000b\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\u0007J\u000f\u0010\f\u001a\u00020\bH\u0002¢\u0006\u0004\b\f\u0010\u0007J\u000f\u0010\r\u001a\u00020\bH\u0002¢\u0006\u0004\b\r\u0010\u0007J\u000f\u0010\u000e\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000e\u0010\u0007J\u000f\u0010\u000f\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000f\u0010\u0007J\u0019\u0010\u0012\u001a\u00020\b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0014\u0010\u0007J\u000f\u0010\u0015\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0015\u0010\u0007J\u0019\u0010\u0018\u001a\u00020\b2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001a\u0010\u0007J#\u0010\u001c\u001a\u00020\b2\b\u0010\u001b\u001a\u0004\u0018\u00010\u00102\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0019\u0010\u001e\u001a\u00020\b2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002¢\u0006\u0004\b\u001e\u0010\u0019J\u000f\u0010\u001f\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001f\u0010\u0007J\u0019\u0010!\u001a\u00020\b2\b\u0010 \u001a\u0004\u0018\u00010\u0010H\u0002¢\u0006\u0004\b!\u0010\u0013J'\u0010&\u001a\u00020\b2\u0016\u0010%\u001a\u0012\u0012\u0004\u0012\u00020#0\"j\b\u0012\u0004\u0012\u00020#`$H\u0002¢\u0006\u0004\b&\u0010'J\u000f\u0010)\u001a\u00020(H\u0002¢\u0006\u0004\b)\u0010*J\u000f\u0010+\u001a\u00020\bH\u0002¢\u0006\u0004\b+\u0010\u0007J#\u0010-\u001a\u00020\b2\u0006\u0010,\u001a\u00020\u00102\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0010H\u0002¢\u0006\u0004\b-\u0010.J\u0017\u00101\u001a\u00020\b2\u0006\u00100\u001a\u00020/H\u0002¢\u0006\u0004\b1\u00102JO\u00109\u001a\u00020\b2\u0006\u00103\u001a\u00020\u001026\u00108\u001a2\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b5\u0012\b\b6\u0012\u0004\b\b(\u0017\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b5\u0012\b\b6\u0012\u0004\b\b(7\u0012\u0004\u0012\u00020\b04H\u0002¢\u0006\u0004\b9\u0010:J\u0019\u0010=\u001a\u00020\b2\b\u0010<\u001a\u0004\u0018\u00010;H\u0016¢\u0006\u0004\b=\u0010>J\u0017\u0010A\u001a\u00020\u00022\u0006\u0010@\u001a\u00020?H\u0016¢\u0006\u0004\bA\u0010BJ!\u0010E\u001a\u00020\b2\u0006\u0010D\u001a\u00020C2\b\u0010<\u001a\u0004\u0018\u00010;H\u0016¢\u0006\u0004\bE\u0010FJ\u0019\u0010G\u001a\u00020\b2\b\u0010D\u001a\u0004\u0018\u00010CH\u0016¢\u0006\u0004\bG\u0010HJ\u000f\u0010I\u001a\u00020(H\u0016¢\u0006\u0004\bI\u0010*J\u0017\u0010L\u001a\u00020\b2\u0006\u0010K\u001a\u00020JH\u0016¢\u0006\u0004\bL\u0010MJ%\u0010O\u001a\u00020\b2\u0014\u00108\u001a\u0010\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\b\u0018\u00010NH\u0016¢\u0006\u0004\bO\u0010PJ\u000f\u0010Q\u001a\u00020\bH\u0016¢\u0006\u0004\bQ\u0010\u0007J\u0017\u0010S\u001a\u00020(2\b\u0010R\u001a\u0004\u0018\u00010#¢\u0006\u0004\bS\u0010TJ\u000f\u0010U\u001a\u00020\bH\u0016¢\u0006\u0004\bU\u0010\u0007J\u000f\u0010V\u001a\u00020\bH\u0016¢\u0006\u0004\bV\u0010\u0007J\u0017\u0010W\u001a\u00020\b2\b\u0010 \u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\bW\u0010\u0013J#\u0010[\u001a\u00020\b2\b\u0010Y\u001a\u0004\u0018\u00010X2\b\u0010Z\u001a\u0004\u0018\u00010#H\u0016¢\u0006\u0004\b[\u0010\\J\u000f\u0010]\u001a\u00020\bH\u0016¢\u0006\u0004\b]\u0010\u0007J1\u0010c\u001a\u00020\b2\b\u0010G\u001a\u0004\u0018\u00010^2\u0006\u0010`\u001a\u00020_2\u0006\u0010a\u001a\u00020_2\u0006\u0010b\u001a\u00020_H\u0016¢\u0006\u0004\bc\u0010dJ\u0019\u0010e\u001a\u00020\b2\b\u0010R\u001a\u0004\u0018\u00010#H\u0016¢\u0006\u0004\be\u0010fJ\u0019\u0010g\u001a\u00020\b2\b\u0010R\u001a\u0004\u0018\u00010#H\u0016¢\u0006\u0004\bg\u0010fJI\u0010i\u001a\u00020\b2:\u00108\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0010¢\u0006\f\b5\u0012\b\b6\u0012\u0004\b\b( \u0012\u0015\u0012\u0013\u0018\u00010(¢\u0006\f\b5\u0012\b\b6\u0012\u0004\b\b(h\u0012\u0004\u0012\u00020\b04¢\u0006\u0004\bi\u0010jJ\u0019\u0010k\u001a\u00020\b2\b\u0010R\u001a\u0004\u0018\u00010#H\u0016¢\u0006\u0004\bk\u0010fJ\u0019\u0010l\u001a\u00020\b2\b\u0010R\u001a\u0004\u0018\u00010#H\u0016¢\u0006\u0004\bl\u0010fJ\u001f\u0010o\u001a\u00020\b2\u0006\u0010n\u001a\u00020m2\u0006\u0010b\u001a\u00020_H\u0016¢\u0006\u0004\bo\u0010pJ\u0017\u0010q\u001a\u00020\b2\b\u0010R\u001a\u0004\u0018\u00010#¢\u0006\u0004\bq\u0010fJ\u000f\u0010r\u001a\u00020\bH\u0016¢\u0006\u0004\br\u0010\u0007J\u0017\u0010t\u001a\u00020\b2\u0006\u0010s\u001a\u00020(H\u0016¢\u0006\u0004\bt\u0010uJ\u000f\u0010v\u001a\u00020\bH\u0016¢\u0006\u0004\bv\u0010\u0007R\u0018\u0010z\u001a\u0004\u0018\u00010w8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bx\u0010yR\u0016\u0010}\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b{\u0010|R\u001a\u0010\u0081\u0001\u001a\u0004\u0018\u00010~8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u007f\u0010\u0080\u0001R,\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u0082\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0083\u0001\u0010\u0084\u0001\u001a\u0006\b\u0085\u0001\u0010\u0086\u0001\"\u0006\b\u0087\u0001\u0010\u0088\u0001R\u001c\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008a\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008b\u0001\u0010\u008c\u0001R\u001b\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u008e\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bO\u0010\u008f\u0001R\u001b\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0091\u0001\u0010\u0092\u0001R\u001c\u0010\u0097\u0001\u001a\u0005\u0018\u00010\u0094\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0095\u0001\u0010\u0096\u0001R'\u0010\u009a\u0001\u001a\u0010\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\b\u0018\u00010N8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0098\u0001\u0010\u0099\u0001R\u001b\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009b\u0001\u0010\u009c\u0001R\u0019\u0010\u009f\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009e\u0001\u0010\u009c\u0001R\u0019\u0010¢\u0001\u001a\u00020_8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b \u0001\u0010¡\u0001R\u0019\u0010¤\u0001\u001a\u00020_8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b£\u0001\u0010¡\u0001R\u0019\u0010§\u0001\u001a\u00020J8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¥\u0001\u0010¦\u0001R\u0018\u0010©\u0001\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¨\u0001\u0010|R\u0018\u0010«\u0001\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bª\u0001\u0010|R\u0017\u0010¬\u0001\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010|R\u001a\u0010Z\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u00ad\u0001\u0010®\u0001R\u0017\u0010¯\u0001\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010|R\u0019\u0010±\u0001\u001a\u00020_8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b°\u0001\u0010¡\u0001R\u0019\u0010³\u0001\u001a\u00020J8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b²\u0001\u0010¦\u0001R#\u0010¹\u0001\u001a\u0005\u0018\u00010´\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bµ\u0001\u0010¶\u0001\u001a\u0006\b·\u0001\u0010¸\u0001R*\u0010¾\u0001\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0006\bº\u0001\u0010\u009c\u0001\u001a\u0006\b»\u0001\u0010¼\u0001\"\u0005\b½\u0001\u0010\u0013R,\u0010Æ\u0001\u001a\u0005\u0018\u00010¿\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\bÀ\u0001\u0010Á\u0001\u001a\u0006\bÂ\u0001\u0010Ã\u0001\"\u0006\bÄ\u0001\u0010Å\u0001R\u001c\u0010Ê\u0001\u001a\u0005\u0018\u00010Ç\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÈ\u0001\u0010É\u0001R\u001d\u0010Í\u0001\u001a\t\u0012\u0004\u0012\u00020\u00100Ë\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bg\u0010Ì\u0001R\u001a\u0010 \u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÎ\u0001\u0010\u009c\u0001R\u001b\u0010Ð\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÏ\u0001\u0010\u009c\u0001R\u001b\u0010Ò\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÑ\u0001\u0010\u009c\u0001R\u001b\u0010Ô\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÓ\u0001\u0010\u009c\u0001R\u001a\u0010Õ\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b]\u0010\u009c\u0001R\u001b\u0010×\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÖ\u0001\u0010\u009c\u0001R\u001a\u0010Ø\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bk\u0010\u009c\u0001R\u001b\u0010Ú\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÙ\u0001\u0010\u009c\u0001R#\u0010Þ\u0001\u001a\f\u0012\u0005\u0012\u00030Ü\u0001\u0018\u00010Û\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¡\u0001\u0010Ý\u0001R\u0018\u0010ß\u0001\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¦\u0001\u0010|R\u001b\u0010â\u0001\u001a\u0004\u0018\u00010X8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bà\u0001\u0010á\u0001R\u0019\u0010ä\u0001\u001a\u00020J8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bã\u0001\u0010¦\u0001R3\u0010ç\u0001\u001a\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0012\u0006\u0012\u0004\u0018\u00010(\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u0001048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bå\u0001\u0010æ\u0001R\u001c\u0010ë\u0001\u001a\u0005\u0018\u00010è\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bé\u0001\u0010ê\u0001¨\u0006í\u0001"}, d2 = {"Lcom/transsion/postdetail/ui/fragment/CommentFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lso/j;", "Lcom/transsion/postdetail/comment/i0;", "Lcom/transsion/postdetail/comment/g0;", "Lep/a;", "<init>", "()V", "", "initAdapter", "initExposureHelper", "I0", "initViewModel", "j1", "loadData", "W0", "", "txt", "S0", "(Ljava/lang/String;)V", "showEmpty", "f1", "Lcom/transsion/postdetail/bean/CommentListBean;", "data", "B0", "(Lcom/transsion/postdetail/bean/CommentListBean;)V", "F0", "postId", "a1", "(Ljava/lang/String;Lcom/transsion/postdetail/bean/CommentListBean;)V", "k1", "R0", "commentId", "i1", "Ljava/util/ArrayList;", "Lcom/transsion/moviedetailapi/bean/CommentBean;", "Lkotlin/collections/ArrayList;", "list", "D0", "(Ljava/util/ArrayList;)V", "", "checkLogin", "()Z", "h1", "moduleName", "X0", "(Ljava/lang/String;Ljava/lang/String;)V", "Lfp/a;", "operationMenu", "C0", "(Lfp/a;)V", "path", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "bucket", "callback", "l1", "(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "G0", "(Landroid/view/LayoutInflater;)Lso/j;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "s", "(Landroid/view/View;)V", CampaignEx.JSON_KEY_AD_Q, "", "commentCount", "updateCommentCount", "(J)V", "Lkotlin/Function1;", "f", "(Lkotlin/jvm/functions/Function1;)V", "lazyLoadData", WebConstants.FIELD_ITEM, "d1", "(Lcom/transsion/moviedetailapi/bean/CommentBean;)Z", "startLoading", "hideLoading", "E0", "Landroid/text/Editable;", MimeTypes.BASE_TYPE_TEXT, "replyItem", "S", "(Landroid/text/Editable;Lcom/transsion/moviedetailapi/bean/CommentBean;)V", "E", "", "", "start", "before", "count", "onTextChanged", "(Ljava/lang/CharSequence;III)V", "Q", "(Lcom/transsion/moviedetailapi/bean/CommentBean;)V", "z", "likeStatu", "Z0", "(Lkotlin/jvm/functions/Function2;)V", "G", "P", "Lqo/a;", "info", "T", "(Lqo/a;I)V", "c1", "onPause", "hidden", "onHiddenChanged", "(Z)V", "onDestroyView", "Landroidx/recyclerview/widget/RecyclerView;", "a", "Landroidx/recyclerview/widget/RecyclerView;", "mCommentList", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Z", "mNeedUpdate", "Lcom/transsion/postdetail/comment/n;", "c", "Lcom/transsion/postdetail/comment/n;", "mCommentExpandAdapter", "Lcom/transsion/postdetail/comment/m;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/postdetail/comment/m;", "getMCommentEditInputViewHelper", "()Lcom/transsion/postdetail/comment/m;", "setMCommentEditInputViewHelper", "(Lcom/transsion/postdetail/comment/m;)V", "mCommentEditInputViewHelper", "Lcom/transsion/postdetail/util/m;", "e", "Lcom/transsion/postdetail/util/m;", "mSoftKeyBoardListener", "Lcom/transsion/postdetail/comment/g;", "Lcom/transsion/postdetail/comment/g;", "mCommentEditInputDialog", "g", "Lcom/transsion/postdetail/bean/CommentListBean;", "mMsgData", "Lcom/transsion/postdetail/viewmodel/CommentViewModel;", "h", "Lcom/transsion/postdetail/viewmodel/CommentViewModel;", "mCommentViewModel", "i", "Lkotlin/jvm/functions/Function1;", "loadResultCallback", "j", "Ljava/lang/String;", "topicId", CampaignEx.JSON_KEY_AD_K, "topicType", "l", "I", "page", "m", "mPerPage", "n", "J", "mCommentCount", "o", "mShowDownload", TtmlNode.TAG_P, "mFromDetail", "isNeedCloseInput", CampaignEx.JSON_KEY_AD_R, "Lcom/transsion/moviedetailapi/bean/CommentBean;", "replyLoading", "t", "showCommentCount", TmcStartParams.KEY_URL_SHORT, "lastCreatedTime", "Lcom/transsnet/loginapi/ILoginApi;", "v", "Lkotlin/Lazy;", "getLoginApi", "()Lcom/transsnet/loginapi/ILoginApi;", "loginApi", "w", "getImagePath", "()Ljava/lang/String;", "setImagePath", "imagePath", "Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;", "x", "Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;", "getOnCommentCountChangedListener", "()Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;", "b1", "(Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;)V", "onCommentCountChangedListener", "Lsj/b;", "y", "Lsj/b;", "exposureHelper", "", "Ljava/util/Set;", "exposedCommentIds", "A", "B", "pageFrom", "C", "trackId", "D", "previousTrackId", "previousPageVideoId", "F", "ugcVideoId", "pageName", "H", "collectionId", "Landroidx/activity/result/b;", "Landroid/content/Intent;", "Landroidx/activity/result/b;", "loginLaunch", "isNeedShowLoginActivity", "K", "Landroid/text/Editable;", "mText", "L", "mPostClickTime", "M", "Lkotlin/jvm/functions/Function2;", "mCommentCallback", "Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment;", "N", "Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment;", "mCommentDeleteDialog", "O", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class CommentFragment extends BaseFragment<so.j> implements com.transsion.postdetail.comment.i0, com.transsion.postdetail.comment.g0, ep.a {

    /* JADX INFO: renamed from: O, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: A, reason: from kotlin metadata */
    private String commentId;

    /* JADX INFO: renamed from: B, reason: from kotlin metadata */
    private String pageFrom;

    /* JADX INFO: renamed from: C, reason: from kotlin metadata */
    private String trackId;

    /* JADX INFO: renamed from: D, reason: from kotlin metadata */
    private String previousTrackId;

    /* JADX INFO: renamed from: E, reason: from kotlin metadata */
    private String previousPageVideoId;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private String ugcVideoId;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private String pageName;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private String collectionId;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private androidx.activity.result.b loginLaunch;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private boolean isNeedShowLoginActivity;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    private Editable mText;

    /* JADX INFO: renamed from: L, reason: from kotlin metadata */
    private long mPostClickTime;

    /* JADX INFO: renamed from: M, reason: from kotlin metadata */
    private Function2 mCommentCallback;

    /* JADX INFO: renamed from: N, reason: from kotlin metadata */
    private CommentDeleteDialogFragment mCommentDeleteDialog;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private RecyclerView mCommentList;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private boolean mNeedUpdate;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private com.transsion.postdetail.comment.n mCommentExpandAdapter;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private com.transsion.postdetail.comment.m mCommentEditInputViewHelper;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private com.transsion.postdetail.util.m mSoftKeyBoardListener;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private com.transsion.postdetail.comment.g mCommentEditInputDialog;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private CommentListBean mMsgData;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private CommentViewModel mCommentViewModel;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private Function1 loadResultCallback;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private String topicId;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private long mCommentCount;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private boolean mFromDetail;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private boolean isNeedCloseInput;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private CommentBean replyItem;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private boolean replyLoading;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private int showCommentCount;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private long lastCreatedTime;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private String imagePath;

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private b onCommentCountChangedListener;

    /* JADX INFO: renamed from: y, reason: collision with root package name and from kotlin metadata */
    private sj.b exposureHelper;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private String topicType = CommentTopicType.POST.getValue();

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private int page = 1;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private int mPerPage = 10;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private boolean mShowDownload = true;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private final Lazy loginApi = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.ui.fragment.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return CommentFragment.T0();
        }
    });

    /* JADX INFO: renamed from: z, reason: collision with root package name and from kotlin metadata */
    private final Set exposedCommentIds = new LinkedHashSet();

    /* JADX INFO: renamed from: com.transsion.postdetail.ui.fragment.CommentFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final CommentFragment a(String str, String str2, long j11, boolean z10, boolean z11, String commentId, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            Intrinsics.h(commentId, "commentId");
            CommentFragment commentFragment = new CommentFragment();
            Bundle bundle = new Bundle();
            bundle.putString(GifImagePreviewActivity.POST_ID, str);
            bundle.putString("TOPIC_TYPE", str2);
            bundle.putLong("comment_count", j11);
            bundle.putBoolean("show_download", z10);
            bundle.putBoolean("from_detail", z11);
            bundle.putString(WebConstants.PAGE_FROM, str3);
            if (commentId.length() > 0) {
                bundle.putString("comment_id", commentId);
            }
            bundle.putString("TRACK_ID", str4);
            bundle.putString("PREVIOUS_TRACK_ID", str5);
            bundle.putString("PREVIOUS_PAGE_VIDEO_ID", str6);
            bundle.putString("UGC_VIDEO_ID", str7);
            bundle.putString("PAGE_NAME", str8);
            bundle.putString("COLLECTION_ID", str9);
            commentFragment.setArguments(bundle);
            return commentFragment;
        }
    }

    public interface b {
        void a(long j11);
    }

    public static final class c implements sj.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f49488b;

        c(String str) {
            this.f49488b = str;
        }

        @Override // sj.a
        public void a(int i11, long j11, View view) {
            String commentId;
            CommentFragment commentFragment = CommentFragment.this;
            String str = this.f49488b;
            try {
                Result.Companion companion = Result.INSTANCE;
                com.transsion.postdetail.comment.n nVar = commentFragment.mCommentExpandAdapter;
                if (nVar != null && i11 >= 0 && i11 < nVar.getItemCount()) {
                    Object objF0 = nVar.f0(i11);
                    CommentBean commentBean = objF0 instanceof CommentBean ? (CommentBean) objF0 : null;
                    if (commentBean != null && (commentId = commentBean.getCommentId()) != null && !commentFragment.exposedCommentIds.contains(commentId)) {
                        commentFragment.exposedCommentIds.add(commentId);
                        com.transsion.postdetail.helper.a.f48866a.g(str, i11, j11, commentId, commentFragment.topicId, commentBean.isSubComment() ? "reply" : "main", commentFragment.pageFrom, commentFragment.trackId, commentFragment.previousTrackId, commentFragment.previousPageVideoId, commentFragment.ugcVideoId, commentFragment.collectionId);
                    }
                }
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }
    }

    public static final class d implements nh.n {
        d() {
        }

        @Override // nh.n
        public void onConnected() {
            nh.n.a.a(this);
        }

        @Override // nh.n
        public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
            Intrinsics.h(network, "network");
            Intrinsics.h(networkCapabilities, "networkCapabilities");
            com.transsion.postdetail.comment.n nVar = CommentFragment.this.mCommentExpandAdapter;
            if (nVar == null || !nVar.q0()) {
                return;
            }
            CommentFragment.this.loadData();
        }

        @Override // nh.n
        public void onDisconnected() {
        }
    }

    public static final class e implements com.transsion.postdetail.util.m.a {
        e() {
        }

        @Override // com.transsion.postdetail.util.m.a
        public void a(int i11) {
            com.transsion.postdetail.comment.g gVar = CommentFragment.this.mCommentEditInputDialog;
            if (gVar != null) {
                CommentFragment commentFragment = CommentFragment.this;
                if (gVar.isShowing() && commentFragment.isNeedCloseInput) {
                    gVar.dismiss();
                }
            }
        }

        @Override // com.transsion.postdetail.util.m.a
        public void b(int i11) {
        }
    }

    public static final class f implements CommentDeleteDialogFragment.b {
        f() {
        }

        @Override // com.transsion.postdetail.comment.CommentDeleteDialogFragment.b
        public void a(String str) {
            CommentFragment.this.E0(str);
            CommentFragment.this.X0("delete_comment", str);
        }
    }

    public static final class g implements cw.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Function2 f49492a;

        g(Function2 function2) {
            this.f49492a = function2;
        }

        @Override // cw.a
        public void a(String localFilePath, long j11, long j12) {
            Intrinsics.h(localFilePath, "localFilePath");
        }

        @Override // cw.a
        public void b(String localFilePath, String url, String bucket) {
            Intrinsics.h(localFilePath, "localFilePath");
            Intrinsics.h(url, "url");
            Intrinsics.h(bucket, "bucket");
            this.f49492a.invoke(url, bucket);
        }

        @Override // cw.a
        public void c(String str, String str2, String str3, UploadTstTokenStorageType uploadTstTokenStorageType) {
            lg.a.C0828a.g(lg.a.f68839a, "uploadKey: " + str + "; clientMessage:" + str2 + "; serviceMessage: " + str3, false, 2, null);
        }
    }

    private final void B0(CommentListBean data) {
        List<CommentBean> commentList;
        Pager pager;
        Pager pager2;
        Integer perPage;
        k1(this.mMsgData);
        this.mPerPage = (data == null || (pager2 = data.getPager()) == null || (perPage = pager2.getPerPage()) == null) ? 10 : perPage.intValue();
        com.transsion.postdetail.comment.n nVar = this.mCommentExpandAdapter;
        boolean z10 = false;
        if (nVar != null) {
            if (nVar.h0().r()) {
                nVar.h0().s();
            }
            if ((data == null || (pager = data.getPager()) == null) ? false : Intrinsics.c(pager.getHasMore(), Boolean.FALSE)) {
                nVar.h0().t(false);
            }
        }
        if (data != null && (commentList = data.getCommentList()) != null) {
            for (CommentBean commentBean : commentList) {
                this.showCommentCount += commentBean.getSubCommentCnt() + 1;
                Long createdAt = commentBean.getCreatedAt();
                this.lastCreatedTime = createdAt != null ? createdAt.longValue() : 0L;
            }
        }
        com.transsion.postdetail.comment.n nVar2 = this.mCommentExpandAdapter;
        if (nVar2 != null && nVar2.getItemCount() == 0) {
            z10 = true;
        }
        if (z10) {
            showEmpty();
        } else {
            F0();
        }
    }

    private final void C0(fp.a operationMenu) {
        com.transsion.postdetail.comment.m mVarH;
        List listH = operationMenu.h();
        if (listH == null || listH.isEmpty()) {
            return;
        }
        this.imagePath = ((PhotoEntity) listH.get(0)).getLocalPath();
        PhotoEntity photoEntity = (PhotoEntity) listH.get(0);
        com.transsion.postdetail.comment.g gVar = this.mCommentEditInputDialog;
        if (gVar == null || (mVarH = gVar.h()) == null) {
            return;
        }
        mVarH.w(photoEntity);
    }

    private final void D0(ArrayList list) {
        int i11;
        int i12;
        List<CommentBean> subComments;
        List<CommentBean> commentList;
        List<CommentBean> commentList2;
        List<CommentBean> commentList3;
        List<CommentBean> commentList4;
        List<CommentBean> commentList5;
        List<CommentBean> commentList6;
        CommentListBean commentListBean = this.mMsgData;
        if (commentListBean != null) {
            if ((commentListBean != null && (commentList6 = commentListBean.getCommentList()) != null && commentList6.isEmpty()) || list == null || list.isEmpty()) {
                return;
            }
            int i13 = 0;
            for (Object obj : list) {
                int i14 = i13 + 1;
                if (i13 < 0) {
                    CollectionsKt.u();
                }
                CommentBean commentBean = (CommentBean) obj;
                CommentListBean commentListBean2 = this.mMsgData;
                if (commentListBean2 == null || (commentList5 = commentListBean2.getCommentList()) == null) {
                    i11 = -1;
                    i12 = -1;
                } else {
                    int i15 = 0;
                    i11 = -1;
                    i12 = -1;
                    for (Object obj2 : commentList5) {
                        int i16 = i15 + 1;
                        if (i15 < 0) {
                            CollectionsKt.u();
                        }
                        CommentBean commentBean2 = (CommentBean) obj2;
                        String commentId = commentBean.getCommentId();
                        if (TextUtils.equals(commentBean2.getCommentId(), commentId)) {
                            i11 = i15;
                        } else {
                            List<CommentBean> subComments2 = commentBean2.getSubComments();
                            if (subComments2 != null) {
                                int i17 = 0;
                                for (Object obj3 : subComments2) {
                                    int i18 = i17 + 1;
                                    if (i17 < 0) {
                                        CollectionsKt.u();
                                    }
                                    CommentBean commentBean3 = (CommentBean) obj3;
                                    if (TextUtils.equals(commentId, commentBean3 != null ? commentBean3.getCommentId() : null)) {
                                        i11 = i15;
                                        i12 = i17;
                                    }
                                    i17 = i18;
                                }
                            }
                        }
                        i15 = i16;
                    }
                }
                if (i11 != -1 || i12 != -1) {
                    if (i11 == -1 || i12 != -1) {
                        CommentListBean commentListBean3 = this.mMsgData;
                        Integer numValueOf = (commentListBean3 == null || (commentList2 = commentListBean3.getCommentList()) == null) ? null : Integer.valueOf(commentList2.size());
                        Intrinsics.e(numValueOf);
                        if (numValueOf.intValue() >= i11) {
                            CommentListBean commentListBean4 = this.mMsgData;
                            CommentBean commentBean4 = (commentListBean4 == null || (commentList = commentListBean4.getCommentList()) == null) ? null : commentList.get(i11);
                            CommentBean commentBeanRemove = (commentBean4 == null || (subComments = commentBean4.getSubComments()) == null) ? null : subComments.remove(i12);
                            lg.a.C0828a.f(lg.a.f68839a, "deleteComment list:", "remove childMsg:" + (commentBeanRemove != null ? commentBeanRemove.getContent() : null), false, 4, null);
                        } else {
                            lg.a.C0828a.f(lg.a.f68839a, "deleteComment list:", "remove childMsg: index ", false, 4, null);
                        }
                    } else {
                        CommentListBean commentListBean5 = this.mMsgData;
                        Integer numValueOf2 = (commentListBean5 == null || (commentList4 = commentListBean5.getCommentList()) == null) ? null : Integer.valueOf(commentList4.size());
                        Intrinsics.e(numValueOf2);
                        if (numValueOf2.intValue() >= i11) {
                            CommentListBean commentListBean6 = this.mMsgData;
                            CommentBean commentBeanRemove2 = (commentListBean6 == null || (commentList3 = commentListBean6.getCommentList()) == null) ? null : commentList3.remove(i11);
                            lg.a.C0828a.f(lg.a.f68839a, "deleteComment list:", "remove parentsMsg:" + (commentBeanRemove2 != null ? commentBeanRemove2.getContent() : null), false, 4, null);
                        } else {
                            lg.a.C0828a.f(lg.a.f68839a, "deleteComment list:", "remove parentsMsg: index ", false, 4, null);
                        }
                    }
                }
                i13 = i14;
            }
        }
    }

    private final void F0() {
        LinearLayout linearLayout;
        so.j mViewBinding = getMViewBinding();
        if (mViewBinding == null || (linearLayout = mViewBinding.f75556d) == null) {
            return;
        }
        jg.c.g(linearLayout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H0(CommentFragment commentFragment) {
        commentFragment.R0();
    }

    private final void I0() {
        setNetListener(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J0(CommentFragment commentFragment, ActivityResult it) {
        Intrinsics.h(it, "it");
        if (it.getResultCode() != -1) {
            lg.a.C0828a.f(lg.a.f68839a, "loginStatus", "登录失败或者取消", false, 4, null);
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, "loginStatus", "登录成功", false, 4, null);
        com.tn.lib.widget.toast.core.h hVar = com.tn.lib.widget.toast.core.h.f41479a;
        ILoginApi loginApi = commentFragment.getLoginApi();
        hVar.l(loginApi != null ? loginApi.b() : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit K0(CommentFragment commentFragment, qo.b bVar) {
        List<CommentBean> commentList;
        List<CommentBean> commentList2;
        commentFragment.hideLoading();
        if (bVar == null) {
            commentFragment.k1(commentFragment.mMsgData);
            return Unit.f67061a;
        }
        CommentListBean commentListBean = commentFragment.mMsgData;
        if (commentListBean == null) {
            commentFragment.k1(commentListBean);
            return Unit.f67061a;
        }
        if (commentListBean != null) {
            CommentListBean commentListBeanB = bVar.b();
            commentListBean.setPager(commentListBeanB != null ? commentListBeanB.getPager() : null);
        }
        CommentListBean commentListBean2 = commentFragment.mMsgData;
        if (commentListBean2 != null && (commentList = commentListBean2.getCommentList()) != null) {
            for (CommentBean commentBean : commentList) {
                if (Intrinsics.c(commentBean.getCommentId(), bVar.a().a())) {
                    CommentListBean commentListBeanB2 = bVar.b();
                    if (commentListBeanB2 != null && (commentList2 = commentListBeanB2.getCommentList()) != null) {
                        List<CommentBean> subComments = commentBean.getSubComments();
                        List<CommentBean> listU0 = subComments != null ? CollectionsKt.U0(subComments) : null;
                        if (listU0 != null) {
                            listU0.addAll(commentList2);
                        }
                        commentBean.setSubComments(listU0);
                        break;
                    }
                    break;
                    break;
                }
            }
        }
        commentFragment.k1(commentFragment.mMsgData);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit L0(final CommentFragment commentFragment, CommentBean commentBean) {
        List<CommentBean> commentList;
        List<Object> data;
        List<CommentBean> arrayList;
        com.transsion.postdetail.comment.m mVarH;
        com.transsion.postdetail.comment.m mVarH2;
        Editable editableH;
        final int i11 = 0;
        commentFragment.replyLoading = false;
        com.transsion.postdetail.comment.g gVar = commentFragment.mCommentEditInputDialog;
        if (gVar != null) {
            gVar.f();
        }
        if (commentBean == null) {
            uh.b.f76753a.d(R$string.comment_failed);
            return Unit.f67061a;
        }
        uh.b.f76753a.d(R$string.comment_success);
        com.transsion.postdetail.comment.g gVar2 = commentFragment.mCommentEditInputDialog;
        if (gVar2 != null && (mVarH2 = gVar2.h()) != null && (editableH = mVarH2.h()) != null) {
            editableH.clear();
        }
        com.transsion.postdetail.comment.g gVar3 = commentFragment.mCommentEditInputDialog;
        if (gVar3 != null && (mVarH = gVar3.h()) != null) {
            mVarH.u();
        }
        com.transsion.postdetail.comment.g gVar4 = commentFragment.mCommentEditInputDialog;
        if (gVar4 != null) {
            gVar4.dismiss();
        }
        if (commentFragment.replyItem != null) {
            commentFragment.mCommentCount++;
            CommentListBean commentListBean = commentFragment.mMsgData;
            if (commentListBean != null && (commentList = commentListBean.getCommentList()) != null) {
                for (CommentBean commentBean2 : commentList) {
                    if (Intrinsics.c(commentBean2.getCommentId(), commentBean.getRootCommentId())) {
                        List<CommentBean> subComments = commentBean2.getSubComments();
                        if (subComments != null) {
                            subComments.add(commentBean);
                        }
                        commentBean2.setSubCommentCnt(commentBean2.getSubCommentCnt() + 1);
                        commentFragment.j1();
                        commentFragment.k1(commentFragment.mMsgData);
                        com.transsion.postdetail.comment.n nVar = commentFragment.mCommentExpandAdapter;
                        if (nVar != null && (data = nVar.getData()) != null) {
                            for (Object obj : data) {
                                int i12 = i11 + 1;
                                if (i11 < 0) {
                                    CollectionsKt.u();
                                }
                                if (Intrinsics.c((n6.a) obj, commentBean)) {
                                    RecyclerView recyclerView = commentFragment.mCommentList;
                                    if (recyclerView == null) {
                                        break;
                                    }
                                    recyclerView.post(new Runnable() { // from class: com.transsion.postdetail.ui.fragment.d
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            CommentFragment.N0(this.f49665a, i11);
                                        }
                                    });
                                    break;
                                }
                                i11 = i12;
                            }
                            break;
                        }
                        break;
                        break;
                    }
                }
            }
        } else {
            CommentListBean commentListBean2 = commentFragment.mMsgData;
            if (commentListBean2 == null) {
                commentFragment.mMsgData = new CommentListBean(CollectionsKt.h(commentBean), new Pager(Boolean.FALSE, "2", "1", 10, 1));
            } else {
                if (commentListBean2 != null) {
                    if (commentListBean2 == null || (arrayList = commentListBean2.getCommentList()) == null) {
                        arrayList = new ArrayList<>();
                    }
                    arrayList.add(0, commentBean);
                    commentListBean2.setCommentList(arrayList);
                }
                commentFragment.mCommentCount++;
            }
            commentFragment.j1();
            commentFragment.k1(commentFragment.mMsgData);
            RecyclerView recyclerView2 = commentFragment.mCommentList;
            if (recyclerView2 != null) {
                recyclerView2.post(new Runnable() { // from class: com.transsion.postdetail.ui.fragment.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        CommentFragment.M0(this.f49658a);
                    }
                });
            }
        }
        ty.b bVarA = ty.b.f76417a.a();
        String commentId = commentBean.getCommentId();
        if (commentId == null) {
            commentId = "";
        }
        bVarA.d(1, commentId, String.valueOf(commentFragment.mCommentCount), commentFragment.topicId);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M0(CommentFragment commentFragment) {
        RecyclerView.m layoutManager;
        try {
            RecyclerView recyclerView = commentFragment.mCommentList;
            if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null) {
                return;
            }
            layoutManager.scrollToPosition(0);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N0(CommentFragment commentFragment, int i11) {
        RecyclerView.m layoutManager;
        try {
            RecyclerView recyclerView = commentFragment.mCommentList;
            if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null) {
                return;
            }
            layoutManager.scrollToPosition(i11);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit O0(CommentLikeBean commentLikeBean) {
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit P0(CommentFragment commentFragment, BaseDto baseDto) {
        commentFragment.E0(baseDto != null ? (String) baseDto.getData() : null);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Q0(CommentFragment commentFragment, CommentListBean commentListBean) {
        com.transsion.postdetail.comment.n nVar;
        r6.f fVarH0;
        commentFragment.hideLoading();
        if (commentListBean != null || (((nVar = commentFragment.mCommentExpandAdapter) != null && (nVar == null || nVar.getItemCount() != 0)) || nh.m.f70474a.e())) {
            commentFragment.a1(commentFragment.topicId, commentListBean);
            commentFragment.B0(commentListBean);
            Function1 function1 = commentFragment.loadResultCallback;
            if (function1 != null) {
                function1.invoke(Boolean.TRUE);
            }
            return Unit.f67061a;
        }
        commentFragment.f1();
        com.transsion.postdetail.comment.n nVar2 = commentFragment.mCommentExpandAdapter;
        if (nVar2 != null && (fVarH0 = nVar2.h0()) != null) {
            fVarH0.s();
        }
        Function1 function2 = commentFragment.loadResultCallback;
        if (function2 != null) {
            function2.invoke(Boolean.FALSE);
        }
        return Unit.f67061a;
    }

    private final void R0() {
        CommentViewModel commentViewModel = this.mCommentViewModel;
        if (commentViewModel != null) {
            String str = this.topicId;
            if (str == null) {
                str = "";
            }
            String str2 = this.topicType;
            int i11 = this.page + 1;
            this.page = i11;
            commentViewModel.h(str, str2, "0", String.valueOf(i11), this.mPerPage, "");
        }
    }

    private final void S0(String txt) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi T0() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit U0(CommentFragment commentFragment, fp.a it) {
        Intrinsics.h(it, "it");
        Integer numE = it.e();
        if (numE != null && numE.intValue() == 0) {
            commentFragment.C0(it);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit V0(CommentBody commentBody, CommentFragment commentFragment, String data, String bucket) {
        Intrinsics.h(data, "data");
        Intrinsics.h(bucket, "bucket");
        if (data.length() > 0) {
            List<String> imageList = commentBody.getImageList();
            if (imageList != null) {
                imageList.clear();
            }
            List<String> imageList2 = commentBody.getImageList();
            if (imageList2 != null) {
                imageList2.add(data);
            }
            commentBody.setBucket(bucket);
            CommentViewModel commentViewModel = commentFragment.mCommentViewModel;
            if (commentViewModel != null) {
                commentViewModel.s(commentFragment.topicType, commentBody);
            }
        }
        return Unit.f67061a;
    }

    private final void W0() {
        if (this.mSoftKeyBoardListener == null) {
            this.mSoftKeyBoardListener = new com.transsion.postdetail.util.m();
        }
        com.transsion.postdetail.util.m mVar = this.mSoftKeyBoardListener;
        if (mVar != null) {
            mVar.d(getActivity(), new e());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void X0(String moduleName, String commentId) {
        HashMap map = new HashMap();
        map.put("module_name", moduleName);
        String str = this.topicId;
        if (str == null) {
            str = "";
        }
        map.put("post_id", str);
        if (commentId == null) {
            commentId = "";
        }
        map.put("comment_id", commentId);
        String str2 = this.pageFrom;
        if (str2 != null && str2.length() != 0) {
            String str3 = this.pageFrom;
            Intrinsics.e(str3);
            map.put(WebConstants.PAGE_FROM, str3);
        }
        String str4 = this.trackId;
        if (str4 != null) {
            map.put("track_id", str4);
        }
        String str5 = this.previousTrackId;
        if (str5 != null) {
            map.put("parent_track_id", str5);
        }
        String str6 = this.previousPageVideoId;
        if (str6 != null) {
            map.put("parent_content_id", str6);
        }
        String str7 = this.ugcVideoId;
        if (str7 != null) {
            map.put("content_id", str7);
        }
        String str8 = this.pageName;
        if (str8 == null) {
            str8 = this.mFromDetail ? PostDetailFragment.PAGE_NAME : VideoFragment.PAGE_NAME;
        }
        com.transsion.baselib.helper.a.f43262a.i(str8, map);
    }

    static /* synthetic */ void Y0(CommentFragment commentFragment, String str, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str2 = "";
        }
        commentFragment.X0(str, str2);
    }

    private final void a1(String postId, CommentListBean data) {
        List<CommentBean> commentList;
        List<CommentBean> commentList2;
        HashMap<String, CommentBean> mapG1;
        if (this.mMsgData == null) {
            this.topicId = postId;
            this.mMsgData = data;
            return;
        }
        if (data == null || (commentList = data.getCommentList()) == null) {
            return;
        }
        for (CommentBean commentBean : commentList) {
            com.transsion.postdetail.comment.n nVar = this.mCommentExpandAdapter;
            if (nVar != null && (mapG1 = nVar.G1()) != null) {
                if (mapG1.containsKey(commentBean != null ? commentBean.getCommentId() : null)) {
                }
            }
            CommentListBean commentListBean = this.mMsgData;
            if (commentListBean != null && (commentList2 = commentListBean.getCommentList()) != null) {
                commentList2.add(commentBean);
            }
        }
    }

    private final boolean checkLogin() {
        ILoginApi loginApi = getLoginApi();
        if (loginApi != null && !loginApi.a()) {
            if (this.loginLaunch == null) {
                this.isNeedShowLoginActivity = true;
            }
            if (isAdded() && !isDetached() && !isRemoving()) {
                androidx.activity.result.b bVar = this.loginLaunch;
                if (bVar == null) {
                    return false;
                }
                Context contextRequireContext = requireContext();
                Intrinsics.g(contextRequireContext, "requireContext(...)");
                Intent intentO = loginApi.o(contextRequireContext);
                intentO.putExtra("title_name", getString(R$string.comment_login_title));
                bVar.a(intentO);
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e1(CommentFragment commentFragment, DialogInterface dialogInterface) {
        if (dialogInterface instanceof com.transsion.postdetail.comment.g) {
            com.transsion.postdetail.comment.m mVarH = ((com.transsion.postdetail.comment.g) dialogInterface).h();
            Editable editableH = mVarH != null ? mVarH.h() : null;
            commentFragment.mText = editableH;
            lg.a.C0828a.f(lg.a.f68839a, "CommentFragment", "text=" + ((Object) editableH), false, 4, null);
        }
    }

    private final void f1() {
        TextView textView;
        TextView textView2;
        if (!isAdded() || isDetached() || isRemoving()) {
            return;
        }
        View viewInflate = LayoutInflater.from(requireContext()).inflate(R$layout.post_detail_no_comment, (ViewGroup) null);
        if (viewInflate != null && (textView2 = (TextView) viewInflate.findViewById(R$id.tv_status)) != null) {
            textView2.setText(R$string.base_net_err);
            textView2.setTextSize(12.0f);
            textView2.setVisibility(0);
        }
        if (viewInflate != null && (textView = (TextView) viewInflate.findViewById(R$id.tv_retry)) != null) {
            textView.setText(R$string.comment_retry);
            textView.setVisibility(0);
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.fragment.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CommentFragment.g1(this.f49716a, view);
                }
            });
        }
        com.transsion.postdetail.comment.n nVar = this.mCommentExpandAdapter;
        if (nVar != null) {
            Intrinsics.e(viewInflate);
            nVar.Y0(viewInflate);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g1(CommentFragment commentFragment, View view) {
        if (!nh.m.f70474a.e()) {
            uh.b.f76753a.d(R$string.base_net_err);
        } else {
            commentFragment.loadData();
            Y0(commentFragment, "retry", null, 2, null);
        }
    }

    private final ILoginApi getLoginApi() {
        return (ILoginApi) this.loginApi.getValue();
    }

    private final void h1() {
        com.blankj.utilcode.util.f0.b(300L);
    }

    /* JADX WARN: Code duplicated, block: B:55:0x00ef  */
    private final void i1(String commentId) {
        List<Object> data;
        List<Object> data2;
        List<Object> data3;
        String str = commentId;
        ArrayList<CommentBean> arrayList = new ArrayList();
        com.transsion.postdetail.comment.n nVar = this.mCommentExpandAdapter;
        if (nVar != null && (data3 = nVar.getData()) != null) {
            Iterator<T> it = data3.iterator();
            while (it.hasNext()) {
                n6.a aVar = (n6.a) it.next();
                if (aVar instanceof CommentBean) {
                    CommentBean commentBean = (CommentBean) aVar;
                    if (TextUtils.equals(commentBean.getCommentId(), str)) {
                        arrayList.add(aVar);
                    }
                    if (TextUtils.equals(commentBean.getRootCommentId(), str)) {
                        arrayList.add(aVar);
                    }
                }
            }
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        String string = arrayList.toString();
        Intrinsics.g(string, "toString(...)");
        lg.a.C0828a.f(c0828a, "deleteComment list:", string, false, 4, null);
        if (!arrayList.isEmpty()) {
            this.mNeedUpdate = true;
            for (CommentBean commentBean2 : arrayList) {
                com.transsion.postdetail.comment.n nVar2 = this.mCommentExpandAdapter;
                if (nVar2 != null && (data2 = nVar2.getData()) != null) {
                    data2.remove(commentBean2);
                }
            }
            com.transsion.postdetail.comment.n nVar3 = this.mCommentExpandAdapter;
            if ((nVar3 != null ? nVar3.getData() : null) == null) {
                this.lastCreatedTime = 0L;
                lg.a.C0828a.f(lg.a.f68839a, "deleteComment list:", "mCommentExpandAdapter null", false, 4, null);
            } else {
                com.transsion.postdetail.comment.n nVar4 = this.mCommentExpandAdapter;
                List<Object> data4 = nVar4 != null ? nVar4.getData() : null;
                if (data4 == null || data4.isEmpty()) {
                    this.lastCreatedTime = 0L;
                    lg.a.C0828a.f(lg.a.f68839a, "deleteComment list:", "mCommentExpandAdapter null", false, 4, null);
                } else {
                    com.transsion.postdetail.comment.n nVar5 = this.mCommentExpandAdapter;
                    if (nVar5 != null && (data = nVar5.getData()) != null) {
                        Iterator<T> it2 = data.iterator();
                        while (it2.hasNext()) {
                            n6.a aVar2 = (n6.a) it2.next();
                            if (aVar2 instanceof CommentBean) {
                                Long createdAt = ((CommentBean) aVar2).getCreatedAt();
                                long jLongValue = createdAt != null ? createdAt.longValue() : 0L;
                                this.lastCreatedTime = jLongValue;
                                lg.a.C0828a.f(lg.a.f68839a, "deleteComment list:", "mCommentExpandAdapter createdTime:" + jLongValue, false, 4, null);
                            }
                        }
                    }
                }
            }
            com.transsion.postdetail.comment.n nVar6 = this.mCommentExpandAdapter;
            if (nVar6 != null) {
                nVar6.notifyDataSetChanged();
            }
            this.mCommentCount -= (long) arrayList.size();
            j1();
            D0(arrayList);
        }
        ty.b bVarA = ty.b.f76417a.a();
        if (str == null) {
            str = "";
        }
        bVarA.d(2, str, String.valueOf(this.mCommentCount), this.topicId);
    }

    private final void initAdapter() {
        Context context;
        if (this.mCommentExpandAdapter != null || (context = getContext()) == null) {
            return;
        }
        com.transsion.postdetail.comment.n nVar = new com.transsion.postdetail.comment.n(this);
        r6.f fVarH0 = nVar.h0();
        fVarH0.z(true);
        fVarH0.y(true);
        fVarH0.D(new p6.f() { // from class: com.transsion.postdetail.ui.fragment.i
            @Override // p6.f
            public final void a() {
                CommentFragment.H0(this.f49724a);
            }
        });
        this.mCommentExpandAdapter = nVar;
        RecyclerView recyclerView = this.mCommentList;
        if (recyclerView != null) {
            recyclerView.setLayoutManager(new LinearLayoutManager(context));
        }
        RecyclerView recyclerView2 = this.mCommentList;
        if (recyclerView2 != null) {
            recyclerView2.setAdapter(this.mCommentExpandAdapter);
        }
        RecyclerView recyclerView3 = this.mCommentList;
        if (recyclerView3 != null) {
            recyclerView3.addItemDecoration(new com.transsion.postdetail.comment.u());
        }
    }

    private final void initExposureHelper() {
        if (this.exposureHelper != null) {
            return;
        }
        String str = this.pageName;
        if (str == null) {
            str = this.mFromDetail ? PostDetailFragment.PAGE_NAME : VideoFragment.PAGE_NAME;
        }
        sj.b bVar = new sj.b(0.6f, new c(str), false, 4, null);
        bVar.n(2);
        this.exposureHelper = bVar;
        RecyclerView recyclerView = this.mCommentList;
        if (recyclerView != null) {
            Intrinsics.e(bVar);
            recyclerView.addOnScrollListener(bVar);
        }
    }

    private final void initViewModel() {
        CommentViewModel commentViewModel = (CommentViewModel) new androidx.p009lifecycle.v0(this).a(CommentViewModel.class);
        commentViewModel.k().j(getViewLifecycleOwner(), new o(new Function1() { // from class: com.transsion.postdetail.ui.fragment.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CommentFragment.Q0(this.f49741a, (CommentListBean) obj);
            }
        }));
        commentViewModel.l().j(getViewLifecycleOwner(), new o(new Function1() { // from class: com.transsion.postdetail.ui.fragment.l
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CommentFragment.K0(this.f49748a, (qo.b) obj);
            }
        }));
        commentViewModel.n().j(getViewLifecycleOwner(), new o(new Function1() { // from class: com.transsion.postdetail.ui.fragment.m
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CommentFragment.L0(this.f49755a, (CommentBean) obj);
            }
        }));
        commentViewModel.m().j(getViewLifecycleOwner(), new o(new Function1() { // from class: com.transsion.postdetail.ui.fragment.n
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CommentFragment.O0((CommentLikeBean) obj);
            }
        }));
        commentViewModel.j().j(getViewLifecycleOwner(), new o(new Function1() { // from class: com.transsion.postdetail.ui.fragment.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CommentFragment.P0(this.f49651a, (BaseDto) obj);
            }
        }));
        this.mCommentViewModel = commentViewModel;
    }

    private final void j1() {
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        so.j mViewBinding = getMViewBinding();
        if (mViewBinding != null && (appCompatTextView2 = mViewBinding.f75557e) != null) {
            appCompatTextView2.setVisibility(this.mFromDetail ? 8 : 0);
        }
        so.j mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (appCompatTextView = mViewBinding2.f75557e) != null) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
            String string = getString(R$string.comments);
            Intrinsics.g(string, "getString(...)");
            String str = String.format(string, Arrays.copyOf(new Object[]{com.transsion.baseui.util.j.a(this.mCommentCount)}, 1));
            Intrinsics.g(str, "format(...)");
            appCompatTextView.setText(str);
        }
        b bVar = this.onCommentCountChangedListener;
        if (bVar != null) {
            bVar.a(this.mCommentCount);
        }
    }

    private final void k1(CommentListBean data) {
        initAdapter();
        com.transsion.postdetail.comment.n nVar = this.mCommentExpandAdapter;
        if (nVar != null) {
            nVar.K1(data);
        }
    }

    private final void l1(String path, Function2 callback) {
        cw.c.f60931a.f(path, UploadFileType.OBJECT_NAME_IMAGE, true, new g(callback));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadData() {
        com.transsion.postdetail.comment.n nVar;
        if (this.mMsgData == null && (((nVar = this.mCommentExpandAdapter) == null || (nVar != null && nVar.getItemCount() == 0)) && !nh.m.f70474a.e())) {
            f1();
            return;
        }
        startLoading();
        CommentViewModel commentViewModel = this.mCommentViewModel;
        if (commentViewModel != null) {
            String str = this.topicId;
            if (str == null) {
                str = "";
            }
            String str2 = this.topicType;
            String strValueOf = String.valueOf(this.page);
            int i11 = this.mPerPage;
            String str3 = this.commentId;
            commentViewModel.h(str, str2, "0", strValueOf, i11, str3 == null ? "" : str3);
        }
    }

    private final void showEmpty() {
        if (!isAdded() || isDetached() || isRemoving()) {
            return;
        }
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        DefaultView defaultView = new DefaultView(contextRequireContext);
        defaultView.setStyle(DefaultView.DefaultViewStyle.STYLE_IMAGE_DES);
        String string = getString(R$string.comment_empty);
        Intrinsics.g(string, "getString(...)");
        defaultView.setDescText(string);
        defaultView.setDefaultImage(R$drawable.icon_comment_empty);
        defaultView.setMinimumHeight(com.blankj.utilcode.util.a0.a(250.0f));
        com.transsion.postdetail.comment.n nVar = this.mCommentExpandAdapter;
        if (nVar != null) {
            nVar.Y0(defaultView);
        }
    }

    @Override // com.transsion.postdetail.comment.i0
    public void E() {
        if (!isAdded() || isDetached() || isRemoving()) {
            return;
        }
        SelectImageActivity.Companion companion = SelectImageActivity.INSTANCE;
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        companion.a(contextRequireContext, 0, 1, null);
    }

    public final void E0(String commentId) {
        try {
            i1(commentId);
        } catch (Exception e11) {
            String message = e11.getMessage();
            if (message != null) {
                lg.a.C0828a.f(lg.a.f68839a, "deleteComment", message, false, 4, null);
            }
        }
    }

    @Override // com.transsion.postdetail.comment.g0
    public void G(CommentBean item) {
        com.transsion.postdetail.comment.m mVar = this.mCommentEditInputViewHelper;
        CommentBean commentBeanI = mVar != null ? mVar.i() : null;
        if (!Intrinsics.c(commentBeanI != null ? commentBeanI.getCommentId() : null, item != null ? item.getCommentId() : null)) {
            com.transsion.postdetail.comment.m mVar2 = this.mCommentEditInputViewHelper;
            if (mVar2 != null) {
                mVar2.t();
            }
            com.transsion.postdetail.comment.m mVar3 = this.mCommentEditInputViewHelper;
            if (mVar3 != null) {
                mVar3.v(item);
            }
        }
        d1(item);
        Y0(this, "reply", null, 2, null);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: G0, reason: merged with bridge method [inline-methods] */
    public so.j getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        so.j jVarC = so.j.c(inflater);
        Intrinsics.g(jVarC, "inflate(...)");
        return jVarC;
    }

    @Override // com.transsion.postdetail.comment.g0
    public void P(CommentBean item) {
        c1(item);
    }

    @Override // com.transsion.postdetail.comment.g0
    public void Q(CommentBean item) {
        String uid;
        S0("跳转个人页面");
        if (item != null && (uid = item.getUid()) != null) {
            Navigator.x(TheRouter.c("/profile/user_profile").K("userId", uid), requireContext(), null, 2, null);
        }
        Y0(this, "avatar_comment", null, 2, null);
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00a5  */
    @Override // com.transsion.postdetail.comment.i0
    public void S(Editable text, CommentBean replyItem) {
        String str;
        String rootCommentId;
        String str2;
        String commentId;
        String uid;
        com.transsion.postdetail.comment.m mVarH;
        if (this.replyLoading) {
            uh.b.f76753a.d(R$string.loding);
            return;
        }
        if (replyItem == null) {
            str = "main";
        } else {
            str = replyItem.isSubComment() ? "reply_reply" : "main_reply";
        }
        String str3 = str;
        com.transsion.postdetail.helper.a aVar = com.transsion.postdetail.helper.a.f48866a;
        String str4 = this.topicId;
        String str5 = str4 == null ? "" : str4;
        String str6 = this.pageName;
        if (str6 == null) {
            str6 = this.mFromDetail ? PostDetailFragment.PAGE_NAME : VideoFragment.PAGE_NAME;
        }
        aVar.h(str5, "comment_post", str6, this.pageFrom, str3, this.trackId, this.previousTrackId, this.previousPageVideoId, this.ugcVideoId, this.collectionId);
        this.replyItem = replyItem;
        this.mPostClickTime = SystemClock.elapsedRealtime();
        S0("发表评论");
        com.transsion.postdetail.comment.g gVar = this.mCommentEditInputDialog;
        List listJ = (gVar == null || (mVarH = gVar.h()) == null) ? null : mVarH.j();
        CharSequence charSequenceN1 = text != null ? StringsKt.n1(text) : null;
        if ((charSequenceN1 == null || charSequenceN1.length() == 0) && listJ != null && listJ.isEmpty()) {
            uh.b.f76753a.d(R$string.comment_empty_tips);
            return;
        }
        if (!nh.m.f70474a.e()) {
            uh.b.f76753a.d(R$string.check_error);
            return;
        }
        if (checkLogin()) {
            if (replyItem != null) {
                if (Intrinsics.c(replyItem.getRootCommentId(), "0")) {
                    rootCommentId = replyItem.getCommentId();
                    if (rootCommentId == null) {
                        str2 = "0";
                    }
                } else {
                    rootCommentId = replyItem.getRootCommentId();
                }
                str2 = rootCommentId;
            } else {
                str2 = "0";
            }
            final CommentBody commentBody = new CommentBody(String.valueOf(charSequenceN1), str2, (replyItem == null || Intrinsics.c(replyItem.getRootCommentId(), "0") || (commentId = replyItem.getCommentId()) == null) ? "0" : commentId, (replyItem == null || (uid = replyItem.getUid()) == null) ? "0" : uid, this.topicId, new ArrayList(), "", "POST");
            this.replyLoading = true;
            com.transsion.postdetail.comment.g gVar2 = this.mCommentEditInputDialog;
            if (gVar2 != null) {
                gVar2.l();
            }
            List list = listJ;
            if (list != null && !list.isEmpty()) {
                String localPath = ((PhotoEntity) listJ.get(0)).getLocalPath();
                l1(localPath != null ? localPath : "", new Function2() { // from class: com.transsion.postdetail.ui.fragment.e
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return CommentFragment.V0(commentBody, this, (String) obj, (String) obj2);
                    }
                });
            } else {
                CommentViewModel commentViewModel = this.mCommentViewModel;
                if (commentViewModel != null) {
                    commentViewModel.s(this.topicType, commentBody);
                }
            }
        }
    }

    @Override // com.transsion.postdetail.comment.g0
    public void T(qo.a info, int count) {
        Intrinsics.h(info, "info");
        S0("加载更多");
        CommentViewModel commentViewModel = this.mCommentViewModel;
        if (commentViewModel != null) {
            commentViewModel.p(info, this.topicType, String.valueOf(info.c()), this.mPerPage);
        }
    }

    public final void Z0(Function2 callback) {
        Intrinsics.h(callback, "callback");
        this.mCommentCallback = callback;
    }

    @Override // com.transsion.postdetail.comment.i0, android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        com.transsion.postdetail.comment.i0.a.a(this, editable);
    }

    public final void b1(b bVar) {
        this.onCommentCountChangedListener = bVar;
    }

    @Override // com.transsion.postdetail.comment.i0, android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        com.transsion.postdetail.comment.i0.a.b(this, charSequence, i11, i12, i13);
    }

    public final void c1(CommentBean item) {
        FragmentManager childFragmentManager;
        UserInfo userInfoI;
        if (item == null) {
            return;
        }
        String content = item.getContent();
        String userId = null;
        this.mCommentDeleteDialog = content != null ? CommentDeleteDialogFragment.INSTANCE.a(item.getCommentId(), this.topicType, content) : null;
        try {
            if (isAdded() && (childFragmentManager = getChildFragmentManager()) != null) {
                childFragmentManager.g0();
                CommentDeleteDialogFragment commentDeleteDialogFragment = this.mCommentDeleteDialog;
                if ((commentDeleteDialogFragment != null && commentDeleteDialogFragment.isAdded()) || childFragmentManager.k0("commentDelete") != null) {
                    return;
                }
                String uid = item.getUid();
                ILoginApi loginApi = getLoginApi();
                if (loginApi != null && (userInfoI = loginApi.i()) != null) {
                    userId = userInfoI.getUserId();
                }
                boolean zEquals = TextUtils.equals(uid, userId);
                CommentDeleteDialogFragment commentDeleteDialogFragment2 = this.mCommentDeleteDialog;
                if (commentDeleteDialogFragment2 != null) {
                    commentDeleteDialogFragment2.o0(new f());
                }
                CommentDeleteDialogFragment commentDeleteDialogFragment3 = this.mCommentDeleteDialog;
                if (commentDeleteDialogFragment3 != null) {
                    commentDeleteDialogFragment3.q0(childFragmentManager, "commentDelete", zEquals);
                }
            }
            h1();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public final boolean d1(CommentBean item) {
        ro.a aVarG;
        if (!isAdded() || isDetached() || isRemoving()) {
            return false;
        }
        if (this.mCommentEditInputDialog == null) {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            com.transsion.postdetail.comment.g.a aVarC = new com.transsion.postdetail.comment.g.a(contextRequireContext).d(300).c(this);
            com.transsion.postdetail.comment.m mVar = this.mCommentEditInputViewHelper;
            com.transsion.postdetail.comment.g gVarA = aVarC.b(mVar != null ? mVar.h() : null).e(item).a();
            this.mCommentEditInputDialog = gVarA;
            if (gVarA != null) {
                gVarA.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.transsion.postdetail.ui.fragment.j
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        CommentFragment.e1(this.f49734a, dialogInterface);
                    }
                });
            }
        }
        com.transsion.postdetail.comment.g gVar = this.mCommentEditInputDialog;
        if (gVar == null || gVar.isShowing()) {
            return true;
        }
        com.transsion.postdetail.comment.g gVar2 = this.mCommentEditInputDialog;
        if (gVar2 != null) {
            gVar2.j(this.mText);
        }
        com.transsion.postdetail.comment.g gVar3 = this.mCommentEditInputDialog;
        if (gVar3 != null && (aVarG = gVar3.g()) != null) {
            aVarG.i(item);
        }
        com.transsion.postdetail.comment.g gVar4 = this.mCommentEditInputDialog;
        if (gVar4 == null) {
            return true;
        }
        gVar4.show();
        return true;
    }

    @Override // ep.a
    public void f(Function1 callback) {
        this.loadResultCallback = callback;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void hideLoading() {
        LinearLayout linearLayout;
        RecyclerView recyclerView;
        so.j mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView = mViewBinding.f75555c) != null) {
            jg.c.k(recyclerView);
        }
        so.j mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (linearLayout = mViewBinding2.f75556d) == null) {
            return;
        }
        jg.c.g(linearLayout);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        this.mCommentList = (RecyclerView) view.findViewById(R$id.comment_list);
        initAdapter();
        W0();
        initExposureHelper();
        S0("onViewCreated");
        initViewModel();
        j1();
        I0();
        this.loginLaunch = registerForActivityResult(new f.j(), new androidx.activity.result.a() { // from class: com.transsion.postdetail.ui.fragment.g
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                CommentFragment.J0(this.f49709a, (ActivityResult) obj);
            }
        });
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
        CommentListBean commentListBean = this.mMsgData;
        if (commentListBean == null) {
            loadData();
        } else {
            B0(commentListBean);
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.topicId = arguments.getString(GifImagePreviewActivity.POST_ID);
            String string = arguments.getString("TOPIC_TYPE");
            if (string == null) {
                string = CommentTopicType.POST.getValue();
            }
            this.topicType = string;
            this.mCommentCount = arguments.getLong("comment_count");
            this.mShowDownload = arguments.getBoolean("show_download", true);
            this.mFromDetail = arguments.getBoolean("from_detail", false);
            this.commentId = arguments.getString("comment_id", "");
            this.pageFrom = arguments.getString(WebConstants.PAGE_FROM);
            this.trackId = arguments.getString("TRACK_ID");
            this.previousTrackId = arguments.getString("PREVIOUS_TRACK_ID");
            this.previousPageVideoId = arguments.getString("PREVIOUS_PAGE_VIDEO_ID");
            this.ugcVideoId = arguments.getString("UGC_VIDEO_ID");
            this.pageName = arguments.getString("PAGE_NAME");
            this.collectionId = arguments.getString("COLLECTION_ID");
        }
        Function1 function1 = new Function1() { // from class: com.transsion.postdetail.ui.fragment.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CommentFragment.U0(this.f49684a, (fp.a) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = fp.a.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().q(), false, function1);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        RecyclerView recyclerView;
        super.onDestroyView();
        sj.b bVar = this.exposureHelper;
        if (bVar != null && (recyclerView = this.mCommentList) != null) {
            recyclerView.removeOnScrollListener(bVar);
        }
        this.exposureHelper = null;
        this.exposedCommentIds.clear();
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        sj.b bVar;
        super.onHiddenChanged(hidden);
        if (!hidden || (bVar = this.exposureHelper) == null) {
            return;
        }
        bVar.f();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        sj.b bVar = this.exposureHelper;
        if (bVar != null) {
            bVar.f();
        }
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence s11, int start, int before, int count) {
        S0("onTextChanged");
    }

    @Override // ep.a
    public boolean q() {
        return d1(null);
    }

    @Override // ep.a
    public void s(View view) {
        if (view == null || this.mCommentEditInputViewHelper != null) {
            return;
        }
        this.mCommentEditInputViewHelper = new com.transsion.postdetail.comment.m(view, null, new SocialStatus(false, false, false, this.mShowDownload, 7, null), false, 10, null);
        ro.a aVar = new ro.a();
        aVar.h(300);
        aVar.f(this);
        aVar.g(null);
        com.transsion.postdetail.comment.m mVar = this.mCommentEditInputViewHelper;
        if (mVar != null) {
            mVar.k(aVar);
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void startLoading() {
        LinearLayout linearLayout;
        RecyclerView recyclerView;
        so.j mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView = mViewBinding.f75555c) != null) {
            jg.c.g(recyclerView);
        }
        so.j mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (linearLayout = mViewBinding2.f75556d) == null) {
            return;
        }
        jg.c.k(linearLayout);
    }

    @Override // ep.a
    public void updateCommentCount(long commentCount) {
        this.mCommentCount = commentCount;
        j1();
    }

    @Override // com.transsion.postdetail.comment.g0
    public void z(CommentBean item) {
        String str;
        S0("点赞");
        if (item == null || item.getCommentId() == null) {
            return;
        }
        String commentId = item.getCommentId();
        Boolean likeStatu = item.getLikeStatu();
        Boolean bool = Boolean.TRUE;
        CommentLikeBody commentLikeBody = new CommentLikeBody(commentId, Integer.valueOf(!Intrinsics.c(likeStatu, bool) ? 1 : 0));
        CommentViewModel commentViewModel = this.mCommentViewModel;
        if (commentViewModel != null) {
            commentViewModel.q(commentLikeBody);
        }
        if (Intrinsics.c(item.getIsHot(), bool)) {
            str = Intrinsics.c(item.getLikeStatu(), bool) ? "like_hot_comment" : "dislike_hot_comment";
        } else {
            str = Intrinsics.c(item.getLikeStatu(), bool) ? "like_comment" : "dislike_comment";
        }
        X0(str, item.getCommentId());
        Function2 function2 = this.mCommentCallback;
        if (function2 != null) {
        }
    }
}
