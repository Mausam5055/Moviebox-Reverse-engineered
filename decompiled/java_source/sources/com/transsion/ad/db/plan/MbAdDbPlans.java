package com.transsion.ad.db.plan;

import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000?\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0016\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0003\b\u008c\u0001\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001B\u0081\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0011\u0012\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0011\u0012\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0011\u0012\u0010\b\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0011\u0012\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0011\u0012\u0010\b\u0002\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010(\u0012\n\b\u0002\u0010)\u001a\u0004\u0018\u00010*\u0012\b\b\u0002\u0010+\u001a\u00020,\u0012\b\b\u0002\u0010-\u001a\u00020,\u0012\b\b\u0002\u0010.\u001a\u00020,\u0012\n\b\u0002\u0010/\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b0\u00101J\n\u0010\u008d\u0001\u001a\u00020\u0003HÆ\u0003J\f\u0010\u008e\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0092\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0093\u0001\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010AJ\u0011\u0010\u0094\u0001\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010AJ\f\u0010\u0095\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0098\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0012\u0010\u0099\u0001\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0011HÆ\u0003J\u0012\u0010\u009a\u0001\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0011HÆ\u0003J\u0012\u0010\u009b\u0001\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0011HÆ\u0003J\u0012\u0010\u009c\u0001\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0011HÆ\u0003J\u0012\u0010\u009d\u0001\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0011HÆ\u0003J\u0012\u0010\u009e\u0001\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0011HÆ\u0003J\f\u0010\u009f\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010 \u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010¡\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010¢\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010£\u0001\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010AJ\f\u0010¤\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010¥\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010¦\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010§\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010¨\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010©\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010ª\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010«\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010¬\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u00ad\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010®\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010¯\u0001\u001a\u0004\u0018\u00010(HÆ\u0003¢\u0006\u0002\u0010~J\u0012\u0010°\u0001\u001a\u0004\u0018\u00010*HÆ\u0003¢\u0006\u0003\u0010\u0083\u0001J\n\u0010±\u0001\u001a\u00020,HÆ\u0003J\n\u0010²\u0001\u001a\u00020,HÆ\u0003J\n\u0010³\u0001\u001a\u00020,HÆ\u0003J\f\u0010´\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u008c\u0004\u0010µ\u0001\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00112\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00112\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00112\u0010\b\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00112\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00112\u0010\b\u0002\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00112\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010'\u001a\u0004\u0018\u00010(2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010*2\b\b\u0002\u0010+\u001a\u00020,2\b\b\u0002\u0010-\u001a\u00020,2\b\b\u0002\u0010.\u001a\u00020,2\n\b\u0002\u0010/\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0003\u0010¶\u0001J\u0016\u0010·\u0001\u001a\u00020,2\n\u0010¸\u0001\u001a\u0005\u0018\u00010¹\u0001HÖ\u0003J\n\u0010º\u0001\u001a\u00020\nHÖ\u0001J\n\u0010»\u0001\u001a\u00020\u0003HÖ\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u00103\"\u0004\b7\u00105R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u00103\"\u0004\b9\u00105R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u00103\"\u0004\b;\u00105R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u00103\"\u0004\b=\u00105R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b>\u00103\"\u0004\b?\u00105R\u001e\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010D\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR\u001e\u0010\u000b\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010D\u001a\u0004\bE\u0010A\"\u0004\bF\u0010CR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bG\u00103\"\u0004\bH\u00105R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bI\u00103\"\u0004\bJ\u00105R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bK\u00103\"\u0004\bL\u00105R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bM\u00103\"\u0004\bN\u00105R\"\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bO\u0010P\"\u0004\bQ\u0010RR\"\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bS\u0010P\"\u0004\bT\u0010RR\"\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bU\u0010P\"\u0004\bV\u0010RR\"\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bW\u0010P\"\u0004\bX\u0010RR\"\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bY\u0010P\"\u0004\bZ\u0010RR\"\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b[\u0010P\"\u0004\b\\\u0010RR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b]\u00103\"\u0004\b^\u00105R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b_\u00103\"\u0004\b`\u00105R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\ba\u00103\"\u0004\bb\u00105R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bc\u00103\"\u0004\bd\u00105R\u001e\u0010\u001b\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010D\u001a\u0004\be\u0010A\"\u0004\bf\u0010CR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bg\u00103\"\u0004\bh\u00105R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bi\u00103\"\u0004\bj\u00105R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bk\u00103\"\u0004\bl\u00105R\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bm\u00103\"\u0004\bn\u00105R\u001c\u0010 \u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bo\u00103\"\u0004\bp\u00105R\u001c\u0010!\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bq\u00103\"\u0004\br\u00105R\u001c\u0010\"\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bs\u00103\"\u0004\bt\u00105R\u001c\u0010#\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bu\u00103\"\u0004\bv\u00105R\u001c\u0010$\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bw\u00103\"\u0004\bx\u00105R\u001c\u0010%\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\by\u00103\"\u0004\bz\u00105R\u001c\u0010&\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b{\u00103\"\u0004\b|\u00105R \u0010'\u001a\u0004\u0018\u00010(X\u0086\u000e¢\u0006\u0012\n\u0003\u0010\u0081\u0001\u001a\u0004\b}\u0010~\"\u0005\b\u007f\u0010\u0080\u0001R#\u0010)\u001a\u0004\u0018\u00010*X\u0086\u000e¢\u0006\u0015\n\u0003\u0010\u0086\u0001\u001a\u0006\b\u0082\u0001\u0010\u0083\u0001\"\u0006\b\u0084\u0001\u0010\u0085\u0001R\u001d\u0010+\u001a\u00020,X\u0086\u000e¢\u0006\u0011\n\u0000\u001a\u0005\b+\u0010\u0087\u0001\"\u0006\b\u0088\u0001\u0010\u0089\u0001R\u0013\u0010-\u001a\u00020,¢\u0006\n\n\u0000\u001a\u0006\b\u008a\u0001\u0010\u0087\u0001R\u0013\u0010.\u001a\u00020,¢\u0006\n\n\u0000\u001a\u0006\b\u008b\u0001\u0010\u0087\u0001R\u0014\u0010/\u001a\u0004\u0018\u00010\u0003¢\u0006\t\n\u0000\u001a\u0005\b\u008c\u0001\u00103¨\u0006¼\u0001"}, d2 = {"Lcom/transsion/ad/db/plan/MbAdDbPlans;", "Ljava/io/Serializable;", "id", "", "version", "name", "startTime", "endTime", "extraConfig", "displayTimes", "", "showedTimes", "showDate", "advertiserName", "advertiserAvatar", "advertiserAvatarPath", "brand", "", "denyBrand", "model", "denyModel", PlaceTypes.COUNTRY, "scenes", "adSource", "extAdSlot", "adMaterialList", "adPlanUpdateTime", "sort", "adShowLevel", "filterClientVersion", "adPlanCreateTime", "appStarDesc", "appSizeDesc", "ctxEnableExpr", "ctxDisableExpr", "ctxAttributeConfig", "dispatchTimeStart", "dispatchTimeEnd", "extImage", "bidEcpmCent", "", "ecpmCent", "", "isValid", "", "h5LinkPreload", "h5LinkOpenByCct", "countryCode", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;ZZZLjava/lang/String;)V", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "getVersion", "setVersion", "getName", "setName", "getStartTime", "setStartTime", "getEndTime", "setEndTime", "getExtraConfig", "setExtraConfig", "getDisplayTimes", "()Ljava/lang/Integer;", "setDisplayTimes", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getShowedTimes", "setShowedTimes", "getShowDate", "setShowDate", "getAdvertiserName", "setAdvertiserName", "getAdvertiserAvatar", "setAdvertiserAvatar", "getAdvertiserAvatarPath", "setAdvertiserAvatarPath", "getBrand", "()Ljava/util/List;", "setBrand", "(Ljava/util/List;)V", "getDenyBrand", "setDenyBrand", "getModel", "setModel", "getDenyModel", "setDenyModel", "getCountry", "setCountry", "getScenes", "setScenes", "getAdSource", "setAdSource", "getExtAdSlot", "setExtAdSlot", "getAdMaterialList", "setAdMaterialList", "getAdPlanUpdateTime", "setAdPlanUpdateTime", "getSort", "setSort", "getAdShowLevel", "setAdShowLevel", "getFilterClientVersion", "setFilterClientVersion", "getAdPlanCreateTime", "setAdPlanCreateTime", "getAppStarDesc", "setAppStarDesc", "getAppSizeDesc", "setAppSizeDesc", "getCtxEnableExpr", "setCtxEnableExpr", "getCtxDisableExpr", "setCtxDisableExpr", "getCtxAttributeConfig", "setCtxAttributeConfig", "getDispatchTimeStart", "setDispatchTimeStart", "getDispatchTimeEnd", "setDispatchTimeEnd", "getExtImage", "setExtImage", "getBidEcpmCent", "()Ljava/lang/Double;", "setBidEcpmCent", "(Ljava/lang/Double;)V", "Ljava/lang/Double;", "getEcpmCent", "()Ljava/lang/Long;", "setEcpmCent", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "()Z", "setValid", "(Z)V", "getH5LinkPreload", "getH5LinkOpenByCct", "getCountryCode", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component28", "component29", "component30", "component31", "component32", "component33", "component34", "component35", "component36", "component37", "component38", "component39", "component40", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;ZZZLjava/lang/String;)Lcom/transsion/ad/db/plan/MbAdDbPlans;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MbAdDbPlans implements Serializable {
    private String adMaterialList;
    private String adPlanCreateTime;
    private String adPlanUpdateTime;
    private String adShowLevel;
    private String adSource;
    private String advertiserAvatar;
    private String advertiserAvatarPath;
    private String advertiserName;
    private String appSizeDesc;
    private String appStarDesc;
    private Double bidEcpmCent;
    private List<String> brand;
    private List<String> country;
    private final String countryCode;
    private String ctxAttributeConfig;
    private String ctxDisableExpr;
    private String ctxEnableExpr;
    private List<String> denyBrand;
    private List<String> denyModel;
    private String dispatchTimeEnd;
    private String dispatchTimeStart;
    private Integer displayTimes;
    private Long ecpmCent;
    private String endTime;
    private String extAdSlot;
    private String extImage;
    private String extraConfig;
    private String filterClientVersion;
    private final boolean h5LinkOpenByCct;
    private final boolean h5LinkPreload;
    private String id;
    private boolean isValid;
    private List<String> model;
    private String name;
    private List<String> scenes;
    private String showDate;
    private Integer showedTimes;
    private Integer sort;
    private String startTime;
    private String version;

    public MbAdDbPlans(String id2, String str, String str2, String str3, String str4, String str5, Integer num, Integer num2, String str6, String str7, String str8, String str9, List<String> list, List<String> list2, List<String> list3, List<String> list4, List<String> list5, List<String> list6, String str10, String str11, String str12, String str13, Integer num3, String str14, String str15, String str16, String str17, String str18, String str19, String str20, String str21, String str22, String str23, String str24, Double d11, Long l11, boolean z10, boolean z11, boolean z12, String str25) {
        Intrinsics.h(id2, "id");
        this.id = id2;
        this.version = str;
        this.name = str2;
        this.startTime = str3;
        this.endTime = str4;
        this.extraConfig = str5;
        this.displayTimes = num;
        this.showedTimes = num2;
        this.showDate = str6;
        this.advertiserName = str7;
        this.advertiserAvatar = str8;
        this.advertiserAvatarPath = str9;
        this.brand = list;
        this.denyBrand = list2;
        this.model = list3;
        this.denyModel = list4;
        this.country = list5;
        this.scenes = list6;
        this.adSource = str10;
        this.extAdSlot = str11;
        this.adMaterialList = str12;
        this.adPlanUpdateTime = str13;
        this.sort = num3;
        this.adShowLevel = str14;
        this.filterClientVersion = str15;
        this.adPlanCreateTime = str16;
        this.appStarDesc = str17;
        this.appSizeDesc = str18;
        this.ctxEnableExpr = str19;
        this.ctxDisableExpr = str20;
        this.ctxAttributeConfig = str21;
        this.dispatchTimeStart = str22;
        this.dispatchTimeEnd = str23;
        this.extImage = str24;
        this.bidEcpmCent = d11;
        this.ecpmCent = l11;
        this.isValid = z10;
        this.h5LinkPreload = z11;
        this.h5LinkOpenByCct = z12;
        this.countryCode = str25;
    }

    public /* synthetic */ MbAdDbPlans(String str, String str2, String str3, String str4, String str5, String str6, Integer num, Integer num2, String str7, String str8, String str9, String str10, List list, List list2, List list3, List list4, List list5, List list6, String str11, String str12, String str13, String str14, Integer num3, String str15, String str16, String str17, String str18, String str19, String str20, String str21, String str22, String str23, String str24, String str25, Double d11, Long l11, boolean z10, boolean z11, boolean z12, String str26, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : str4, (i11 & 16) != 0 ? null : str5, (i11 & 32) != 0 ? null : str6, (i11 & 64) != 0 ? null : num, (i11 & 128) != 0 ? null : num2, (i11 & 256) != 0 ? null : str7, (i11 & 512) != 0 ? null : str8, (i11 & 1024) != 0 ? null : str9, (i11 & 2048) != 0 ? null : str10, (i11 & 4096) != 0 ? null : list, (i11 & 8192) != 0 ? null : list2, (i11 & 16384) != 0 ? null : list3, (i11 & 32768) != 0 ? null : list4, (i11 & 65536) != 0 ? null : list5, (i11 & 131072) != 0 ? null : list6, (i11 & 262144) != 0 ? null : str11, (i11 & 524288) != 0 ? null : str12, (i11 & 1048576) != 0 ? null : str13, (i11 & 2097152) != 0 ? null : str14, (i11 & 4194304) != 0 ? Integer.MAX_VALUE : num3, (i11 & 8388608) != 0 ? null : str15, (i11 & 16777216) != 0 ? null : str16, (i11 & ASTNode.PCTX_STORED) != 0 ? null : str17, (i11 & 67108864) != 0 ? null : str18, (i11 & ASTNode.NOJIT) != 0 ? null : str19, (i11 & ASTNode.DEOP) != 0 ? null : str20, (i11 & ASTNode.DISCARD) != 0 ? null : str21, (i11 & 1073741824) != 0 ? null : str22, (i11 & Integer.MIN_VALUE) != 0 ? null : str23, (i12 & 1) != 0 ? null : str24, (i12 & 2) != 0 ? null : str25, (i12 & 4) != 0 ? null : d11, (i12 & 8) != 0 ? null : l11, (i12 & 16) != 0 ? false : z10, (i12 & 32) != 0 ? false : z11, (i12 & 64) == 0 ? z12 : false, (i12 & 128) != 0 ? null : str26);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getAdvertiserName() {
        return this.advertiserName;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getAdvertiserAvatar() {
        return this.advertiserAvatar;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getAdvertiserAvatarPath() {
        return this.advertiserAvatarPath;
    }

    public final List<String> component13() {
        return this.brand;
    }

    public final List<String> component14() {
        return this.denyBrand;
    }

    public final List<String> component15() {
        return this.model;
    }

    public final List<String> component16() {
        return this.denyModel;
    }

    public final List<String> component17() {
        return this.country;
    }

    public final List<String> component18() {
        return this.scenes;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final String getAdSource() {
        return this.adSource;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getVersion() {
        return this.version;
    }

    /* JADX INFO: renamed from: component20, reason: from getter */
    public final String getExtAdSlot() {
        return this.extAdSlot;
    }

    /* JADX INFO: renamed from: component21, reason: from getter */
    public final String getAdMaterialList() {
        return this.adMaterialList;
    }

    /* JADX INFO: renamed from: component22, reason: from getter */
    public final String getAdPlanUpdateTime() {
        return this.adPlanUpdateTime;
    }

    /* JADX INFO: renamed from: component23, reason: from getter */
    public final Integer getSort() {
        return this.sort;
    }

    /* JADX INFO: renamed from: component24, reason: from getter */
    public final String getAdShowLevel() {
        return this.adShowLevel;
    }

    /* JADX INFO: renamed from: component25, reason: from getter */
    public final String getFilterClientVersion() {
        return this.filterClientVersion;
    }

    /* JADX INFO: renamed from: component26, reason: from getter */
    public final String getAdPlanCreateTime() {
        return this.adPlanCreateTime;
    }

    /* JADX INFO: renamed from: component27, reason: from getter */
    public final String getAppStarDesc() {
        return this.appStarDesc;
    }

    /* JADX INFO: renamed from: component28, reason: from getter */
    public final String getAppSizeDesc() {
        return this.appSizeDesc;
    }

    /* JADX INFO: renamed from: component29, reason: from getter */
    public final String getCtxEnableExpr() {
        return this.ctxEnableExpr;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component30, reason: from getter */
    public final String getCtxDisableExpr() {
        return this.ctxDisableExpr;
    }

    /* JADX INFO: renamed from: component31, reason: from getter */
    public final String getCtxAttributeConfig() {
        return this.ctxAttributeConfig;
    }

    /* JADX INFO: renamed from: component32, reason: from getter */
    public final String getDispatchTimeStart() {
        return this.dispatchTimeStart;
    }

    /* JADX INFO: renamed from: component33, reason: from getter */
    public final String getDispatchTimeEnd() {
        return this.dispatchTimeEnd;
    }

    /* JADX INFO: renamed from: component34, reason: from getter */
    public final String getExtImage() {
        return this.extImage;
    }

    /* JADX INFO: renamed from: component35, reason: from getter */
    public final Double getBidEcpmCent() {
        return this.bidEcpmCent;
    }

    /* JADX INFO: renamed from: component36, reason: from getter */
    public final Long getEcpmCent() {
        return this.ecpmCent;
    }

    /* JADX INFO: renamed from: component37, reason: from getter */
    public final boolean getIsValid() {
        return this.isValid;
    }

    /* JADX INFO: renamed from: component38, reason: from getter */
    public final boolean getH5LinkPreload() {
        return this.h5LinkPreload;
    }

    /* JADX INFO: renamed from: component39, reason: from getter */
    public final boolean getH5LinkOpenByCct() {
        return this.h5LinkOpenByCct;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getStartTime() {
        return this.startTime;
    }

    /* JADX INFO: renamed from: component40, reason: from getter */
    public final String getCountryCode() {
        return this.countryCode;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getEndTime() {
        return this.endTime;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getExtraConfig() {
        return this.extraConfig;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Integer getDisplayTimes() {
        return this.displayTimes;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Integer getShowedTimes() {
        return this.showedTimes;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getShowDate() {
        return this.showDate;
    }

    public final MbAdDbPlans copy(String id2, String version, String name, String startTime, String endTime, String extraConfig, Integer displayTimes, Integer showedTimes, String showDate, String advertiserName, String advertiserAvatar, String advertiserAvatarPath, List<String> brand, List<String> denyBrand, List<String> model, List<String> denyModel, List<String> country, List<String> scenes, String adSource, String extAdSlot, String adMaterialList, String adPlanUpdateTime, Integer sort, String adShowLevel, String filterClientVersion, String adPlanCreateTime, String appStarDesc, String appSizeDesc, String ctxEnableExpr, String ctxDisableExpr, String ctxAttributeConfig, String dispatchTimeStart, String dispatchTimeEnd, String extImage, Double bidEcpmCent, Long ecpmCent, boolean isValid, boolean h5LinkPreload, boolean h5LinkOpenByCct, String countryCode) {
        Intrinsics.h(id2, "id");
        return new MbAdDbPlans(id2, version, name, startTime, endTime, extraConfig, displayTimes, showedTimes, showDate, advertiserName, advertiserAvatar, advertiserAvatarPath, brand, denyBrand, model, denyModel, country, scenes, adSource, extAdSlot, adMaterialList, adPlanUpdateTime, sort, adShowLevel, filterClientVersion, adPlanCreateTime, appStarDesc, appSizeDesc, ctxEnableExpr, ctxDisableExpr, ctxAttributeConfig, dispatchTimeStart, dispatchTimeEnd, extImage, bidEcpmCent, ecpmCent, isValid, h5LinkPreload, h5LinkOpenByCct, countryCode);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MbAdDbPlans)) {
            return false;
        }
        MbAdDbPlans mbAdDbPlans = (MbAdDbPlans) other;
        return Intrinsics.c(this.id, mbAdDbPlans.id) && Intrinsics.c(this.version, mbAdDbPlans.version) && Intrinsics.c(this.name, mbAdDbPlans.name) && Intrinsics.c(this.startTime, mbAdDbPlans.startTime) && Intrinsics.c(this.endTime, mbAdDbPlans.endTime) && Intrinsics.c(this.extraConfig, mbAdDbPlans.extraConfig) && Intrinsics.c(this.displayTimes, mbAdDbPlans.displayTimes) && Intrinsics.c(this.showedTimes, mbAdDbPlans.showedTimes) && Intrinsics.c(this.showDate, mbAdDbPlans.showDate) && Intrinsics.c(this.advertiserName, mbAdDbPlans.advertiserName) && Intrinsics.c(this.advertiserAvatar, mbAdDbPlans.advertiserAvatar) && Intrinsics.c(this.advertiserAvatarPath, mbAdDbPlans.advertiserAvatarPath) && Intrinsics.c(this.brand, mbAdDbPlans.brand) && Intrinsics.c(this.denyBrand, mbAdDbPlans.denyBrand) && Intrinsics.c(this.model, mbAdDbPlans.model) && Intrinsics.c(this.denyModel, mbAdDbPlans.denyModel) && Intrinsics.c(this.country, mbAdDbPlans.country) && Intrinsics.c(this.scenes, mbAdDbPlans.scenes) && Intrinsics.c(this.adSource, mbAdDbPlans.adSource) && Intrinsics.c(this.extAdSlot, mbAdDbPlans.extAdSlot) && Intrinsics.c(this.adMaterialList, mbAdDbPlans.adMaterialList) && Intrinsics.c(this.adPlanUpdateTime, mbAdDbPlans.adPlanUpdateTime) && Intrinsics.c(this.sort, mbAdDbPlans.sort) && Intrinsics.c(this.adShowLevel, mbAdDbPlans.adShowLevel) && Intrinsics.c(this.filterClientVersion, mbAdDbPlans.filterClientVersion) && Intrinsics.c(this.adPlanCreateTime, mbAdDbPlans.adPlanCreateTime) && Intrinsics.c(this.appStarDesc, mbAdDbPlans.appStarDesc) && Intrinsics.c(this.appSizeDesc, mbAdDbPlans.appSizeDesc) && Intrinsics.c(this.ctxEnableExpr, mbAdDbPlans.ctxEnableExpr) && Intrinsics.c(this.ctxDisableExpr, mbAdDbPlans.ctxDisableExpr) && Intrinsics.c(this.ctxAttributeConfig, mbAdDbPlans.ctxAttributeConfig) && Intrinsics.c(this.dispatchTimeStart, mbAdDbPlans.dispatchTimeStart) && Intrinsics.c(this.dispatchTimeEnd, mbAdDbPlans.dispatchTimeEnd) && Intrinsics.c(this.extImage, mbAdDbPlans.extImage) && Intrinsics.c(this.bidEcpmCent, mbAdDbPlans.bidEcpmCent) && Intrinsics.c(this.ecpmCent, mbAdDbPlans.ecpmCent) && this.isValid == mbAdDbPlans.isValid && this.h5LinkPreload == mbAdDbPlans.h5LinkPreload && this.h5LinkOpenByCct == mbAdDbPlans.h5LinkOpenByCct && Intrinsics.c(this.countryCode, mbAdDbPlans.countryCode);
    }

    public final String getAdMaterialList() {
        return this.adMaterialList;
    }

    public final String getAdPlanCreateTime() {
        return this.adPlanCreateTime;
    }

    public final String getAdPlanUpdateTime() {
        return this.adPlanUpdateTime;
    }

    public final String getAdShowLevel() {
        return this.adShowLevel;
    }

    public final String getAdSource() {
        return this.adSource;
    }

    public final String getAdvertiserAvatar() {
        return this.advertiserAvatar;
    }

    public final String getAdvertiserAvatarPath() {
        return this.advertiserAvatarPath;
    }

    public final String getAdvertiserName() {
        return this.advertiserName;
    }

    public final String getAppSizeDesc() {
        return this.appSizeDesc;
    }

    public final String getAppStarDesc() {
        return this.appStarDesc;
    }

    public final Double getBidEcpmCent() {
        return this.bidEcpmCent;
    }

    public final List<String> getBrand() {
        return this.brand;
    }

    public final List<String> getCountry() {
        return this.country;
    }

    public final String getCountryCode() {
        return this.countryCode;
    }

    public final String getCtxAttributeConfig() {
        return this.ctxAttributeConfig;
    }

    public final String getCtxDisableExpr() {
        return this.ctxDisableExpr;
    }

    public final String getCtxEnableExpr() {
        return this.ctxEnableExpr;
    }

    public final List<String> getDenyBrand() {
        return this.denyBrand;
    }

    public final List<String> getDenyModel() {
        return this.denyModel;
    }

    public final String getDispatchTimeEnd() {
        return this.dispatchTimeEnd;
    }

    public final String getDispatchTimeStart() {
        return this.dispatchTimeStart;
    }

    public final Integer getDisplayTimes() {
        return this.displayTimes;
    }

    public final Long getEcpmCent() {
        return this.ecpmCent;
    }

    public final String getEndTime() {
        return this.endTime;
    }

    public final String getExtAdSlot() {
        return this.extAdSlot;
    }

    public final String getExtImage() {
        return this.extImage;
    }

    public final String getExtraConfig() {
        return this.extraConfig;
    }

    public final String getFilterClientVersion() {
        return this.filterClientVersion;
    }

    public final boolean getH5LinkOpenByCct() {
        return this.h5LinkOpenByCct;
    }

    public final boolean getH5LinkPreload() {
        return this.h5LinkPreload;
    }

    public final String getId() {
        return this.id;
    }

    public final List<String> getModel() {
        return this.model;
    }

    public final String getName() {
        return this.name;
    }

    public final List<String> getScenes() {
        return this.scenes;
    }

    public final String getShowDate() {
        return this.showDate;
    }

    public final Integer getShowedTimes() {
        return this.showedTimes;
    }

    public final Integer getSort() {
        return this.sort;
    }

    public final String getStartTime() {
        return this.startTime;
    }

    public final String getVersion() {
        return this.version;
    }

    public int hashCode() {
        int iHashCode = this.id.hashCode() * 31;
        String str = this.version;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.name;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.startTime;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.endTime;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.extraConfig;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Integer num = this.displayTimes;
        int iHashCode7 = (iHashCode6 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.showedTimes;
        int iHashCode8 = (iHashCode7 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str6 = this.showDate;
        int iHashCode9 = (iHashCode8 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.advertiserName;
        int iHashCode10 = (iHashCode9 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.advertiserAvatar;
        int iHashCode11 = (iHashCode10 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.advertiserAvatarPath;
        int iHashCode12 = (iHashCode11 + (str9 == null ? 0 : str9.hashCode())) * 31;
        List<String> list = this.brand;
        int iHashCode13 = (iHashCode12 + (list == null ? 0 : list.hashCode())) * 31;
        List<String> list2 = this.denyBrand;
        int iHashCode14 = (iHashCode13 + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<String> list3 = this.model;
        int iHashCode15 = (iHashCode14 + (list3 == null ? 0 : list3.hashCode())) * 31;
        List<String> list4 = this.denyModel;
        int iHashCode16 = (iHashCode15 + (list4 == null ? 0 : list4.hashCode())) * 31;
        List<String> list5 = this.country;
        int iHashCode17 = (iHashCode16 + (list5 == null ? 0 : list5.hashCode())) * 31;
        List<String> list6 = this.scenes;
        int iHashCode18 = (iHashCode17 + (list6 == null ? 0 : list6.hashCode())) * 31;
        String str10 = this.adSource;
        int iHashCode19 = (iHashCode18 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.extAdSlot;
        int iHashCode20 = (iHashCode19 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.adMaterialList;
        int iHashCode21 = (iHashCode20 + (str12 == null ? 0 : str12.hashCode())) * 31;
        String str13 = this.adPlanUpdateTime;
        int iHashCode22 = (iHashCode21 + (str13 == null ? 0 : str13.hashCode())) * 31;
        Integer num3 = this.sort;
        int iHashCode23 = (iHashCode22 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str14 = this.adShowLevel;
        int iHashCode24 = (iHashCode23 + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.filterClientVersion;
        int iHashCode25 = (iHashCode24 + (str15 == null ? 0 : str15.hashCode())) * 31;
        String str16 = this.adPlanCreateTime;
        int iHashCode26 = (iHashCode25 + (str16 == null ? 0 : str16.hashCode())) * 31;
        String str17 = this.appStarDesc;
        int iHashCode27 = (iHashCode26 + (str17 == null ? 0 : str17.hashCode())) * 31;
        String str18 = this.appSizeDesc;
        int iHashCode28 = (iHashCode27 + (str18 == null ? 0 : str18.hashCode())) * 31;
        String str19 = this.ctxEnableExpr;
        int iHashCode29 = (iHashCode28 + (str19 == null ? 0 : str19.hashCode())) * 31;
        String str20 = this.ctxDisableExpr;
        int iHashCode30 = (iHashCode29 + (str20 == null ? 0 : str20.hashCode())) * 31;
        String str21 = this.ctxAttributeConfig;
        int iHashCode31 = (iHashCode30 + (str21 == null ? 0 : str21.hashCode())) * 31;
        String str22 = this.dispatchTimeStart;
        int iHashCode32 = (iHashCode31 + (str22 == null ? 0 : str22.hashCode())) * 31;
        String str23 = this.dispatchTimeEnd;
        int iHashCode33 = (iHashCode32 + (str23 == null ? 0 : str23.hashCode())) * 31;
        String str24 = this.extImage;
        int iHashCode34 = (iHashCode33 + (str24 == null ? 0 : str24.hashCode())) * 31;
        Double d11 = this.bidEcpmCent;
        int iHashCode35 = (iHashCode34 + (d11 == null ? 0 : d11.hashCode())) * 31;
        Long l11 = this.ecpmCent;
        int iHashCode36 = (((((((iHashCode35 + (l11 == null ? 0 : l11.hashCode())) * 31) + e.a(this.isValid)) * 31) + e.a(this.h5LinkPreload)) * 31) + e.a(this.h5LinkOpenByCct)) * 31;
        String str25 = this.countryCode;
        return iHashCode36 + (str25 != null ? str25.hashCode() : 0);
    }

    public final boolean isValid() {
        return this.isValid;
    }

    public final void setAdMaterialList(String str) {
        this.adMaterialList = str;
    }

    public final void setAdPlanCreateTime(String str) {
        this.adPlanCreateTime = str;
    }

    public final void setAdPlanUpdateTime(String str) {
        this.adPlanUpdateTime = str;
    }

    public final void setAdShowLevel(String str) {
        this.adShowLevel = str;
    }

    public final void setAdSource(String str) {
        this.adSource = str;
    }

    public final void setAdvertiserAvatar(String str) {
        this.advertiserAvatar = str;
    }

    public final void setAdvertiserAvatarPath(String str) {
        this.advertiserAvatarPath = str;
    }

    public final void setAdvertiserName(String str) {
        this.advertiserName = str;
    }

    public final void setAppSizeDesc(String str) {
        this.appSizeDesc = str;
    }

    public final void setAppStarDesc(String str) {
        this.appStarDesc = str;
    }

    public final void setBidEcpmCent(Double d11) {
        this.bidEcpmCent = d11;
    }

    public final void setBrand(List<String> list) {
        this.brand = list;
    }

    public final void setCountry(List<String> list) {
        this.country = list;
    }

    public final void setCtxAttributeConfig(String str) {
        this.ctxAttributeConfig = str;
    }

    public final void setCtxDisableExpr(String str) {
        this.ctxDisableExpr = str;
    }

    public final void setCtxEnableExpr(String str) {
        this.ctxEnableExpr = str;
    }

    public final void setDenyBrand(List<String> list) {
        this.denyBrand = list;
    }

    public final void setDenyModel(List<String> list) {
        this.denyModel = list;
    }

    public final void setDispatchTimeEnd(String str) {
        this.dispatchTimeEnd = str;
    }

    public final void setDispatchTimeStart(String str) {
        this.dispatchTimeStart = str;
    }

    public final void setDisplayTimes(Integer num) {
        this.displayTimes = num;
    }

    public final void setEcpmCent(Long l11) {
        this.ecpmCent = l11;
    }

    public final void setEndTime(String str) {
        this.endTime = str;
    }

    public final void setExtAdSlot(String str) {
        this.extAdSlot = str;
    }

    public final void setExtImage(String str) {
        this.extImage = str;
    }

    public final void setExtraConfig(String str) {
        this.extraConfig = str;
    }

    public final void setFilterClientVersion(String str) {
        this.filterClientVersion = str;
    }

    public final void setId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.id = str;
    }

    public final void setModel(List<String> list) {
        this.model = list;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setScenes(List<String> list) {
        this.scenes = list;
    }

    public final void setShowDate(String str) {
        this.showDate = str;
    }

    public final void setShowedTimes(Integer num) {
        this.showedTimes = num;
    }

    public final void setSort(Integer num) {
        this.sort = num;
    }

    public final void setStartTime(String str) {
        this.startTime = str;
    }

    public final void setValid(boolean z10) {
        this.isValid = z10;
    }

    public final void setVersion(String str) {
        this.version = str;
    }

    public String toString() {
        return "MbAdDbPlans(id=" + this.id + ", version=" + this.version + ", name=" + this.name + ", startTime=" + this.startTime + ", endTime=" + this.endTime + ", extraConfig=" + this.extraConfig + ", displayTimes=" + this.displayTimes + ", showedTimes=" + this.showedTimes + ", showDate=" + this.showDate + ", advertiserName=" + this.advertiserName + ", advertiserAvatar=" + this.advertiserAvatar + ", advertiserAvatarPath=" + this.advertiserAvatarPath + ", brand=" + this.brand + ", denyBrand=" + this.denyBrand + ", model=" + this.model + ", denyModel=" + this.denyModel + ", country=" + this.country + ", scenes=" + this.scenes + ", adSource=" + this.adSource + ", extAdSlot=" + this.extAdSlot + ", adMaterialList=" + this.adMaterialList + ", adPlanUpdateTime=" + this.adPlanUpdateTime + ", sort=" + this.sort + ", adShowLevel=" + this.adShowLevel + ", filterClientVersion=" + this.filterClientVersion + ", adPlanCreateTime=" + this.adPlanCreateTime + ", appStarDesc=" + this.appStarDesc + ", appSizeDesc=" + this.appSizeDesc + ", ctxEnableExpr=" + this.ctxEnableExpr + ", ctxDisableExpr=" + this.ctxDisableExpr + ", ctxAttributeConfig=" + this.ctxAttributeConfig + ", dispatchTimeStart=" + this.dispatchTimeStart + ", dispatchTimeEnd=" + this.dispatchTimeEnd + ", extImage=" + this.extImage + ", bidEcpmCent=" + this.bidEcpmCent + ", ecpmCent=" + this.ecpmCent + ", isValid=" + this.isValid + ", h5LinkPreload=" + this.h5LinkPreload + ", h5LinkOpenByCct=" + this.h5LinkOpenByCct + ", countryCode=" + this.countryCode + ")";
    }
}
