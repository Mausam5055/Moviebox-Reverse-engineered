package com.transsion.shorttv_pugc.bean;

import android.text.TextUtils;
import androidx.annotation.Keep;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.gson.annotations.SerializedName;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.mvel2.ast.ASTNode;
import ot.a;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000\u007f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0003\bª\u0001\b\u0017\u0018\u00002\u00020\u00012\u00020\u0002B\u0099\u0005\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0019\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001b\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u001e\u0012\u0010\b\u0002\u0010\"\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010 \u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010$\u0012\b\b\u0002\u0010&\u001a\u00020\u001b\u0012\b\b\u0002\u0010'\u001a\u00020\u001b\u0012\n\b\u0002\u0010)\u001a\u0004\u0018\u00010(\u0012\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u0019\u0012\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010.\u001a\u00020\u001b\u0012\b\b\u0002\u0010/\u001a\u00020\u001b\u0012\n\b\u0002\u00101\u001a\u0004\u0018\u000100\u0012\n\b\u0002\u00103\u001a\u0004\u0018\u000102\u0012\b\b\u0002\u00104\u001a\u00020\u0005\u0012\b\b\u0002\u00105\u001a\u00020\u001b\u0012\b\b\u0002\u00106\u001a\u00020\u001b\u0012\b\b\u0002\u00107\u001a\u00020\u0019\u0012\n\b\u0002\u00108\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010:\u001a\n\u0012\u0004\u0012\u000209\u0018\u00010\u0010\u0012\b\b\u0002\u0010;\u001a\u00020\u0019\u0012\u0010\b\u0002\u0010<\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010 \u0012\b\b\u0002\u0010=\u001a\u00020\u0005\u0012\b\b\u0002\u0010>\u001a\u00020\u001b\u0012\n\b\u0002\u0010?\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010@\u001a\u00020\u0005\u0012\n\b\u0002\u0010A\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010C\u001a\n\u0012\u0004\u0012\u00020B\u0018\u00010 \u0012\n\b\u0002\u0010D\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010E\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010F\u001a\u0004\u0018\u00010\u0019\u0012\b\b\u0002\u0010G\u001a\u00020\u001b\u0012\n\b\u0002\u0010H\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\bI\u0010JJ\r\u0010K\u001a\u00020\u001b¢\u0006\u0004\bK\u0010LJ\r\u0010M\u001a\u00020\u001b¢\u0006\u0004\bM\u0010LJ\r\u0010N\u001a\u00020\u0000¢\u0006\u0004\bN\u0010OR$\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010P\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010TR$\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010U\u001a\u0004\bV\u0010W\"\u0004\bX\u0010YR$\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010P\u001a\u0004\bZ\u0010R\"\u0004\b[\u0010TR$\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\b\u0010P\u001a\u0004\b\\\u0010R\"\u0004\b]\u0010TR$\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\n\u0010^\u001a\u0004\b_\u0010`\"\u0004\ba\u0010bR$\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010P\u001a\u0004\bc\u0010R\"\u0004\bd\u0010TR$\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\f\u0010P\u001a\u0004\be\u0010R\"\u0004\bf\u0010TR$\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\r\u0010P\u001a\u0004\bg\u0010R\"\u0004\bh\u0010TR$\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010U\u001a\u0004\bi\u0010W\"\u0004\bj\u0010YR$\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010P\u001a\u0004\bk\u0010R\"\u0004\bl\u0010TR*\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010m\u001a\u0004\bn\u0010o\"\u0004\bp\u0010qR$\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010P\u001a\u0004\br\u0010R\"\u0004\bs\u0010TR$\u0010\u0013\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010P\u001a\u0004\bt\u0010R\"\u0004\bu\u0010TR$\u0010\u0014\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010P\u001a\u0004\bv\u0010R\"\u0004\bw\u0010TR$\u0010\u0015\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010P\u001a\u0004\bx\u0010R\"\u0004\by\u0010TR$\u0010\u0016\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010U\u001a\u0004\bz\u0010W\"\u0004\b{\u0010YR*\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010m\u001a\u0004\b|\u0010o\"\u0004\b}\u0010qR'\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0015\n\u0004\b\u001a\u0010~\u001a\u0005\b\u007f\u0010\u0080\u0001\"\u0006\b\u0081\u0001\u0010\u0082\u0001R)\u0010\u001c\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0005\b\u001c\u0010\u0083\u0001\u001a\u0006\b\u0084\u0001\u0010\u0085\u0001\"\u0006\b\u0086\u0001\u0010\u0087\u0001R&\u0010\u001d\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\b\u001d\u0010P\u001a\u0005\b\u0088\u0001\u0010R\"\u0005\b\u0089\u0001\u0010TR1\u0010\u001f\u001a\u0004\u0018\u00010\u001e8\u0006@\u0006X\u0087\u000e¢\u0006\u001f\n\u0005\b\u001f\u0010\u008a\u0001\u0012\u0006\b\u008f\u0001\u0010\u0090\u0001\u001a\u0006\b\u008b\u0001\u0010\u008c\u0001\"\u0006\b\u008d\u0001\u0010\u008e\u0001R4\u0010\"\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010 8\u0006@\u0006X\u0087\u000e¢\u0006\u001c\n\u0004\b\"\u0010m\u0012\u0006\b\u0093\u0001\u0010\u0090\u0001\u001a\u0005\b\u0091\u0001\u0010o\"\u0005\b\u0092\u0001\u0010qR&\u0010#\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\b#\u0010^\u001a\u0005\b\u0094\u0001\u0010`\"\u0005\b\u0095\u0001\u0010bR)\u0010%\u001a\u0004\u0018\u00010$8\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0005\b%\u0010\u0096\u0001\u001a\u0006\b\u0097\u0001\u0010\u0098\u0001\"\u0006\b\u0099\u0001\u0010\u009a\u0001R&\u0010&\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b&\u0010\u009b\u0001\u001a\u0005\b\u009c\u0001\u0010L\"\u0006\b\u009d\u0001\u0010\u009e\u0001R&\u0010'\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b'\u0010\u009b\u0001\u001a\u0005\b\u009f\u0001\u0010L\"\u0006\b \u0001\u0010\u009e\u0001R)\u0010)\u001a\u0004\u0018\u00010(8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b)\u0010¡\u0001\u001a\u0006\b¢\u0001\u0010£\u0001\"\u0006\b¤\u0001\u0010¥\u0001R&\u0010*\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\b*\u0010P\u001a\u0005\b¦\u0001\u0010R\"\u0005\b§\u0001\u0010TR(\u0010+\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0004\b+\u0010~\u001a\u0006\b¨\u0001\u0010\u0080\u0001\"\u0006\b©\u0001\u0010\u0082\u0001R&\u0010,\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\b,\u0010P\u001a\u0005\bª\u0001\u0010R\"\u0005\b«\u0001\u0010TR&\u0010-\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\b-\u0010P\u001a\u0005\b¬\u0001\u0010R\"\u0005\b\u00ad\u0001\u0010TR&\u0010.\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b.\u0010\u009b\u0001\u001a\u0005\b®\u0001\u0010L\"\u0006\b¯\u0001\u0010\u009e\u0001R%\u0010/\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b/\u0010\u009b\u0001\u001a\u0004\b/\u0010L\"\u0006\b°\u0001\u0010\u009e\u0001R)\u00101\u001a\u0004\u0018\u0001008\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0005\b1\u0010±\u0001\u001a\u0006\b²\u0001\u0010³\u0001\"\u0006\b´\u0001\u0010µ\u0001R)\u00103\u001a\u0004\u0018\u0001028\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0005\b3\u0010¶\u0001\u001a\u0006\b·\u0001\u0010¸\u0001\"\u0006\b¹\u0001\u0010º\u0001R'\u00104\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0005\b4\u0010»\u0001\u001a\u0006\b¼\u0001\u0010½\u0001\"\u0006\b¾\u0001\u0010¿\u0001R&\u00105\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b5\u0010\u009b\u0001\u001a\u0005\bÀ\u0001\u0010L\"\u0006\bÁ\u0001\u0010\u009e\u0001R&\u00106\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b6\u0010\u009b\u0001\u001a\u0005\bÂ\u0001\u0010L\"\u0006\bÃ\u0001\u0010\u009e\u0001R'\u00107\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b7\u0010Ä\u0001\u001a\u0006\bÅ\u0001\u0010Æ\u0001\"\u0006\bÇ\u0001\u0010È\u0001R&\u00108\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b8\u0010P\u001a\u0005\bÉ\u0001\u0010R\"\u0005\bÊ\u0001\u0010TR,\u0010:\u001a\n\u0012\u0004\u0012\u000209\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b:\u0010m\u001a\u0005\bË\u0001\u0010o\"\u0005\bÌ\u0001\u0010qR'\u0010;\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b;\u0010Ä\u0001\u001a\u0006\bÍ\u0001\u0010Æ\u0001\"\u0006\bÎ\u0001\u0010È\u0001R,\u0010<\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010 8\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b<\u0010m\u001a\u0005\bÏ\u0001\u0010o\"\u0005\bÐ\u0001\u0010qR'\u0010=\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b=\u0010»\u0001\u001a\u0006\bÑ\u0001\u0010½\u0001\"\u0006\bÒ\u0001\u0010¿\u0001R&\u0010>\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b>\u0010\u009b\u0001\u001a\u0005\bÓ\u0001\u0010L\"\u0006\bÔ\u0001\u0010\u009e\u0001R&\u0010?\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b?\u0010U\u001a\u0005\bÕ\u0001\u0010W\"\u0005\bÖ\u0001\u0010YR'\u0010@\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b@\u0010»\u0001\u001a\u0006\b×\u0001\u0010½\u0001\"\u0006\bØ\u0001\u0010¿\u0001R&\u0010A\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\bA\u0010P\u001a\u0005\bÙ\u0001\u0010R\"\u0005\bÚ\u0001\u0010TR,\u0010C\u001a\n\u0012\u0004\u0012\u00020B\u0018\u00010 8\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\bC\u0010m\u001a\u0005\bÛ\u0001\u0010o\"\u0005\bÜ\u0001\u0010qR&\u0010D\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\bD\u0010P\u001a\u0005\bÝ\u0001\u0010R\"\u0005\bÞ\u0001\u0010TR&\u0010E\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\bE\u0010P\u001a\u0005\bß\u0001\u0010R\"\u0005\bà\u0001\u0010TR(\u0010F\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0004\bF\u0010~\u001a\u0006\bá\u0001\u0010\u0080\u0001\"\u0006\bâ\u0001\u0010\u0082\u0001R&\u0010G\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\bG\u0010\u009b\u0001\u001a\u0005\bã\u0001\u0010L\"\u0006\bä\u0001\u0010\u009e\u0001R&\u0010H\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0004\bH\u0010U\u001a\u0005\bå\u0001\u0010W\"\u0005\bæ\u0001\u0010YR\u0016\u0010é\u0001\u001a\u0004\u0018\u00010!8F¢\u0006\b\u001a\u0006\bç\u0001\u0010è\u0001R\u0014\u0010ë\u0001\u001a\u00020\u00198F¢\u0006\b\u001a\u0006\bê\u0001\u0010Æ\u0001¨\u0006ì\u0001"}, d2 = {"Lcom/transsion/shorttv_pugc/bean/Subject;", "Lot/a;", "Ljava/io/Serializable;", "", "subjectId", "", "subjectType", CampaignEx.JSON_KEY_TITLE, "countryName", "Lcom/transsion/shorttv_pugc/bean/Cover;", "cover", "releaseDate", TrackingKey.DESCRIPTION, "duration", "durationSeconds", "genre", "", "tags", "tag", "imdbRate", TmcConstants.KEY_LANGUAGE, "mySeeTime", "seenStatus", "Lcom/transsion/shorttv_pugc/bean/Staff;", "staffList", "", "wantToSeeCount", "", "hasResource", "ops", "Lcom/transsion/shorttv_pugc/bean/SubjectDl;", "download", "", "Lcom/transsion/shorttv_pugc/bean/ResourceDetectors;", "resourceDetectors", "stills", "Lcom/transsion/shorttv_pugc/bean/Trailer;", "trailer", "series", "correlation", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "nonAdDelegate", "postTitle", "viewers", "contentRating", "category", "builtIn", "isCache", "Lcom/transsion/shorttv_pugc/bean/ShortTVItem;", "shortTVFirstEp", "Lcom/transsion/shorttv_pugc/bean/ShortTVFavInfo;", "shortTVFavInfo", "totalEpisode", "loadCoverSuccess", "coverCache", "loadCoverDuration", "aka", "Lcom/transsion/shorttv_pugc/bean/ExplainBean;", "explains", "totalSize", "unlockedEps", "coinPerEp", "deleted", "seNum", "season", "subtitles", "Lcom/transsion/shorttv_pugc/bean/DubsInfo;", "dubs", "corner", "restrictLevel", "appointmentCnt", "showTitle", "likeStatus", "<init>", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/SubjectDl;Ljava/util/List;Lcom/transsion/shorttv_pugc/bean/Cover;Lcom/transsion/shorttv_pugc/bean/Trailer;ZZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZZLcom/transsion/shorttv_pugc/bean/ShortTVItem;Lcom/transsion/shorttv_pugc/bean/ShortTVFavInfo;IZZJLjava/lang/String;Ljava/util/List;JLjava/util/List;IZLjava/lang/Integer;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZLjava/lang/Integer;)V", "isSeries", "()Z", "isShortTV", "copyData", "()Lcom/transsion/shorttv_pugc/bean/Subject;", "Ljava/lang/String;", "getSubjectId", "()Ljava/lang/String;", "setSubjectId", "(Ljava/lang/String;)V", "Ljava/lang/Integer;", "getSubjectType", "()Ljava/lang/Integer;", "setSubjectType", "(Ljava/lang/Integer;)V", "getTitle", "setTitle", "getCountryName", "setCountryName", "Lcom/transsion/shorttv_pugc/bean/Cover;", "getCover", "()Lcom/transsion/shorttv_pugc/bean/Cover;", "setCover", "(Lcom/transsion/shorttv_pugc/bean/Cover;)V", "getReleaseDate", "setReleaseDate", "getDescription", "setDescription", "getDuration", "setDuration", "getDurationSeconds", "setDurationSeconds", "getGenre", "setGenre", "Ljava/util/List;", "getTags", "()Ljava/util/List;", "setTags", "(Ljava/util/List;)V", "getTag", "setTag", "getImdbRate", "setImdbRate", "getLanguage", "setLanguage", "getMySeeTime", "setMySeeTime", "getSeenStatus", "setSeenStatus", "getStaffList", "setStaffList", "Ljava/lang/Long;", "getWantToSeeCount", "()Ljava/lang/Long;", "setWantToSeeCount", "(Ljava/lang/Long;)V", "Ljava/lang/Boolean;", "getHasResource", "()Ljava/lang/Boolean;", "setHasResource", "(Ljava/lang/Boolean;)V", "getOps", "setOps", "Lcom/transsion/shorttv_pugc/bean/SubjectDl;", "getDownload", "()Lcom/transsion/shorttv_pugc/bean/SubjectDl;", "setDownload", "(Lcom/transsion/shorttv_pugc/bean/SubjectDl;)V", "getDownload$annotations", "()V", "getResourceDetectors", "setResourceDetectors", "getResourceDetectors$annotations", "getStills", "setStills", "Lcom/transsion/shorttv_pugc/bean/Trailer;", "getTrailer", "()Lcom/transsion/shorttv_pugc/bean/Trailer;", "setTrailer", "(Lcom/transsion/shorttv_pugc/bean/Trailer;)V", "Z", "getSeries", "setSeries", "(Z)V", "getCorrelation", "setCorrelation", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "getNonAdDelegate", "()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "setNonAdDelegate", "(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V", "getPostTitle", "setPostTitle", "getViewers", "setViewers", "getContentRating", "setContentRating", "getCategory", "setCategory", "getBuiltIn", "setBuiltIn", "setCache", "Lcom/transsion/shorttv_pugc/bean/ShortTVItem;", "getShortTVFirstEp", "()Lcom/transsion/shorttv_pugc/bean/ShortTVItem;", "setShortTVFirstEp", "(Lcom/transsion/shorttv_pugc/bean/ShortTVItem;)V", "Lcom/transsion/shorttv_pugc/bean/ShortTVFavInfo;", "getShortTVFavInfo", "()Lcom/transsion/shorttv_pugc/bean/ShortTVFavInfo;", "setShortTVFavInfo", "(Lcom/transsion/shorttv_pugc/bean/ShortTVFavInfo;)V", "I", "getTotalEpisode", "()I", "setTotalEpisode", "(I)V", "getLoadCoverSuccess", "setLoadCoverSuccess", "getCoverCache", "setCoverCache", "J", "getLoadCoverDuration", "()J", "setLoadCoverDuration", "(J)V", "getAka", "setAka", "getExplains", "setExplains", "getTotalSize", "setTotalSize", "getUnlockedEps", "setUnlockedEps", "getCoinPerEp", "setCoinPerEp", "getDeleted", "setDeleted", "getSeNum", "setSeNum", "getSeason", "setSeason", "getSubtitles", "setSubtitles", "getDubs", "setDubs", "getCorner", "setCorner", "getRestrictLevel", "setRestrictLevel", "getAppointmentCnt", "setAppointmentCnt", "getShowTitle", "setShowTitle", "getLikeStatus", "setLikeStatus", "getResourceDetector", "()Lcom/transsion/shorttv_pugc/bean/ResourceDetectors;", "resourceDetector", "getResourceAboutDuration", "resourceAboutDuration", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
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

    @SerializedName("genre")
    private String genre;

    @SerializedName("hasResource")
    private Boolean hasResource;

    @SerializedName("imdbRatingValue")
    private String imdbRate;
    private boolean isCache;

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

    @SerializedName("postTitle")
    private String postTitle;

    @SerializedName("releaseDate")
    private String releaseDate;

    @SerializedName("resourceDetectors")
    private List<ResourceDetectors> resourceDetectors;
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
    private transient boolean showTitle;

    @SerializedName("staffList")
    private List<? extends Staff> staffList;

    @SerializedName("stills")
    private Cover stills;

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

    @SerializedName("wantToSeeCount")
    private Long wantToSeeCount;

    public Subject() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, false, null, -1, 4194303, null);
    }

    public Subject(String str, Integer num, String str2, String str3, Cover cover, String str4, String str5, String str6, Integer num2, String str7, List<String> list, String str8, String str9, String str10, String str11, Integer num3, List<? extends Staff> list2, Long l11, Boolean bool, String str12, SubjectDl subjectDl, List<ResourceDetectors> list3, Cover cover2, Trailer trailer, boolean z10, boolean z11, BiddingNativeManager biddingNativeManager, String str13, Long l12, String str14, String str15, boolean z12, boolean z13, ShortTVItem shortTVItem, ShortTVFavInfo shortTVFavInfo, int i11, boolean z14, boolean z15, long j11, String str16, List<ExplainBean> list4, long j12, List<Integer> list5, int i12, boolean z16, Integer num4, int i13, String str17, List<DubsInfo> list6, String str18, String str19, Long l13, boolean z17, Integer num5) {
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
        this.subtitles = str17;
        this.dubs = list6;
        this.corner = str18;
        this.restrictLevel = str19;
        this.appointmentCnt = l13;
        this.showTitle = z17;
        this.likeStatus = num5;
    }

    public /* synthetic */ Subject(String str, Integer num, String str2, String str3, Cover cover, String str4, String str5, String str6, Integer num2, String str7, List list, String str8, String str9, String str10, String str11, Integer num3, List list2, Long l11, Boolean bool, String str12, SubjectDl subjectDl, List list3, Cover cover2, Trailer trailer, boolean z10, boolean z11, BiddingNativeManager biddingNativeManager, String str13, Long l12, String str14, String str15, boolean z12, boolean z13, ShortTVItem shortTVItem, ShortTVFavInfo shortTVFavInfo, int i11, boolean z14, boolean z15, long j11, String str16, List list4, long j12, List list5, int i12, boolean z16, Integer num4, int i13, String str17, List list6, String str18, String str19, Long l13, boolean z17, Integer num5, int i14, int i15, DefaultConstructorMarker defaultConstructorMarker) {
        this((i14 & 1) != 0 ? null : str, (i14 & 2) != 0 ? 1 : num, (i14 & 4) != 0 ? null : str2, (i14 & 8) != 0 ? null : str3, (i14 & 16) != 0 ? null : cover, (i14 & 32) != 0 ? null : str4, (i14 & 64) != 0 ? null : str5, (i14 & 128) != 0 ? null : str6, (i14 & 256) != 0 ? 0 : num2, (i14 & 512) != 0 ? null : str7, (i14 & 1024) != 0 ? null : list, (i14 & 2048) != 0 ? null : str8, (i14 & 4096) != 0 ? null : str9, (i14 & 8192) != 0 ? null : str10, (i14 & 16384) != 0 ? null : str11, (i14 & 32768) != 0 ? 0 : num3, (i14 & 65536) != 0 ? null : list2, (i14 & 131072) != 0 ? 0L : l11, (i14 & 262144) != 0 ? null : bool, (i14 & 524288) != 0 ? null : str12, (i14 & 1048576) != 0 ? null : subjectDl, (i14 & 2097152) != 0 ? null : list3, (i14 & 4194304) != 0 ? null : cover2, (i14 & 8388608) != 0 ? null : trailer, (i14 & 16777216) != 0 ? false : z10, (i14 & ASTNode.PCTX_STORED) != 0 ? false : z11, (i14 & 67108864) != 0 ? null : biddingNativeManager, (i14 & ASTNode.NOJIT) != 0 ? null : str13, (i14 & ASTNode.DEOP) != 0 ? null : l12, (i14 & ASTNode.DISCARD) != 0 ? null : str14, (i14 & 1073741824) != 0 ? null : str15, (i14 & Integer.MIN_VALUE) != 0 ? false : z12, (i15 & 1) != 0 ? false : z13, (i15 & 2) != 0 ? null : shortTVItem, (i15 & 4) != 0 ? null : shortTVFavInfo, (i15 & 8) != 0 ? 0 : i11, (i15 & 16) != 0 ? false : z14, (i15 & 32) != 0 ? false : z15, (i15 & 64) != 0 ? 0L : j11, (i15 & 128) != 0 ? null : str16, (i15 & 256) != 0 ? null : list4, (i15 & 512) != 0 ? 0L : j12, (i15 & 1024) != 0 ? null : list5, (i15 & 2048) != 0 ? -1 : i12, (i15 & 4096) != 0 ? false : z16, (i15 & 8192) != 0 ? 0 : num4, (i15 & 16384) != 0 ? 1 : i13, (i15 & 32768) != 0 ? null : str17, (i15 & 65536) != 0 ? null : list6, (i15 & 131072) != 0 ? null : str18, (i15 & 262144) != 0 ? null : str19, (i15 & 524288) != 0 ? 0L : l13, (i15 & 1048576) != 0 ? false : z17, (i15 & 2097152) != 0 ? 0 : num5);
    }

    @Deprecated
    public static /* synthetic */ void getDownload$annotations() {
    }

    @Deprecated
    public static /* synthetic */ void getResourceDetectors$annotations() {
    }

    public final Subject copyData() {
        return new Subject(this.subjectId, this.subjectType, this.title, this.countryName, this.cover, this.releaseDate, this.description, this.duration, this.durationSeconds, this.genre, this.tags, null, this.imdbRate, this.language, this.mySeeTime, null, null, null, this.hasResource, this.ops, this.download, this.resourceDetectors, this.stills, this.trailer, false, false, null, null, null, null, null, this.builtIn, this.isCache, this.shortTVFirstEp, this.shortTVFavInfo, this.totalEpisode, false, false, 0L, null, null, this.totalSize, this.unlockedEps, this.coinPerEp, false, null, 0, null, null, null, null, null, false, null, 2130937856, 4190704, null);
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
            return new ResourceDetectors(Integer.valueOf(zIsSeries ? 1 : 0), null, size, null, null, sourceUrl, url, null, resourceId, null, subjectDl5 != null ? subjectDl5.getPostId() : null, null, null, 6810, null);
        }
        List<ResourceDetectors> list2 = this.resourceDetectors;
        ResourceDetectors resourceDetectors2 = list2 != null ? list2.get(0) : null;
        List<ResourceDetectors> list3 = this.resourceDetectors;
        if (list3 == null || (resourceDetectors = list3.get(0)) == null || (resolutionList = resourceDetectors.getResolutionList()) == null) {
            return resourceDetectors2;
        }
        for (DownloadItem downloadItem : resolutionList) {
            if (Intrinsics.c(downloadItem.getResourceId(), resourceDetectors2 != null ? resourceDetectors2.getResourceId() : null)) {
                resourceDetectors2 = new ResourceDetectors(resourceDetectors2 != null ? resourceDetectors2.getType() : null, null, downloadItem.getSize(), null, downloadItem.getUploadBy(), downloadItem.getSourceUrl(), downloadItem.getUrl(), null, downloadItem.getResourceId(), null, downloadItem.getPostId(), null, downloadItem.getResolution(), 2698, null);
            }
        }
        return resourceDetectors2;
    }

    public final List<ResourceDetectors> getResourceDetectors() {
        return this.resourceDetectors;
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

    public final boolean getShowTitle() {
        return this.showTitle;
    }

    public final List<Staff> getStaffList() {
        return this.staffList;
    }

    public final Cover getStills() {
        return this.stills;
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

    public final Long getWantToSeeCount() {
        return this.wantToSeeCount;
    }

    /* JADX INFO: renamed from: isCache, reason: from getter */
    public final boolean getIsCache() {
        return this.isCache;
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
        return num != null && num.intValue() == 7;
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

    public final void setPostTitle(String str) {
        this.postTitle = str;
    }

    public final void setReleaseDate(String str) {
        this.releaseDate = str;
    }

    public final void setResourceDetectors(List<ResourceDetectors> list) {
        this.resourceDetectors = list;
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

    public final void setShowTitle(boolean z10) {
        this.showTitle = z10;
    }

    public final void setStaffList(List<? extends Staff> list) {
        this.staffList = list;
    }

    public final void setStills(Cover cover) {
        this.stills = cover;
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

    public final void setWantToSeeCount(Long l11) {
        this.wantToSeeCount = l11;
    }
}
