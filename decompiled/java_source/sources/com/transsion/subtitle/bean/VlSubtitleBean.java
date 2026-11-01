package com.transsion.subtitle.bean;

import androidx.annotation.Keep;
import androidx.compose.animation.core.r;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.moviedetailapi.bean.SubtitleItem;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0015\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\be\n\u0002\u0018\u0002\n\u0002\b=\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001Bß\u0003\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u0012\u0006\u0010\u0013\u001a\u00020\u0003\u0012\u0006\u0010\u0014\u001a\u00020\u0001\u0012\u0006\u0010\u0015\u001a\u00020\u0003\u0012\u0006\u0010\u0016\u001a\u00020\u0003\u0012\u0006\u0010\u0017\u001a\u00020\u0003\u0012\u0006\u0010\u0018\u001a\u00020\u0019\u0012\u0006\u0010\u001a\u001a\u00020\u0003\u0012\u0006\u0010\u001b\u001a\u00020\u001c\u0012\u0006\u0010\u001d\u001a\u00020\u001e\u0012\u0006\u0010\u001f\u001a\u00020\u0003\u0012\u0006\u0010 \u001a\u00020\u0003\u0012\u0006\u0010!\u001a\u00020\u0003\u0012\u0006\u0010\"\u001a\u00020\u0003\u0012\u0006\u0010#\u001a\u00020\u0003\u0012\u0006\u0010$\u001a\u00020\u0003\u0012\u0006\u0010%\u001a\u00020\u0003\u0012\u0006\u0010&\u001a\u00020\u0003\u0012\u0006\u0010'\u001a\u00020\u0003\u0012\u0006\u0010(\u001a\u00020\u0003\u0012\u0006\u0010)\u001a\u00020\u0003\u0012\u0006\u0010*\u001a\u00020\u0003\u0012\u0006\u0010+\u001a\u00020\u0003\u0012\u0006\u0010,\u001a\u00020\u0003\u0012\u0006\u0010-\u001a\u00020\u0003\u0012\u0006\u0010.\u001a\u00020\u0003\u0012\u0006\u0010/\u001a\u00020\u0003\u0012\u0006\u00100\u001a\u00020\u0003\u0012\u0006\u00101\u001a\u00020\u0003\u0012\u0006\u00102\u001a\u00020\u0003\u0012\u0006\u00103\u001a\u00020\u0003\u0012\u0006\u00104\u001a\u00020\u0003\u0012\u0006\u00105\u001a\u00020\u0003\u0012\u0006\u00106\u001a\u00020\u0003\u0012\u0006\u00107\u001a\u00020\u0003\u0012\u0006\u00108\u001a\u00020\u0003\u0012\u0006\u00109\u001a\u00020\u0003\u0012\u0006\u0010:\u001a\u00020\u0003\u0012\u0006\u0010;\u001a\u00020\u0003\u0012\u0006\u0010<\u001a\u00020\u0003\u0012\u0006\u0010=\u001a\u00020\u0003\u0012\u0006\u0010>\u001a\u00020\u0003\u0012\u0006\u0010?\u001a\u00020\u0003\u0012\u0006\u0010@\u001a\u00020\u0003¢\u0006\u0004\bA\u0010BJ\b\u0010\u0083\u0001\u001a\u00030\u0084\u0001J\n\u0010\u0085\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0086\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0087\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0088\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0089\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u008a\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u008b\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u008c\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u008d\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u008e\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u008f\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0090\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0091\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0092\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0093\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0094\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0095\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0096\u0001\u001a\u00020\u0001HÆ\u0003J\n\u0010\u0097\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0098\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0099\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u009a\u0001\u001a\u00020\u0019HÆ\u0003J\n\u0010\u009b\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u009c\u0001\u001a\u00020\u001cHÆ\u0003J\n\u0010\u009d\u0001\u001a\u00020\u001eHÆ\u0003J\n\u0010\u009e\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u009f\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010 \u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010¡\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010¢\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010£\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010¤\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010¥\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010¦\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010§\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010¨\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010©\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010ª\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010«\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010¬\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u00ad\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010®\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010¯\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010°\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010±\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010²\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010³\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010´\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010µ\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010¶\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010·\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010¸\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010¹\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010º\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010»\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010¼\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010½\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010¾\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010¿\u0001\u001a\u00020\u0003HÆ\u0003JØ\u0004\u0010À\u0001\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u00032\b\b\u0002\u0010\u0012\u001a\u00020\u00032\b\b\u0002\u0010\u0013\u001a\u00020\u00032\b\b\u0002\u0010\u0014\u001a\u00020\u00012\b\b\u0002\u0010\u0015\u001a\u00020\u00032\b\b\u0002\u0010\u0016\u001a\u00020\u00032\b\b\u0002\u0010\u0017\u001a\u00020\u00032\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00032\b\b\u0002\u0010\u001b\u001a\u00020\u001c2\b\b\u0002\u0010\u001d\u001a\u00020\u001e2\b\b\u0002\u0010\u001f\u001a\u00020\u00032\b\b\u0002\u0010 \u001a\u00020\u00032\b\b\u0002\u0010!\u001a\u00020\u00032\b\b\u0002\u0010\"\u001a\u00020\u00032\b\b\u0002\u0010#\u001a\u00020\u00032\b\b\u0002\u0010$\u001a\u00020\u00032\b\b\u0002\u0010%\u001a\u00020\u00032\b\b\u0002\u0010&\u001a\u00020\u00032\b\b\u0002\u0010'\u001a\u00020\u00032\b\b\u0002\u0010(\u001a\u00020\u00032\b\b\u0002\u0010)\u001a\u00020\u00032\b\b\u0002\u0010*\u001a\u00020\u00032\b\b\u0002\u0010+\u001a\u00020\u00032\b\b\u0002\u0010,\u001a\u00020\u00032\b\b\u0002\u0010-\u001a\u00020\u00032\b\b\u0002\u0010.\u001a\u00020\u00032\b\b\u0002\u0010/\u001a\u00020\u00032\b\b\u0002\u00100\u001a\u00020\u00032\b\b\u0002\u00101\u001a\u00020\u00032\b\b\u0002\u00102\u001a\u00020\u00032\b\b\u0002\u00103\u001a\u00020\u00032\b\b\u0002\u00104\u001a\u00020\u00032\b\b\u0002\u00105\u001a\u00020\u00032\b\b\u0002\u00106\u001a\u00020\u00032\b\b\u0002\u00107\u001a\u00020\u00032\b\b\u0002\u00108\u001a\u00020\u00032\b\b\u0002\u00109\u001a\u00020\u00032\b\b\u0002\u0010:\u001a\u00020\u00032\b\b\u0002\u0010;\u001a\u00020\u00032\b\b\u0002\u0010<\u001a\u00020\u00032\b\b\u0002\u0010=\u001a\u00020\u00032\b\b\u0002\u0010>\u001a\u00020\u00032\b\b\u0002\u0010?\u001a\u00020\u00032\b\b\u0002\u0010@\u001a\u00020\u0003HÆ\u0001J\u0016\u0010Á\u0001\u001a\u00030Â\u00012\t\u0010Ã\u0001\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\n\u0010Ä\u0001\u001a\u00020\u0019HÖ\u0001J\n\u0010Å\u0001\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bC\u0010DR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bE\u0010DR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bF\u0010DR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bG\u0010DR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bH\u0010DR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bI\u0010DR\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bJ\u0010DR\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bK\u0010DR\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bL\u0010DR\u0011\u0010\f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bM\u0010DR\u0011\u0010\r\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bN\u0010DR\u0011\u0010\u000e\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bO\u0010DR\u0011\u0010\u000f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bP\u0010DR\u0011\u0010\u0010\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bQ\u0010DR\u0011\u0010\u0011\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bR\u0010DR\u0011\u0010\u0012\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bS\u0010DR\u0011\u0010\u0013\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bT\u0010DR\u0011\u0010\u0014\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\bU\u0010VR\u0011\u0010\u0015\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bW\u0010DR\u0011\u0010\u0016\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bX\u0010DR\u0011\u0010\u0017\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bY\u0010DR\u0011\u0010\u0018\u001a\u00020\u0019¢\u0006\b\n\u0000\u001a\u0004\bZ\u0010[R\u0011\u0010\u001a\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\\\u0010DR\u0011\u0010\u001b\u001a\u00020\u001c¢\u0006\b\n\u0000\u001a\u0004\b]\u0010^R\u0011\u0010\u001d\u001a\u00020\u001e¢\u0006\b\n\u0000\u001a\u0004\b_\u0010`R\u0011\u0010\u001f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\ba\u0010DR\u0011\u0010 \u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bb\u0010DR\u0011\u0010!\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bc\u0010DR\u0011\u0010\"\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bd\u0010DR\u0011\u0010#\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\be\u0010DR\u0011\u0010$\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bf\u0010DR\u0011\u0010%\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bg\u0010DR\u0011\u0010&\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bh\u0010DR\u0011\u0010'\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bi\u0010DR\u0011\u0010(\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bj\u0010DR\u0011\u0010)\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bk\u0010DR\u0011\u0010*\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bl\u0010DR\u0011\u0010+\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bm\u0010DR\u0011\u0010,\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bn\u0010DR\u0011\u0010-\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bo\u0010DR\u0011\u0010.\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bp\u0010DR\u0011\u0010/\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bq\u0010DR\u0011\u00100\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\br\u0010DR\u0011\u00101\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bs\u0010DR\u0011\u00102\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bt\u0010DR\u0011\u00103\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bu\u0010DR\u0011\u00104\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bv\u0010DR\u0011\u00105\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bw\u0010DR\u0011\u00106\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bx\u0010DR\u0011\u00107\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\by\u0010DR\u0011\u00108\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bz\u0010DR\u0011\u00109\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b{\u0010DR\u0011\u0010:\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b|\u0010DR\u0011\u0010;\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b}\u0010DR\u0011\u0010<\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b~\u0010DR\u0011\u0010=\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u007f\u0010DR\u0012\u0010>\u001a\u00020\u0003¢\u0006\t\n\u0000\u001a\u0005\b\u0080\u0001\u0010DR\u0012\u0010?\u001a\u00020\u0003¢\u0006\t\n\u0000\u001a\u0005\b\u0081\u0001\u0010DR\u0012\u0010@\u001a\u00020\u0003¢\u0006\t\n\u0000\u001a\u0005\b\u0082\u0001\u0010D¨\u0006Æ\u0001"}, d2 = {"Lcom/transsion/subtitle/bean/VlSubtitleBean;", "", "IDMovie", "", "IDMovieImdb", "IDSubMovieFile", "IDSubtitle", "IDSubtitleFile", "ISO639", "InfoFormat", "InfoOther", "InfoReleaseGroup", "LanguageName", "MatchedBy", "MovieByteSize", "MovieFPS", "MovieHash", "MovieImdbRating", "MovieKind", "MovieName", "MovieNameEng", "MovieReleaseName", "MovieTimeMS", "MovieYear", "QueryCached", "", "QueryNumber", "QueryParameters", "Lcom/transsion/subtitle/bean/QueryParameters;", "Score", "", "SeriesEpisode", "SeriesIMDBParent", "SeriesSeason", "SubActualCD", "SubAddDate", "SubAuthorComment", "SubAutoTranslation", "SubBad", "SubComments", "SubDownloadLink", "SubDownloadsCnt", "SubEncoding", "SubFeatured", "SubFileName", "SubForeignPartsOnly", "SubFormat", "SubFromTrusted", "SubHD", "SubHash", "SubHearingImpaired", "SubLanguageID", "SubLastTS", "SubRating", "SubSize", "SubSumCD", "SubSumVotes", "SubTSGroup", "SubTSGroupHash", "SubTranslator", "SubtitlesLink", "UserID", "UserNickName", "UserRank", "ZipDownloadLink", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/transsion/subtitle/bean/QueryParameters;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getIDMovie", "()Ljava/lang/String;", "getIDMovieImdb", "getIDSubMovieFile", "getIDSubtitle", "getIDSubtitleFile", "getISO639", "getInfoFormat", "getInfoOther", "getInfoReleaseGroup", "getLanguageName", "getMatchedBy", "getMovieByteSize", "getMovieFPS", "getMovieHash", "getMovieImdbRating", "getMovieKind", "getMovieName", "getMovieNameEng", "()Ljava/lang/Object;", "getMovieReleaseName", "getMovieTimeMS", "getMovieYear", "getQueryCached", "()I", "getQueryNumber", "getQueryParameters", "()Lcom/transsion/subtitle/bean/QueryParameters;", "getScore", "()D", "getSeriesEpisode", "getSeriesIMDBParent", "getSeriesSeason", "getSubActualCD", "getSubAddDate", "getSubAuthorComment", "getSubAutoTranslation", "getSubBad", "getSubComments", "getSubDownloadLink", "getSubDownloadsCnt", "getSubEncoding", "getSubFeatured", "getSubFileName", "getSubForeignPartsOnly", "getSubFormat", "getSubFromTrusted", "getSubHD", "getSubHash", "getSubHearingImpaired", "getSubLanguageID", "getSubLastTS", "getSubRating", "getSubSize", "getSubSumCD", "getSubSumVotes", "getSubTSGroup", "getSubTSGroupHash", "getSubTranslator", "getSubtitlesLink", "getUserID", "getUserNickName", "getUserRank", "getZipDownloadLink", "toSubtitleBean", "Lcom/transsion/moviedetailapi/bean/SubtitleItem;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component28", "component29", "component30", "component31", "component32", "component33", "component34", "component35", "component36", "component37", "component38", "component39", "component40", "component41", "component42", "component43", "component44", "component45", "component46", "component47", "component48", "component49", "component50", "component51", "component52", "component53", "component54", "component55", "component56", "component57", "component58", "component59", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "VideoSubtitle_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class VlSubtitleBean {
    private final String IDMovie;
    private final String IDMovieImdb;
    private final String IDSubMovieFile;
    private final String IDSubtitle;
    private final String IDSubtitleFile;
    private final String ISO639;
    private final String InfoFormat;
    private final String InfoOther;
    private final String InfoReleaseGroup;
    private final String LanguageName;
    private final String MatchedBy;
    private final String MovieByteSize;
    private final String MovieFPS;
    private final String MovieHash;
    private final String MovieImdbRating;
    private final String MovieKind;
    private final String MovieName;
    private final Object MovieNameEng;
    private final String MovieReleaseName;
    private final String MovieTimeMS;
    private final String MovieYear;
    private final int QueryCached;
    private final String QueryNumber;
    private final QueryParameters QueryParameters;
    private final double Score;
    private final String SeriesEpisode;
    private final String SeriesIMDBParent;
    private final String SeriesSeason;
    private final String SubActualCD;
    private final String SubAddDate;
    private final String SubAuthorComment;
    private final String SubAutoTranslation;
    private final String SubBad;
    private final String SubComments;
    private final String SubDownloadLink;
    private final String SubDownloadsCnt;
    private final String SubEncoding;
    private final String SubFeatured;
    private final String SubFileName;
    private final String SubForeignPartsOnly;
    private final String SubFormat;
    private final String SubFromTrusted;
    private final String SubHD;
    private final String SubHash;
    private final String SubHearingImpaired;
    private final String SubLanguageID;
    private final String SubLastTS;
    private final String SubRating;
    private final String SubSize;
    private final String SubSumCD;
    private final String SubSumVotes;
    private final String SubTSGroup;
    private final String SubTSGroupHash;
    private final String SubTranslator;
    private final String SubtitlesLink;
    private final String UserID;
    private final String UserNickName;
    private final String UserRank;
    private final String ZipDownloadLink;

    public VlSubtitleBean(String IDMovie, String IDMovieImdb, String IDSubMovieFile, String IDSubtitle, String IDSubtitleFile, String ISO639, String InfoFormat, String InfoOther, String InfoReleaseGroup, String LanguageName, String MatchedBy, String MovieByteSize, String MovieFPS, String MovieHash, String MovieImdbRating, String MovieKind, String MovieName, Object MovieNameEng, String MovieReleaseName, String MovieTimeMS, String MovieYear, int i11, String QueryNumber, QueryParameters QueryParameters, double d11, String SeriesEpisode, String SeriesIMDBParent, String SeriesSeason, String SubActualCD, String SubAddDate, String SubAuthorComment, String SubAutoTranslation, String SubBad, String SubComments, String SubDownloadLink, String SubDownloadsCnt, String SubEncoding, String SubFeatured, String SubFileName, String SubForeignPartsOnly, String SubFormat, String SubFromTrusted, String SubHD, String SubHash, String SubHearingImpaired, String SubLanguageID, String SubLastTS, String SubRating, String SubSize, String SubSumCD, String SubSumVotes, String SubTSGroup, String SubTSGroupHash, String SubTranslator, String SubtitlesLink, String UserID, String UserNickName, String UserRank, String ZipDownloadLink) {
        Intrinsics.h(IDMovie, "IDMovie");
        Intrinsics.h(IDMovieImdb, "IDMovieImdb");
        Intrinsics.h(IDSubMovieFile, "IDSubMovieFile");
        Intrinsics.h(IDSubtitle, "IDSubtitle");
        Intrinsics.h(IDSubtitleFile, "IDSubtitleFile");
        Intrinsics.h(ISO639, "ISO639");
        Intrinsics.h(InfoFormat, "InfoFormat");
        Intrinsics.h(InfoOther, "InfoOther");
        Intrinsics.h(InfoReleaseGroup, "InfoReleaseGroup");
        Intrinsics.h(LanguageName, "LanguageName");
        Intrinsics.h(MatchedBy, "MatchedBy");
        Intrinsics.h(MovieByteSize, "MovieByteSize");
        Intrinsics.h(MovieFPS, "MovieFPS");
        Intrinsics.h(MovieHash, "MovieHash");
        Intrinsics.h(MovieImdbRating, "MovieImdbRating");
        Intrinsics.h(MovieKind, "MovieKind");
        Intrinsics.h(MovieName, "MovieName");
        Intrinsics.h(MovieNameEng, "MovieNameEng");
        Intrinsics.h(MovieReleaseName, "MovieReleaseName");
        Intrinsics.h(MovieTimeMS, "MovieTimeMS");
        Intrinsics.h(MovieYear, "MovieYear");
        Intrinsics.h(QueryNumber, "QueryNumber");
        Intrinsics.h(QueryParameters, "QueryParameters");
        Intrinsics.h(SeriesEpisode, "SeriesEpisode");
        Intrinsics.h(SeriesIMDBParent, "SeriesIMDBParent");
        Intrinsics.h(SeriesSeason, "SeriesSeason");
        Intrinsics.h(SubActualCD, "SubActualCD");
        Intrinsics.h(SubAddDate, "SubAddDate");
        Intrinsics.h(SubAuthorComment, "SubAuthorComment");
        Intrinsics.h(SubAutoTranslation, "SubAutoTranslation");
        Intrinsics.h(SubBad, "SubBad");
        Intrinsics.h(SubComments, "SubComments");
        Intrinsics.h(SubDownloadLink, "SubDownloadLink");
        Intrinsics.h(SubDownloadsCnt, "SubDownloadsCnt");
        Intrinsics.h(SubEncoding, "SubEncoding");
        Intrinsics.h(SubFeatured, "SubFeatured");
        Intrinsics.h(SubFileName, "SubFileName");
        Intrinsics.h(SubForeignPartsOnly, "SubForeignPartsOnly");
        Intrinsics.h(SubFormat, "SubFormat");
        Intrinsics.h(SubFromTrusted, "SubFromTrusted");
        Intrinsics.h(SubHD, "SubHD");
        Intrinsics.h(SubHash, "SubHash");
        Intrinsics.h(SubHearingImpaired, "SubHearingImpaired");
        Intrinsics.h(SubLanguageID, "SubLanguageID");
        Intrinsics.h(SubLastTS, "SubLastTS");
        Intrinsics.h(SubRating, "SubRating");
        Intrinsics.h(SubSize, "SubSize");
        Intrinsics.h(SubSumCD, "SubSumCD");
        Intrinsics.h(SubSumVotes, "SubSumVotes");
        Intrinsics.h(SubTSGroup, "SubTSGroup");
        Intrinsics.h(SubTSGroupHash, "SubTSGroupHash");
        Intrinsics.h(SubTranslator, "SubTranslator");
        Intrinsics.h(SubtitlesLink, "SubtitlesLink");
        Intrinsics.h(UserID, "UserID");
        Intrinsics.h(UserNickName, "UserNickName");
        Intrinsics.h(UserRank, "UserRank");
        Intrinsics.h(ZipDownloadLink, "ZipDownloadLink");
        this.IDMovie = IDMovie;
        this.IDMovieImdb = IDMovieImdb;
        this.IDSubMovieFile = IDSubMovieFile;
        this.IDSubtitle = IDSubtitle;
        this.IDSubtitleFile = IDSubtitleFile;
        this.ISO639 = ISO639;
        this.InfoFormat = InfoFormat;
        this.InfoOther = InfoOther;
        this.InfoReleaseGroup = InfoReleaseGroup;
        this.LanguageName = LanguageName;
        this.MatchedBy = MatchedBy;
        this.MovieByteSize = MovieByteSize;
        this.MovieFPS = MovieFPS;
        this.MovieHash = MovieHash;
        this.MovieImdbRating = MovieImdbRating;
        this.MovieKind = MovieKind;
        this.MovieName = MovieName;
        this.MovieNameEng = MovieNameEng;
        this.MovieReleaseName = MovieReleaseName;
        this.MovieTimeMS = MovieTimeMS;
        this.MovieYear = MovieYear;
        this.QueryCached = i11;
        this.QueryNumber = QueryNumber;
        this.QueryParameters = QueryParameters;
        this.Score = d11;
        this.SeriesEpisode = SeriesEpisode;
        this.SeriesIMDBParent = SeriesIMDBParent;
        this.SeriesSeason = SeriesSeason;
        this.SubActualCD = SubActualCD;
        this.SubAddDate = SubAddDate;
        this.SubAuthorComment = SubAuthorComment;
        this.SubAutoTranslation = SubAutoTranslation;
        this.SubBad = SubBad;
        this.SubComments = SubComments;
        this.SubDownloadLink = SubDownloadLink;
        this.SubDownloadsCnt = SubDownloadsCnt;
        this.SubEncoding = SubEncoding;
        this.SubFeatured = SubFeatured;
        this.SubFileName = SubFileName;
        this.SubForeignPartsOnly = SubForeignPartsOnly;
        this.SubFormat = SubFormat;
        this.SubFromTrusted = SubFromTrusted;
        this.SubHD = SubHD;
        this.SubHash = SubHash;
        this.SubHearingImpaired = SubHearingImpaired;
        this.SubLanguageID = SubLanguageID;
        this.SubLastTS = SubLastTS;
        this.SubRating = SubRating;
        this.SubSize = SubSize;
        this.SubSumCD = SubSumCD;
        this.SubSumVotes = SubSumVotes;
        this.SubTSGroup = SubTSGroup;
        this.SubTSGroupHash = SubTSGroupHash;
        this.SubTranslator = SubTranslator;
        this.SubtitlesLink = SubtitlesLink;
        this.UserID = UserID;
        this.UserNickName = UserNickName;
        this.UserRank = UserRank;
        this.ZipDownloadLink = ZipDownloadLink;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getIDMovie() {
        return this.IDMovie;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getLanguageName() {
        return this.LanguageName;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getMatchedBy() {
        return this.MatchedBy;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getMovieByteSize() {
        return this.MovieByteSize;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final String getMovieFPS() {
        return this.MovieFPS;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getMovieHash() {
        return this.MovieHash;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final String getMovieImdbRating() {
        return this.MovieImdbRating;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final String getMovieKind() {
        return this.MovieKind;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final String getMovieName() {
        return this.MovieName;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final Object getMovieNameEng() {
        return this.MovieNameEng;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final String getMovieReleaseName() {
        return this.MovieReleaseName;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getIDMovieImdb() {
        return this.IDMovieImdb;
    }

    /* JADX INFO: renamed from: component20, reason: from getter */
    public final String getMovieTimeMS() {
        return this.MovieTimeMS;
    }

    /* JADX INFO: renamed from: component21, reason: from getter */
    public final String getMovieYear() {
        return this.MovieYear;
    }

    /* JADX INFO: renamed from: component22, reason: from getter */
    public final int getQueryCached() {
        return this.QueryCached;
    }

    /* JADX INFO: renamed from: component23, reason: from getter */
    public final String getQueryNumber() {
        return this.QueryNumber;
    }

    /* JADX INFO: renamed from: component24, reason: from getter */
    public final QueryParameters getQueryParameters() {
        return this.QueryParameters;
    }

    /* JADX INFO: renamed from: component25, reason: from getter */
    public final double getScore() {
        return this.Score;
    }

    /* JADX INFO: renamed from: component26, reason: from getter */
    public final String getSeriesEpisode() {
        return this.SeriesEpisode;
    }

    /* JADX INFO: renamed from: component27, reason: from getter */
    public final String getSeriesIMDBParent() {
        return this.SeriesIMDBParent;
    }

    /* JADX INFO: renamed from: component28, reason: from getter */
    public final String getSeriesSeason() {
        return this.SeriesSeason;
    }

    /* JADX INFO: renamed from: component29, reason: from getter */
    public final String getSubActualCD() {
        return this.SubActualCD;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getIDSubMovieFile() {
        return this.IDSubMovieFile;
    }

    /* JADX INFO: renamed from: component30, reason: from getter */
    public final String getSubAddDate() {
        return this.SubAddDate;
    }

    /* JADX INFO: renamed from: component31, reason: from getter */
    public final String getSubAuthorComment() {
        return this.SubAuthorComment;
    }

    /* JADX INFO: renamed from: component32, reason: from getter */
    public final String getSubAutoTranslation() {
        return this.SubAutoTranslation;
    }

    /* JADX INFO: renamed from: component33, reason: from getter */
    public final String getSubBad() {
        return this.SubBad;
    }

    /* JADX INFO: renamed from: component34, reason: from getter */
    public final String getSubComments() {
        return this.SubComments;
    }

    /* JADX INFO: renamed from: component35, reason: from getter */
    public final String getSubDownloadLink() {
        return this.SubDownloadLink;
    }

    /* JADX INFO: renamed from: component36, reason: from getter */
    public final String getSubDownloadsCnt() {
        return this.SubDownloadsCnt;
    }

    /* JADX INFO: renamed from: component37, reason: from getter */
    public final String getSubEncoding() {
        return this.SubEncoding;
    }

    /* JADX INFO: renamed from: component38, reason: from getter */
    public final String getSubFeatured() {
        return this.SubFeatured;
    }

    /* JADX INFO: renamed from: component39, reason: from getter */
    public final String getSubFileName() {
        return this.SubFileName;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getIDSubtitle() {
        return this.IDSubtitle;
    }

    /* JADX INFO: renamed from: component40, reason: from getter */
    public final String getSubForeignPartsOnly() {
        return this.SubForeignPartsOnly;
    }

    /* JADX INFO: renamed from: component41, reason: from getter */
    public final String getSubFormat() {
        return this.SubFormat;
    }

    /* JADX INFO: renamed from: component42, reason: from getter */
    public final String getSubFromTrusted() {
        return this.SubFromTrusted;
    }

    /* JADX INFO: renamed from: component43, reason: from getter */
    public final String getSubHD() {
        return this.SubHD;
    }

    /* JADX INFO: renamed from: component44, reason: from getter */
    public final String getSubHash() {
        return this.SubHash;
    }

    /* JADX INFO: renamed from: component45, reason: from getter */
    public final String getSubHearingImpaired() {
        return this.SubHearingImpaired;
    }

    /* JADX INFO: renamed from: component46, reason: from getter */
    public final String getSubLanguageID() {
        return this.SubLanguageID;
    }

    /* JADX INFO: renamed from: component47, reason: from getter */
    public final String getSubLastTS() {
        return this.SubLastTS;
    }

    /* JADX INFO: renamed from: component48, reason: from getter */
    public final String getSubRating() {
        return this.SubRating;
    }

    /* JADX INFO: renamed from: component49, reason: from getter */
    public final String getSubSize() {
        return this.SubSize;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getIDSubtitleFile() {
        return this.IDSubtitleFile;
    }

    /* JADX INFO: renamed from: component50, reason: from getter */
    public final String getSubSumCD() {
        return this.SubSumCD;
    }

    /* JADX INFO: renamed from: component51, reason: from getter */
    public final String getSubSumVotes() {
        return this.SubSumVotes;
    }

    /* JADX INFO: renamed from: component52, reason: from getter */
    public final String getSubTSGroup() {
        return this.SubTSGroup;
    }

    /* JADX INFO: renamed from: component53, reason: from getter */
    public final String getSubTSGroupHash() {
        return this.SubTSGroupHash;
    }

    /* JADX INFO: renamed from: component54, reason: from getter */
    public final String getSubTranslator() {
        return this.SubTranslator;
    }

    /* JADX INFO: renamed from: component55, reason: from getter */
    public final String getSubtitlesLink() {
        return this.SubtitlesLink;
    }

    /* JADX INFO: renamed from: component56, reason: from getter */
    public final String getUserID() {
        return this.UserID;
    }

    /* JADX INFO: renamed from: component57, reason: from getter */
    public final String getUserNickName() {
        return this.UserNickName;
    }

    /* JADX INFO: renamed from: component58, reason: from getter */
    public final String getUserRank() {
        return this.UserRank;
    }

    /* JADX INFO: renamed from: component59, reason: from getter */
    public final String getZipDownloadLink() {
        return this.ZipDownloadLink;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getISO639() {
        return this.ISO639;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getInfoFormat() {
        return this.InfoFormat;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getInfoOther() {
        return this.InfoOther;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getInfoReleaseGroup() {
        return this.InfoReleaseGroup;
    }

    public final VlSubtitleBean copy(String IDMovie, String IDMovieImdb, String IDSubMovieFile, String IDSubtitle, String IDSubtitleFile, String ISO639, String InfoFormat, String InfoOther, String InfoReleaseGroup, String LanguageName, String MatchedBy, String MovieByteSize, String MovieFPS, String MovieHash, String MovieImdbRating, String MovieKind, String MovieName, Object MovieNameEng, String MovieReleaseName, String MovieTimeMS, String MovieYear, int QueryCached, String QueryNumber, QueryParameters QueryParameters, double Score, String SeriesEpisode, String SeriesIMDBParent, String SeriesSeason, String SubActualCD, String SubAddDate, String SubAuthorComment, String SubAutoTranslation, String SubBad, String SubComments, String SubDownloadLink, String SubDownloadsCnt, String SubEncoding, String SubFeatured, String SubFileName, String SubForeignPartsOnly, String SubFormat, String SubFromTrusted, String SubHD, String SubHash, String SubHearingImpaired, String SubLanguageID, String SubLastTS, String SubRating, String SubSize, String SubSumCD, String SubSumVotes, String SubTSGroup, String SubTSGroupHash, String SubTranslator, String SubtitlesLink, String UserID, String UserNickName, String UserRank, String ZipDownloadLink) {
        Intrinsics.h(IDMovie, "IDMovie");
        Intrinsics.h(IDMovieImdb, "IDMovieImdb");
        Intrinsics.h(IDSubMovieFile, "IDSubMovieFile");
        Intrinsics.h(IDSubtitle, "IDSubtitle");
        Intrinsics.h(IDSubtitleFile, "IDSubtitleFile");
        Intrinsics.h(ISO639, "ISO639");
        Intrinsics.h(InfoFormat, "InfoFormat");
        Intrinsics.h(InfoOther, "InfoOther");
        Intrinsics.h(InfoReleaseGroup, "InfoReleaseGroup");
        Intrinsics.h(LanguageName, "LanguageName");
        Intrinsics.h(MatchedBy, "MatchedBy");
        Intrinsics.h(MovieByteSize, "MovieByteSize");
        Intrinsics.h(MovieFPS, "MovieFPS");
        Intrinsics.h(MovieHash, "MovieHash");
        Intrinsics.h(MovieImdbRating, "MovieImdbRating");
        Intrinsics.h(MovieKind, "MovieKind");
        Intrinsics.h(MovieName, "MovieName");
        Intrinsics.h(MovieNameEng, "MovieNameEng");
        Intrinsics.h(MovieReleaseName, "MovieReleaseName");
        Intrinsics.h(MovieTimeMS, "MovieTimeMS");
        Intrinsics.h(MovieYear, "MovieYear");
        Intrinsics.h(QueryNumber, "QueryNumber");
        Intrinsics.h(QueryParameters, "QueryParameters");
        Intrinsics.h(SeriesEpisode, "SeriesEpisode");
        Intrinsics.h(SeriesIMDBParent, "SeriesIMDBParent");
        Intrinsics.h(SeriesSeason, "SeriesSeason");
        Intrinsics.h(SubActualCD, "SubActualCD");
        Intrinsics.h(SubAddDate, "SubAddDate");
        Intrinsics.h(SubAuthorComment, "SubAuthorComment");
        Intrinsics.h(SubAutoTranslation, "SubAutoTranslation");
        Intrinsics.h(SubBad, "SubBad");
        Intrinsics.h(SubComments, "SubComments");
        Intrinsics.h(SubDownloadLink, "SubDownloadLink");
        Intrinsics.h(SubDownloadsCnt, "SubDownloadsCnt");
        Intrinsics.h(SubEncoding, "SubEncoding");
        Intrinsics.h(SubFeatured, "SubFeatured");
        Intrinsics.h(SubFileName, "SubFileName");
        Intrinsics.h(SubForeignPartsOnly, "SubForeignPartsOnly");
        Intrinsics.h(SubFormat, "SubFormat");
        Intrinsics.h(SubFromTrusted, "SubFromTrusted");
        Intrinsics.h(SubHD, "SubHD");
        Intrinsics.h(SubHash, "SubHash");
        Intrinsics.h(SubHearingImpaired, "SubHearingImpaired");
        Intrinsics.h(SubLanguageID, "SubLanguageID");
        Intrinsics.h(SubLastTS, "SubLastTS");
        Intrinsics.h(SubRating, "SubRating");
        Intrinsics.h(SubSize, "SubSize");
        Intrinsics.h(SubSumCD, "SubSumCD");
        Intrinsics.h(SubSumVotes, "SubSumVotes");
        Intrinsics.h(SubTSGroup, "SubTSGroup");
        Intrinsics.h(SubTSGroupHash, "SubTSGroupHash");
        Intrinsics.h(SubTranslator, "SubTranslator");
        Intrinsics.h(SubtitlesLink, "SubtitlesLink");
        Intrinsics.h(UserID, "UserID");
        Intrinsics.h(UserNickName, "UserNickName");
        Intrinsics.h(UserRank, "UserRank");
        Intrinsics.h(ZipDownloadLink, "ZipDownloadLink");
        return new VlSubtitleBean(IDMovie, IDMovieImdb, IDSubMovieFile, IDSubtitle, IDSubtitleFile, ISO639, InfoFormat, InfoOther, InfoReleaseGroup, LanguageName, MatchedBy, MovieByteSize, MovieFPS, MovieHash, MovieImdbRating, MovieKind, MovieName, MovieNameEng, MovieReleaseName, MovieTimeMS, MovieYear, QueryCached, QueryNumber, QueryParameters, Score, SeriesEpisode, SeriesIMDBParent, SeriesSeason, SubActualCD, SubAddDate, SubAuthorComment, SubAutoTranslation, SubBad, SubComments, SubDownloadLink, SubDownloadsCnt, SubEncoding, SubFeatured, SubFileName, SubForeignPartsOnly, SubFormat, SubFromTrusted, SubHD, SubHash, SubHearingImpaired, SubLanguageID, SubLastTS, SubRating, SubSize, SubSumCD, SubSumVotes, SubTSGroup, SubTSGroupHash, SubTranslator, SubtitlesLink, UserID, UserNickName, UserRank, ZipDownloadLink);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VlSubtitleBean)) {
            return false;
        }
        VlSubtitleBean vlSubtitleBean = (VlSubtitleBean) other;
        return Intrinsics.c(this.IDMovie, vlSubtitleBean.IDMovie) && Intrinsics.c(this.IDMovieImdb, vlSubtitleBean.IDMovieImdb) && Intrinsics.c(this.IDSubMovieFile, vlSubtitleBean.IDSubMovieFile) && Intrinsics.c(this.IDSubtitle, vlSubtitleBean.IDSubtitle) && Intrinsics.c(this.IDSubtitleFile, vlSubtitleBean.IDSubtitleFile) && Intrinsics.c(this.ISO639, vlSubtitleBean.ISO639) && Intrinsics.c(this.InfoFormat, vlSubtitleBean.InfoFormat) && Intrinsics.c(this.InfoOther, vlSubtitleBean.InfoOther) && Intrinsics.c(this.InfoReleaseGroup, vlSubtitleBean.InfoReleaseGroup) && Intrinsics.c(this.LanguageName, vlSubtitleBean.LanguageName) && Intrinsics.c(this.MatchedBy, vlSubtitleBean.MatchedBy) && Intrinsics.c(this.MovieByteSize, vlSubtitleBean.MovieByteSize) && Intrinsics.c(this.MovieFPS, vlSubtitleBean.MovieFPS) && Intrinsics.c(this.MovieHash, vlSubtitleBean.MovieHash) && Intrinsics.c(this.MovieImdbRating, vlSubtitleBean.MovieImdbRating) && Intrinsics.c(this.MovieKind, vlSubtitleBean.MovieKind) && Intrinsics.c(this.MovieName, vlSubtitleBean.MovieName) && Intrinsics.c(this.MovieNameEng, vlSubtitleBean.MovieNameEng) && Intrinsics.c(this.MovieReleaseName, vlSubtitleBean.MovieReleaseName) && Intrinsics.c(this.MovieTimeMS, vlSubtitleBean.MovieTimeMS) && Intrinsics.c(this.MovieYear, vlSubtitleBean.MovieYear) && this.QueryCached == vlSubtitleBean.QueryCached && Intrinsics.c(this.QueryNumber, vlSubtitleBean.QueryNumber) && Intrinsics.c(this.QueryParameters, vlSubtitleBean.QueryParameters) && Double.compare(this.Score, vlSubtitleBean.Score) == 0 && Intrinsics.c(this.SeriesEpisode, vlSubtitleBean.SeriesEpisode) && Intrinsics.c(this.SeriesIMDBParent, vlSubtitleBean.SeriesIMDBParent) && Intrinsics.c(this.SeriesSeason, vlSubtitleBean.SeriesSeason) && Intrinsics.c(this.SubActualCD, vlSubtitleBean.SubActualCD) && Intrinsics.c(this.SubAddDate, vlSubtitleBean.SubAddDate) && Intrinsics.c(this.SubAuthorComment, vlSubtitleBean.SubAuthorComment) && Intrinsics.c(this.SubAutoTranslation, vlSubtitleBean.SubAutoTranslation) && Intrinsics.c(this.SubBad, vlSubtitleBean.SubBad) && Intrinsics.c(this.SubComments, vlSubtitleBean.SubComments) && Intrinsics.c(this.SubDownloadLink, vlSubtitleBean.SubDownloadLink) && Intrinsics.c(this.SubDownloadsCnt, vlSubtitleBean.SubDownloadsCnt) && Intrinsics.c(this.SubEncoding, vlSubtitleBean.SubEncoding) && Intrinsics.c(this.SubFeatured, vlSubtitleBean.SubFeatured) && Intrinsics.c(this.SubFileName, vlSubtitleBean.SubFileName) && Intrinsics.c(this.SubForeignPartsOnly, vlSubtitleBean.SubForeignPartsOnly) && Intrinsics.c(this.SubFormat, vlSubtitleBean.SubFormat) && Intrinsics.c(this.SubFromTrusted, vlSubtitleBean.SubFromTrusted) && Intrinsics.c(this.SubHD, vlSubtitleBean.SubHD) && Intrinsics.c(this.SubHash, vlSubtitleBean.SubHash) && Intrinsics.c(this.SubHearingImpaired, vlSubtitleBean.SubHearingImpaired) && Intrinsics.c(this.SubLanguageID, vlSubtitleBean.SubLanguageID) && Intrinsics.c(this.SubLastTS, vlSubtitleBean.SubLastTS) && Intrinsics.c(this.SubRating, vlSubtitleBean.SubRating) && Intrinsics.c(this.SubSize, vlSubtitleBean.SubSize) && Intrinsics.c(this.SubSumCD, vlSubtitleBean.SubSumCD) && Intrinsics.c(this.SubSumVotes, vlSubtitleBean.SubSumVotes) && Intrinsics.c(this.SubTSGroup, vlSubtitleBean.SubTSGroup) && Intrinsics.c(this.SubTSGroupHash, vlSubtitleBean.SubTSGroupHash) && Intrinsics.c(this.SubTranslator, vlSubtitleBean.SubTranslator) && Intrinsics.c(this.SubtitlesLink, vlSubtitleBean.SubtitlesLink) && Intrinsics.c(this.UserID, vlSubtitleBean.UserID) && Intrinsics.c(this.UserNickName, vlSubtitleBean.UserNickName) && Intrinsics.c(this.UserRank, vlSubtitleBean.UserRank) && Intrinsics.c(this.ZipDownloadLink, vlSubtitleBean.ZipDownloadLink);
    }

    public final String getIDMovie() {
        return this.IDMovie;
    }

    public final String getIDMovieImdb() {
        return this.IDMovieImdb;
    }

    public final String getIDSubMovieFile() {
        return this.IDSubMovieFile;
    }

    public final String getIDSubtitle() {
        return this.IDSubtitle;
    }

    public final String getIDSubtitleFile() {
        return this.IDSubtitleFile;
    }

    public final String getISO639() {
        return this.ISO639;
    }

    public final String getInfoFormat() {
        return this.InfoFormat;
    }

    public final String getInfoOther() {
        return this.InfoOther;
    }

    public final String getInfoReleaseGroup() {
        return this.InfoReleaseGroup;
    }

    public final String getLanguageName() {
        return this.LanguageName;
    }

    public final String getMatchedBy() {
        return this.MatchedBy;
    }

    public final String getMovieByteSize() {
        return this.MovieByteSize;
    }

    public final String getMovieFPS() {
        return this.MovieFPS;
    }

    public final String getMovieHash() {
        return this.MovieHash;
    }

    public final String getMovieImdbRating() {
        return this.MovieImdbRating;
    }

    public final String getMovieKind() {
        return this.MovieKind;
    }

    public final String getMovieName() {
        return this.MovieName;
    }

    public final Object getMovieNameEng() {
        return this.MovieNameEng;
    }

    public final String getMovieReleaseName() {
        return this.MovieReleaseName;
    }

    public final String getMovieTimeMS() {
        return this.MovieTimeMS;
    }

    public final String getMovieYear() {
        return this.MovieYear;
    }

    public final int getQueryCached() {
        return this.QueryCached;
    }

    public final String getQueryNumber() {
        return this.QueryNumber;
    }

    public final QueryParameters getQueryParameters() {
        return this.QueryParameters;
    }

    public final double getScore() {
        return this.Score;
    }

    public final String getSeriesEpisode() {
        return this.SeriesEpisode;
    }

    public final String getSeriesIMDBParent() {
        return this.SeriesIMDBParent;
    }

    public final String getSeriesSeason() {
        return this.SeriesSeason;
    }

    public final String getSubActualCD() {
        return this.SubActualCD;
    }

    public final String getSubAddDate() {
        return this.SubAddDate;
    }

    public final String getSubAuthorComment() {
        return this.SubAuthorComment;
    }

    public final String getSubAutoTranslation() {
        return this.SubAutoTranslation;
    }

    public final String getSubBad() {
        return this.SubBad;
    }

    public final String getSubComments() {
        return this.SubComments;
    }

    public final String getSubDownloadLink() {
        return this.SubDownloadLink;
    }

    public final String getSubDownloadsCnt() {
        return this.SubDownloadsCnt;
    }

    public final String getSubEncoding() {
        return this.SubEncoding;
    }

    public final String getSubFeatured() {
        return this.SubFeatured;
    }

    public final String getSubFileName() {
        return this.SubFileName;
    }

    public final String getSubForeignPartsOnly() {
        return this.SubForeignPartsOnly;
    }

    public final String getSubFormat() {
        return this.SubFormat;
    }

    public final String getSubFromTrusted() {
        return this.SubFromTrusted;
    }

    public final String getSubHD() {
        return this.SubHD;
    }

    public final String getSubHash() {
        return this.SubHash;
    }

    public final String getSubHearingImpaired() {
        return this.SubHearingImpaired;
    }

    public final String getSubLanguageID() {
        return this.SubLanguageID;
    }

    public final String getSubLastTS() {
        return this.SubLastTS;
    }

    public final String getSubRating() {
        return this.SubRating;
    }

    public final String getSubSize() {
        return this.SubSize;
    }

    public final String getSubSumCD() {
        return this.SubSumCD;
    }

    public final String getSubSumVotes() {
        return this.SubSumVotes;
    }

    public final String getSubTSGroup() {
        return this.SubTSGroup;
    }

    public final String getSubTSGroupHash() {
        return this.SubTSGroupHash;
    }

    public final String getSubTranslator() {
        return this.SubTranslator;
    }

    public final String getSubtitlesLink() {
        return this.SubtitlesLink;
    }

    public final String getUserID() {
        return this.UserID;
    }

    public final String getUserNickName() {
        return this.UserNickName;
    }

    public final String getUserRank() {
        return this.UserRank;
    }

    public final String getZipDownloadLink() {
        return this.ZipDownloadLink;
    }

    public int hashCode() {
        return (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((this.IDMovie.hashCode() * 31) + this.IDMovieImdb.hashCode()) * 31) + this.IDSubMovieFile.hashCode()) * 31) + this.IDSubtitle.hashCode()) * 31) + this.IDSubtitleFile.hashCode()) * 31) + this.ISO639.hashCode()) * 31) + this.InfoFormat.hashCode()) * 31) + this.InfoOther.hashCode()) * 31) + this.InfoReleaseGroup.hashCode()) * 31) + this.LanguageName.hashCode()) * 31) + this.MatchedBy.hashCode()) * 31) + this.MovieByteSize.hashCode()) * 31) + this.MovieFPS.hashCode()) * 31) + this.MovieHash.hashCode()) * 31) + this.MovieImdbRating.hashCode()) * 31) + this.MovieKind.hashCode()) * 31) + this.MovieName.hashCode()) * 31) + this.MovieNameEng.hashCode()) * 31) + this.MovieReleaseName.hashCode()) * 31) + this.MovieTimeMS.hashCode()) * 31) + this.MovieYear.hashCode()) * 31) + this.QueryCached) * 31) + this.QueryNumber.hashCode()) * 31) + this.QueryParameters.hashCode()) * 31) + r.a(this.Score)) * 31) + this.SeriesEpisode.hashCode()) * 31) + this.SeriesIMDBParent.hashCode()) * 31) + this.SeriesSeason.hashCode()) * 31) + this.SubActualCD.hashCode()) * 31) + this.SubAddDate.hashCode()) * 31) + this.SubAuthorComment.hashCode()) * 31) + this.SubAutoTranslation.hashCode()) * 31) + this.SubBad.hashCode()) * 31) + this.SubComments.hashCode()) * 31) + this.SubDownloadLink.hashCode()) * 31) + this.SubDownloadsCnt.hashCode()) * 31) + this.SubEncoding.hashCode()) * 31) + this.SubFeatured.hashCode()) * 31) + this.SubFileName.hashCode()) * 31) + this.SubForeignPartsOnly.hashCode()) * 31) + this.SubFormat.hashCode()) * 31) + this.SubFromTrusted.hashCode()) * 31) + this.SubHD.hashCode()) * 31) + this.SubHash.hashCode()) * 31) + this.SubHearingImpaired.hashCode()) * 31) + this.SubLanguageID.hashCode()) * 31) + this.SubLastTS.hashCode()) * 31) + this.SubRating.hashCode()) * 31) + this.SubSize.hashCode()) * 31) + this.SubSumCD.hashCode()) * 31) + this.SubSumVotes.hashCode()) * 31) + this.SubTSGroup.hashCode()) * 31) + this.SubTSGroupHash.hashCode()) * 31) + this.SubTranslator.hashCode()) * 31) + this.SubtitlesLink.hashCode()) * 31) + this.UserID.hashCode()) * 31) + this.UserNickName.hashCode()) * 31) + this.UserRank.hashCode()) * 31) + this.ZipDownloadLink.hashCode();
    }

    public String toString() {
        return "VlSubtitleBean(IDMovie=" + this.IDMovie + ", IDMovieImdb=" + this.IDMovieImdb + ", IDSubMovieFile=" + this.IDSubMovieFile + ", IDSubtitle=" + this.IDSubtitle + ", IDSubtitleFile=" + this.IDSubtitleFile + ", ISO639=" + this.ISO639 + ", InfoFormat=" + this.InfoFormat + ", InfoOther=" + this.InfoOther + ", InfoReleaseGroup=" + this.InfoReleaseGroup + ", LanguageName=" + this.LanguageName + ", MatchedBy=" + this.MatchedBy + ", MovieByteSize=" + this.MovieByteSize + ", MovieFPS=" + this.MovieFPS + ", MovieHash=" + this.MovieHash + ", MovieImdbRating=" + this.MovieImdbRating + ", MovieKind=" + this.MovieKind + ", MovieName=" + this.MovieName + ", MovieNameEng=" + this.MovieNameEng + ", MovieReleaseName=" + this.MovieReleaseName + ", MovieTimeMS=" + this.MovieTimeMS + ", MovieYear=" + this.MovieYear + ", QueryCached=" + this.QueryCached + ", QueryNumber=" + this.QueryNumber + ", QueryParameters=" + this.QueryParameters + ", Score=" + this.Score + ", SeriesEpisode=" + this.SeriesEpisode + ", SeriesIMDBParent=" + this.SeriesIMDBParent + ", SeriesSeason=" + this.SeriesSeason + ", SubActualCD=" + this.SubActualCD + ", SubAddDate=" + this.SubAddDate + ", SubAuthorComment=" + this.SubAuthorComment + ", SubAutoTranslation=" + this.SubAutoTranslation + ", SubBad=" + this.SubBad + ", SubComments=" + this.SubComments + ", SubDownloadLink=" + this.SubDownloadLink + ", SubDownloadsCnt=" + this.SubDownloadsCnt + ", SubEncoding=" + this.SubEncoding + ", SubFeatured=" + this.SubFeatured + ", SubFileName=" + this.SubFileName + ", SubForeignPartsOnly=" + this.SubForeignPartsOnly + ", SubFormat=" + this.SubFormat + ", SubFromTrusted=" + this.SubFromTrusted + ", SubHD=" + this.SubHD + ", SubHash=" + this.SubHash + ", SubHearingImpaired=" + this.SubHearingImpaired + ", SubLanguageID=" + this.SubLanguageID + ", SubLastTS=" + this.SubLastTS + ", SubRating=" + this.SubRating + ", SubSize=" + this.SubSize + ", SubSumCD=" + this.SubSumCD + ", SubSumVotes=" + this.SubSumVotes + ", SubTSGroup=" + this.SubTSGroup + ", SubTSGroupHash=" + this.SubTSGroupHash + ", SubTranslator=" + this.SubTranslator + ", SubtitlesLink=" + this.SubtitlesLink + ", UserID=" + this.UserID + ", UserNickName=" + this.UserNickName + ", UserRank=" + this.UserRank + ", ZipDownloadLink=" + this.ZipDownloadLink + ")";
    }

    public final SubtitleItem toSubtitleBean() {
        long j11;
        int i11;
        int i12;
        String str = this.IDSubtitle;
        String str2 = this.ISO639;
        String str3 = this.LanguageName;
        String str4 = this.SubFileName;
        String str5 = this.SubDownloadLink;
        try {
            j11 = Long.parseLong(this.SubSize);
        } catch (Exception unused) {
            j11 = 0;
        }
        Long lValueOf = Long.valueOf(j11);
        try {
            i11 = Integer.parseInt(this.SeriesSeason);
        } catch (Exception unused2) {
            i11 = Integer.parseInt(this.QueryParameters.getSeason());
        }
        Integer numValueOf = Integer.valueOf(i11);
        try {
            i12 = Integer.parseInt(this.SeriesEpisode);
        } catch (Exception unused3) {
            i12 = Integer.parseInt(this.QueryParameters.getEpisode());
        }
        return new SubtitleItem(str, str2, str3, str4, str5, lValueOf, 0L, numValueOf, Integer.valueOf(i12), 0, 4);
    }
}
