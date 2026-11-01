package com.transsion.baselib.db.video;

import androidx.annotation.Keep;
import androidx.core.app.NotificationCompat;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.config.utils.CommonUtils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.baselib.utils.PlayMode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000)\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0003\b\u0094\u0001\b\u0087\b\u0018\u0000 ©\u00012\u00020\u0001:\u0002ª\u0001B\u009d\u0003\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0017\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010 \u001a\u00020\u0017\u0012\b\b\u0002\u0010!\u001a\u00020\u0017\u0012\b\b\u0002\u0010\"\u001a\u00020\u0017\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b*\u0010+J\r\u0010,\u001a\u00020\u0000¢\u0006\u0004\b,\u0010-J\r\u0010.\u001a\u00020\u0017¢\u0006\u0004\b.\u0010/J\u0010\u00100\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b0\u00101J\u0010\u00102\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b2\u00101J\u0010\u00103\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b3\u00104J\u0012\u00105\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b5\u00101J\u0012\u00106\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b6\u00101J\u0012\u00107\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b7\u00101J\u0010\u00108\u001a\u00020\nHÆ\u0003¢\u0006\u0004\b8\u00109J\u0012\u0010:\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b:\u00101J\u0012\u0010;\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0004\b;\u0010<J\u0012\u0010=\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0004\b=\u0010<J\u0012\u0010>\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0004\b>\u0010<J\u0012\u0010?\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0004\b?\u0010<J\u0010\u0010@\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b@\u00104J\u0012\u0010A\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\bA\u00101J\u0012\u0010B\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\bB\u0010CJ\u0012\u0010D\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\bD\u0010CJ\u0012\u0010E\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\bE\u00101J\u0012\u0010F\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0004\bF\u0010<J\u0010\u0010G\u001a\u00020\u0017HÆ\u0003¢\u0006\u0004\bG\u0010/J\u0010\u0010H\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\bH\u00101J\u0012\u0010I\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\bI\u00101J\u0012\u0010J\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\bJ\u00101J\u0012\u0010K\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\bK\u00101J\u0010\u0010L\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\bL\u00104J\u0012\u0010M\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\bM\u0010CJ\u0012\u0010N\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\bN\u0010CJ\u0010\u0010O\u001a\u00020\u0017HÆ\u0003¢\u0006\u0004\bO\u0010/J\u0010\u0010P\u001a\u00020\u0017HÆ\u0003¢\u0006\u0004\bP\u0010/J\u0010\u0010Q\u001a\u00020\u0017HÆ\u0003¢\u0006\u0004\bQ\u0010/J\u0012\u0010R\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\bR\u00101J\u0012\u0010S\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\bS\u00101J\u0012\u0010T\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\bT\u00101J\u0012\u0010U\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\bU\u00101J\u0012\u0010V\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\bV\u00101J\u0012\u0010W\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\bW\u00101J\u0012\u0010X\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\bX\u00101Jª\u0003\u0010Y\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u000b\u001a\u00020\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u0011\u001a\u00020\u00052\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u0018\u001a\u00020\u00172\b\b\u0002\u0010\u0019\u001a\u00020\u00022\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u001d\u001a\u00020\u00052\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010 \u001a\u00020\u00172\b\b\u0002\u0010!\u001a\u00020\u00172\b\b\u0002\u0010\"\u001a\u00020\u00172\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\bY\u0010ZJ\u0010\u0010[\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b[\u00101J\u0010\u0010\\\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\\\u00109J\u001a\u0010^\u001a\u00020\u00172\b\u0010]\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b^\u0010_R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010`\u001a\u0004\ba\u00101R\"\u0010\u0004\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010`\u001a\u0004\bb\u00101\"\u0004\bc\u0010dR\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010e\u001a\u0004\bf\u00104\"\u0004\bg\u0010hR\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0007\u0010`\u001a\u0004\bi\u00101R\u0019\u0010\b\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010`\u001a\u0004\bj\u00101R\u0019\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\t\u0010`\u001a\u0004\bk\u00101R\u0017\u0010\u000b\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010l\u001a\u0004\bm\u00109R\u0019\u0010\f\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\f\u0010`\u001a\u0004\bn\u00101R\u0019\u0010\r\u001a\u0004\u0018\u00010\n8\u0006¢\u0006\f\n\u0004\b\r\u0010o\u001a\u0004\bp\u0010<R\u0019\u0010\u000e\u001a\u0004\u0018\u00010\n8\u0006¢\u0006\f\n\u0004\b\u000e\u0010o\u001a\u0004\bq\u0010<R\u0019\u0010\u000f\u001a\u0004\u0018\u00010\n8\u0006¢\u0006\f\n\u0004\b\u000f\u0010o\u001a\u0004\br\u0010<R\u0019\u0010\u0010\u001a\u0004\u0018\u00010\n8\u0006¢\u0006\f\n\u0004\b\u0010\u0010o\u001a\u0004\bs\u0010<R\"\u0010\u0011\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010e\u001a\u0004\bt\u00104\"\u0004\bu\u0010hR$\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010`\u001a\u0004\bv\u00101\"\u0004\bw\u0010dR$\u0010\u0013\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010x\u001a\u0004\by\u0010C\"\u0004\bz\u0010{R$\u0010\u0014\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010x\u001a\u0004\b|\u0010C\"\u0004\b}\u0010{R$\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010`\u001a\u0004\b~\u00101\"\u0004\b\u007f\u0010dR'\u0010\u0016\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0004\b\u0016\u0010o\u001a\u0005\b\u0080\u0001\u0010<\"\u0006\b\u0081\u0001\u0010\u0082\u0001R&\u0010\u0018\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b\u0018\u0010\u0083\u0001\u001a\u0005\b\u0084\u0001\u0010/\"\u0006\b\u0085\u0001\u0010\u0086\u0001R$\u0010\u0019\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b\u0019\u0010`\u001a\u0005\b\u0087\u0001\u00101\"\u0005\b\u0088\u0001\u0010dR&\u0010\u001a\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b\u001a\u0010`\u001a\u0005\b\u0089\u0001\u00101\"\u0005\b\u008a\u0001\u0010dR&\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b\u001b\u0010`\u001a\u0005\b\u008b\u0001\u00101\"\u0005\b\u008c\u0001\u0010dR&\u0010\u001c\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b\u001c\u0010`\u001a\u0005\b\u008d\u0001\u00101\"\u0005\b\u008e\u0001\u0010dR$\u0010\u001d\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b\u001d\u0010e\u001a\u0005\b\u008f\u0001\u00104\"\u0005\b\u0090\u0001\u0010hR&\u0010\u001e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b\u001e\u0010x\u001a\u0005\b\u0091\u0001\u0010C\"\u0005\b\u0092\u0001\u0010{R&\u0010\u001f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b\u001f\u0010x\u001a\u0005\b\u0093\u0001\u0010C\"\u0005\b\u0094\u0001\u0010{R&\u0010 \u001a\u00020\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b \u0010\u0083\u0001\u001a\u0005\b\u0095\u0001\u0010/\"\u0006\b\u0096\u0001\u0010\u0086\u0001R&\u0010!\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b!\u0010\u0083\u0001\u001a\u0005\b\u0097\u0001\u0010/\"\u0006\b\u0098\u0001\u0010\u0086\u0001R&\u0010\"\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b\"\u0010\u0083\u0001\u001a\u0005\b\u0099\u0001\u0010/\"\u0006\b\u009a\u0001\u0010\u0086\u0001R&\u0010#\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b#\u0010`\u001a\u0005\b\u009b\u0001\u00101\"\u0005\b\u009c\u0001\u0010dR&\u0010$\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b$\u0010`\u001a\u0005\b\u009d\u0001\u00101\"\u0005\b\u009e\u0001\u0010dR&\u0010%\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b%\u0010`\u001a\u0005\b\u009f\u0001\u00101\"\u0005\b \u0001\u0010dR&\u0010&\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b&\u0010`\u001a\u0005\b¡\u0001\u00101\"\u0005\b¢\u0001\u0010dR&\u0010'\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b'\u0010`\u001a\u0005\b£\u0001\u00101\"\u0005\b¤\u0001\u0010dR&\u0010(\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b(\u0010`\u001a\u0005\b¥\u0001\u00101\"\u0005\b¦\u0001\u0010dR&\u0010)\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b)\u0010`\u001a\u0005\b§\u0001\u00101\"\u0005\b¨\u0001\u0010d¨\u0006«\u0001"}, d2 = {"Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;", "", "", "collectionId", "ugcVideoId", "", NotificationCompat.CATEGORY_PROGRESS, CampaignEx.JSON_KEY_TITLE, "coverUrl", "thumbnail", "", RequestParameters.POSITION, NativeComponentConstants.KEY_COMPONENT_TYPE, "cateLev1Id", "cateLev2Id", "cateLev3Id", "cateLev4Id", "timeStamp", "subtitleSelectId", "totalDuration", "subjectDurationSeconds", "averageHueLight", "subjectType", "", "hasDelete", "playMode", "downloadUrl", "downloadResid", "downloadFilePath", "downloadSize", "lastAdStartTimeStamp", "lastAdEndTimeStamp", "rewardPlayed", "rewardUnlock", "rewardFree", "ops", CommonUtils.PARAM_UID, "userName", "userAvatar", TrackingKey.DESCRIPTION, "videoStyle", "kidId", "<init>", "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "toBusinessBean", "()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;", "isSingleVideo", "()Z", "component1", "()Ljava/lang/String;", "component2", "component3", "()J", "component4", "component5", "component6", "component7", "()I", "component8", "component9", "()Ljava/lang/Integer;", "component10", "component11", "component12", "component13", "component14", "component15", "()Ljava/lang/Long;", "component16", "component17", "component18", "component19", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component28", "component29", "component30", "component31", "component32", "component33", "component34", "component35", "component36", "copy", "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;", "toString", "hashCode", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getCollectionId", "getUgcVideoId", "setUgcVideoId", "(Ljava/lang/String;)V", "J", "getProgress", "setProgress", "(J)V", "getTitle", "getCoverUrl", "getThumbnail", "I", "getPosition", "getType", "Ljava/lang/Integer;", "getCateLev1Id", "getCateLev2Id", "getCateLev3Id", "getCateLev4Id", "getTimeStamp", "setTimeStamp", "getSubtitleSelectId", "setSubtitleSelectId", "Ljava/lang/Long;", "getTotalDuration", "setTotalDuration", "(Ljava/lang/Long;)V", "getSubjectDurationSeconds", "setSubjectDurationSeconds", "getAverageHueLight", "setAverageHueLight", "getSubjectType", "setSubjectType", "(Ljava/lang/Integer;)V", "Z", "getHasDelete", "setHasDelete", "(Z)V", "getPlayMode", "setPlayMode", "getDownloadUrl", "setDownloadUrl", "getDownloadResid", "setDownloadResid", "getDownloadFilePath", "setDownloadFilePath", "getDownloadSize", "setDownloadSize", "getLastAdStartTimeStamp", "setLastAdStartTimeStamp", "getLastAdEndTimeStamp", "setLastAdEndTimeStamp", "getRewardPlayed", "setRewardPlayed", "getRewardUnlock", "setRewardUnlock", "getRewardFree", "setRewardFree", "getOps", "setOps", "getUid", "setUid", "getUserName", "setUserName", "getUserAvatar", "setUserAvatar", "getDescription", "setDescription", "getVideoStyle", "setVideoStyle", "getKidId", "setKidId", "Companion", "a", "BaseLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UGCVideoDetailPlayBean {
    public static final String SINGLE_VIDEO_PREFIX = "SINGLE_";
    private String averageHueLight;
    private final Integer cateLev1Id;
    private final Integer cateLev2Id;
    private final Integer cateLev3Id;
    private final Integer cateLev4Id;
    private final String collectionId;
    private final String coverUrl;
    private String description;
    private String downloadFilePath;
    private String downloadResid;
    private long downloadSize;
    private String downloadUrl;
    private boolean hasDelete;
    private String kidId;
    private Long lastAdEndTimeStamp;
    private Long lastAdStartTimeStamp;
    private String ops;
    private String playMode;
    private final int position;
    private long progress;
    private boolean rewardFree;
    private boolean rewardPlayed;
    private boolean rewardUnlock;
    private Long subjectDurationSeconds;
    private Integer subjectType;
    private String subtitleSelectId;
    private final String thumbnail;
    private long timeStamp;
    private final String title;
    private Long totalDuration;
    private final String type;
    private String ugcVideoId;
    private String uid;
    private String userAvatar;
    private String userName;
    private String videoStyle;

    public UGCVideoDetailPlayBean(String collectionId, String ugcVideoId, long j11, String str, String str2, String str3, int i11, String str4, Integer num, Integer num2, Integer num3, Integer num4, long j12, String str5, Long l11, Long l12, String str6, Integer num5, boolean z10, String playMode, String str7, String str8, String str9, long j13, Long l13, Long l14, boolean z11, boolean z12, boolean z13, String str10, String str11, String str12, String str13, String str14, String str15, String str16) {
        Intrinsics.h(collectionId, "collectionId");
        Intrinsics.h(ugcVideoId, "ugcVideoId");
        Intrinsics.h(playMode, "playMode");
        this.collectionId = collectionId;
        this.ugcVideoId = ugcVideoId;
        this.progress = j11;
        this.title = str;
        this.coverUrl = str2;
        this.thumbnail = str3;
        this.position = i11;
        this.type = str4;
        this.cateLev1Id = num;
        this.cateLev2Id = num2;
        this.cateLev3Id = num3;
        this.cateLev4Id = num4;
        this.timeStamp = j12;
        this.subtitleSelectId = str5;
        this.totalDuration = l11;
        this.subjectDurationSeconds = l12;
        this.averageHueLight = str6;
        this.subjectType = num5;
        this.hasDelete = z10;
        this.playMode = playMode;
        this.downloadUrl = str7;
        this.downloadResid = str8;
        this.downloadFilePath = str9;
        this.downloadSize = j13;
        this.lastAdStartTimeStamp = l13;
        this.lastAdEndTimeStamp = l14;
        this.rewardPlayed = z11;
        this.rewardUnlock = z12;
        this.rewardFree = z13;
        this.ops = str10;
        this.uid = str11;
        this.userName = str12;
        this.userAvatar = str13;
        this.description = str14;
        this.videoStyle = str15;
        this.kidId = str16;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ UGCVideoDetailPlayBean(String str, String str2, long j11, String str3, String str4, String str5, int i11, String str6, Integer num, Integer num2, Integer num3, Integer num4, long j12, String str7, Long l11, Long l12, String str8, Integer num5, boolean z10, String str9, String str10, String str11, String str12, long j13, Long l13, Long l14, boolean z11, boolean z12, boolean z13, String str13, String str14, String str15, String str16, String str17, String str18, String str19, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        Long l15 = 0L;
        this(str, str2, (i12 & 4) != 0 ? 0L : j11, (i12 & 8) != 0 ? null : str3, (i12 & 16) != 0 ? null : str4, (i12 & 32) != 0 ? null : str5, (i12 & 64) != 0 ? 0 : i11, (i12 & 128) != 0 ? null : str6, (i12 & 256) != 0 ? null : num, (i12 & 512) != 0 ? null : num2, (i12 & 1024) != 0 ? null : num3, (i12 & 2048) != 0 ? null : num4, (i12 & 4096) != 0 ? 0L : j12, (i12 & 8192) != 0 ? null : str7, (i12 & 16384) != 0 ? l15 : l11, (i12 & 32768) == 0 ? l12 : 0L, (i12 & 65536) != 0 ? null : str8, (i12 & 131072) != 0 ? 1 : num5, (i12 & 262144) != 0 ? false : z10, (i12 & 524288) != 0 ? PlayMode.STREAM.getValue() : str9, (i12 & 1048576) != 0 ? null : str10, (i12 & 2097152) != 0 ? null : str11, (i12 & 4194304) != 0 ? null : str12, (i12 & 8388608) != 0 ? 0L : j13, (i12 & 16777216) != 0 ? null : l13, (i12 & ASTNode.PCTX_STORED) != 0 ? null : l14, (i12 & 67108864) != 0 ? false : z11, (i12 & ASTNode.NOJIT) != 0 ? false : z12, (i12 & ASTNode.DEOP) == 0 ? z13 : false, (i12 & ASTNode.DISCARD) != 0 ? null : str13, (i12 & 1073741824) != 0 ? null : str14, (i12 & Integer.MIN_VALUE) != 0 ? null : str15, (i13 & 1) != 0 ? null : str16, (i13 & 2) != 0 ? null : str17, (i13 & 4) != 0 ? null : str18, (i13 & 8) != 0 ? null : str19);
    }

    public static /* synthetic */ UGCVideoDetailPlayBean copy$default(UGCVideoDetailPlayBean uGCVideoDetailPlayBean, String str, String str2, long j11, String str3, String str4, String str5, int i11, String str6, Integer num, Integer num2, Integer num3, Integer num4, long j12, String str7, Long l11, Long l12, String str8, Integer num5, boolean z10, String str9, String str10, String str11, String str12, long j13, Long l13, Long l14, boolean z11, boolean z12, boolean z13, String str13, String str14, String str15, String str16, String str17, String str18, String str19, int i12, int i13, Object obj) {
        return uGCVideoDetailPlayBean.copy((i12 & 1) != 0 ? uGCVideoDetailPlayBean.collectionId : str, (i12 & 2) != 0 ? uGCVideoDetailPlayBean.ugcVideoId : str2, (i12 & 4) != 0 ? uGCVideoDetailPlayBean.progress : j11, (i12 & 8) != 0 ? uGCVideoDetailPlayBean.title : str3, (i12 & 16) != 0 ? uGCVideoDetailPlayBean.coverUrl : str4, (i12 & 32) != 0 ? uGCVideoDetailPlayBean.thumbnail : str5, (i12 & 64) != 0 ? uGCVideoDetailPlayBean.position : i11, (i12 & 128) != 0 ? uGCVideoDetailPlayBean.type : str6, (i12 & 256) != 0 ? uGCVideoDetailPlayBean.cateLev1Id : num, (i12 & 512) != 0 ? uGCVideoDetailPlayBean.cateLev2Id : num2, (i12 & 1024) != 0 ? uGCVideoDetailPlayBean.cateLev3Id : num3, (i12 & 2048) != 0 ? uGCVideoDetailPlayBean.cateLev4Id : num4, (i12 & 4096) != 0 ? uGCVideoDetailPlayBean.timeStamp : j12, (i12 & 8192) != 0 ? uGCVideoDetailPlayBean.subtitleSelectId : str7, (i12 & 16384) != 0 ? uGCVideoDetailPlayBean.totalDuration : l11, (i12 & 32768) != 0 ? uGCVideoDetailPlayBean.subjectDurationSeconds : l12, (i12 & 65536) != 0 ? uGCVideoDetailPlayBean.averageHueLight : str8, (i12 & 131072) != 0 ? uGCVideoDetailPlayBean.subjectType : num5, (i12 & 262144) != 0 ? uGCVideoDetailPlayBean.hasDelete : z10, (i12 & 524288) != 0 ? uGCVideoDetailPlayBean.playMode : str9, (i12 & 1048576) != 0 ? uGCVideoDetailPlayBean.downloadUrl : str10, (i12 & 2097152) != 0 ? uGCVideoDetailPlayBean.downloadResid : str11, (i12 & 4194304) != 0 ? uGCVideoDetailPlayBean.downloadFilePath : str12, (i12 & 8388608) != 0 ? uGCVideoDetailPlayBean.downloadSize : j13, (i12 & 16777216) != 0 ? uGCVideoDetailPlayBean.lastAdStartTimeStamp : l13, (33554432 & i12) != 0 ? uGCVideoDetailPlayBean.lastAdEndTimeStamp : l14, (i12 & 67108864) != 0 ? uGCVideoDetailPlayBean.rewardPlayed : z11, (i12 & ASTNode.NOJIT) != 0 ? uGCVideoDetailPlayBean.rewardUnlock : z12, (i12 & ASTNode.DEOP) != 0 ? uGCVideoDetailPlayBean.rewardFree : z13, (i12 & ASTNode.DISCARD) != 0 ? uGCVideoDetailPlayBean.ops : str13, (i12 & 1073741824) != 0 ? uGCVideoDetailPlayBean.uid : str14, (i12 & Integer.MIN_VALUE) != 0 ? uGCVideoDetailPlayBean.userName : str15, (i13 & 1) != 0 ? uGCVideoDetailPlayBean.userAvatar : str16, (i13 & 2) != 0 ? uGCVideoDetailPlayBean.description : str17, (i13 & 4) != 0 ? uGCVideoDetailPlayBean.videoStyle : str18, (i13 & 8) != 0 ? uGCVideoDetailPlayBean.kidId : str19);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCollectionId() {
        return this.collectionId;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final Integer getCateLev2Id() {
        return this.cateLev2Id;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final Integer getCateLev3Id() {
        return this.cateLev3Id;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final Integer getCateLev4Id() {
        return this.cateLev4Id;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final long getTimeStamp() {
        return this.timeStamp;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getSubtitleSelectId() {
        return this.subtitleSelectId;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final Long getTotalDuration() {
        return this.totalDuration;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final Long getSubjectDurationSeconds() {
        return this.subjectDurationSeconds;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final String getAverageHueLight() {
        return this.averageHueLight;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final Integer getSubjectType() {
        return this.subjectType;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final boolean getHasDelete() {
        return this.hasDelete;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getUgcVideoId() {
        return this.ugcVideoId;
    }

    /* JADX INFO: renamed from: component20, reason: from getter */
    public final String getPlayMode() {
        return this.playMode;
    }

    /* JADX INFO: renamed from: component21, reason: from getter */
    public final String getDownloadUrl() {
        return this.downloadUrl;
    }

    /* JADX INFO: renamed from: component22, reason: from getter */
    public final String getDownloadResid() {
        return this.downloadResid;
    }

    /* JADX INFO: renamed from: component23, reason: from getter */
    public final String getDownloadFilePath() {
        return this.downloadFilePath;
    }

    /* JADX INFO: renamed from: component24, reason: from getter */
    public final long getDownloadSize() {
        return this.downloadSize;
    }

    /* JADX INFO: renamed from: component25, reason: from getter */
    public final Long getLastAdStartTimeStamp() {
        return this.lastAdStartTimeStamp;
    }

    /* JADX INFO: renamed from: component26, reason: from getter */
    public final Long getLastAdEndTimeStamp() {
        return this.lastAdEndTimeStamp;
    }

    /* JADX INFO: renamed from: component27, reason: from getter */
    public final boolean getRewardPlayed() {
        return this.rewardPlayed;
    }

    /* JADX INFO: renamed from: component28, reason: from getter */
    public final boolean getRewardUnlock() {
        return this.rewardUnlock;
    }

    /* JADX INFO: renamed from: component29, reason: from getter */
    public final boolean getRewardFree() {
        return this.rewardFree;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final long getProgress() {
        return this.progress;
    }

    /* JADX INFO: renamed from: component30, reason: from getter */
    public final String getOps() {
        return this.ops;
    }

    /* JADX INFO: renamed from: component31, reason: from getter */
    public final String getUid() {
        return this.uid;
    }

    /* JADX INFO: renamed from: component32, reason: from getter */
    public final String getUserName() {
        return this.userName;
    }

    /* JADX INFO: renamed from: component33, reason: from getter */
    public final String getUserAvatar() {
        return this.userAvatar;
    }

    /* JADX INFO: renamed from: component34, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component35, reason: from getter */
    public final String getVideoStyle() {
        return this.videoStyle;
    }

    /* JADX INFO: renamed from: component36, reason: from getter */
    public final String getKidId() {
        return this.kidId;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getCoverUrl() {
        return this.coverUrl;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getThumbnail() {
        return this.thumbnail;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final int getPosition() {
        return this.position;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Integer getCateLev1Id() {
        return this.cateLev1Id;
    }

    public final UGCVideoDetailPlayBean copy(String collectionId, String ugcVideoId, long progress, String title, String coverUrl, String thumbnail, int position, String type, Integer cateLev1Id, Integer cateLev2Id, Integer cateLev3Id, Integer cateLev4Id, long timeStamp, String subtitleSelectId, Long totalDuration, Long subjectDurationSeconds, String averageHueLight, Integer subjectType, boolean hasDelete, String playMode, String downloadUrl, String downloadResid, String downloadFilePath, long downloadSize, Long lastAdStartTimeStamp, Long lastAdEndTimeStamp, boolean rewardPlayed, boolean rewardUnlock, boolean rewardFree, String ops, String uid, String userName, String userAvatar, String description, String videoStyle, String kidId) {
        Intrinsics.h(collectionId, "collectionId");
        Intrinsics.h(ugcVideoId, "ugcVideoId");
        Intrinsics.h(playMode, "playMode");
        return new UGCVideoDetailPlayBean(collectionId, ugcVideoId, progress, title, coverUrl, thumbnail, position, type, cateLev1Id, cateLev2Id, cateLev3Id, cateLev4Id, timeStamp, subtitleSelectId, totalDuration, subjectDurationSeconds, averageHueLight, subjectType, hasDelete, playMode, downloadUrl, downloadResid, downloadFilePath, downloadSize, lastAdStartTimeStamp, lastAdEndTimeStamp, rewardPlayed, rewardUnlock, rewardFree, ops, uid, userName, userAvatar, description, videoStyle, kidId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UGCVideoDetailPlayBean)) {
            return false;
        }
        UGCVideoDetailPlayBean uGCVideoDetailPlayBean = (UGCVideoDetailPlayBean) other;
        return Intrinsics.c(this.collectionId, uGCVideoDetailPlayBean.collectionId) && Intrinsics.c(this.ugcVideoId, uGCVideoDetailPlayBean.ugcVideoId) && this.progress == uGCVideoDetailPlayBean.progress && Intrinsics.c(this.title, uGCVideoDetailPlayBean.title) && Intrinsics.c(this.coverUrl, uGCVideoDetailPlayBean.coverUrl) && Intrinsics.c(this.thumbnail, uGCVideoDetailPlayBean.thumbnail) && this.position == uGCVideoDetailPlayBean.position && Intrinsics.c(this.type, uGCVideoDetailPlayBean.type) && Intrinsics.c(this.cateLev1Id, uGCVideoDetailPlayBean.cateLev1Id) && Intrinsics.c(this.cateLev2Id, uGCVideoDetailPlayBean.cateLev2Id) && Intrinsics.c(this.cateLev3Id, uGCVideoDetailPlayBean.cateLev3Id) && Intrinsics.c(this.cateLev4Id, uGCVideoDetailPlayBean.cateLev4Id) && this.timeStamp == uGCVideoDetailPlayBean.timeStamp && Intrinsics.c(this.subtitleSelectId, uGCVideoDetailPlayBean.subtitleSelectId) && Intrinsics.c(this.totalDuration, uGCVideoDetailPlayBean.totalDuration) && Intrinsics.c(this.subjectDurationSeconds, uGCVideoDetailPlayBean.subjectDurationSeconds) && Intrinsics.c(this.averageHueLight, uGCVideoDetailPlayBean.averageHueLight) && Intrinsics.c(this.subjectType, uGCVideoDetailPlayBean.subjectType) && this.hasDelete == uGCVideoDetailPlayBean.hasDelete && Intrinsics.c(this.playMode, uGCVideoDetailPlayBean.playMode) && Intrinsics.c(this.downloadUrl, uGCVideoDetailPlayBean.downloadUrl) && Intrinsics.c(this.downloadResid, uGCVideoDetailPlayBean.downloadResid) && Intrinsics.c(this.downloadFilePath, uGCVideoDetailPlayBean.downloadFilePath) && this.downloadSize == uGCVideoDetailPlayBean.downloadSize && Intrinsics.c(this.lastAdStartTimeStamp, uGCVideoDetailPlayBean.lastAdStartTimeStamp) && Intrinsics.c(this.lastAdEndTimeStamp, uGCVideoDetailPlayBean.lastAdEndTimeStamp) && this.rewardPlayed == uGCVideoDetailPlayBean.rewardPlayed && this.rewardUnlock == uGCVideoDetailPlayBean.rewardUnlock && this.rewardFree == uGCVideoDetailPlayBean.rewardFree && Intrinsics.c(this.ops, uGCVideoDetailPlayBean.ops) && Intrinsics.c(this.uid, uGCVideoDetailPlayBean.uid) && Intrinsics.c(this.userName, uGCVideoDetailPlayBean.userName) && Intrinsics.c(this.userAvatar, uGCVideoDetailPlayBean.userAvatar) && Intrinsics.c(this.description, uGCVideoDetailPlayBean.description) && Intrinsics.c(this.videoStyle, uGCVideoDetailPlayBean.videoStyle) && Intrinsics.c(this.kidId, uGCVideoDetailPlayBean.kidId);
    }

    public final String getAverageHueLight() {
        return this.averageHueLight;
    }

    public final Integer getCateLev1Id() {
        return this.cateLev1Id;
    }

    public final Integer getCateLev2Id() {
        return this.cateLev2Id;
    }

    public final Integer getCateLev3Id() {
        return this.cateLev3Id;
    }

    public final Integer getCateLev4Id() {
        return this.cateLev4Id;
    }

    public final String getCollectionId() {
        return this.collectionId;
    }

    public final String getCoverUrl() {
        return this.coverUrl;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getDownloadFilePath() {
        return this.downloadFilePath;
    }

    public final String getDownloadResid() {
        return this.downloadResid;
    }

    public final long getDownloadSize() {
        return this.downloadSize;
    }

    public final String getDownloadUrl() {
        return this.downloadUrl;
    }

    public final boolean getHasDelete() {
        return this.hasDelete;
    }

    public final String getKidId() {
        return this.kidId;
    }

    public final Long getLastAdEndTimeStamp() {
        return this.lastAdEndTimeStamp;
    }

    public final Long getLastAdStartTimeStamp() {
        return this.lastAdStartTimeStamp;
    }

    public final String getOps() {
        return this.ops;
    }

    public final String getPlayMode() {
        return this.playMode;
    }

    public final int getPosition() {
        return this.position;
    }

    public final long getProgress() {
        return this.progress;
    }

    public final boolean getRewardFree() {
        return this.rewardFree;
    }

    public final boolean getRewardPlayed() {
        return this.rewardPlayed;
    }

    public final boolean getRewardUnlock() {
        return this.rewardUnlock;
    }

    public final Long getSubjectDurationSeconds() {
        return this.subjectDurationSeconds;
    }

    public final Integer getSubjectType() {
        return this.subjectType;
    }

    public final String getSubtitleSelectId() {
        return this.subtitleSelectId;
    }

    public final String getThumbnail() {
        return this.thumbnail;
    }

    public final long getTimeStamp() {
        return this.timeStamp;
    }

    public final String getTitle() {
        return this.title;
    }

    public final Long getTotalDuration() {
        return this.totalDuration;
    }

    public final String getType() {
        return this.type;
    }

    public final String getUgcVideoId() {
        return this.ugcVideoId;
    }

    public final String getUid() {
        return this.uid;
    }

    public final String getUserAvatar() {
        return this.userAvatar;
    }

    public final String getUserName() {
        return this.userName;
    }

    public final String getVideoStyle() {
        return this.videoStyle;
    }

    public int hashCode() {
        int iHashCode = ((((this.collectionId.hashCode() * 31) + this.ugcVideoId.hashCode()) * 31) + androidx.collection.s.a(this.progress)) * 31;
        String str = this.title;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.coverUrl;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.thumbnail;
        int iHashCode4 = (((iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.position) * 31;
        String str4 = this.type;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num = this.cateLev1Id;
        int iHashCode6 = (iHashCode5 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.cateLev2Id;
        int iHashCode7 = (iHashCode6 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.cateLev3Id;
        int iHashCode8 = (iHashCode7 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.cateLev4Id;
        int iHashCode9 = (((iHashCode8 + (num4 == null ? 0 : num4.hashCode())) * 31) + androidx.collection.s.a(this.timeStamp)) * 31;
        String str5 = this.subtitleSelectId;
        int iHashCode10 = (iHashCode9 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Long l11 = this.totalDuration;
        int iHashCode11 = (iHashCode10 + (l11 == null ? 0 : l11.hashCode())) * 31;
        Long l12 = this.subjectDurationSeconds;
        int iHashCode12 = (iHashCode11 + (l12 == null ? 0 : l12.hashCode())) * 31;
        String str6 = this.averageHueLight;
        int iHashCode13 = (iHashCode12 + (str6 == null ? 0 : str6.hashCode())) * 31;
        Integer num5 = this.subjectType;
        int iHashCode14 = (((((iHashCode13 + (num5 == null ? 0 : num5.hashCode())) * 31) + androidx.compose.foundation.e.a(this.hasDelete)) * 31) + this.playMode.hashCode()) * 31;
        String str7 = this.downloadUrl;
        int iHashCode15 = (iHashCode14 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.downloadResid;
        int iHashCode16 = (iHashCode15 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.downloadFilePath;
        int iHashCode17 = (((iHashCode16 + (str9 == null ? 0 : str9.hashCode())) * 31) + androidx.collection.s.a(this.downloadSize)) * 31;
        Long l13 = this.lastAdStartTimeStamp;
        int iHashCode18 = (iHashCode17 + (l13 == null ? 0 : l13.hashCode())) * 31;
        Long l14 = this.lastAdEndTimeStamp;
        int iHashCode19 = (((((((iHashCode18 + (l14 == null ? 0 : l14.hashCode())) * 31) + androidx.compose.foundation.e.a(this.rewardPlayed)) * 31) + androidx.compose.foundation.e.a(this.rewardUnlock)) * 31) + androidx.compose.foundation.e.a(this.rewardFree)) * 31;
        String str10 = this.ops;
        int iHashCode20 = (iHashCode19 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.uid;
        int iHashCode21 = (iHashCode20 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.userName;
        int iHashCode22 = (iHashCode21 + (str12 == null ? 0 : str12.hashCode())) * 31;
        String str13 = this.userAvatar;
        int iHashCode23 = (iHashCode22 + (str13 == null ? 0 : str13.hashCode())) * 31;
        String str14 = this.description;
        int iHashCode24 = (iHashCode23 + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.videoStyle;
        int iHashCode25 = (iHashCode24 + (str15 == null ? 0 : str15.hashCode())) * 31;
        String str16 = this.kidId;
        return iHashCode25 + (str16 != null ? str16.hashCode() : 0);
    }

    public final boolean isSingleVideo() {
        return StringsKt.W(this.collectionId, SINGLE_VIDEO_PREFIX, false, 2, null);
    }

    public final void setAverageHueLight(String str) {
        this.averageHueLight = str;
    }

    public final void setDescription(String str) {
        this.description = str;
    }

    public final void setDownloadFilePath(String str) {
        this.downloadFilePath = str;
    }

    public final void setDownloadResid(String str) {
        this.downloadResid = str;
    }

    public final void setDownloadSize(long j11) {
        this.downloadSize = j11;
    }

    public final void setDownloadUrl(String str) {
        this.downloadUrl = str;
    }

    public final void setHasDelete(boolean z10) {
        this.hasDelete = z10;
    }

    public final void setKidId(String str) {
        this.kidId = str;
    }

    public final void setLastAdEndTimeStamp(Long l11) {
        this.lastAdEndTimeStamp = l11;
    }

    public final void setLastAdStartTimeStamp(Long l11) {
        this.lastAdStartTimeStamp = l11;
    }

    public final void setOps(String str) {
        this.ops = str;
    }

    public final void setPlayMode(String str) {
        Intrinsics.h(str, "<set-?>");
        this.playMode = str;
    }

    public final void setProgress(long j11) {
        this.progress = j11;
    }

    public final void setRewardFree(boolean z10) {
        this.rewardFree = z10;
    }

    public final void setRewardPlayed(boolean z10) {
        this.rewardPlayed = z10;
    }

    public final void setRewardUnlock(boolean z10) {
        this.rewardUnlock = z10;
    }

    public final void setSubjectDurationSeconds(Long l11) {
        this.subjectDurationSeconds = l11;
    }

    public final void setSubjectType(Integer num) {
        this.subjectType = num;
    }

    public final void setSubtitleSelectId(String str) {
        this.subtitleSelectId = str;
    }

    public final void setTimeStamp(long j11) {
        this.timeStamp = j11;
    }

    public final void setTotalDuration(Long l11) {
        this.totalDuration = l11;
    }

    public final void setUgcVideoId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.ugcVideoId = str;
    }

    public final void setUid(String str) {
        this.uid = str;
    }

    public final void setUserAvatar(String str) {
        this.userAvatar = str;
    }

    public final void setUserName(String str) {
        this.userName = str;
    }

    public final void setVideoStyle(String str) {
        this.videoStyle = str;
    }

    public final UGCVideoDetailPlayBean toBusinessBean() {
        return copy$default(this, StringsKt.W(this.collectionId, SINGLE_VIDEO_PREFIX, false, 2, null) ? "" : this.collectionId, null, 0L, null, null, null, 0, null, null, null, null, null, 0L, null, null, null, null, null, false, null, null, null, null, 0L, null, null, false, false, false, null, null, null, null, null, null, null, -2, 15, null);
    }

    public String toString() {
        return "UGCVideoDetailPlayBean(collectionId=" + this.collectionId + ", ugcVideoId=" + this.ugcVideoId + ", progress=" + this.progress + ", title=" + this.title + ", coverUrl=" + this.coverUrl + ", thumbnail=" + this.thumbnail + ", position=" + this.position + ", type=" + this.type + ", cateLev1Id=" + this.cateLev1Id + ", cateLev2Id=" + this.cateLev2Id + ", cateLev3Id=" + this.cateLev3Id + ", cateLev4Id=" + this.cateLev4Id + ", timeStamp=" + this.timeStamp + ", subtitleSelectId=" + this.subtitleSelectId + ", totalDuration=" + this.totalDuration + ", subjectDurationSeconds=" + this.subjectDurationSeconds + ", averageHueLight=" + this.averageHueLight + ", subjectType=" + this.subjectType + ", hasDelete=" + this.hasDelete + ", playMode=" + this.playMode + ", downloadUrl=" + this.downloadUrl + ", downloadResid=" + this.downloadResid + ", downloadFilePath=" + this.downloadFilePath + ", downloadSize=" + this.downloadSize + ", lastAdStartTimeStamp=" + this.lastAdStartTimeStamp + ", lastAdEndTimeStamp=" + this.lastAdEndTimeStamp + ", rewardPlayed=" + this.rewardPlayed + ", rewardUnlock=" + this.rewardUnlock + ", rewardFree=" + this.rewardFree + ", ops=" + this.ops + ", uid=" + this.uid + ", userName=" + this.userName + ", userAvatar=" + this.userAvatar + ", description=" + this.description + ", videoStyle=" + this.videoStyle + ", kidId=" + this.kidId + ")";
    }
}
