package com.transsion.ad.monopoly.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b}\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u008b\u0004\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r\u0012\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r\u0012\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r\u0012\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r\u0012\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\r\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\"\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010(\u0012\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010*\u001a\u0004\u0018\u00010+\u0012\n\b\u0002\u0010,\u001a\u0004\u0018\u00010-\u0012\b\b\u0002\u0010.\u001a\u00020/\u0012\b\b\u0002\u00100\u001a\u00020/\u0012\b\b\u0002\u00101\u001a\u00020/\u0012\n\b\u0002\u00102\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b3\u00104J\f\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u00109J\f\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u00109J\f\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0012\u0010\u0088\u0001\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\rHÆ\u0003J\u0011\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u00109J\u0012\u0010\u008a\u0001\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\rHÆ\u0003J\u0012\u0010\u008b\u0001\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\rHÆ\u0003J\u0012\u0010\u008c\u0001\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\rHÆ\u0003J\u0012\u0010\u008d\u0001\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\rHÆ\u0003J\u0012\u0010\u008e\u0001\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\rHÆ\u0003J\f\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0092\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0012\u0010\u0093\u0001\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\rHÆ\u0003J\f\u0010\u0094\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0095\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0098\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u009a\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u009b\u0001\u001a\u0004\u0018\u00010\"HÆ\u0003J\f\u0010\u009c\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u009f\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010 \u0001\u001a\u0004\u0018\u00010(HÆ\u0003J\f\u0010¡\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010¢\u0001\u001a\u0004\u0018\u00010+HÆ\u0003¢\u0006\u0002\u0010pJ\u0011\u0010£\u0001\u001a\u0004\u0018\u00010-HÆ\u0003¢\u0006\u0002\u0010uJ\n\u0010¤\u0001\u001a\u00020/HÆ\u0003J\n\u0010¥\u0001\u001a\u00020/HÆ\u0003J\n\u0010¦\u0001\u001a\u00020/HÆ\u0003J\f\u0010§\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0094\u0004\u0010¨\u0001\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00062\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r2\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r2\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r2\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r2\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\r2\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\"2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010'\u001a\u0004\u0018\u00010(2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010*\u001a\u0004\u0018\u00010+2\n\b\u0002\u0010,\u001a\u0004\u0018\u00010-2\b\b\u0002\u0010.\u001a\u00020/2\b\b\u0002\u00100\u001a\u00020/2\b\b\u0002\u00101\u001a\u00020/2\n\b\u0002\u00102\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0003\u0010©\u0001J\u0007\u0010ª\u0001\u001a\u00020\u0006J\u0016\u0010«\u0001\u001a\u00020/2\n\u0010¬\u0001\u001a\u0005\u0018\u00010\u00ad\u0001HÖ\u0003J\n\u0010®\u0001\u001a\u00020\u0006HÖ\u0001J\n\u0010¯\u0001\u001a\u00020\u0003HÖ\u0001J\u001b\u0010°\u0001\u001a\u00030±\u00012\b\u0010²\u0001\u001a\u00030³\u00012\u0007\u0010´\u0001\u001a\u00020\u0006R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b5\u00106R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b7\u00106R\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010:\u001a\u0004\b8\u00109R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u00106\"\u0004\b<\u0010=R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b>\u00106\"\u0004\b?\u0010=R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u00106\"\u0004\bA\u0010=R\u001e\u0010\n\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010:\u001a\u0004\bB\u00109\"\u0004\bC\u0010DR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bE\u00106\"\u0004\bF\u0010=R\u0019\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\bG\u0010HR\u0015\u0010\u000e\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010:\u001a\u0004\bI\u00109R\u0019\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\bJ\u0010HR\u0019\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\bK\u0010HR\u0019\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\bL\u0010HR\u0019\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\bM\u0010HR\u0019\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\bN\u0010HR\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\bO\u00106R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\bP\u00106R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\bQ\u00106R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\bR\u00106R\"\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bS\u0010H\"\u0004\bT\u0010UR\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\bV\u00106R\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\bW\u00106R\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\bX\u00106R\u0013\u0010\u001d\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\bY\u00106R\u0013\u0010\u001e\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\bZ\u00106R\u0013\u0010\u001f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b[\u00106R\u0013\u0010 \u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\\\u00106R\u001c\u0010!\u001a\u0004\u0018\u00010\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b]\u0010^\"\u0004\b_\u0010`R\u001c\u0010#\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\ba\u00106\"\u0004\bb\u0010=R\u001c\u0010$\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bc\u00106\"\u0004\bd\u0010=R\u001c\u0010%\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\be\u00106\"\u0004\bf\u0010=R\u001c\u0010&\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bg\u00106\"\u0004\bh\u0010=R\u001c\u0010'\u001a\u0004\u0018\u00010(X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bi\u0010j\"\u0004\bk\u0010lR\u001c\u0010)\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bm\u00106\"\u0004\bn\u0010=R\u001e\u0010*\u001a\u0004\u0018\u00010+X\u0086\u000e¢\u0006\u0010\n\u0002\u0010s\u001a\u0004\bo\u0010p\"\u0004\bq\u0010rR\u001e\u0010,\u001a\u0004\u0018\u00010-X\u0086\u000e¢\u0006\u0010\n\u0002\u0010x\u001a\u0004\bt\u0010u\"\u0004\bv\u0010wR\u001a\u0010.\u001a\u00020/X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010y\"\u0004\bz\u0010{R\u0011\u00100\u001a\u00020/¢\u0006\b\n\u0000\u001a\u0004\b|\u0010yR\u0011\u00101\u001a\u00020/¢\u0006\b\n\u0000\u001a\u0004\b}\u0010yR\u001c\u00102\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b~\u00106\"\u0004\b\u007f\u0010=¨\u0006µ\u0001"}, d2 = {"Lcom/transsion/ad/monopoly/model/AdPlans;", "Landroid/os/Parcelable;", "id", "", "name", "sort", "", "advertiserName", "advertiserAvatar", "advertiserAvatarPath", "showedTimes", "showDate", "scenes", "", "displayTimes", PlaceTypes.COUNTRY, "brand", "denyBrand", "model", "denyModel", "filterClientVersion", "startTime", "endTime", "extraConfig", "adMaterialList", "Lcom/transsion/ad/monopoly/model/AdMaterialList;", "adPlanCreateTime", "adPlanUpdateTime", "adShowLevel", "appStarDesc", "appSizeDesc", "ctxEnableExpr", "ctxDisableExpr", "ctxAttributeConfig", "Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;", "dispatchTimeStart", "dispatchTimeEnd", "adSource", "extAdSlot", "extImage", "Lcom/transsion/ad/monopoly/model/MbAdImage;", "version", "bidEcpmCent", "", "ecpmCent", "", "isValid", "", "h5LinkPreload", "h5LinkOpenByCct", "countryCode", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/MbAdImage;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;ZZZLjava/lang/String;)V", "getId", "()Ljava/lang/String;", "getName", "getSort", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getAdvertiserName", "setAdvertiserName", "(Ljava/lang/String;)V", "getAdvertiserAvatar", "setAdvertiserAvatar", "getAdvertiserAvatarPath", "setAdvertiserAvatarPath", "getShowedTimes", "setShowedTimes", "(Ljava/lang/Integer;)V", "getShowDate", "setShowDate", "getScenes", "()Ljava/util/List;", "getDisplayTimes", "getCountry", "getBrand", "getDenyBrand", "getModel", "getDenyModel", "getFilterClientVersion", "getStartTime", "getEndTime", "getExtraConfig", "getAdMaterialList", "setAdMaterialList", "(Ljava/util/List;)V", "getAdPlanCreateTime", "getAdPlanUpdateTime", "getAdShowLevel", "getAppStarDesc", "getAppSizeDesc", "getCtxEnableExpr", "getCtxDisableExpr", "getCtxAttributeConfig", "()Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;", "setCtxAttributeConfig", "(Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;)V", "getDispatchTimeStart", "setDispatchTimeStart", "getDispatchTimeEnd", "setDispatchTimeEnd", "getAdSource", "setAdSource", "getExtAdSlot", "setExtAdSlot", "getExtImage", "()Lcom/transsion/ad/monopoly/model/MbAdImage;", "setExtImage", "(Lcom/transsion/ad/monopoly/model/MbAdImage;)V", "getVersion", "setVersion", "getBidEcpmCent", "()Ljava/lang/Double;", "setBidEcpmCent", "(Ljava/lang/Double;)V", "Ljava/lang/Double;", "getEcpmCent", "()Ljava/lang/Long;", "setEcpmCent", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "()Z", "setValid", "(Z)V", "getH5LinkPreload", "getH5LinkOpenByCct", "getCountryCode", "setCountryCode", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component28", "component29", "component30", "component31", "component32", "component33", "component34", "component35", "component36", "component37", "component38", "component39", "component40", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/MbAdImage;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;ZZZLjava/lang/String;)Lcom/transsion/ad/monopoly/model/AdPlans;", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class AdPlans implements Parcelable {
    public static final Parcelable.Creator<AdPlans> CREATOR = new a();
    private List<AdMaterialList> adMaterialList;
    private final String adPlanCreateTime;
    private final String adPlanUpdateTime;
    private final String adShowLevel;
    private String adSource;
    private String advertiserAvatar;
    private String advertiserAvatarPath;
    private String advertiserName;
    private final String appSizeDesc;
    private final String appStarDesc;
    private Double bidEcpmCent;
    private final List<String> brand;
    private final List<String> country;
    private String countryCode;
    private CtxAttributeConfig ctxAttributeConfig;
    private final String ctxDisableExpr;
    private final String ctxEnableExpr;
    private final List<String> denyBrand;
    private final List<String> denyModel;
    private String dispatchTimeEnd;
    private String dispatchTimeStart;
    private final Integer displayTimes;
    private Long ecpmCent;
    private final String endTime;
    private String extAdSlot;
    private MbAdImage extImage;
    private final String extraConfig;
    private final String filterClientVersion;
    private final boolean h5LinkOpenByCct;
    private final boolean h5LinkPreload;
    private final String id;
    private boolean isValid;
    private final List<String> model;
    private final String name;
    private final List<String> scenes;
    private String showDate;
    private Integer showedTimes;
    private final Integer sort;
    private final String startTime;
    private String version;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AdPlans createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            Integer numValueOf = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            String string5 = parcel.readString();
            Integer numValueOf2 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            String string6 = parcel.readString();
            ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
            Integer numValueOf3 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            ArrayList<String> arrayListCreateStringArrayList2 = parcel.createStringArrayList();
            ArrayList<String> arrayListCreateStringArrayList3 = parcel.createStringArrayList();
            ArrayList<String> arrayListCreateStringArrayList4 = parcel.createStringArrayList();
            ArrayList<String> arrayListCreateStringArrayList5 = parcel.createStringArrayList();
            ArrayList<String> arrayListCreateStringArrayList6 = parcel.createStringArrayList();
            String string7 = parcel.readString();
            String string8 = parcel.readString();
            String string9 = parcel.readString();
            String string10 = parcel.readString();
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(i11);
                int i12 = 0;
                while (i12 != i11) {
                    arrayList2.add(AdMaterialList.CREATOR.createFromParcel(parcel));
                    i12++;
                    i11 = i11;
                }
                arrayList = arrayList2;
            }
            return new AdPlans(string, string2, numValueOf, string3, string4, string5, numValueOf2, string6, arrayListCreateStringArrayList, numValueOf3, arrayListCreateStringArrayList2, arrayListCreateStringArrayList3, arrayListCreateStringArrayList4, arrayListCreateStringArrayList5, arrayListCreateStringArrayList6, string7, string8, string9, string10, arrayList, parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : CtxAttributeConfig.CREATOR.createFromParcel(parcel), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : MbAdImage.CREATOR.createFromParcel(parcel), parcel.readString(), parcel.readInt() == 0 ? null : Double.valueOf(parcel.readDouble()), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final AdPlans[] newArray(int i11) {
            return new AdPlans[i11];
        }
    }

    public AdPlans() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, false, null, -1, 255, null);
    }

    public AdPlans(String str, String str2, Integer num, String str3, String str4, String str5, Integer num2, String str6, List<String> list, Integer num3, List<String> list2, List<String> list3, List<String> list4, List<String> list5, List<String> list6, String str7, String str8, String str9, String str10, List<AdMaterialList> list7, String str11, String str12, String str13, String str14, String str15, String str16, String str17, CtxAttributeConfig ctxAttributeConfig, String str18, String str19, String str20, String str21, MbAdImage mbAdImage, String str22, Double d11, Long l11, boolean z10, boolean z11, boolean z12, String str23) {
        this.id = str;
        this.name = str2;
        this.sort = num;
        this.advertiserName = str3;
        this.advertiserAvatar = str4;
        this.advertiserAvatarPath = str5;
        this.showedTimes = num2;
        this.showDate = str6;
        this.scenes = list;
        this.displayTimes = num3;
        this.country = list2;
        this.brand = list3;
        this.denyBrand = list4;
        this.model = list5;
        this.denyModel = list6;
        this.filterClientVersion = str7;
        this.startTime = str8;
        this.endTime = str9;
        this.extraConfig = str10;
        this.adMaterialList = list7;
        this.adPlanCreateTime = str11;
        this.adPlanUpdateTime = str12;
        this.adShowLevel = str13;
        this.appStarDesc = str14;
        this.appSizeDesc = str15;
        this.ctxEnableExpr = str16;
        this.ctxDisableExpr = str17;
        this.ctxAttributeConfig = ctxAttributeConfig;
        this.dispatchTimeStart = str18;
        this.dispatchTimeEnd = str19;
        this.adSource = str20;
        this.extAdSlot = str21;
        this.extImage = mbAdImage;
        this.version = str22;
        this.bidEcpmCent = d11;
        this.ecpmCent = l11;
        this.isValid = z10;
        this.h5LinkPreload = z11;
        this.h5LinkOpenByCct = z12;
        this.countryCode = str23;
    }

    public /* synthetic */ AdPlans(String str, String str2, Integer num, String str3, String str4, String str5, Integer num2, String str6, List list, Integer num3, List list2, List list3, List list4, List list5, List list6, String str7, String str8, String str9, String str10, List list7, String str11, String str12, String str13, String str14, String str15, String str16, String str17, CtxAttributeConfig ctxAttributeConfig, String str18, String str19, String str20, String str21, MbAdImage mbAdImage, String str22, Double d11, Long l11, boolean z10, boolean z11, boolean z12, String str23, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? Integer.MAX_VALUE : num, (i11 & 8) != 0 ? null : str3, (i11 & 16) != 0 ? null : str4, (i11 & 32) != 0 ? null : str5, (i11 & 64) != 0 ? null : num2, (i11 & 128) != 0 ? null : str6, (i11 & 256) != 0 ? null : list, (i11 & 512) != 0 ? null : num3, (i11 & 1024) != 0 ? null : list2, (i11 & 2048) != 0 ? null : list3, (i11 & 4096) != 0 ? null : list4, (i11 & 8192) != 0 ? null : list5, (i11 & 16384) != 0 ? null : list6, (i11 & 32768) != 0 ? null : str7, (i11 & 65536) != 0 ? null : str8, (i11 & 131072) != 0 ? null : str9, (i11 & 262144) != 0 ? null : str10, (i11 & 524288) != 0 ? null : list7, (i11 & 1048576) != 0 ? null : str11, (i11 & 2097152) != 0 ? null : str12, (i11 & 4194304) != 0 ? null : str13, (i11 & 8388608) != 0 ? null : str14, (i11 & 16777216) != 0 ? null : str15, (i11 & ASTNode.PCTX_STORED) != 0 ? null : str16, (i11 & 67108864) != 0 ? null : str17, (i11 & ASTNode.NOJIT) != 0 ? null : ctxAttributeConfig, (i11 & ASTNode.DEOP) != 0 ? null : str18, (i11 & ASTNode.DISCARD) != 0 ? null : str19, (i11 & 1073741824) != 0 ? null : str20, (i11 & Integer.MIN_VALUE) != 0 ? null : str21, (i12 & 1) != 0 ? null : mbAdImage, (i12 & 2) != 0 ? null : str22, (i12 & 4) != 0 ? null : d11, (i12 & 8) != 0 ? null : l11, (i12 & 16) != 0 ? false : z10, (i12 & 32) != 0 ? false : z11, (i12 & 64) == 0 ? z12 : false, (i12 & 128) != 0 ? null : str23);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final Integer getDisplayTimes() {
        return this.displayTimes;
    }

    public final List<String> component11() {
        return this.country;
    }

    public final List<String> component12() {
        return this.brand;
    }

    public final List<String> component13() {
        return this.denyBrand;
    }

    public final List<String> component14() {
        return this.model;
    }

    public final List<String> component15() {
        return this.denyModel;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final String getFilterClientVersion() {
        return this.filterClientVersion;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final String getStartTime() {
        return this.startTime;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final String getEndTime() {
        return this.endTime;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final String getExtraConfig() {
        return this.extraConfig;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    public final List<AdMaterialList> component20() {
        return this.adMaterialList;
    }

    /* JADX INFO: renamed from: component21, reason: from getter */
    public final String getAdPlanCreateTime() {
        return this.adPlanCreateTime;
    }

    /* JADX INFO: renamed from: component22, reason: from getter */
    public final String getAdPlanUpdateTime() {
        return this.adPlanUpdateTime;
    }

    /* JADX INFO: renamed from: component23, reason: from getter */
    public final String getAdShowLevel() {
        return this.adShowLevel;
    }

    /* JADX INFO: renamed from: component24, reason: from getter */
    public final String getAppStarDesc() {
        return this.appStarDesc;
    }

    /* JADX INFO: renamed from: component25, reason: from getter */
    public final String getAppSizeDesc() {
        return this.appSizeDesc;
    }

    /* JADX INFO: renamed from: component26, reason: from getter */
    public final String getCtxEnableExpr() {
        return this.ctxEnableExpr;
    }

    /* JADX INFO: renamed from: component27, reason: from getter */
    public final String getCtxDisableExpr() {
        return this.ctxDisableExpr;
    }

    /* JADX INFO: renamed from: component28, reason: from getter */
    public final CtxAttributeConfig getCtxAttributeConfig() {
        return this.ctxAttributeConfig;
    }

    /* JADX INFO: renamed from: component29, reason: from getter */
    public final String getDispatchTimeStart() {
        return this.dispatchTimeStart;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Integer getSort() {
        return this.sort;
    }

    /* JADX INFO: renamed from: component30, reason: from getter */
    public final String getDispatchTimeEnd() {
        return this.dispatchTimeEnd;
    }

    /* JADX INFO: renamed from: component31, reason: from getter */
    public final String getAdSource() {
        return this.adSource;
    }

    /* JADX INFO: renamed from: component32, reason: from getter */
    public final String getExtAdSlot() {
        return this.extAdSlot;
    }

    /* JADX INFO: renamed from: component33, reason: from getter */
    public final MbAdImage getExtImage() {
        return this.extImage;
    }

    /* JADX INFO: renamed from: component34, reason: from getter */
    public final String getVersion() {
        return this.version;
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
    public final String getAdvertiserName() {
        return this.advertiserName;
    }

    /* JADX INFO: renamed from: component40, reason: from getter */
    public final String getCountryCode() {
        return this.countryCode;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getAdvertiserAvatar() {
        return this.advertiserAvatar;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getAdvertiserAvatarPath() {
        return this.advertiserAvatarPath;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Integer getShowedTimes() {
        return this.showedTimes;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getShowDate() {
        return this.showDate;
    }

    public final List<String> component9() {
        return this.scenes;
    }

    public final AdPlans copy(String id2, String name, Integer sort, String advertiserName, String advertiserAvatar, String advertiserAvatarPath, Integer showedTimes, String showDate, List<String> scenes, Integer displayTimes, List<String> country, List<String> brand, List<String> denyBrand, List<String> model, List<String> denyModel, String filterClientVersion, String startTime, String endTime, String extraConfig, List<AdMaterialList> adMaterialList, String adPlanCreateTime, String adPlanUpdateTime, String adShowLevel, String appStarDesc, String appSizeDesc, String ctxEnableExpr, String ctxDisableExpr, CtxAttributeConfig ctxAttributeConfig, String dispatchTimeStart, String dispatchTimeEnd, String adSource, String extAdSlot, MbAdImage extImage, String version, Double bidEcpmCent, Long ecpmCent, boolean isValid, boolean h5LinkPreload, boolean h5LinkOpenByCct, String countryCode) {
        return new AdPlans(id2, name, sort, advertiserName, advertiserAvatar, advertiserAvatarPath, showedTimes, showDate, scenes, displayTimes, country, brand, denyBrand, model, denyModel, filterClientVersion, startTime, endTime, extraConfig, adMaterialList, adPlanCreateTime, adPlanUpdateTime, adShowLevel, appStarDesc, appSizeDesc, ctxEnableExpr, ctxDisableExpr, ctxAttributeConfig, dispatchTimeStart, dispatchTimeEnd, adSource, extAdSlot, extImage, version, bidEcpmCent, ecpmCent, isValid, h5LinkPreload, h5LinkOpenByCct, countryCode);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AdPlans)) {
            return false;
        }
        AdPlans adPlans = (AdPlans) other;
        return Intrinsics.c(this.id, adPlans.id) && Intrinsics.c(this.name, adPlans.name) && Intrinsics.c(this.sort, adPlans.sort) && Intrinsics.c(this.advertiserName, adPlans.advertiserName) && Intrinsics.c(this.advertiserAvatar, adPlans.advertiserAvatar) && Intrinsics.c(this.advertiserAvatarPath, adPlans.advertiserAvatarPath) && Intrinsics.c(this.showedTimes, adPlans.showedTimes) && Intrinsics.c(this.showDate, adPlans.showDate) && Intrinsics.c(this.scenes, adPlans.scenes) && Intrinsics.c(this.displayTimes, adPlans.displayTimes) && Intrinsics.c(this.country, adPlans.country) && Intrinsics.c(this.brand, adPlans.brand) && Intrinsics.c(this.denyBrand, adPlans.denyBrand) && Intrinsics.c(this.model, adPlans.model) && Intrinsics.c(this.denyModel, adPlans.denyModel) && Intrinsics.c(this.filterClientVersion, adPlans.filterClientVersion) && Intrinsics.c(this.startTime, adPlans.startTime) && Intrinsics.c(this.endTime, adPlans.endTime) && Intrinsics.c(this.extraConfig, adPlans.extraConfig) && Intrinsics.c(this.adMaterialList, adPlans.adMaterialList) && Intrinsics.c(this.adPlanCreateTime, adPlans.adPlanCreateTime) && Intrinsics.c(this.adPlanUpdateTime, adPlans.adPlanUpdateTime) && Intrinsics.c(this.adShowLevel, adPlans.adShowLevel) && Intrinsics.c(this.appStarDesc, adPlans.appStarDesc) && Intrinsics.c(this.appSizeDesc, adPlans.appSizeDesc) && Intrinsics.c(this.ctxEnableExpr, adPlans.ctxEnableExpr) && Intrinsics.c(this.ctxDisableExpr, adPlans.ctxDisableExpr) && Intrinsics.c(this.ctxAttributeConfig, adPlans.ctxAttributeConfig) && Intrinsics.c(this.dispatchTimeStart, adPlans.dispatchTimeStart) && Intrinsics.c(this.dispatchTimeEnd, adPlans.dispatchTimeEnd) && Intrinsics.c(this.adSource, adPlans.adSource) && Intrinsics.c(this.extAdSlot, adPlans.extAdSlot) && Intrinsics.c(this.extImage, adPlans.extImage) && Intrinsics.c(this.version, adPlans.version) && Intrinsics.c(this.bidEcpmCent, adPlans.bidEcpmCent) && Intrinsics.c(this.ecpmCent, adPlans.ecpmCent) && this.isValid == adPlans.isValid && this.h5LinkPreload == adPlans.h5LinkPreload && this.h5LinkOpenByCct == adPlans.h5LinkOpenByCct && Intrinsics.c(this.countryCode, adPlans.countryCode);
    }

    public final List<AdMaterialList> getAdMaterialList() {
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

    public final CtxAttributeConfig getCtxAttributeConfig() {
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

    public final MbAdImage getExtImage() {
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
        String str = this.id;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.name;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.sort;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        String str3 = this.advertiserName;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.advertiserAvatar;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.advertiserAvatarPath;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Integer num2 = this.showedTimes;
        int iHashCode7 = (iHashCode6 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str6 = this.showDate;
        int iHashCode8 = (iHashCode7 + (str6 == null ? 0 : str6.hashCode())) * 31;
        List<String> list = this.scenes;
        int iHashCode9 = (iHashCode8 + (list == null ? 0 : list.hashCode())) * 31;
        Integer num3 = this.displayTimes;
        int iHashCode10 = (iHashCode9 + (num3 == null ? 0 : num3.hashCode())) * 31;
        List<String> list2 = this.country;
        int iHashCode11 = (iHashCode10 + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<String> list3 = this.brand;
        int iHashCode12 = (iHashCode11 + (list3 == null ? 0 : list3.hashCode())) * 31;
        List<String> list4 = this.denyBrand;
        int iHashCode13 = (iHashCode12 + (list4 == null ? 0 : list4.hashCode())) * 31;
        List<String> list5 = this.model;
        int iHashCode14 = (iHashCode13 + (list5 == null ? 0 : list5.hashCode())) * 31;
        List<String> list6 = this.denyModel;
        int iHashCode15 = (iHashCode14 + (list6 == null ? 0 : list6.hashCode())) * 31;
        String str7 = this.filterClientVersion;
        int iHashCode16 = (iHashCode15 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.startTime;
        int iHashCode17 = (iHashCode16 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.endTime;
        int iHashCode18 = (iHashCode17 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.extraConfig;
        int iHashCode19 = (iHashCode18 + (str10 == null ? 0 : str10.hashCode())) * 31;
        List<AdMaterialList> list7 = this.adMaterialList;
        int iHashCode20 = (iHashCode19 + (list7 == null ? 0 : list7.hashCode())) * 31;
        String str11 = this.adPlanCreateTime;
        int iHashCode21 = (iHashCode20 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.adPlanUpdateTime;
        int iHashCode22 = (iHashCode21 + (str12 == null ? 0 : str12.hashCode())) * 31;
        String str13 = this.adShowLevel;
        int iHashCode23 = (iHashCode22 + (str13 == null ? 0 : str13.hashCode())) * 31;
        String str14 = this.appStarDesc;
        int iHashCode24 = (iHashCode23 + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.appSizeDesc;
        int iHashCode25 = (iHashCode24 + (str15 == null ? 0 : str15.hashCode())) * 31;
        String str16 = this.ctxEnableExpr;
        int iHashCode26 = (iHashCode25 + (str16 == null ? 0 : str16.hashCode())) * 31;
        String str17 = this.ctxDisableExpr;
        int iHashCode27 = (iHashCode26 + (str17 == null ? 0 : str17.hashCode())) * 31;
        CtxAttributeConfig ctxAttributeConfig = this.ctxAttributeConfig;
        int iHashCode28 = (iHashCode27 + (ctxAttributeConfig == null ? 0 : ctxAttributeConfig.hashCode())) * 31;
        String str18 = this.dispatchTimeStart;
        int iHashCode29 = (iHashCode28 + (str18 == null ? 0 : str18.hashCode())) * 31;
        String str19 = this.dispatchTimeEnd;
        int iHashCode30 = (iHashCode29 + (str19 == null ? 0 : str19.hashCode())) * 31;
        String str20 = this.adSource;
        int iHashCode31 = (iHashCode30 + (str20 == null ? 0 : str20.hashCode())) * 31;
        String str21 = this.extAdSlot;
        int iHashCode32 = (iHashCode31 + (str21 == null ? 0 : str21.hashCode())) * 31;
        MbAdImage mbAdImage = this.extImage;
        int iHashCode33 = (iHashCode32 + (mbAdImage == null ? 0 : mbAdImage.hashCode())) * 31;
        String str22 = this.version;
        int iHashCode34 = (iHashCode33 + (str22 == null ? 0 : str22.hashCode())) * 31;
        Double d11 = this.bidEcpmCent;
        int iHashCode35 = (iHashCode34 + (d11 == null ? 0 : d11.hashCode())) * 31;
        Long l11 = this.ecpmCent;
        int iHashCode36 = (((((((iHashCode35 + (l11 == null ? 0 : l11.hashCode())) * 31) + e.a(this.isValid)) * 31) + e.a(this.h5LinkPreload)) * 31) + e.a(this.h5LinkOpenByCct)) * 31;
        String str23 = this.countryCode;
        return iHashCode36 + (str23 != null ? str23.hashCode() : 0);
    }

    public final boolean isValid() {
        return this.isValid;
    }

    public final void setAdMaterialList(List<AdMaterialList> list) {
        this.adMaterialList = list;
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

    public final void setBidEcpmCent(Double d11) {
        this.bidEcpmCent = d11;
    }

    public final void setCountryCode(String str) {
        this.countryCode = str;
    }

    public final void setCtxAttributeConfig(CtxAttributeConfig ctxAttributeConfig) {
        this.ctxAttributeConfig = ctxAttributeConfig;
    }

    public final void setDispatchTimeEnd(String str) {
        this.dispatchTimeEnd = str;
    }

    public final void setDispatchTimeStart(String str) {
        this.dispatchTimeStart = str;
    }

    public final void setEcpmCent(Long l11) {
        this.ecpmCent = l11;
    }

    public final void setExtAdSlot(String str) {
        this.extAdSlot = str;
    }

    public final void setExtImage(MbAdImage mbAdImage) {
        this.extImage = mbAdImage;
    }

    public final void setShowDate(String str) {
        this.showDate = str;
    }

    public final void setShowedTimes(Integer num) {
        this.showedTimes = num;
    }

    public final void setValid(boolean z10) {
        this.isValid = z10;
    }

    public final void setVersion(String str) {
        this.version = str;
    }

    public String toString() {
        return "AdPlans(id=" + this.id + ", name=" + this.name + ", sort=" + this.sort + ", advertiserName=" + this.advertiserName + ", advertiserAvatar=" + this.advertiserAvatar + ", advertiserAvatarPath=" + this.advertiserAvatarPath + ", showedTimes=" + this.showedTimes + ", showDate=" + this.showDate + ", scenes=" + this.scenes + ", displayTimes=" + this.displayTimes + ", country=" + this.country + ", brand=" + this.brand + ", denyBrand=" + this.denyBrand + ", model=" + this.model + ", denyModel=" + this.denyModel + ", filterClientVersion=" + this.filterClientVersion + ", startTime=" + this.startTime + ", endTime=" + this.endTime + ", extraConfig=" + this.extraConfig + ", adMaterialList=" + this.adMaterialList + ", adPlanCreateTime=" + this.adPlanCreateTime + ", adPlanUpdateTime=" + this.adPlanUpdateTime + ", adShowLevel=" + this.adShowLevel + ", appStarDesc=" + this.appStarDesc + ", appSizeDesc=" + this.appSizeDesc + ", ctxEnableExpr=" + this.ctxEnableExpr + ", ctxDisableExpr=" + this.ctxDisableExpr + ", ctxAttributeConfig=" + this.ctxAttributeConfig + ", dispatchTimeStart=" + this.dispatchTimeStart + ", dispatchTimeEnd=" + this.dispatchTimeEnd + ", adSource=" + this.adSource + ", extAdSlot=" + this.extAdSlot + ", extImage=" + this.extImage + ", version=" + this.version + ", bidEcpmCent=" + this.bidEcpmCent + ", ecpmCent=" + this.ecpmCent + ", isValid=" + this.isValid + ", h5LinkPreload=" + this.h5LinkPreload + ", h5LinkOpenByCct=" + this.h5LinkOpenByCct + ", countryCode=" + this.countryCode + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.id);
        dest.writeString(this.name);
        Integer num = this.sort;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        dest.writeString(this.advertiserName);
        dest.writeString(this.advertiserAvatar);
        dest.writeString(this.advertiserAvatarPath);
        Integer num2 = this.showedTimes;
        if (num2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num2.intValue());
        }
        dest.writeString(this.showDate);
        dest.writeStringList(this.scenes);
        Integer num3 = this.displayTimes;
        if (num3 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num3.intValue());
        }
        dest.writeStringList(this.country);
        dest.writeStringList(this.brand);
        dest.writeStringList(this.denyBrand);
        dest.writeStringList(this.model);
        dest.writeStringList(this.denyModel);
        dest.writeString(this.filterClientVersion);
        dest.writeString(this.startTime);
        dest.writeString(this.endTime);
        dest.writeString(this.extraConfig);
        List<AdMaterialList> list = this.adMaterialList;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            Iterator<AdMaterialList> it = list.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(dest, flags);
            }
        }
        dest.writeString(this.adPlanCreateTime);
        dest.writeString(this.adPlanUpdateTime);
        dest.writeString(this.adShowLevel);
        dest.writeString(this.appStarDesc);
        dest.writeString(this.appSizeDesc);
        dest.writeString(this.ctxEnableExpr);
        dest.writeString(this.ctxDisableExpr);
        CtxAttributeConfig ctxAttributeConfig = this.ctxAttributeConfig;
        if (ctxAttributeConfig == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            ctxAttributeConfig.writeToParcel(dest, flags);
        }
        dest.writeString(this.dispatchTimeStart);
        dest.writeString(this.dispatchTimeEnd);
        dest.writeString(this.adSource);
        dest.writeString(this.extAdSlot);
        MbAdImage mbAdImage = this.extImage;
        if (mbAdImage == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            mbAdImage.writeToParcel(dest, flags);
        }
        dest.writeString(this.version);
        Double d11 = this.bidEcpmCent;
        if (d11 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeDouble(d11.doubleValue());
        }
        Long l11 = this.ecpmCent;
        if (l11 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeLong(l11.longValue());
        }
        dest.writeInt(this.isValid ? 1 : 0);
        dest.writeInt(this.h5LinkPreload ? 1 : 0);
        dest.writeInt(this.h5LinkOpenByCct ? 1 : 0);
        dest.writeString(this.countryCode);
    }
}
