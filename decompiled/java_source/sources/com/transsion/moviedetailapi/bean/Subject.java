package com.transsion.moviedetailapi.bean;

import ak.l;
import android.text.TextUtils;
import androidx.annotation.Keep;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.gson.annotations.SerializedName;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.baselib.db.download.VipInfo;
import com.transsion.moviedetailapi.DownloadItem;
import com.transsion.moviedetailapi.PlayUrlType;
import com.transsion.moviedetailapi.SubjectType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import in.a;
import java.io.Serializable;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes.dex */
@Keep
@Metadata(d1 = {"\u0000\u009d\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0003\bÆ\u0001\b\u0017\u0018\u00002\u00020\u00012\u00020\u0002BÕ\u0005\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0019\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001b\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u001e\u0012\u0010\b\u0002\u0010\"\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010 \u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010$\u0012\b\b\u0002\u0010&\u001a\u00020\u001b\u0012\b\b\u0002\u0010'\u001a\u00020\u001b\u0012\n\b\u0002\u0010)\u001a\u0004\u0018\u00010(\u0012\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u0019\u0012\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010.\u001a\u00020\u001b\u0012\b\b\u0002\u0010/\u001a\u00020\u001b\u0012\n\b\u0002\u00101\u001a\u0004\u0018\u000100\u0012\n\b\u0002\u00103\u001a\u0004\u0018\u000102\u0012\b\b\u0002\u00104\u001a\u00020\u0005\u0012\b\b\u0002\u00105\u001a\u00020\u001b\u0012\b\b\u0002\u00106\u001a\u00020\u001b\u0012\b\b\u0002\u00107\u001a\u00020\u0019\u0012\n\b\u0002\u00108\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010:\u001a\n\u0012\u0004\u0012\u000209\u0018\u00010\u0010\u0012\b\b\u0002\u0010;\u001a\u00020\u0019\u0012\u0010\b\u0002\u0010<\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010 \u0012\b\b\u0002\u0010=\u001a\u00020\u0005\u0012\b\b\u0002\u0010>\u001a\u00020\u001b\u0012\n\b\u0002\u0010?\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010@\u001a\u00020\u0005\u0012\n\b\u0002\u0010B\u001a\u0004\u0018\u00010A\u0012\n\b\u0002\u0010C\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010E\u001a\n\u0012\u0004\u0012\u00020D\u0018\u00010 \u0012\n\b\u0002\u0010F\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010G\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010H\u001a\u00020\u0005\u0012\n\b\u0002\u0010I\u001a\u0004\u0018\u00010\u0019\u0012\n\b\u0002\u0010J\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010L\u001a\u0004\u0018\u00010K\u0012\n\b\u0002\u0010N\u001a\u0004\u0018\u00010M\u0012\n\b\u0002\u0010O\u001a\u0004\u0018\u00010\u001b\u0012\n\b\u0002\u0010Q\u001a\u0004\u0018\u00010P¢\u0006\u0004\bR\u0010SJ\r\u0010T\u001a\u00020\u001b¢\u0006\u0004\bT\u0010UJ\r\u0010V\u001a\u00020\u001b¢\u0006\u0004\bV\u0010UJ\r\u0010W\u001a\u00020\u001b¢\u0006\u0004\bW\u0010UJ\r\u0010X\u001a\u00020\u0000¢\u0006\u0004\bX\u0010YJ\r\u0010Z\u001a\u00020\u001b¢\u0006\u0004\bZ\u0010UJ\r\u0010[\u001a\u00020\u001b¢\u0006\u0004\b[\u0010UJ\r\u0010\\\u001a\u00020\u001b¢\u0006\u0004\b\\\u0010UJ\r\u0010]\u001a\u00020\u001b¢\u0006\u0004\b]\u0010UJ\u000f\u0010^\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b^\u0010_J\u000f\u0010`\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b`\u0010_J\r\u0010a\u001a\u00020\u001b¢\u0006\u0004\ba\u0010UJ\r\u0010b\u001a\u00020\u001b¢\u0006\u0004\bb\u0010UJ\r\u0010c\u001a\u00020\u001b¢\u0006\u0004\bc\u0010UR$\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010d\u001a\u0004\be\u0010_\"\u0004\bf\u0010gR$\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010h\u001a\u0004\bi\u0010j\"\u0004\bk\u0010lR$\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010d\u001a\u0004\bm\u0010_\"\u0004\bn\u0010gR$\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\b\u0010d\u001a\u0004\bo\u0010_\"\u0004\bp\u0010gR$\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\n\u0010q\u001a\u0004\br\u0010s\"\u0004\bt\u0010uR$\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010d\u001a\u0004\bv\u0010_\"\u0004\bw\u0010gR$\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\f\u0010d\u001a\u0004\bx\u0010_\"\u0004\by\u0010gR$\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\r\u0010d\u001a\u0004\bz\u0010_\"\u0004\b{\u0010gR$\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010h\u001a\u0004\b|\u0010j\"\u0004\b}\u0010lR$\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010d\u001a\u0004\b~\u0010_\"\u0004\b\u007f\u0010gR/\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0005\b\u0011\u0010\u0080\u0001\u001a\u0006\b\u0081\u0001\u0010\u0082\u0001\"\u0006\b\u0083\u0001\u0010\u0084\u0001R&\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\b\u0012\u0010d\u001a\u0005\b\u0085\u0001\u0010_\"\u0005\b\u0086\u0001\u0010gR&\u0010\u0013\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\b\u0013\u0010d\u001a\u0005\b\u0087\u0001\u0010_\"\u0005\b\u0088\u0001\u0010gR&\u0010\u0014\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\b\u0014\u0010d\u001a\u0005\b\u0089\u0001\u0010_\"\u0005\b\u008a\u0001\u0010gR&\u0010\u0015\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\b\u0015\u0010d\u001a\u0005\b\u008b\u0001\u0010_\"\u0005\b\u008c\u0001\u0010gR&\u0010\u0016\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\b\u0016\u0010h\u001a\u0005\b\u008d\u0001\u0010j\"\u0005\b\u008e\u0001\u0010lR/\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0005\b\u0018\u0010\u0080\u0001\u001a\u0006\b\u008f\u0001\u0010\u0082\u0001\"\u0006\b\u0090\u0001\u0010\u0084\u0001R)\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0005\b\u001a\u0010\u0091\u0001\u001a\u0006\b\u0092\u0001\u0010\u0093\u0001\"\u0006\b\u0094\u0001\u0010\u0095\u0001R)\u0010\u001c\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0005\b\u001c\u0010\u0096\u0001\u001a\u0006\b\u0097\u0001\u0010\u0098\u0001\"\u0006\b\u0099\u0001\u0010\u009a\u0001R&\u0010\u001d\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\b\u001d\u0010d\u001a\u0005\b\u009b\u0001\u0010_\"\u0005\b\u009c\u0001\u0010gR1\u0010\u001f\u001a\u0004\u0018\u00010\u001e8\u0006@\u0006X\u0087\u000e¢\u0006\u001f\n\u0005\b\u001f\u0010\u009d\u0001\u0012\u0006\b¢\u0001\u0010£\u0001\u001a\u0006\b\u009e\u0001\u0010\u009f\u0001\"\u0006\b \u0001\u0010¡\u0001R7\u0010\"\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010 8\u0006@\u0006X\u0087\u000e¢\u0006\u001f\n\u0005\b\"\u0010\u0080\u0001\u0012\u0006\b¦\u0001\u0010£\u0001\u001a\u0006\b¤\u0001\u0010\u0082\u0001\"\u0006\b¥\u0001\u0010\u0084\u0001R&\u0010#\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\b#\u0010q\u001a\u0005\b§\u0001\u0010s\"\u0005\b¨\u0001\u0010uR)\u0010%\u001a\u0004\u0018\u00010$8\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0005\b%\u0010©\u0001\u001a\u0006\bª\u0001\u0010«\u0001\"\u0006\b¬\u0001\u0010\u00ad\u0001R&\u0010&\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b&\u0010®\u0001\u001a\u0005\b¯\u0001\u0010U\"\u0006\b°\u0001\u0010±\u0001R&\u0010'\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b'\u0010®\u0001\u001a\u0005\b²\u0001\u0010U\"\u0006\b³\u0001\u0010±\u0001R)\u0010)\u001a\u0004\u0018\u00010(8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b)\u0010´\u0001\u001a\u0006\bµ\u0001\u0010¶\u0001\"\u0006\b·\u0001\u0010¸\u0001R&\u0010*\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\b*\u0010d\u001a\u0005\b¹\u0001\u0010_\"\u0005\bº\u0001\u0010gR)\u0010+\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0005\b+\u0010\u0091\u0001\u001a\u0006\b»\u0001\u0010\u0093\u0001\"\u0006\b¼\u0001\u0010\u0095\u0001R&\u0010,\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\b,\u0010d\u001a\u0005\b½\u0001\u0010_\"\u0005\b¾\u0001\u0010gR&\u0010-\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\b-\u0010d\u001a\u0005\b¿\u0001\u0010_\"\u0005\bÀ\u0001\u0010gR&\u0010.\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b.\u0010®\u0001\u001a\u0005\bÁ\u0001\u0010U\"\u0006\bÂ\u0001\u0010±\u0001R%\u0010/\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b/\u0010®\u0001\u001a\u0004\b/\u0010U\"\u0006\bÃ\u0001\u0010±\u0001R)\u00101\u001a\u0004\u0018\u0001008\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0005\b1\u0010Ä\u0001\u001a\u0006\bÅ\u0001\u0010Æ\u0001\"\u0006\bÇ\u0001\u0010È\u0001R)\u00103\u001a\u0004\u0018\u0001028\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0005\b3\u0010É\u0001\u001a\u0006\bÊ\u0001\u0010Ë\u0001\"\u0006\bÌ\u0001\u0010Í\u0001R'\u00104\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0005\b4\u0010Î\u0001\u001a\u0006\bÏ\u0001\u0010Ð\u0001\"\u0006\bÑ\u0001\u0010Ò\u0001R&\u00105\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b5\u0010®\u0001\u001a\u0005\bÓ\u0001\u0010U\"\u0006\bÔ\u0001\u0010±\u0001R&\u00106\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b6\u0010®\u0001\u001a\u0005\bÕ\u0001\u0010U\"\u0006\bÖ\u0001\u0010±\u0001R'\u00107\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b7\u0010×\u0001\u001a\u0006\bØ\u0001\u0010Ù\u0001\"\u0006\bÚ\u0001\u0010Û\u0001R&\u00108\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b8\u0010d\u001a\u0005\bÜ\u0001\u0010_\"\u0005\bÝ\u0001\u0010gR/\u0010:\u001a\n\u0012\u0004\u0012\u000209\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b:\u0010\u0080\u0001\u001a\u0006\bÞ\u0001\u0010\u0082\u0001\"\u0006\bß\u0001\u0010\u0084\u0001R'\u0010;\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b;\u0010×\u0001\u001a\u0006\bà\u0001\u0010Ù\u0001\"\u0006\bá\u0001\u0010Û\u0001R/\u0010<\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010 8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b<\u0010\u0080\u0001\u001a\u0006\bâ\u0001\u0010\u0082\u0001\"\u0006\bã\u0001\u0010\u0084\u0001R'\u0010=\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b=\u0010Î\u0001\u001a\u0006\bä\u0001\u0010Ð\u0001\"\u0006\bå\u0001\u0010Ò\u0001R&\u0010>\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b>\u0010®\u0001\u001a\u0005\bæ\u0001\u0010U\"\u0006\bç\u0001\u0010±\u0001R&\u0010?\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b?\u0010h\u001a\u0005\bè\u0001\u0010j\"\u0005\bé\u0001\u0010lR'\u0010@\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b@\u0010Î\u0001\u001a\u0006\bê\u0001\u0010Ð\u0001\"\u0006\bë\u0001\u0010Ò\u0001R)\u0010B\u001a\u0004\u0018\u00010A8\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0005\bB\u0010ì\u0001\u001a\u0006\bí\u0001\u0010î\u0001\"\u0006\bï\u0001\u0010ð\u0001R&\u0010C\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\bC\u0010d\u001a\u0005\bñ\u0001\u0010_\"\u0005\bò\u0001\u0010gR/\u0010E\u001a\n\u0012\u0004\u0012\u00020D\u0018\u00010 8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bE\u0010\u0080\u0001\u001a\u0006\bó\u0001\u0010\u0082\u0001\"\u0006\bô\u0001\u0010\u0084\u0001R&\u0010F\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\bF\u0010d\u001a\u0005\bõ\u0001\u0010_\"\u0005\bö\u0001\u0010gR&\u0010G\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\bG\u0010d\u001a\u0005\b÷\u0001\u0010_\"\u0005\bø\u0001\u0010gR'\u0010H\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bH\u0010Î\u0001\u001a\u0006\bù\u0001\u0010Ð\u0001\"\u0006\bú\u0001\u0010Ò\u0001R)\u0010I\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0005\bI\u0010\u0091\u0001\u001a\u0006\bû\u0001\u0010\u0093\u0001\"\u0006\bü\u0001\u0010\u0095\u0001R&\u0010J\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\bJ\u0010h\u001a\u0005\bý\u0001\u0010j\"\u0005\bþ\u0001\u0010lR)\u0010L\u001a\u0004\u0018\u00010K8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bL\u0010ÿ\u0001\u001a\u0006\b\u0080\u0002\u0010\u0081\u0002\"\u0006\b\u0082\u0002\u0010\u0083\u0002R)\u0010N\u001a\u0004\u0018\u00010M8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bN\u0010\u0084\u0002\u001a\u0006\b\u0085\u0002\u0010\u0086\u0002\"\u0006\b\u0087\u0002\u0010\u0088\u0002R(\u0010O\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\bO\u0010\u0096\u0001\u001a\u0005\bO\u0010\u0098\u0001\"\u0006\b\u0089\u0002\u0010\u009a\u0001R)\u0010Q\u001a\u0004\u0018\u00010P8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bQ\u0010\u008a\u0002\u001a\u0006\b\u008b\u0002\u0010\u008c\u0002\"\u0006\b\u008d\u0002\u0010\u008e\u0002R(\u0010\u008f\u0002\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0006\b\u008f\u0002\u0010®\u0001\u001a\u0005\b\u008f\u0002\u0010U\"\u0006\b\u0090\u0002\u0010±\u0001R\u0016\u0010\u0093\u0002\u001a\u0004\u0018\u00010!8F¢\u0006\b\u001a\u0006\b\u0091\u0002\u0010\u0092\u0002R\u0014\u0010\u0095\u0002\u001a\u00020\u00198F¢\u0006\b\u001a\u0006\b\u0094\u0002\u0010Ù\u0001¨\u0006\u0096\u0002"}, d2 = {"Lcom/transsion/moviedetailapi/bean/Subject;", "Lin/a;", "Ljava/io/Serializable;", "", "subjectId", "", "subjectType", CampaignEx.JSON_KEY_TITLE, "countryName", "Lcom/transsion/moviedetailapi/bean/Cover;", "cover", "releaseDate", TrackingKey.DESCRIPTION, "duration", "durationSeconds", "genre", "", "tags", "tag", "imdbRate", TmcConstants.KEY_LANGUAGE, "mySeeTime", "seenStatus", "Lcom/transsion/moviedetailapi/bean/Staff;", "staffList", "", "wantToSeeCount", "", "hasResource", "ops", "Lcom/transsion/moviedetailapi/bean/SubjectDl;", "download", "", "Lcom/transsion/moviedetailapi/bean/ResourceDetectors;", "resourceDetectors", "stills", "Lcom/transsion/moviedetailapi/bean/Trailer;", "trailer", "series", "correlation", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "nonAdDelegate", "postTitle", "viewers", "contentRating", "category", "builtIn", "isCache", "Lcom/transsion/moviedetailapi/bean/ShortTVItem;", "shortTVFirstEp", "Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;", "shortTVFavInfo", "totalEpisode", "loadCoverSuccess", "coverCache", "loadCoverDuration", "aka", "Lcom/transsion/moviedetailapi/bean/ExplainBean;", "explains", "totalSize", "unlockedEps", "coinPerEp", "deleted", "seNum", "season", "Lcom/transsion/moviedetailapi/bean/SubjectGameInfo;", "gameInfo", "subtitles", "Lcom/transsion/moviedetailapi/bean/DubsInfo;", "dubs", "corner", "restrictLevel", "restrictKid", "appointmentCnt", "likeStatus", "Lcom/transsion/moviedetailapi/bean/LayoutStyle;", TtmlNode.TAG_STYLE, "Lcom/transsion/moviedetailapi/bean/PlayUrl;", "playUrl", "isCam", "Lcom/transsion/baselib/db/download/VipInfo;", "vipInfo", "<init>", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/SubjectDl;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetailapi/bean/Trailer;ZZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZZLcom/transsion/moviedetailapi/bean/ShortTVItem;Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;IZZJLjava/lang/String;Ljava/util/List;JLjava/util/List;IZLjava/lang/Integer;ILcom/transsion/moviedetailapi/bean/SubjectGameInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/LayoutStyle;Lcom/transsion/moviedetailapi/bean/PlayUrl;Ljava/lang/Boolean;Lcom/transsion/baselib/db/download/VipInfo;)V", "isSeries", "()Z", "isEPType", "isShortTV", "copyData", "()Lcom/transsion/moviedetailapi/bean/Subject;", "isEduType", "isMusicType", "isTvType", "isMovieType", "currentDubLandCode", "()Ljava/lang/String;", "currentDubLandName", "isJumpBrowser", "isJumpWebview", "isFamilyModeIntercept", "Ljava/lang/String;", "getSubjectId", "setSubjectId", "(Ljava/lang/String;)V", "Ljava/lang/Integer;", "getSubjectType", "()Ljava/lang/Integer;", "setSubjectType", "(Ljava/lang/Integer;)V", "getTitle", "setTitle", "getCountryName", "setCountryName", "Lcom/transsion/moviedetailapi/bean/Cover;", "getCover", "()Lcom/transsion/moviedetailapi/bean/Cover;", "setCover", "(Lcom/transsion/moviedetailapi/bean/Cover;)V", "getReleaseDate", "setReleaseDate", "getDescription", "setDescription", "getDuration", "setDuration", "getDurationSeconds", "setDurationSeconds", "getGenre", "setGenre", "Ljava/util/List;", "getTags", "()Ljava/util/List;", "setTags", "(Ljava/util/List;)V", "getTag", "setTag", "getImdbRate", "setImdbRate", "getLanguage", "setLanguage", "getMySeeTime", "setMySeeTime", "getSeenStatus", "setSeenStatus", "getStaffList", "setStaffList", "Ljava/lang/Long;", "getWantToSeeCount", "()Ljava/lang/Long;", "setWantToSeeCount", "(Ljava/lang/Long;)V", "Ljava/lang/Boolean;", "getHasResource", "()Ljava/lang/Boolean;", "setHasResource", "(Ljava/lang/Boolean;)V", "getOps", "setOps", "Lcom/transsion/moviedetailapi/bean/SubjectDl;", "getDownload", "()Lcom/transsion/moviedetailapi/bean/SubjectDl;", "setDownload", "(Lcom/transsion/moviedetailapi/bean/SubjectDl;)V", "getDownload$annotations", "()V", "getResourceDetectors", "setResourceDetectors", "getResourceDetectors$annotations", "getStills", "setStills", "Lcom/transsion/moviedetailapi/bean/Trailer;", "getTrailer", "()Lcom/transsion/moviedetailapi/bean/Trailer;", "setTrailer", "(Lcom/transsion/moviedetailapi/bean/Trailer;)V", "Z", "getSeries", "setSeries", "(Z)V", "getCorrelation", "setCorrelation", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "getNonAdDelegate", "()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "setNonAdDelegate", "(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V", "getPostTitle", "setPostTitle", "getViewers", "setViewers", "getContentRating", "setContentRating", "getCategory", "setCategory", "getBuiltIn", "setBuiltIn", "setCache", "Lcom/transsion/moviedetailapi/bean/ShortTVItem;", "getShortTVFirstEp", "()Lcom/transsion/moviedetailapi/bean/ShortTVItem;", "setShortTVFirstEp", "(Lcom/transsion/moviedetailapi/bean/ShortTVItem;)V", "Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;", "getShortTVFavInfo", "()Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;", "setShortTVFavInfo", "(Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;)V", "I", "getTotalEpisode", "()I", "setTotalEpisode", "(I)V", "getLoadCoverSuccess", "setLoadCoverSuccess", "getCoverCache", "setCoverCache", "J", "getLoadCoverDuration", "()J", "setLoadCoverDuration", "(J)V", "getAka", "setAka", "getExplains", "setExplains", "getTotalSize", "setTotalSize", "getUnlockedEps", "setUnlockedEps", "getCoinPerEp", "setCoinPerEp", "getDeleted", "setDeleted", "getSeNum", "setSeNum", "getSeason", "setSeason", "Lcom/transsion/moviedetailapi/bean/SubjectGameInfo;", "getGameInfo", "()Lcom/transsion/moviedetailapi/bean/SubjectGameInfo;", "setGameInfo", "(Lcom/transsion/moviedetailapi/bean/SubjectGameInfo;)V", "getSubtitles", "setSubtitles", "getDubs", "setDubs", "getCorner", "setCorner", "getRestrictLevel", "setRestrictLevel", "getRestrictKid", "setRestrictKid", "getAppointmentCnt", "setAppointmentCnt", "getLikeStatus", "setLikeStatus", "Lcom/transsion/moviedetailapi/bean/LayoutStyle;", "getStyle", "()Lcom/transsion/moviedetailapi/bean/LayoutStyle;", "setStyle", "(Lcom/transsion/moviedetailapi/bean/LayoutStyle;)V", "Lcom/transsion/moviedetailapi/bean/PlayUrl;", "getPlayUrl", "()Lcom/transsion/moviedetailapi/bean/PlayUrl;", "setPlayUrl", "(Lcom/transsion/moviedetailapi/bean/PlayUrl;)V", "setCam", "Lcom/transsion/baselib/db/download/VipInfo;", "getVipInfo", "()Lcom/transsion/baselib/db/download/VipInfo;", "setVipInfo", "(Lcom/transsion/baselib/db/download/VipInfo;)V", "isRefreshViewOnly", "setRefreshViewOnly", "getResourceDetector", "()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;", "resourceDetector", "getResourceAboutDuration", "resourceAboutDuration", "MovieDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public class Subject extends a implements Serializable {
    private String aka;

    @SerializedName("appointmentCnt")
    private Long appointmentCnt;
    private boolean builtIn;

    @SerializedName("category")
    private String category;
    private int coinPerEp;

    @SerializedName("contentRating")
    private String contentRating;

    @SerializedName("corner")
    private String corner;
    private transient boolean correlation;

    @SerializedName("countryName")
    private String countryName;

    @SerializedName("cover")
    private Cover cover;
    private transient boolean coverCache;
    private transient boolean deleted;

    @SerializedName(TrackingKey.DESCRIPTION)
    private String description;

    @SerializedName("dl")
    private SubjectDl download;
    private List<DubsInfo> dubs;

    @SerializedName("duration")
    private String duration;

    @SerializedName(alternate = {"durationSeconds"}, value = "seconds")
    private Integer durationSeconds;
    private List<ExplainBean> explains;

    @SerializedName("relatedApp")
    private SubjectGameInfo gameInfo;

    @SerializedName("genre")
    private String genre;

    @SerializedName("hasResource")
    private Boolean hasResource;

    @SerializedName("imdbRatingValue")
    private String imdbRate;
    private boolean isCache;
    private Boolean isCam;
    private boolean isRefreshViewOnly;

    @SerializedName(TmcConstants.KEY_LANGUAGE)
    private String language;

    @SerializedName("likeStatus")
    private Integer likeStatus;
    private transient long loadCoverDuration;
    private transient boolean loadCoverSuccess;

    @SerializedName("mySeeTime")
    private String mySeeTime;
    private transient BiddingNativeManager nonAdDelegate;

    @SerializedName("ops")
    private String ops;
    private PlayUrl playUrl;

    @SerializedName("postTitle")
    private String postTitle;

    @SerializedName("releaseDate")
    private String releaseDate;

    @SerializedName("resourceDetectors")
    private List<ResourceDetectors> resourceDetectors;
    private int restrictKid;
    private String restrictLevel;
    private Integer seNum;
    private int season;

    @SerializedName("seenStatus")
    private Integer seenStatus;
    private transient boolean series;

    @SerializedName("favInfo")
    private ShortTVFavInfo shortTVFavInfo;

    @SerializedName("firstEp")
    private ShortTVItem shortTVFirstEp;

    @SerializedName("staffList")
    private List<? extends Staff> staffList;

    @SerializedName("stills")
    private Cover stills;
    private LayoutStyle style;

    @SerializedName("subjectId")
    private String subjectId;

    @SerializedName("subjectType")
    private Integer subjectType;
    private String subtitles;

    @SerializedName("tag")
    private String tag;

    @SerializedName("tags")
    private List<String> tags;

    @SerializedName(CampaignEx.JSON_KEY_TITLE)
    private String title;

    @SerializedName(alternate = {"shortsEpisode"}, value = "totalEpisode")
    private int totalEpisode;
    private long totalSize;

    @SerializedName("trailer")
    private Trailer trailer;
    private List<Integer> unlockedEps;

    @SerializedName("viewers")
    private Long viewers;
    private VipInfo vipInfo;

    @SerializedName("wantToSeeCount")
    private Long wantToSeeCount;

    public Subject() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, 0, null, null, null, null, null, null, -1, 134217727, null);
    }

    public Subject(String str, Integer num, String str2, String str3, Cover cover, String str4, String str5, String str6, Integer num2, String str7, List<String> list, String str8, String str9, String str10, String str11, Integer num3, List<? extends Staff> list2, Long l11, Boolean bool, String str12, SubjectDl subjectDl, List<ResourceDetectors> list3, Cover cover2, Trailer trailer, boolean z10, boolean z11, BiddingNativeManager biddingNativeManager, String str13, Long l12, String str14, String str15, boolean z12, boolean z13, ShortTVItem shortTVItem, ShortTVFavInfo shortTVFavInfo, int i11, boolean z14, boolean z15, long j11, String str16, List<ExplainBean> list4, long j12, List<Integer> list5, int i12, boolean z16, Integer num4, int i13, SubjectGameInfo subjectGameInfo, String str17, List<DubsInfo> list6, String str18, String str19, int i14, Long l13, Integer num5, LayoutStyle layoutStyle, PlayUrl playUrl, Boolean bool2, VipInfo vipInfo) {
        this.subjectId = str;
        this.subjectType = num;
        this.title = str2;
        this.countryName = str3;
        this.cover = cover;
        this.releaseDate = str4;
        this.description = str5;
        this.duration = str6;
        this.durationSeconds = num2;
        this.genre = str7;
        this.tags = list;
        this.tag = str8;
        this.imdbRate = str9;
        this.language = str10;
        this.mySeeTime = str11;
        this.seenStatus = num3;
        this.staffList = list2;
        this.wantToSeeCount = l11;
        this.hasResource = bool;
        this.ops = str12;
        this.download = subjectDl;
        this.resourceDetectors = list3;
        this.stills = cover2;
        this.trailer = trailer;
        this.series = z10;
        this.correlation = z11;
        this.nonAdDelegate = biddingNativeManager;
        this.postTitle = str13;
        this.viewers = l12;
        this.contentRating = str14;
        this.category = str15;
        this.builtIn = z12;
        this.isCache = z13;
        this.shortTVFirstEp = shortTVItem;
        this.shortTVFavInfo = shortTVFavInfo;
        this.totalEpisode = i11;
        this.loadCoverSuccess = z14;
        this.coverCache = z15;
        this.loadCoverDuration = j11;
        this.aka = str16;
        this.explains = list4;
        this.totalSize = j12;
        this.unlockedEps = list5;
        this.coinPerEp = i12;
        this.deleted = z16;
        this.seNum = num4;
        this.season = i13;
        this.gameInfo = subjectGameInfo;
        this.subtitles = str17;
        this.dubs = list6;
        this.corner = str18;
        this.restrictLevel = str19;
        this.restrictKid = i14;
        this.appointmentCnt = l13;
        this.likeStatus = num5;
        this.style = layoutStyle;
        this.playUrl = playUrl;
        this.isCam = bool2;
        this.vipInfo = vipInfo;
    }

    public /* synthetic */ Subject(String str, Integer num, String str2, String str3, Cover cover, String str4, String str5, String str6, Integer num2, String str7, List list, String str8, String str9, String str10, String str11, Integer num3, List list2, Long l11, Boolean bool, String str12, SubjectDl subjectDl, List list3, Cover cover2, Trailer trailer, boolean z10, boolean z11, BiddingNativeManager biddingNativeManager, String str13, Long l12, String str14, String str15, boolean z12, boolean z13, ShortTVItem shortTVItem, ShortTVFavInfo shortTVFavInfo, int i11, boolean z14, boolean z15, long j11, String str16, List list4, long j12, List list5, int i12, boolean z16, Integer num4, int i13, SubjectGameInfo subjectGameInfo, String str17, List list6, String str18, String str19, int i14, Long l13, Integer num5, LayoutStyle layoutStyle, PlayUrl playUrl, Boolean bool2, VipInfo vipInfo, int i15, int i16, DefaultConstructorMarker defaultConstructorMarker) {
        this((i15 & 1) != 0 ? null : str, (i15 & 2) != 0 ? 1 : num, (i15 & 4) != 0 ? null : str2, (i15 & 8) != 0 ? null : str3, (i15 & 16) != 0 ? null : cover, (i15 & 32) != 0 ? null : str4, (i15 & 64) != 0 ? null : str5, (i15 & 128) != 0 ? null : str6, (i15 & 256) != 0 ? 0 : num2, (i15 & 512) != 0 ? null : str7, (i15 & 1024) != 0 ? null : list, (i15 & 2048) != 0 ? null : str8, (i15 & 4096) != 0 ? null : str9, (i15 & 8192) != 0 ? null : str10, (i15 & 16384) != 0 ? null : str11, (i15 & 32768) != 0 ? 0 : num3, (i15 & 65536) != 0 ? null : list2, (i15 & 131072) != 0 ? 0L : l11, (i15 & 262144) != 0 ? null : bool, (i15 & 524288) != 0 ? null : str12, (i15 & 1048576) != 0 ? null : subjectDl, (i15 & 2097152) != 0 ? null : list3, (i15 & 4194304) != 0 ? null : cover2, (i15 & 8388608) != 0 ? null : trailer, (i15 & 16777216) != 0 ? false : z10, (i15 & ASTNode.PCTX_STORED) != 0 ? false : z11, (i15 & 67108864) != 0 ? null : biddingNativeManager, (i15 & ASTNode.NOJIT) != 0 ? null : str13, (i15 & ASTNode.DEOP) != 0 ? null : l12, (i15 & ASTNode.DISCARD) != 0 ? null : str14, (i15 & 1073741824) != 0 ? null : str15, (i15 & Integer.MIN_VALUE) != 0 ? false : z12, (i16 & 1) != 0 ? false : z13, (i16 & 2) != 0 ? null : shortTVItem, (i16 & 4) != 0 ? null : shortTVFavInfo, (i16 & 8) != 0 ? 0 : i11, (i16 & 16) != 0 ? false : z14, (i16 & 32) != 0 ? false : z15, (i16 & 64) != 0 ? 0L : j11, (i16 & 128) != 0 ? null : str16, (i16 & 256) != 0 ? null : list4, (i16 & 512) != 0 ? 0L : j12, (i16 & 1024) != 0 ? null : list5, (i16 & 2048) != 0 ? -1 : i12, (i16 & 4096) != 0 ? false : z16, (i16 & 8192) != 0 ? 0 : num4, (i16 & 16384) != 0 ? 1 : i13, (i16 & 32768) != 0 ? null : subjectGameInfo, (i16 & 65536) != 0 ? null : str17, (i16 & 131072) != 0 ? null : list6, (i16 & 262144) != 0 ? null : str18, (i16 & 524288) != 0 ? null : str19, (i16 & 1048576) != 0 ? 0 : i14, (i16 & 2097152) != 0 ? 0L : l13, (i16 & 4194304) != 0 ? 0 : num5, (i16 & 8388608) != 0 ? null : layoutStyle, (i16 & 16777216) != 0 ? null : playUrl, (i16 & ASTNode.PCTX_STORED) != 0 ? null : bool2, (i16 & 67108864) != 0 ? null : vipInfo);
    }

    @Deprecated
    public static /* synthetic */ void getDownload$annotations() {
    }

    @Deprecated
    public static /* synthetic */ void getResourceDetectors$annotations() {
    }

    public final Subject copyData() {
        return new Subject(this.subjectId, this.subjectType, this.title, this.countryName, this.cover, this.releaseDate, this.description, this.duration, this.durationSeconds, this.genre, this.tags, null, this.imdbRate, this.language, this.mySeeTime, null, null, null, this.hasResource, this.ops, this.download, this.resourceDetectors, this.stills, this.trailer, false, false, null, null, null, null, null, this.builtIn, this.isCache, this.shortTVFirstEp, this.shortTVFavInfo, this.totalEpisode, false, false, 0L, null, null, this.totalSize, this.unlockedEps, this.coinPerEp, false, null, 0, null, null, null, null, null, 0, null, null, null, null, null, null, 2130937856, 134214128, null);
    }

    public final String currentDubLandCode() {
        Object next;
        List<DubsInfo> list = this.dubs;
        if (list == null) {
            return null;
        }
        Iterator<T> it = list.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((DubsInfo) next).getSubjectId(), this.subjectId));
        DubsInfo dubsInfo = (DubsInfo) next;
        if (dubsInfo != null) {
            return dubsInfo.getLanCode();
        }
        return null;
    }

    public final String currentDubLandName() {
        Object next;
        List<DubsInfo> list = this.dubs;
        if (list == null) {
            return null;
        }
        Iterator<T> it = list.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((DubsInfo) next).getSubjectId(), this.subjectId));
        DubsInfo dubsInfo = (DubsInfo) next;
        if (dubsInfo != null) {
            return dubsInfo.getLanName();
        }
        return null;
    }

    public final String getAka() {
        return this.aka;
    }

    public final Long getAppointmentCnt() {
        return this.appointmentCnt;
    }

    public final boolean getBuiltIn() {
        return this.builtIn;
    }

    public final String getCategory() {
        return this.category;
    }

    public final int getCoinPerEp() {
        return this.coinPerEp;
    }

    public final String getContentRating() {
        return this.contentRating;
    }

    public final String getCorner() {
        return this.corner;
    }

    public final boolean getCorrelation() {
        return this.correlation;
    }

    public final String getCountryName() {
        return this.countryName;
    }

    public final Cover getCover() {
        return this.cover;
    }

    public final boolean getCoverCache() {
        return this.coverCache;
    }

    public final boolean getDeleted() {
        return this.deleted;
    }

    public final String getDescription() {
        return this.description;
    }

    public final SubjectDl getDownload() {
        return this.download;
    }

    public final List<DubsInfo> getDubs() {
        return this.dubs;
    }

    public final String getDuration() {
        return this.duration;
    }

    public final Integer getDurationSeconds() {
        return this.durationSeconds;
    }

    public final List<ExplainBean> getExplains() {
        return this.explains;
    }

    public final SubjectGameInfo getGameInfo() {
        return this.gameInfo;
    }

    public final String getGenre() {
        return this.genre;
    }

    public final Boolean getHasResource() {
        return this.hasResource;
    }

    public final String getImdbRate() {
        return this.imdbRate;
    }

    public final String getLanguage() {
        return this.language;
    }

    public final Integer getLikeStatus() {
        return this.likeStatus;
    }

    public final long getLoadCoverDuration() {
        return this.loadCoverDuration;
    }

    public final boolean getLoadCoverSuccess() {
        return this.loadCoverSuccess;
    }

    public final String getMySeeTime() {
        return this.mySeeTime;
    }

    public final BiddingNativeManager getNonAdDelegate() {
        return this.nonAdDelegate;
    }

    public final String getOps() {
        return this.ops;
    }

    public final PlayUrl getPlayUrl() {
        return this.playUrl;
    }

    public final String getPostTitle() {
        return this.postTitle;
    }

    public final String getReleaseDate() {
        return this.releaseDate;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x002c  */
    public final long getResourceAboutDuration() {
        boolean z10;
        int i11;
        Integer num = this.durationSeconds;
        int iIntValue = 0;
        if ((num != null ? num.intValue() : 0) > 0) {
            Integer num2 = this.durationSeconds;
            if (num2 != null) {
                iIntValue = num2.intValue();
            }
        } else {
            String str = this.duration;
            if (str == null) {
                z10 = false;
            } else {
                if (str.length() > 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            }
            if (!z10) {
                return 0L;
            }
            Pattern patternCompile = Pattern.compile("[^0-9]+");
            String str2 = this.duration;
            Intrinsics.e(str2);
            String[] strArrSplit = patternCompile.split(StringsKt.n1(str2).toString());
            if (strArrSplit.length == 2) {
                String str3 = strArrSplit[0];
                Intrinsics.g(str3, "get(...)");
                iIntValue = Integer.parseInt(str3);
                String str4 = strArrSplit[1];
                Intrinsics.g(str4, "get(...)");
                i11 = Integer.parseInt(str4);
            } else if (strArrSplit.length == 1) {
                String str5 = strArrSplit[0];
                Intrinsics.g(str5, "get(...)");
                i11 = Integer.parseInt(str5);
            } else {
                i11 = 0;
            }
            iIntValue = ((iIntValue * 60) + i11) * 60;
        }
        return ((long) iIntValue) * 1000;
    }

    public final ResourceDetectors getResourceDetector() {
        ResourceDetectors resourceDetectors;
        List<DownloadItem> resolutionList;
        List<ResourceDetectors> list = this.resourceDetectors;
        if (list == null || list.isEmpty()) {
            boolean zIsSeries = isSeries();
            SubjectDl subjectDl = this.download;
            String resourceId = subjectDl != null ? subjectDl.getResourceId() : null;
            SubjectDl subjectDl2 = this.download;
            String url = subjectDl2 != null ? subjectDl2.getUrl() : null;
            SubjectDl subjectDl3 = this.download;
            Long size = subjectDl3 != null ? subjectDl3.getSize() : null;
            SubjectDl subjectDl4 = this.download;
            String sourceUrl = subjectDl4 != null ? subjectDl4.getSourceUrl() : null;
            SubjectDl subjectDl5 = this.download;
            String postId = subjectDl5 != null ? subjectDl5.getPostId() : null;
            SubjectDl subjectDl6 = this.download;
            return new ResourceDetectors(Integer.valueOf(zIsSeries ? 1 : 0), null, size, null, null, sourceUrl, url, null, resourceId, null, postId, subjectDl6 != null ? subjectDl6.getExtSubtitle() : null, null, null, 12954, null);
        }
        List<ResourceDetectors> list2 = this.resourceDetectors;
        ResourceDetectors resourceDetectors2 = list2 != null ? list2.get(0) : null;
        List<ResourceDetectors> list3 = this.resourceDetectors;
        if (list3 == null || (resourceDetectors = list3.get(0)) == null || (resolutionList = resourceDetectors.getResolutionList()) == null) {
            return resourceDetectors2;
        }
        for (DownloadItem downloadItem : resolutionList) {
            if (Intrinsics.c(downloadItem.getResourceId(), resourceDetectors2 != null ? resourceDetectors2.getResourceId() : null)) {
                resourceDetectors2 = new ResourceDetectors(resourceDetectors2 != null ? resourceDetectors2.getType() : null, null, downloadItem.getSize(), null, downloadItem.getUploadBy(), downloadItem.getSourceUrl(), downloadItem.getUrl(), null, downloadItem.getResourceId(), null, downloadItem.getPostId(), downloadItem.getExtSubtitle(), null, downloadItem.getResolution(), 4746, null);
            }
        }
        return resourceDetectors2;
    }

    public final List<ResourceDetectors> getResourceDetectors() {
        return this.resourceDetectors;
    }

    public final int getRestrictKid() {
        return this.restrictKid;
    }

    public final String getRestrictLevel() {
        return this.restrictLevel;
    }

    public final Integer getSeNum() {
        return this.seNum;
    }

    public final int getSeason() {
        return this.season;
    }

    public final Integer getSeenStatus() {
        return this.seenStatus;
    }

    public final boolean getSeries() {
        return this.series;
    }

    public final ShortTVFavInfo getShortTVFavInfo() {
        return this.shortTVFavInfo;
    }

    public final ShortTVItem getShortTVFirstEp() {
        return this.shortTVFirstEp;
    }

    public final List<Staff> getStaffList() {
        return this.staffList;
    }

    public final Cover getStills() {
        return this.stills;
    }

    public final LayoutStyle getStyle() {
        return this.style;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public final Integer getSubjectType() {
        return this.subjectType;
    }

    public final String getSubtitles() {
        return this.subtitles;
    }

    public final String getTag() {
        return this.tag;
    }

    public final List<String> getTags() {
        return this.tags;
    }

    public final String getTitle() {
        return this.title;
    }

    public final int getTotalEpisode() {
        return this.totalEpisode;
    }

    public final long getTotalSize() {
        return this.totalSize;
    }

    public final Trailer getTrailer() {
        return this.trailer;
    }

    public final List<Integer> getUnlockedEps() {
        return this.unlockedEps;
    }

    public final Long getViewers() {
        return this.viewers;
    }

    public final VipInfo getVipInfo() {
        return this.vipInfo;
    }

    public final Long getWantToSeeCount() {
        return this.wantToSeeCount;
    }

    /* JADX INFO: renamed from: isCache, reason: from getter */
    public final boolean getIsCache() {
        return this.isCache;
    }

    /* JADX INFO: renamed from: isCam, reason: from getter */
    public final Boolean getIsCam() {
        return this.isCam;
    }

    public final boolean isEPType() {
        return isTvType() || isEduType();
    }

    public final boolean isEduType() {
        Integer num = this.subjectType;
        SubjectType subjectType = SubjectType.EDUCATION;
        return Intrinsics.c(num, subjectType != null ? Integer.valueOf(subjectType.getValue()) : null);
    }

    public final boolean isFamilyModeIntercept() {
        return l.a() && this.restrictKid == 1;
    }

    public final boolean isJumpBrowser() {
        PlayUrl playUrl = this.playUrl;
        String playUrl2 = playUrl != null ? playUrl.getPlayUrl() : null;
        if (playUrl2 == null || playUrl2.length() == 0) {
            return false;
        }
        PlayUrl playUrl3 = this.playUrl;
        return StringsKt.I(playUrl3 != null ? playUrl3.getUrlType() : null, PlayUrlType.WEB.getValue(), false, 2, null) && !isFamilyModeIntercept();
    }

    public final boolean isJumpWebview() {
        PlayUrl playUrl = this.playUrl;
        String playUrl2 = playUrl != null ? playUrl.getPlayUrl() : null;
        if (playUrl2 == null || playUrl2.length() == 0) {
            return false;
        }
        PlayUrl playUrl3 = this.playUrl;
        return StringsKt.I(playUrl3 != null ? playUrl3.getUrlType() : null, PlayUrlType.ANDROID.getValue(), false, 2, null) && !isFamilyModeIntercept();
    }

    public final boolean isMovieType() {
        Integer num = this.subjectType;
        SubjectType subjectType = SubjectType.MOVIE;
        return Intrinsics.c(num, subjectType != null ? Integer.valueOf(subjectType.getValue()) : null);
    }

    public final boolean isMusicType() {
        Integer num = this.subjectType;
        SubjectType subjectType = SubjectType.MUSIC;
        if (!Intrinsics.c(num, subjectType != null ? Integer.valueOf(subjectType.getValue()) : null)) {
            Integer num2 = this.subjectType;
            SubjectType subjectType2 = SubjectType.AUDIO;
            if (!Intrinsics.c(num2, subjectType2 != null ? Integer.valueOf(subjectType2.getValue()) : null)) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: isRefreshViewOnly, reason: from getter */
    public final boolean getIsRefreshViewOnly() {
        return this.isRefreshViewOnly;
    }

    public final boolean isSeries() {
        SubjectDl subjectDl;
        if (!this.series && (subjectDl = this.download) != null) {
            if (!TextUtils.isEmpty(subjectDl != null ? subjectDl.getUrl() : null)) {
                return false;
            }
        }
        return true;
    }

    public final boolean isShortTV() {
        Integer num = this.subjectType;
        SubjectType subjectType = SubjectType.SHORT_TV;
        return Intrinsics.c(num, subjectType != null ? Integer.valueOf(subjectType.getValue()) : null);
    }

    public final boolean isTvType() {
        Integer num = this.subjectType;
        SubjectType subjectType = SubjectType.TV;
        return Intrinsics.c(num, subjectType != null ? Integer.valueOf(subjectType.getValue()) : null);
    }

    public final void setAka(String str) {
        this.aka = str;
    }

    public final void setAppointmentCnt(Long l11) {
        this.appointmentCnt = l11;
    }

    public final void setBuiltIn(boolean z10) {
        this.builtIn = z10;
    }

    public final void setCache(boolean z10) {
        this.isCache = z10;
    }

    public final void setCam(Boolean bool) {
        this.isCam = bool;
    }

    public final void setCategory(String str) {
        this.category = str;
    }

    public final void setCoinPerEp(int i11) {
        this.coinPerEp = i11;
    }

    public final void setContentRating(String str) {
        this.contentRating = str;
    }

    public final void setCorner(String str) {
        this.corner = str;
    }

    public final void setCorrelation(boolean z10) {
        this.correlation = z10;
    }

    public final void setCountryName(String str) {
        this.countryName = str;
    }

    public final void setCover(Cover cover) {
        this.cover = cover;
    }

    public final void setCoverCache(boolean z10) {
        this.coverCache = z10;
    }

    public final void setDeleted(boolean z10) {
        this.deleted = z10;
    }

    public final void setDescription(String str) {
        this.description = str;
    }

    public final void setDownload(SubjectDl subjectDl) {
        this.download = subjectDl;
    }

    public final void setDubs(List<DubsInfo> list) {
        this.dubs = list;
    }

    public final void setDuration(String str) {
        this.duration = str;
    }

    public final void setDurationSeconds(Integer num) {
        this.durationSeconds = num;
    }

    public final void setExplains(List<ExplainBean> list) {
        this.explains = list;
    }

    public final void setGameInfo(SubjectGameInfo subjectGameInfo) {
        this.gameInfo = subjectGameInfo;
    }

    public final void setGenre(String str) {
        this.genre = str;
    }

    public final void setHasResource(Boolean bool) {
        this.hasResource = bool;
    }

    public final void setImdbRate(String str) {
        this.imdbRate = str;
    }

    public final void setLanguage(String str) {
        this.language = str;
    }

    public final void setLikeStatus(Integer num) {
        this.likeStatus = num;
    }

    public final void setLoadCoverDuration(long j11) {
        this.loadCoverDuration = j11;
    }

    public final void setLoadCoverSuccess(boolean z10) {
        this.loadCoverSuccess = z10;
    }

    public final void setMySeeTime(String str) {
        this.mySeeTime = str;
    }

    public final void setNonAdDelegate(BiddingNativeManager biddingNativeManager) {
        this.nonAdDelegate = biddingNativeManager;
    }

    public final void setOps(String str) {
        this.ops = str;
    }

    public final void setPlayUrl(PlayUrl playUrl) {
        this.playUrl = playUrl;
    }

    public final void setPostTitle(String str) {
        this.postTitle = str;
    }

    public final void setRefreshViewOnly(boolean z10) {
        this.isRefreshViewOnly = z10;
    }

    public final void setReleaseDate(String str) {
        this.releaseDate = str;
    }

    public final void setResourceDetectors(List<ResourceDetectors> list) {
        this.resourceDetectors = list;
    }

    public final void setRestrictKid(int i11) {
        this.restrictKid = i11;
    }

    public final void setRestrictLevel(String str) {
        this.restrictLevel = str;
    }

    public final void setSeNum(Integer num) {
        this.seNum = num;
    }

    public final void setSeason(int i11) {
        this.season = i11;
    }

    public final void setSeenStatus(Integer num) {
        this.seenStatus = num;
    }

    public final void setSeries(boolean z10) {
        this.series = z10;
    }

    public final void setShortTVFavInfo(ShortTVFavInfo shortTVFavInfo) {
        this.shortTVFavInfo = shortTVFavInfo;
    }

    public final void setShortTVFirstEp(ShortTVItem shortTVItem) {
        this.shortTVFirstEp = shortTVItem;
    }

    public final void setStaffList(List<? extends Staff> list) {
        this.staffList = list;
    }

    public final void setStills(Cover cover) {
        this.stills = cover;
    }

    public final void setStyle(LayoutStyle layoutStyle) {
        this.style = layoutStyle;
    }

    public final void setSubjectId(String str) {
        this.subjectId = str;
    }

    public final void setSubjectType(Integer num) {
        this.subjectType = num;
    }

    public final void setSubtitles(String str) {
        this.subtitles = str;
    }

    public final void setTag(String str) {
        this.tag = str;
    }

    public final void setTags(List<String> list) {
        this.tags = list;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setTotalEpisode(int i11) {
        this.totalEpisode = i11;
    }

    public final void setTotalSize(long j11) {
        this.totalSize = j11;
    }

    public final void setTrailer(Trailer trailer) {
        this.trailer = trailer;
    }

    public final void setUnlockedEps(List<Integer> list) {
        this.unlockedEps = list;
    }

    public final void setViewers(Long l11) {
        this.viewers = l11;
    }

    public final void setVipInfo(VipInfo vipInfo) {
        this.vipInfo = vipInfo;
    }

    public final void setWantToSeeCount(Long l11) {
        this.wantToSeeCount = l11;
    }
}
