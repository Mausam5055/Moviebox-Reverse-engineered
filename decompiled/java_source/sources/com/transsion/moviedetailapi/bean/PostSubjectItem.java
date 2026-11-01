package com.transsion.moviedetailapi.bean;

import android.text.TextUtils;
import androidx.annotation.Keep;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes.dex */
@Keep
@Metadata(d1 = {"\u0000u\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0003\b\u0098\u0001\b\u0087\b\u0018\u0000 É\u00012\u00020\u0001:\u0002Ê\u0001B\u008b\u0003\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0007\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u001f\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u001f\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010$\u001a\u00020\u0007\u0012\u0010\b\u0002\u0010'\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010%\u0012\b\b\u0002\u0010(\u001a\u00020\u0007\u0012\n\b\u0002\u0010*\u001a\u0004\u0018\u00010)\u0012\b\b\u0002\u0010+\u001a\u00020\u0007\u0012\b\b\u0002\u0010,\u001a\u00020\u0007\u0012\b\b\u0002\u0010-\u001a\u00020\u0007\u0012\b\b\u0002\u0010.\u001a\u00020\u0007\u0012\n\b\u0002\u00100\u001a\u0004\u0018\u00010/¢\u0006\u0004\b1\u00102J\u001a\u00105\u001a\u00020\u00072\b\u00104\u001a\u0004\u0018\u000103H\u0096\u0002¢\u0006\u0004\b5\u00106J\u000f\u00107\u001a\u00020\u0011H\u0016¢\u0006\u0004\b7\u00108J\u0017\u0010:\u001a\u00020\u00022\b\b\u0002\u00109\u001a\u00020\u0007¢\u0006\u0004\b:\u0010;J\u0019\u0010=\u001a\u0004\u0018\u00010\u00112\b\b\u0002\u0010<\u001a\u00020\u0007¢\u0006\u0004\b=\u0010>J\u0012\u0010?\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b?\u0010@J\u0012\u0010A\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\bA\u0010@J\u0012\u0010B\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\bB\u0010CJ\u0012\u0010D\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0004\bD\u0010EJ\u0012\u0010F\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0004\bF\u0010EJ\u0012\u0010G\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0004\bG\u0010HJ\u0012\u0010I\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0004\bI\u0010JJ\u0012\u0010K\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\bK\u0010@J\u0012\u0010L\u001a\u0004\u0018\u00010\u000fHÆ\u0003¢\u0006\u0004\bL\u0010MJ\u0012\u0010N\u001a\u0004\u0018\u00010\u0011HÆ\u0003¢\u0006\u0004\bN\u0010OJ\u0012\u0010P\u001a\u0004\u0018\u00010\u0013HÆ\u0003¢\u0006\u0004\bP\u0010QJ\u0012\u0010R\u001a\u0004\u0018\u00010\u0011HÆ\u0003¢\u0006\u0004\bR\u0010OJ\u0012\u0010S\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\bS\u0010@J\u0012\u0010T\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\bT\u0010@J\u0012\u0010U\u001a\u0004\u0018\u00010\u0018HÆ\u0003¢\u0006\u0004\bU\u0010VJ\u0012\u0010W\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\bW\u0010@J\u0012\u0010X\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\bX\u0010@J\u0012\u0010Y\u001a\u0004\u0018\u00010\u0011HÆ\u0003¢\u0006\u0004\bY\u0010OJ\u0012\u0010Z\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\bZ\u0010@J\u0010\u0010[\u001a\u00020\u0007HÆ\u0003¢\u0006\u0004\b[\u0010\\J\u0012\u0010]\u001a\u0004\u0018\u00010\u001fHÆ\u0003¢\u0006\u0004\b]\u0010^J\u0012\u0010_\u001a\u0004\u0018\u00010\u001fHÆ\u0003¢\u0006\u0004\b_\u0010^J\u0012\u0010`\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b`\u0010@J\u0012\u0010a\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\ba\u0010@J\u0010\u0010b\u001a\u00020\u0007HÆ\u0003¢\u0006\u0004\bb\u0010\\J\u0018\u0010c\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010%HÆ\u0003¢\u0006\u0004\bc\u0010dJ\u0010\u0010e\u001a\u00020\u0007HÆ\u0003¢\u0006\u0004\be\u0010\\J\u0012\u0010f\u001a\u0004\u0018\u00010)HÆ\u0003¢\u0006\u0004\bf\u0010gJ\u0010\u0010h\u001a\u00020\u0007HÆ\u0003¢\u0006\u0004\bh\u0010\\J\u0010\u0010i\u001a\u00020\u0007HÆ\u0003¢\u0006\u0004\bi\u0010\\J\u0010\u0010j\u001a\u00020\u0007HÆ\u0003¢\u0006\u0004\bj\u0010\\J\u0010\u0010k\u001a\u00020\u0007HÆ\u0003¢\u0006\u0004\bk\u0010\\J\u0012\u0010l\u001a\u0004\u0018\u00010/HÆ\u0003¢\u0006\u0004\bl\u0010mJ\u0094\u0003\u0010n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u001e\u001a\u00020\u00072\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010$\u001a\u00020\u00072\u0010\b\u0002\u0010'\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010%2\b\b\u0002\u0010(\u001a\u00020\u00072\n\b\u0002\u0010*\u001a\u0004\u0018\u00010)2\b\b\u0002\u0010+\u001a\u00020\u00072\b\b\u0002\u0010,\u001a\u00020\u00072\b\b\u0002\u0010-\u001a\u00020\u00072\b\b\u0002\u0010.\u001a\u00020\u00072\n\b\u0002\u00100\u001a\u0004\u0018\u00010/HÆ\u0001¢\u0006\u0004\bn\u0010oJ\u0010\u0010p\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\bp\u0010@R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010q\u001a\u0004\br\u0010@\"\u0004\bs\u0010tR$\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010q\u001a\u0004\bu\u0010@\"\u0004\bv\u0010tR$\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010w\u001a\u0004\bx\u0010C\"\u0004\by\u0010zR$\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\b\u0010{\u001a\u0004\b|\u0010E\"\u0004\b}\u0010~R$\u0010\t\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\t\u0010{\u001a\u0004\b\t\u0010E\"\u0004\b\u007f\u0010~R(\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0005\b\u000b\u0010\u0080\u0001\u001a\u0005\b\u0081\u0001\u0010H\"\u0006\b\u0082\u0001\u0010\u0083\u0001R(\u0010\r\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0005\b\r\u0010\u0084\u0001\u001a\u0005\b\u0085\u0001\u0010J\"\u0006\b\u0086\u0001\u0010\u0087\u0001R&\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\b\u000e\u0010q\u001a\u0005\b\u0088\u0001\u0010@\"\u0005\b\u0089\u0001\u0010tR(\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0005\b\u0010\u0010\u008a\u0001\u001a\u0005\b\u008b\u0001\u0010M\"\u0006\b\u008c\u0001\u0010\u008d\u0001R(\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0005\b\u0012\u0010\u008e\u0001\u001a\u0005\b\u008f\u0001\u0010O\"\u0006\b\u0090\u0001\u0010\u0091\u0001R(\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0005\b\u0014\u0010\u0092\u0001\u001a\u0005\b\u0093\u0001\u0010Q\"\u0006\b\u0094\u0001\u0010\u0095\u0001R'\u0010\u0015\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0015\n\u0005\b\u0015\u0010\u008e\u0001\u001a\u0005\b\u0096\u0001\u0010O\"\u0005\b\u007f\u0010\u0091\u0001R&\u0010\u0016\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\b\u0016\u0010q\u001a\u0005\b\u0097\u0001\u0010@\"\u0005\b\u0098\u0001\u0010tR&\u0010\u0017\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\b\u0017\u0010q\u001a\u0005\b\u0099\u0001\u0010@\"\u0005\b\u009a\u0001\u0010tR(\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0005\b\u0019\u0010\u009b\u0001\u001a\u0005\b\u009c\u0001\u0010V\"\u0006\b\u009d\u0001\u0010\u009e\u0001R&\u0010\u001a\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\b\u001a\u0010q\u001a\u0005\b\u009f\u0001\u0010@\"\u0005\b \u0001\u0010tR&\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\b\u001b\u0010q\u001a\u0005\b¡\u0001\u0010@\"\u0005\b¢\u0001\u0010tR(\u0010\u001c\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0005\b\u001c\u0010\u008e\u0001\u001a\u0005\b£\u0001\u0010O\"\u0006\b¤\u0001\u0010\u0091\u0001R&\u0010\u001d\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b\u001d\u0010q\u001a\u0005\b¥\u0001\u0010@\"\u0005\b¦\u0001\u0010tR%\u0010\u001e\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u001e\u0010§\u0001\u001a\u0004\b\u001e\u0010\\\"\u0006\b¨\u0001\u0010©\u0001R(\u0010 \u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b \u0010ª\u0001\u001a\u0005\b«\u0001\u0010^\"\u0006\b¬\u0001\u0010\u00ad\u0001R(\u0010!\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b!\u0010ª\u0001\u001a\u0005\b®\u0001\u0010^\"\u0006\b¯\u0001\u0010\u00ad\u0001R&\u0010\"\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\b\"\u0010q\u001a\u0005\b°\u0001\u0010@\"\u0005\b±\u0001\u0010tR&\u0010#\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b#\u0010q\u001a\u0005\b²\u0001\u0010@\"\u0005\b³\u0001\u0010tR%\u0010$\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b$\u0010§\u0001\u001a\u0004\b$\u0010\\\"\u0006\b´\u0001\u0010©\u0001R.\u0010'\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010%8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b'\u0010µ\u0001\u001a\u0005\b¶\u0001\u0010d\"\u0006\b´\u0001\u0010·\u0001R%\u0010(\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b(\u0010§\u0001\u001a\u0004\b(\u0010\\\"\u0006\b¸\u0001\u0010©\u0001R(\u0010*\u001a\u0004\u0018\u00010)8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b*\u0010¹\u0001\u001a\u0005\bº\u0001\u0010g\"\u0006\b»\u0001\u0010¼\u0001R&\u0010+\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b+\u0010§\u0001\u001a\u0005\b½\u0001\u0010\\\"\u0006\b¾\u0001\u0010©\u0001R%\u0010,\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b,\u0010§\u0001\u001a\u0004\b,\u0010\\\"\u0006\b¿\u0001\u0010©\u0001R%\u0010-\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b-\u0010§\u0001\u001a\u0004\b-\u0010\\\"\u0006\bÀ\u0001\u0010©\u0001R%\u0010.\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b.\u0010§\u0001\u001a\u0004\b.\u0010\\\"\u0006\bÁ\u0001\u0010©\u0001R(\u00100\u001a\u0004\u0018\u00010/8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b0\u0010Â\u0001\u001a\u0005\bÃ\u0001\u0010m\"\u0006\bÄ\u0001\u0010Å\u0001R\u0013\u0010Æ\u0001\u001a\u00020\u00078F¢\u0006\u0007\u001a\u0005\bÆ\u0001\u0010\\R\u0015\u0010È\u0001\u001a\u0004\u0018\u00010\u00028F¢\u0006\u0007\u001a\u0005\bÇ\u0001\u0010@¨\u0006Ë\u0001"}, d2 = {"Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "Ljava/io/Serializable;", "", "content", "createdAt", "Lcom/transsion/moviedetailapi/bean/Group;", "group", "", "hasLike", "isSubjectRate", "Lcom/transsion/moviedetailapi/bean/Link;", "link", "Lcom/transsion/moviedetailapi/bean/Media;", "media", "postId", "Lcom/transsion/moviedetailapi/bean/Stat;", "stat", "", NotificationCompat.CATEGORY_STATUS, "Lcom/transsion/moviedetailapi/bean/Subject;", "subject", "subjectRate", CampaignEx.JSON_KEY_TITLE, "updatedAt", "Lcom/transsion/moviedetailapi/bean/User;", "user", "ops", "itemType", "blur", "tran_ops", "isCache", "", "lon", "lat", "poiName", "distanceStr", "isRoomList", "", "Lcom/transsion/moviedetailapi/bean/RoomItem;", "roomList", "isMore", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "nonAdDelegate", "builtIn", "isRoomCacheListStart", "isRoomCacheListEnd", "isRoomCache", "Lcom/transsion/moviedetailapi/bean/CommentBean;", "hotComment", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Group;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/transsion/moviedetailapi/bean/Link;Lcom/transsion/moviedetailapi/bean/Media;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Stat;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;ZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;ZZZZLcom/transsion/moviedetailapi/bean/CommentBean;)V", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "isThumbnail", "getCoverUrl", "(Z)Ljava/lang/String;", "isHeight", "getCoverHeightWith", "(Z)Ljava/lang/Integer;", "component1", "()Ljava/lang/String;", "component2", "component3", "()Lcom/transsion/moviedetailapi/bean/Group;", "component4", "()Ljava/lang/Boolean;", "component5", "component6", "()Lcom/transsion/moviedetailapi/bean/Link;", "component7", "()Lcom/transsion/moviedetailapi/bean/Media;", "component8", "component9", "()Lcom/transsion/moviedetailapi/bean/Stat;", "component10", "()Ljava/lang/Integer;", "component11", "()Lcom/transsion/moviedetailapi/bean/Subject;", "component12", "component13", "component14", "component15", "()Lcom/transsion/moviedetailapi/bean/User;", "component16", "component17", "component18", "component19", "component20", "()Z", "component21", "()Ljava/lang/Float;", "component22", "component23", "component24", "component25", "component26", "()Ljava/util/List;", "component27", "component28", "()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "component29", "component30", "component31", "component32", "component33", "()Lcom/transsion/moviedetailapi/bean/CommentBean;", "copy", "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Group;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/transsion/moviedetailapi/bean/Link;Lcom/transsion/moviedetailapi/bean/Media;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Stat;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;ZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;ZZZZLcom/transsion/moviedetailapi/bean/CommentBean;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "toString", "Ljava/lang/String;", "getContent", "setContent", "(Ljava/lang/String;)V", "getCreatedAt", "setCreatedAt", "Lcom/transsion/moviedetailapi/bean/Group;", "getGroup", "setGroup", "(Lcom/transsion/moviedetailapi/bean/Group;)V", "Ljava/lang/Boolean;", "getHasLike", "setHasLike", "(Ljava/lang/Boolean;)V", "setSubjectRate", "Lcom/transsion/moviedetailapi/bean/Link;", "getLink", "setLink", "(Lcom/transsion/moviedetailapi/bean/Link;)V", "Lcom/transsion/moviedetailapi/bean/Media;", "getMedia", "setMedia", "(Lcom/transsion/moviedetailapi/bean/Media;)V", "getPostId", "setPostId", "Lcom/transsion/moviedetailapi/bean/Stat;", "getStat", "setStat", "(Lcom/transsion/moviedetailapi/bean/Stat;)V", "Ljava/lang/Integer;", "getStatus", "setStatus", "(Ljava/lang/Integer;)V", "Lcom/transsion/moviedetailapi/bean/Subject;", "getSubject", "setSubject", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "getSubjectRate", "getTitle", "setTitle", "getUpdatedAt", "setUpdatedAt", "Lcom/transsion/moviedetailapi/bean/User;", "getUser", "setUser", "(Lcom/transsion/moviedetailapi/bean/User;)V", "getOps", "setOps", "getItemType", "setItemType", "getBlur", "setBlur", "getTran_ops", "setTran_ops", "Z", "setCache", "(Z)V", "Ljava/lang/Float;", "getLon", "setLon", "(Ljava/lang/Float;)V", "getLat", "setLat", "getPoiName", "setPoiName", "getDistanceStr", "setDistanceStr", "setRoomList", "Ljava/util/List;", "getRoomList", "(Ljava/util/List;)V", "setMore", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "getNonAdDelegate", "setNonAdDelegate", "(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V", "getBuiltIn", "setBuiltIn", "setRoomCacheListStart", "setRoomCacheListEnd", "setRoomCache", "Lcom/transsion/moviedetailapi/bean/CommentBean;", "getHotComment", "setHotComment", "(Lcom/transsion/moviedetailapi/bean/CommentBean;)V", "isVideo", "getRec_ops", "rec_ops", "Companion", "a", "MovieDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PostSubjectItem implements Serializable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @SerializedName("blur")
    private Integer blur;
    private boolean builtIn;

    @SerializedName("content")
    private String content;

    @SerializedName("createdAt")
    private String createdAt;
    private transient String distanceStr;

    @SerializedName("group")
    private Group group;

    @SerializedName("hasLike")
    private Boolean hasLike;
    private CommentBean hotComment;
    private boolean isCache;
    private transient boolean isMore;
    private boolean isRoomCache;
    private boolean isRoomCacheListEnd;
    private boolean isRoomCacheListStart;
    private transient boolean isRoomList;

    @SerializedName("isSubjectRate")
    private Boolean isSubjectRate;

    @SerializedName("itemType")
    private String itemType;
    private Float lat;

    @SerializedName("link")
    private Link link;
    private Float lon;

    @SerializedName("media")
    private Media media;
    private transient BiddingNativeManager nonAdDelegate;

    @SerializedName("ops")
    private String ops;

    @SerializedName("poiName")
    private String poiName;

    @SerializedName("postId")
    private String postId;
    private transient List<RoomItem> roomList;

    @SerializedName("stat")
    private Stat stat;

    @SerializedName(NotificationCompat.CATEGORY_STATUS)
    private Integer status;

    @SerializedName("subject")
    private Subject subject;

    @SerializedName("subjectRate")
    private Integer subjectRate;

    @SerializedName(CampaignEx.JSON_KEY_TITLE)
    private String title;
    private String tran_ops;

    @SerializedName("updatedAt")
    private String updatedAt;

    @SerializedName("user")
    private User user;

    /* JADX INFO: renamed from: com.transsion.moviedetailapi.bean.PostSubjectItem$a, reason: from kotlin metadata */
    /* JADX INFO: loaded from: classes6.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final PostSubjectItem a(PostSubjectItem data) {
            Intrinsics.h(data, "data");
            return new PostSubjectItem(data.getContent(), data.getCreatedAt(), data.getGroup(), data.getHasLike(), data.isSubjectRate(), data.getLink(), data.getMedia(), data.getPostId(), data.getStat(), data.getStatus(), data.getSubject(), data.getSubjectRate(), data.getTitle(), data.getUpdatedAt(), data.getUser(), data.getOps(), data.getItemType(), data.getBlur(), data.getTran_ops(), data.isCache(), null, null, null, null, false, null, false, null, data.getBuiltIn(), false, false, false, data.getHotComment(), -269484032, 0, null);
        }
    }

    public PostSubjectItem() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, null, false, null, false, null, false, false, false, false, null, -1, 1, null);
    }

    public PostSubjectItem(String str, String str2, Group group, Boolean bool, Boolean bool2, Link link, Media media, String str3, Stat stat, Integer num, Subject subject, Integer num2, String str4, String str5, User user, String str6, String str7, Integer num3, String str8, boolean z10, Float f11, Float f12, String str9, String str10, boolean z11, List<RoomItem> list, boolean z12, BiddingNativeManager biddingNativeManager, boolean z13, boolean z14, boolean z15, boolean z16, CommentBean commentBean) {
        this.content = str;
        this.createdAt = str2;
        this.group = group;
        this.hasLike = bool;
        this.isSubjectRate = bool2;
        this.link = link;
        this.media = media;
        this.postId = str3;
        this.stat = stat;
        this.status = num;
        this.subject = subject;
        this.subjectRate = num2;
        this.title = str4;
        this.updatedAt = str5;
        this.user = user;
        this.ops = str6;
        this.itemType = str7;
        this.blur = num3;
        this.tran_ops = str8;
        this.isCache = z10;
        this.lon = f11;
        this.lat = f12;
        this.poiName = str9;
        this.distanceStr = str10;
        this.isRoomList = z11;
        this.roomList = list;
        this.isMore = z12;
        this.nonAdDelegate = biddingNativeManager;
        this.builtIn = z13;
        this.isRoomCacheListStart = z14;
        this.isRoomCacheListEnd = z15;
        this.isRoomCache = z16;
        this.hotComment = commentBean;
    }

    public /* synthetic */ PostSubjectItem(String str, String str2, Group group, Boolean bool, Boolean bool2, Link link, Media media, String str3, Stat stat, Integer num, Subject subject, Integer num2, String str4, String str5, User user, String str6, String str7, Integer num3, String str8, boolean z10, Float f11, Float f12, String str9, String str10, boolean z11, List list, boolean z12, BiddingNativeManager biddingNativeManager, boolean z13, boolean z14, boolean z15, boolean z16, CommentBean commentBean, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : group, (i11 & 8) != 0 ? null : bool, (i11 & 16) != 0 ? null : bool2, (i11 & 32) != 0 ? null : link, (i11 & 64) != 0 ? null : media, (i11 & 128) != 0 ? null : str3, (i11 & 256) != 0 ? null : stat, (i11 & 512) != 0 ? null : num, (i11 & 1024) != 0 ? null : subject, (i11 & 2048) != 0 ? null : num2, (i11 & 4096) != 0 ? null : str4, (i11 & 8192) != 0 ? null : str5, (i11 & 16384) != 0 ? null : user, (i11 & 32768) != 0 ? null : str6, (i11 & 65536) != 0 ? null : str7, (i11 & 131072) != 0 ? null : num3, (i11 & 262144) != 0 ? null : str8, (i11 & 524288) != 0 ? false : z10, (i11 & 1048576) != 0 ? null : f11, (i11 & 2097152) != 0 ? null : f12, (i11 & 4194304) != 0 ? null : str9, (i11 & 8388608) != 0 ? null : str10, (i11 & 16777216) != 0 ? false : z11, (i11 & ASTNode.PCTX_STORED) != 0 ? null : list, (i11 & 67108864) != 0 ? false : z12, (i11 & ASTNode.NOJIT) != 0 ? null : biddingNativeManager, (i11 & ASTNode.DEOP) != 0 ? false : z13, (i11 & ASTNode.DISCARD) != 0 ? false : z14, (i11 & 1073741824) != 0 ? false : z15, (i11 & Integer.MIN_VALUE) == 0 ? z16 : false, (i12 & 1) != 0 ? null : commentBean);
    }

    public static /* synthetic */ Integer getCoverHeightWith$default(PostSubjectItem postSubjectItem, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = true;
        }
        return postSubjectItem.getCoverHeightWith(z10);
    }

    public static /* synthetic */ String getCoverUrl$default(PostSubjectItem postSubjectItem, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        return postSubjectItem.getCoverUrl(z10);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getContent() {
        return this.content;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final Integer getStatus() {
        return this.status;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final Subject getSubject() {
        return this.subject;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final Integer getSubjectRate() {
        return this.subjectRate;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getUpdatedAt() {
        return this.updatedAt;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final User getUser() {
        return this.user;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final String getOps() {
        return this.ops;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final String getItemType() {
        return this.itemType;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final Integer getBlur() {
        return this.blur;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final String getTran_ops() {
        return this.tran_ops;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCreatedAt() {
        return this.createdAt;
    }

    /* JADX INFO: renamed from: component20, reason: from getter */
    public final boolean getIsCache() {
        return this.isCache;
    }

    /* JADX INFO: renamed from: component21, reason: from getter */
    public final Float getLon() {
        return this.lon;
    }

    /* JADX INFO: renamed from: component22, reason: from getter */
    public final Float getLat() {
        return this.lat;
    }

    /* JADX INFO: renamed from: component23, reason: from getter */
    public final String getPoiName() {
        return this.poiName;
    }

    /* JADX INFO: renamed from: component24, reason: from getter */
    public final String getDistanceStr() {
        return this.distanceStr;
    }

    /* JADX INFO: renamed from: component25, reason: from getter */
    public final boolean getIsRoomList() {
        return this.isRoomList;
    }

    public final List<RoomItem> component26() {
        return this.roomList;
    }

    /* JADX INFO: renamed from: component27, reason: from getter */
    public final boolean getIsMore() {
        return this.isMore;
    }

    /* JADX INFO: renamed from: component28, reason: from getter */
    public final BiddingNativeManager getNonAdDelegate() {
        return this.nonAdDelegate;
    }

    /* JADX INFO: renamed from: component29, reason: from getter */
    public final boolean getBuiltIn() {
        return this.builtIn;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Group getGroup() {
        return this.group;
    }

    /* JADX INFO: renamed from: component30, reason: from getter */
    public final boolean getIsRoomCacheListStart() {
        return this.isRoomCacheListStart;
    }

    /* JADX INFO: renamed from: component31, reason: from getter */
    public final boolean getIsRoomCacheListEnd() {
        return this.isRoomCacheListEnd;
    }

    /* JADX INFO: renamed from: component32, reason: from getter */
    public final boolean getIsRoomCache() {
        return this.isRoomCache;
    }

    /* JADX INFO: renamed from: component33, reason: from getter */
    public final CommentBean getHotComment() {
        return this.hotComment;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Boolean getHasLike() {
        return this.hasLike;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Boolean getIsSubjectRate() {
        return this.isSubjectRate;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Link getLink() {
        return this.link;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Media getMedia() {
        return this.media;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getPostId() {
        return this.postId;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Stat getStat() {
        return this.stat;
    }

    public final PostSubjectItem copy(String content, String createdAt, Group group, Boolean hasLike, Boolean isSubjectRate, Link link, Media media, String postId, Stat stat, Integer status, Subject subject, Integer subjectRate, String title, String updatedAt, User user, String ops, String itemType, Integer blur, String tran_ops, boolean isCache, Float lon, Float lat, String poiName, String distanceStr, boolean isRoomList, List<RoomItem> roomList, boolean isMore, BiddingNativeManager nonAdDelegate, boolean builtIn, boolean isRoomCacheListStart, boolean isRoomCacheListEnd, boolean isRoomCache, CommentBean hotComment) {
        return new PostSubjectItem(content, createdAt, group, hasLike, isSubjectRate, link, media, postId, stat, status, subject, subjectRate, title, updatedAt, user, ops, itemType, blur, tran_ops, isCache, lon, lat, poiName, distanceStr, isRoomList, roomList, isMore, nonAdDelegate, builtIn, isRoomCacheListStart, isRoomCacheListEnd, isRoomCache, hotComment);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!Intrinsics.c(PostSubjectItem.class, other != null ? other.getClass() : null)) {
            return false;
        }
        Intrinsics.f(other, "null cannot be cast to non-null type com.transsion.moviedetailapi.bean.PostSubjectItem");
        PostSubjectItem postSubjectItem = (PostSubjectItem) other;
        if (!TextUtils.equals(this.postId, postSubjectItem.postId)) {
            return false;
        }
        Subject subject = this.subject;
        String subjectId = subject != null ? subject.getSubjectId() : null;
        Subject subject2 = postSubjectItem.subject;
        if (!TextUtils.equals(subjectId, subject2 != null ? subject2.getSubjectId() : null)) {
            return false;
        }
        Group group = this.group;
        String groupId = group != null ? group.getGroupId() : null;
        Group group2 = postSubjectItem.group;
        return TextUtils.equals(groupId, group2 != null ? group2.getGroupId() : null);
    }

    public final Integer getBlur() {
        return this.blur;
    }

    public final boolean getBuiltIn() {
        return this.builtIn;
    }

    public final String getContent() {
        return this.content;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0064  */
    /* JADX WARN: Code duplicated, block: B:30:0x006b  */
    /* JADX WARN: Code duplicated, block: B:31:0x0070  */
    /* JADX WARN: Code duplicated, block: B:34:0x0077  */
    /* JADX WARN: Code duplicated, block: B:35:0x007c  */
    /* JADX WARN: Code duplicated, block: B:41:0x0089  */
    /* JADX WARN: Code duplicated, block: B:43:0x008d  */
    /* JADX WARN: Code duplicated, block: B:46:0x0098  */
    /* JADX WARN: Code duplicated, block: B:49:0x009d  */
    public final Integer getCoverHeightWith(boolean isHeight) {
        Integer num;
        Integer width;
        Cover cover;
        Integer width2;
        Integer height;
        Cover cover2;
        Integer width3;
        Subject subject;
        Integer height2;
        Subject subject2;
        Cover cover3;
        Cover cover4;
        List<Image> image;
        Integer height3 = 0;
        Media media = this.media;
        if (media != null) {
            String mediaType = media.getMediaType();
            if (mediaType == null) {
                mediaType = "IMAGE";
            }
            int iHashCode = mediaType.hashCode();
            if (iHashCode != 62628790) {
                if (iHashCode != 69775675) {
                    if (iHashCode == 81665115 && mediaType.equals("VIDEO")) {
                        cover = media.getCover();
                        width2 = null;
                        if (cover != null) {
                            height = cover.getHeight();
                        } else {
                            height = null;
                        }
                        cover2 = media.getCover();
                        if (cover2 != null) {
                            width3 = cover2.getWidth();
                        } else {
                            width3 = null;
                        }
                        if (height != null || height.intValue() == 0) {
                            subject = this.subject;
                            if (subject != null || (cover4 = subject.getCover()) == null) {
                                height2 = null;
                            } else {
                                height2 = cover4.getHeight();
                            }
                            subject2 = this.subject;
                            if (subject2 != null && (cover3 = subject2.getCover()) != null) {
                                width2 = cover3.getWidth();
                            }
                            Integer num2 = width2;
                            height3 = height2;
                            width = num2;
                        } else {
                            height3 = height;
                            width = width3;
                        }
                    }
                } else if (mediaType.equals("IMAGE") && (image = media.getImage()) != null && !image.isEmpty()) {
                    height3 = image.get(0).getHeight();
                    width = image.get(0).getWidth();
                }
                width = height3;
            } else if (mediaType.equals("AUDIO")) {
                cover = media.getCover();
                width2 = null;
                if (cover != null) {
                    height = cover.getHeight();
                } else {
                    height = null;
                }
                cover2 = media.getCover();
                if (cover2 != null) {
                    width3 = cover2.getWidth();
                } else {
                    width3 = null;
                }
                if (height != null) {
                    subject = this.subject;
                    if (subject != null) {
                        height2 = null;
                    } else {
                        height2 = null;
                    }
                    subject2 = this.subject;
                    if (subject2 != null) {
                        width2 = cover3.getWidth();
                    }
                    Integer num3 = width2;
                    height3 = height2;
                    width = num3;
                } else {
                    subject = this.subject;
                    if (subject != null) {
                        height2 = null;
                    } else {
                        height2 = null;
                    }
                    subject2 = this.subject;
                    if (subject2 != null) {
                        width2 = cover3.getWidth();
                    }
                    Integer num4 = width2;
                    height3 = height2;
                    width = num4;
                }
            } else {
                width = height3;
            }
            Integer num5 = height3;
            height3 = width;
            num = num5;
        } else {
            num = height3;
        }
        return isHeight ? num : height3;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0087  */
    /* JADX WARN: Code duplicated, block: B:36:0x008d  */
    /* JADX WARN: Code duplicated, block: B:37:0x0092  */
    /* JADX WARN: Code duplicated, block: B:40:0x0099  */
    /* JADX WARN: Code duplicated, block: B:41:0x009e  */
    /* JADX WARN: Code duplicated, block: B:44:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:49:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:56:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:57:0x00c9  */
    public final String getCoverUrl(boolean isThumbnail) {
        String thumbnail;
        String thumbnail2;
        Cover cover;
        String url;
        Cover cover2;
        Subject subject;
        String url2;
        Subject subject2;
        Cover cover3;
        Cover cover4;
        List<Image> image;
        Media media = this.media;
        if (media == null) {
            thumbnail = "";
            thumbnail2 = thumbnail;
        } else {
            String mediaType = media.getMediaType();
            if (mediaType == null) {
                mediaType = "IMAGE";
            }
            int iHashCode = mediaType.hashCode();
            thumbnail2 = null;
            if (iHashCode != 62628790) {
                if (iHashCode != 69775675) {
                    if (iHashCode == 81665115 && mediaType.equals("VIDEO")) {
                        cover = media.getCover();
                        if (cover != null) {
                            url = cover.getUrl();
                        } else {
                            url = null;
                        }
                        cover2 = media.getCover();
                        if (cover2 != null) {
                            thumbnail = cover2.getThumbnail();
                        } else {
                            thumbnail = null;
                        }
                        if (TextUtils.isEmpty(url)) {
                            subject = this.subject;
                            if (subject != null || (cover4 = subject.getCover()) == null) {
                                url2 = null;
                            } else {
                                url2 = cover4.getUrl();
                            }
                            subject2 = this.subject;
                            if (subject2 != null && (cover3 = subject2.getCover()) != null) {
                                thumbnail2 = cover3.getThumbnail();
                            }
                            String str = thumbnail2;
                            thumbnail2 = url2;
                            thumbnail = str;
                        } else {
                            thumbnail2 = url;
                        }
                    }
                } else if (mediaType.equals("IMAGE") && (image = media.getImage()) != null && !image.isEmpty()) {
                    if (TextUtils.equals(image.get(0).getFormat(), "gif")) {
                        GifBean gifBean = image.get(0).getGifBean();
                        thumbnail2 = gifBean != null ? gifBean.getFirstFrameUrl() : null;
                        thumbnail = "";
                    } else {
                        thumbnail2 = image.get(0).getUrl();
                        thumbnail = image.get(0).getThumbnail();
                    }
                }
                thumbnail = "";
                thumbnail2 = thumbnail;
            } else if (mediaType.equals("AUDIO")) {
                cover = media.getCover();
                if (cover != null) {
                    url = cover.getUrl();
                } else {
                    url = null;
                }
                cover2 = media.getCover();
                if (cover2 != null) {
                    thumbnail = cover2.getThumbnail();
                } else {
                    thumbnail = null;
                }
                if (TextUtils.isEmpty(url)) {
                    subject = this.subject;
                    if (subject != null) {
                        url2 = null;
                    } else {
                        url2 = null;
                    }
                    subject2 = this.subject;
                    if (subject2 != null) {
                        thumbnail2 = cover3.getThumbnail();
                    }
                    String str2 = thumbnail2;
                    thumbnail2 = url2;
                    thumbnail = str2;
                } else {
                    thumbnail2 = url;
                }
            } else {
                thumbnail = "";
                thumbnail2 = thumbnail;
            }
        }
        if (isThumbnail) {
            return thumbnail == null ? "" : thumbnail;
        }
        return thumbnail2 == null ? "" : thumbnail2;
    }

    public final String getCreatedAt() {
        return this.createdAt;
    }

    public final String getDistanceStr() {
        return this.distanceStr;
    }

    public final Group getGroup() {
        return this.group;
    }

    public final Boolean getHasLike() {
        return this.hasLike;
    }

    public final CommentBean getHotComment() {
        return this.hotComment;
    }

    public final String getItemType() {
        return this.itemType;
    }

    public final Float getLat() {
        return this.lat;
    }

    public final Link getLink() {
        return this.link;
    }

    public final Float getLon() {
        return this.lon;
    }

    public final Media getMedia() {
        return this.media;
    }

    public final BiddingNativeManager getNonAdDelegate() {
        return this.nonAdDelegate;
    }

    public final String getOps() {
        return this.ops;
    }

    public final String getPoiName() {
        return this.poiName;
    }

    public final String getPostId() {
        return this.postId;
    }

    public final String getRec_ops() {
        return TextUtils.isEmpty(this.ops) ? this.tran_ops : this.ops;
    }

    public final List<RoomItem> getRoomList() {
        return this.roomList;
    }

    public final Stat getStat() {
        return this.stat;
    }

    public final Integer getStatus() {
        return this.status;
    }

    public final Subject getSubject() {
        return this.subject;
    }

    public final Integer getSubjectRate() {
        return this.subjectRate;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getTran_ops() {
        return this.tran_ops;
    }

    public final String getUpdatedAt() {
        return this.updatedAt;
    }

    public final User getUser() {
        return this.user;
    }

    public int hashCode() {
        String str = this.postId;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public final boolean isCache() {
        return this.isCache;
    }

    public final boolean isMore() {
        return this.isMore;
    }

    public final boolean isRoomCache() {
        return this.isRoomCache;
    }

    public final boolean isRoomCacheListEnd() {
        return this.isRoomCacheListEnd;
    }

    public final boolean isRoomCacheListStart() {
        return this.isRoomCacheListStart;
    }

    public final boolean isRoomList() {
        return this.isRoomList;
    }

    public final Boolean isSubjectRate() {
        return this.isSubjectRate;
    }

    public final boolean isVideo() {
        Media media = this.media;
        return Intrinsics.c(media != null ? media.getMediaType() : null, MediaType.VIDEO.getValue());
    }

    public final void setBlur(Integer num) {
        this.blur = num;
    }

    public final void setBuiltIn(boolean z10) {
        this.builtIn = z10;
    }

    public final void setCache(boolean z10) {
        this.isCache = z10;
    }

    public final void setContent(String str) {
        this.content = str;
    }

    public final void setCreatedAt(String str) {
        this.createdAt = str;
    }

    public final void setDistanceStr(String str) {
        this.distanceStr = str;
    }

    public final void setGroup(Group group) {
        this.group = group;
    }

    public final void setHasLike(Boolean bool) {
        this.hasLike = bool;
    }

    public final void setHotComment(CommentBean commentBean) {
        this.hotComment = commentBean;
    }

    public final void setItemType(String str) {
        this.itemType = str;
    }

    public final void setLat(Float f11) {
        this.lat = f11;
    }

    public final void setLink(Link link) {
        this.link = link;
    }

    public final void setLon(Float f11) {
        this.lon = f11;
    }

    public final void setMedia(Media media) {
        this.media = media;
    }

    public final void setMore(boolean z10) {
        this.isMore = z10;
    }

    public final void setNonAdDelegate(BiddingNativeManager biddingNativeManager) {
        this.nonAdDelegate = biddingNativeManager;
    }

    public final void setOps(String str) {
        this.ops = str;
    }

    public final void setPoiName(String str) {
        this.poiName = str;
    }

    public final void setPostId(String str) {
        this.postId = str;
    }

    public final void setRoomCache(boolean z10) {
        this.isRoomCache = z10;
    }

    public final void setRoomCacheListEnd(boolean z10) {
        this.isRoomCacheListEnd = z10;
    }

    public final void setRoomCacheListStart(boolean z10) {
        this.isRoomCacheListStart = z10;
    }

    public final void setRoomList(List<RoomItem> list) {
        this.roomList = list;
    }

    public final void setRoomList(boolean z10) {
        this.isRoomList = z10;
    }

    public final void setStat(Stat stat) {
        this.stat = stat;
    }

    public final void setStatus(Integer num) {
        this.status = num;
    }

    public final void setSubject(Subject subject) {
        this.subject = subject;
    }

    public final void setSubjectRate(Boolean bool) {
        this.isSubjectRate = bool;
    }

    public final void setSubjectRate(Integer num) {
        this.subjectRate = num;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setTran_ops(String str) {
        this.tran_ops = str;
    }

    public final void setUpdatedAt(String str) {
        this.updatedAt = str;
    }

    public final void setUser(User user) {
        this.user = user;
    }

    public String toString() {
        return "PostSubjectItem(content=" + this.content + ", createdAt=" + this.createdAt + ", group=" + this.group + ", hasLike=" + this.hasLike + ", isSubjectRate=" + this.isSubjectRate + ", link=" + this.link + ", media=" + this.media + ", postId=" + this.postId + ", stat=" + this.stat + ", status=" + this.status + ", subject=" + this.subject + ", subjectRate=" + this.subjectRate + ", title=" + this.title + ", updatedAt=" + this.updatedAt + ", user=" + this.user + ", ops=" + this.ops + ", itemType=" + this.itemType + ", blur=" + this.blur + ", tran_ops=" + this.tran_ops + ", isCache=" + this.isCache + ", lon=" + this.lon + ", lat=" + this.lat + ", poiName=" + this.poiName + ", distanceStr=" + this.distanceStr + ", isRoomList=" + this.isRoomList + ", roomList=" + this.roomList + ", isMore=" + this.isMore + ", nonAdDelegate=" + this.nonAdDelegate + ", builtIn=" + this.builtIn + ", isRoomCacheListStart=" + this.isRoomCacheListStart + ", isRoomCacheListEnd=" + this.isRoomCacheListEnd + ", isRoomCache=" + this.isRoomCache + ", hotComment=" + this.hotComment + ")";
    }
}
