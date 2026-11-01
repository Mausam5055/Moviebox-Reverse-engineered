package com.transsion.ad.ps.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.collection.s;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.hisavana.common.bean.TAdNativeInfo;
import com.transsnet.launcherlib.PalmStoreDownLoadTaskInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\\\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b+\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002Bû\u0002\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0013\u001a\u00020\t\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0016\u001a\u00020\t\u0012\b\b\u0002\u0010\u0017\u001a\u00020\t\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b(\u0010)J\u0007\u0010\u008e\u0001\u001a\u00020\u0004J\f\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\f\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\f\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\n\u0010\u0092\u0001\u001a\u00020\tHÆ\u0003J\f\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\f\u0010\u0094\u0001\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\f\u0010\u0095\u0001\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\f\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\f\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\n\u0010\u0098\u0001\u001a\u00020\u0010HÆ\u0003J\f\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\f\u0010\u009a\u0001\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\n\u0010\u009b\u0001\u001a\u00020\tHÆ\u0003J\f\u0010\u009c\u0001\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\n\u0010\u009d\u0001\u001a\u00020\u0010HÆ\u0003J\n\u0010\u009e\u0001\u001a\u00020\tHÆ\u0003J\n\u0010\u009f\u0001\u001a\u00020\tHÆ\u0003J\f\u0010 \u0001\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\f\u0010¡\u0001\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u0011\u0010¢\u0001\u001a\u0004\u0018\u00010\u001bHÆ\u0003¢\u0006\u0002\u0010XJ\f\u0010£\u0001\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\f\u0010¤\u0001\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\f\u0010¥\u0001\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\f\u0010¦\u0001\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u0011\u0010§\u0001\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010eJ\f\u0010¨\u0001\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\f\u0010©\u0001\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\f\u0010ª\u0001\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\f\u0010«\u0001\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u0011\u0010¬\u0001\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010eJ\u0011\u0010\u00ad\u0001\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010eJ\f\u0010®\u0001\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u0084\u0003\u0010¯\u0001\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u000f\u001a\u00020\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0013\u001a\u00020\t2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0015\u001a\u00020\u00102\b\b\u0002\u0010\u0016\u001a\u00020\t2\b\b\u0002\u0010\u0017\u001a\u00020\t2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u0004HÆ\u0001¢\u0006\u0003\u0010°\u0001J\u0007\u0010±\u0001\u001a\u00020\tJ\u0016\u0010²\u0001\u001a\u00020\u001b2\n\u0010³\u0001\u001a\u0005\u0018\u00010´\u0001HÖ\u0003J\n\u0010µ\u0001\u001a\u00020\tHÖ\u0001J\n\u0010¶\u0001\u001a\u00020\u0004HÖ\u0001J\u001b\u0010·\u0001\u001a\u00030¸\u00012\b\u0010¹\u0001\u001a\u00030º\u00012\u0007\u0010»\u0001\u001a\u00020\tR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010+\"\u0004\b/\u0010-R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u0010+\"\u0004\b9\u0010-R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010+\"\u0004\b;\u0010-R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010+\"\u0004\b=\u0010-R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b>\u0010+\"\u0004\b?\u0010-R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u0010+\"\u0004\bA\u0010-R\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bB\u0010C\"\u0004\bD\u0010ER\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bF\u0010+\"\u0004\bG\u0010-R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bH\u0010+\"\u0004\bI\u0010-R\u001a\u0010\u0013\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bJ\u00105\"\u0004\bK\u00107R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bL\u0010+\"\u0004\bM\u0010-R\u001a\u0010\u0015\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bN\u0010C\"\u0004\bO\u0010ER\u001a\u0010\u0016\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u00105\"\u0004\bP\u00107R\u001a\u0010\u0017\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bQ\u00105\"\u0004\bR\u00107R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bS\u0010+\"\u0004\bT\u0010-R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bU\u0010+\"\u0004\bV\u0010-R\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010[\u001a\u0004\bW\u0010X\"\u0004\bY\u0010ZR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\\\u0010+\"\u0004\b]\u0010-R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b^\u0010+\"\u0004\b_\u0010-R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b`\u0010+\"\u0004\ba\u0010-R\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bb\u0010+\"\u0004\bc\u0010-R\u001e\u0010 \u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010h\u001a\u0004\bd\u0010e\"\u0004\bf\u0010gR\u001c\u0010!\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bi\u0010+\"\u0004\bj\u0010-R\u001c\u0010\"\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bk\u0010+\"\u0004\bl\u0010-R\u001c\u0010#\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bm\u0010+\"\u0004\bn\u0010-R\u001c\u0010$\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bo\u0010+\"\u0004\bp\u0010-R\u001e\u0010%\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010h\u001a\u0004\bq\u0010e\"\u0004\br\u0010gR\u001e\u0010&\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010h\u001a\u0004\bs\u0010e\"\u0004\bt\u0010gR\u001c\u0010'\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bu\u0010+\"\u0004\bv\u0010-R\"\u0010w\u001a\u0004\u0018\u00010xX\u0086\u000e¢\u0006\u0014\n\u0000\u0012\u0004\by\u0010z\u001a\u0004\b{\u0010|\"\u0004\b}\u0010~R%\u0010\u007f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0017\n\u0000\u0012\u0005\b\u0080\u0001\u0010z\u001a\u0005\b\u0081\u0001\u0010+\"\u0005\b\u0082\u0001\u0010-R&\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0017\n\u0000\u0012\u0005\b\u0084\u0001\u0010z\u001a\u0005\b\u0085\u0001\u0010+\"\u0005\b\u0086\u0001\u0010-R)\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0088\u0001X\u0086\u000e¢\u0006\u0019\n\u0000\u0012\u0005\b\u0089\u0001\u0010z\u001a\u0006\b\u008a\u0001\u0010\u008b\u0001\"\u0006\b\u008c\u0001\u0010\u008d\u0001¨\u0006¼\u0001"}, d2 = {"Lcom/transsion/ad/ps/model/RecommendInfo;", "Landroid/os/Parcelable;", "Ljava/io/Serializable;", "categoryCode", "", "categoryName", "detail", "Lcom/transsion/ad/ps/model/ItemDetail;", "downloadCount", "", "iconUrl", "itemID", "offerDesc", "packageName", "simpleDescription", "size", "", "star", "verifyGoogle", "versionCode", "versionName", "id", "isOffer", "showType", "planName", "name", "exists", "", "adSource", "buttonText", "gpLink", "showContent", "adType", "deepLink", "attributionLink", "showAttributionLink", "gpAttributionLink", "showMax", "clickMax", "showHours", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/ps/model/ItemDetail;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V", "getCategoryCode", "()Ljava/lang/String;", "setCategoryCode", "(Ljava/lang/String;)V", "getCategoryName", "setCategoryName", "getDetail", "()Lcom/transsion/ad/ps/model/ItemDetail;", "setDetail", "(Lcom/transsion/ad/ps/model/ItemDetail;)V", "getDownloadCount", "()I", "setDownloadCount", "(I)V", "getIconUrl", "setIconUrl", "getItemID", "setItemID", "getOfferDesc", "setOfferDesc", "getPackageName", "setPackageName", "getSimpleDescription", "setSimpleDescription", "getSize", "()J", "setSize", "(J)V", "getStar", "setStar", "getVerifyGoogle", "setVerifyGoogle", "getVersionCode", "setVersionCode", "getVersionName", "setVersionName", "getId", "setId", "setOffer", "getShowType", "setShowType", "getPlanName", "setPlanName", "getName", "setName", "getExists", "()Ljava/lang/Boolean;", "setExists", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getAdSource", "setAdSource", "getButtonText", "setButtonText", "getGpLink", "setGpLink", "getShowContent", "setShowContent", "getAdType", "()Ljava/lang/Integer;", "setAdType", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getDeepLink", "setDeepLink", "getAttributionLink", "setAttributionLink", "getShowAttributionLink", "setShowAttributionLink", "getGpAttributionLink", "setGpAttributionLink", "getShowMax", "setShowMax", "getClickMax", "setClickMax", "getShowHours", "setShowHours", "tAdNativeInfo", "Lcom/hisavana/common/bean/TAdNativeInfo;", "getTAdNativeInfo$annotations", "()V", "getTAdNativeInfo", "()Lcom/hisavana/common/bean/TAdNativeInfo;", "setTAdNativeInfo", "(Lcom/hisavana/common/bean/TAdNativeInfo;)V", "sceneId", "getSceneId$annotations", "getSceneId", "setSceneId", "placementId", "getPlacementId$annotations", "getPlacementId", "setPlacementId", "palmStoreDownLoadTaskInfo", "Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;", "getPalmStoreDownLoadTaskInfo$annotations", "getPalmStoreDownLoadTaskInfo", "()Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;", "setPalmStoreDownLoadTaskInfo", "(Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;)V", "getAdTypeTxt", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component28", "component29", "component30", "component31", "component32", "copy", "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/ps/model/ItemDetail;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/transsion/ad/ps/model/RecommendInfo;", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class RecommendInfo implements Parcelable, Serializable {
    public static final Parcelable.Creator<RecommendInfo> CREATOR = new a();
    private String adSource;
    private Integer adType;
    private String attributionLink;
    private String buttonText;
    private String categoryCode;
    private String categoryName;
    private Integer clickMax;
    private String deepLink;
    private ItemDetail detail;
    private int downloadCount;
    private Boolean exists;
    private String gpAttributionLink;
    private String gpLink;
    private String iconUrl;
    private long id;
    private int isOffer;
    private String itemID;
    private String name;
    private String offerDesc;
    private String packageName;
    private transient PalmStoreDownLoadTaskInfo palmStoreDownLoadTaskInfo;
    private transient String placementId;
    private String planName;
    private transient String sceneId;
    private String showAttributionLink;
    private String showContent;
    private String showHours;
    private Integer showMax;
    private int showType;
    private String simpleDescription;
    private long size;
    private String star;
    private transient TAdNativeInfo tAdNativeInfo;
    private String verifyGoogle;
    private int versionCode;
    private String versionName;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RecommendInfo createFromParcel(Parcel parcel) {
            Boolean boolValueOf;
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            ItemDetail itemDetailCreateFromParcel = parcel.readInt() == 0 ? null : ItemDetail.CREATOR.createFromParcel(parcel);
            int i11 = parcel.readInt();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            String string5 = parcel.readString();
            String string6 = parcel.readString();
            String string7 = parcel.readString();
            long j11 = parcel.readLong();
            String string8 = parcel.readString();
            String string9 = parcel.readString();
            int i12 = parcel.readInt();
            String string10 = parcel.readString();
            long j12 = parcel.readLong();
            int i13 = parcel.readInt();
            int i14 = parcel.readInt();
            String string11 = parcel.readString();
            String string12 = parcel.readString();
            if (parcel.readInt() == 0) {
                boolValueOf = null;
            } else {
                boolValueOf = Boolean.valueOf(parcel.readInt() != 0);
            }
            return new RecommendInfo(string, string2, itemDetailCreateFromParcel, i11, string3, string4, string5, string6, string7, j11, string8, string9, i12, string10, j12, i13, i14, string11, string12, boolValueOf, parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final RecommendInfo[] newArray(int i11) {
            return new RecommendInfo[i11];
        }
    }

    public RecommendInfo() {
        this(null, null, null, 0, null, null, null, null, null, 0L, null, null, 0, null, 0L, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -1, null);
    }

    public RecommendInfo(String str, String str2, ItemDetail itemDetail, int i11, String str3, String str4, String str5, String str6, String str7, long j11, String str8, String str9, int i12, String str10, long j12, int i13, int i14, String str11, String str12, Boolean bool, String str13, String str14, String str15, String str16, Integer num, String str17, String str18, String str19, String str20, Integer num2, Integer num3, String str21) {
        this.categoryCode = str;
        this.categoryName = str2;
        this.detail = itemDetail;
        this.downloadCount = i11;
        this.iconUrl = str3;
        this.itemID = str4;
        this.offerDesc = str5;
        this.packageName = str6;
        this.simpleDescription = str7;
        this.size = j11;
        this.star = str8;
        this.verifyGoogle = str9;
        this.versionCode = i12;
        this.versionName = str10;
        this.id = j12;
        this.isOffer = i13;
        this.showType = i14;
        this.planName = str11;
        this.name = str12;
        this.exists = bool;
        this.adSource = str13;
        this.buttonText = str14;
        this.gpLink = str15;
        this.showContent = str16;
        this.adType = num;
        this.deepLink = str17;
        this.attributionLink = str18;
        this.showAttributionLink = str19;
        this.gpAttributionLink = str20;
        this.showMax = num2;
        this.clickMax = num3;
        this.showHours = str21;
    }

    public /* synthetic */ RecommendInfo(String str, String str2, ItemDetail itemDetail, int i11, String str3, String str4, String str5, String str6, String str7, long j11, String str8, String str9, int i12, String str10, long j12, int i13, int i14, String str11, String str12, Boolean bool, String str13, String str14, String str15, String str16, Integer num, String str17, String str18, String str19, String str20, Integer num2, Integer num3, String str21, int i15, DefaultConstructorMarker defaultConstructorMarker) {
        this((i15 & 1) != 0 ? null : str, (i15 & 2) != 0 ? null : str2, (i15 & 4) != 0 ? null : itemDetail, (i15 & 8) != 0 ? 0 : i11, (i15 & 16) != 0 ? null : str3, (i15 & 32) != 0 ? null : str4, (i15 & 64) != 0 ? null : str5, (i15 & 128) != 0 ? null : str6, (i15 & 256) != 0 ? null : str7, (i15 & 512) != 0 ? 0L : j11, (i15 & 1024) != 0 ? null : str8, (i15 & 2048) != 0 ? null : str9, (i15 & 4096) != 0 ? 0 : i12, (i15 & 8192) != 0 ? null : str10, (i15 & 16384) != 0 ? 0L : j12, (32768 & i15) != 0 ? 0 : i13, (i15 & 65536) != 0 ? 0 : i14, (i15 & 131072) != 0 ? null : str11, (i15 & 262144) != 0 ? null : str12, (i15 & 524288) != 0 ? null : bool, (i15 & 1048576) != 0 ? null : str13, (i15 & 2097152) != 0 ? null : str14, (i15 & 4194304) != 0 ? null : str15, (i15 & 8388608) != 0 ? null : str16, (i15 & 16777216) != 0 ? null : num, (i15 & ASTNode.PCTX_STORED) != 0 ? null : str17, (i15 & 67108864) != 0 ? null : str18, (i15 & ASTNode.NOJIT) != 0 ? null : str19, (i15 & ASTNode.DEOP) != 0 ? null : str20, (i15 & ASTNode.DISCARD) != 0 ? null : num2, (i15 & 1073741824) != 0 ? null : num3, (i15 & Integer.MIN_VALUE) != 0 ? null : str21);
    }

    public static /* synthetic */ void getPalmStoreDownLoadTaskInfo$annotations() {
    }

    public static /* synthetic */ void getPlacementId$annotations() {
    }

    public static /* synthetic */ void getSceneId$annotations() {
    }

    public static /* synthetic */ void getTAdNativeInfo$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCategoryCode() {
        return this.categoryCode;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final long getSize() {
        return this.size;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getStar() {
        return this.star;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getVerifyGoogle() {
        return this.verifyGoogle;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final int getVersionCode() {
        return this.versionCode;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getVersionName() {
        return this.versionName;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final long getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final int getIsOffer() {
        return this.isOffer;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final int getShowType() {
        return this.showType;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final String getPlanName() {
        return this.planName;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCategoryName() {
        return this.categoryName;
    }

    /* JADX INFO: renamed from: component20, reason: from getter */
    public final Boolean getExists() {
        return this.exists;
    }

    /* JADX INFO: renamed from: component21, reason: from getter */
    public final String getAdSource() {
        return this.adSource;
    }

    /* JADX INFO: renamed from: component22, reason: from getter */
    public final String getButtonText() {
        return this.buttonText;
    }

    /* JADX INFO: renamed from: component23, reason: from getter */
    public final String getGpLink() {
        return this.gpLink;
    }

    /* JADX INFO: renamed from: component24, reason: from getter */
    public final String getShowContent() {
        return this.showContent;
    }

    /* JADX INFO: renamed from: component25, reason: from getter */
    public final Integer getAdType() {
        return this.adType;
    }

    /* JADX INFO: renamed from: component26, reason: from getter */
    public final String getDeepLink() {
        return this.deepLink;
    }

    /* JADX INFO: renamed from: component27, reason: from getter */
    public final String getAttributionLink() {
        return this.attributionLink;
    }

    /* JADX INFO: renamed from: component28, reason: from getter */
    public final String getShowAttributionLink() {
        return this.showAttributionLink;
    }

    /* JADX INFO: renamed from: component29, reason: from getter */
    public final String getGpAttributionLink() {
        return this.gpAttributionLink;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final ItemDetail getDetail() {
        return this.detail;
    }

    /* JADX INFO: renamed from: component30, reason: from getter */
    public final Integer getShowMax() {
        return this.showMax;
    }

    /* JADX INFO: renamed from: component31, reason: from getter */
    public final Integer getClickMax() {
        return this.clickMax;
    }

    /* JADX INFO: renamed from: component32, reason: from getter */
    public final String getShowHours() {
        return this.showHours;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getDownloadCount() {
        return this.downloadCount;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getIconUrl() {
        return this.iconUrl;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getItemID() {
        return this.itemID;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getOfferDesc() {
        return this.offerDesc;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getPackageName() {
        return this.packageName;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getSimpleDescription() {
        return this.simpleDescription;
    }

    public final RecommendInfo copy(String categoryCode, String categoryName, ItemDetail detail, int downloadCount, String iconUrl, String itemID, String offerDesc, String packageName, String simpleDescription, long size, String star, String verifyGoogle, int versionCode, String versionName, long id2, int isOffer, int showType, String planName, String name, Boolean exists, String adSource, String buttonText, String gpLink, String showContent, Integer adType, String deepLink, String attributionLink, String showAttributionLink, String gpAttributionLink, Integer showMax, Integer clickMax, String showHours) {
        return new RecommendInfo(categoryCode, categoryName, detail, downloadCount, iconUrl, itemID, offerDesc, packageName, simpleDescription, size, star, verifyGoogle, versionCode, versionName, id2, isOffer, showType, planName, name, exists, adSource, buttonText, gpLink, showContent, adType, deepLink, attributionLink, showAttributionLink, gpAttributionLink, showMax, clickMax, showHours);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RecommendInfo)) {
            return false;
        }
        RecommendInfo recommendInfo = (RecommendInfo) other;
        return Intrinsics.c(this.categoryCode, recommendInfo.categoryCode) && Intrinsics.c(this.categoryName, recommendInfo.categoryName) && Intrinsics.c(this.detail, recommendInfo.detail) && this.downloadCount == recommendInfo.downloadCount && Intrinsics.c(this.iconUrl, recommendInfo.iconUrl) && Intrinsics.c(this.itemID, recommendInfo.itemID) && Intrinsics.c(this.offerDesc, recommendInfo.offerDesc) && Intrinsics.c(this.packageName, recommendInfo.packageName) && Intrinsics.c(this.simpleDescription, recommendInfo.simpleDescription) && this.size == recommendInfo.size && Intrinsics.c(this.star, recommendInfo.star) && Intrinsics.c(this.verifyGoogle, recommendInfo.verifyGoogle) && this.versionCode == recommendInfo.versionCode && Intrinsics.c(this.versionName, recommendInfo.versionName) && this.id == recommendInfo.id && this.isOffer == recommendInfo.isOffer && this.showType == recommendInfo.showType && Intrinsics.c(this.planName, recommendInfo.planName) && Intrinsics.c(this.name, recommendInfo.name) && Intrinsics.c(this.exists, recommendInfo.exists) && Intrinsics.c(this.adSource, recommendInfo.adSource) && Intrinsics.c(this.buttonText, recommendInfo.buttonText) && Intrinsics.c(this.gpLink, recommendInfo.gpLink) && Intrinsics.c(this.showContent, recommendInfo.showContent) && Intrinsics.c(this.adType, recommendInfo.adType) && Intrinsics.c(this.deepLink, recommendInfo.deepLink) && Intrinsics.c(this.attributionLink, recommendInfo.attributionLink) && Intrinsics.c(this.showAttributionLink, recommendInfo.showAttributionLink) && Intrinsics.c(this.gpAttributionLink, recommendInfo.gpAttributionLink) && Intrinsics.c(this.showMax, recommendInfo.showMax) && Intrinsics.c(this.clickMax, recommendInfo.clickMax) && Intrinsics.c(this.showHours, recommendInfo.showHours);
    }

    public final String getAdSource() {
        return this.adSource;
    }

    public final Integer getAdType() {
        return this.adType;
    }

    public final String getAdTypeTxt() {
        Integer num = this.adType;
        int value = PSAdTypeEnum.PS_AD_TYPE_USER_ACQUISITION_0.getValue();
        if (num != null && num.intValue() == value) {
            return "拉新";
        }
        return (num != null && num.intValue() == PSAdTypeEnum.PS_AD_TYPE_USER_RETENTION_1.getValue()) ? "拉活" : "未知类型";
    }

    public final String getAttributionLink() {
        return this.attributionLink;
    }

    public final String getButtonText() {
        return this.buttonText;
    }

    public final String getCategoryCode() {
        return this.categoryCode;
    }

    public final String getCategoryName() {
        return this.categoryName;
    }

    public final Integer getClickMax() {
        return this.clickMax;
    }

    public final String getDeepLink() {
        return this.deepLink;
    }

    public final ItemDetail getDetail() {
        return this.detail;
    }

    public final int getDownloadCount() {
        return this.downloadCount;
    }

    public final Boolean getExists() {
        return this.exists;
    }

    public final String getGpAttributionLink() {
        return this.gpAttributionLink;
    }

    public final String getGpLink() {
        return this.gpLink;
    }

    public final String getIconUrl() {
        return this.iconUrl;
    }

    public final long getId() {
        return this.id;
    }

    public final String getItemID() {
        return this.itemID;
    }

    public final String getName() {
        return this.name;
    }

    public final String getOfferDesc() {
        return this.offerDesc;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final PalmStoreDownLoadTaskInfo getPalmStoreDownLoadTaskInfo() {
        return this.palmStoreDownLoadTaskInfo;
    }

    public final String getPlacementId() {
        return this.placementId;
    }

    public final String getPlanName() {
        return this.planName;
    }

    public final String getSceneId() {
        return this.sceneId;
    }

    public final String getShowAttributionLink() {
        return this.showAttributionLink;
    }

    public final String getShowContent() {
        return this.showContent;
    }

    public final String getShowHours() {
        return this.showHours;
    }

    public final Integer getShowMax() {
        return this.showMax;
    }

    public final int getShowType() {
        return this.showType;
    }

    public final String getSimpleDescription() {
        return this.simpleDescription;
    }

    public final long getSize() {
        return this.size;
    }

    public final String getStar() {
        return this.star;
    }

    public final TAdNativeInfo getTAdNativeInfo() {
        return this.tAdNativeInfo;
    }

    public final String getVerifyGoogle() {
        return this.verifyGoogle;
    }

    public final int getVersionCode() {
        return this.versionCode;
    }

    public final String getVersionName() {
        return this.versionName;
    }

    public int hashCode() {
        String str = this.categoryCode;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.categoryName;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        ItemDetail itemDetail = this.detail;
        int iHashCode3 = (((iHashCode2 + (itemDetail == null ? 0 : itemDetail.hashCode())) * 31) + this.downloadCount) * 31;
        String str3 = this.iconUrl;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.itemID;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.offerDesc;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.packageName;
        int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.simpleDescription;
        int iHashCode8 = (((iHashCode7 + (str7 == null ? 0 : str7.hashCode())) * 31) + s.a(this.size)) * 31;
        String str8 = this.star;
        int iHashCode9 = (iHashCode8 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.verifyGoogle;
        int iHashCode10 = (((iHashCode9 + (str9 == null ? 0 : str9.hashCode())) * 31) + this.versionCode) * 31;
        String str10 = this.versionName;
        int iHashCode11 = (((((((iHashCode10 + (str10 == null ? 0 : str10.hashCode())) * 31) + s.a(this.id)) * 31) + this.isOffer) * 31) + this.showType) * 31;
        String str11 = this.planName;
        int iHashCode12 = (iHashCode11 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.name;
        int iHashCode13 = (iHashCode12 + (str12 == null ? 0 : str12.hashCode())) * 31;
        Boolean bool = this.exists;
        int iHashCode14 = (iHashCode13 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str13 = this.adSource;
        int iHashCode15 = (iHashCode14 + (str13 == null ? 0 : str13.hashCode())) * 31;
        String str14 = this.buttonText;
        int iHashCode16 = (iHashCode15 + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.gpLink;
        int iHashCode17 = (iHashCode16 + (str15 == null ? 0 : str15.hashCode())) * 31;
        String str16 = this.showContent;
        int iHashCode18 = (iHashCode17 + (str16 == null ? 0 : str16.hashCode())) * 31;
        Integer num = this.adType;
        int iHashCode19 = (iHashCode18 + (num == null ? 0 : num.hashCode())) * 31;
        String str17 = this.deepLink;
        int iHashCode20 = (iHashCode19 + (str17 == null ? 0 : str17.hashCode())) * 31;
        String str18 = this.attributionLink;
        int iHashCode21 = (iHashCode20 + (str18 == null ? 0 : str18.hashCode())) * 31;
        String str19 = this.showAttributionLink;
        int iHashCode22 = (iHashCode21 + (str19 == null ? 0 : str19.hashCode())) * 31;
        String str20 = this.gpAttributionLink;
        int iHashCode23 = (iHashCode22 + (str20 == null ? 0 : str20.hashCode())) * 31;
        Integer num2 = this.showMax;
        int iHashCode24 = (iHashCode23 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.clickMax;
        int iHashCode25 = (iHashCode24 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str21 = this.showHours;
        return iHashCode25 + (str21 != null ? str21.hashCode() : 0);
    }

    public final int isOffer() {
        return this.isOffer;
    }

    public final void setAdSource(String str) {
        this.adSource = str;
    }

    public final void setAdType(Integer num) {
        this.adType = num;
    }

    public final void setAttributionLink(String str) {
        this.attributionLink = str;
    }

    public final void setButtonText(String str) {
        this.buttonText = str;
    }

    public final void setCategoryCode(String str) {
        this.categoryCode = str;
    }

    public final void setCategoryName(String str) {
        this.categoryName = str;
    }

    public final void setClickMax(Integer num) {
        this.clickMax = num;
    }

    public final void setDeepLink(String str) {
        this.deepLink = str;
    }

    public final void setDetail(ItemDetail itemDetail) {
        this.detail = itemDetail;
    }

    public final void setDownloadCount(int i11) {
        this.downloadCount = i11;
    }

    public final void setExists(Boolean bool) {
        this.exists = bool;
    }

    public final void setGpAttributionLink(String str) {
        this.gpAttributionLink = str;
    }

    public final void setGpLink(String str) {
        this.gpLink = str;
    }

    public final void setIconUrl(String str) {
        this.iconUrl = str;
    }

    public final void setId(long j11) {
        this.id = j11;
    }

    public final void setItemID(String str) {
        this.itemID = str;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setOffer(int i11) {
        this.isOffer = i11;
    }

    public final void setOfferDesc(String str) {
        this.offerDesc = str;
    }

    public final void setPackageName(String str) {
        this.packageName = str;
    }

    public final void setPalmStoreDownLoadTaskInfo(PalmStoreDownLoadTaskInfo palmStoreDownLoadTaskInfo) {
        this.palmStoreDownLoadTaskInfo = palmStoreDownLoadTaskInfo;
    }

    public final void setPlacementId(String str) {
        this.placementId = str;
    }

    public final void setPlanName(String str) {
        this.planName = str;
    }

    public final void setSceneId(String str) {
        this.sceneId = str;
    }

    public final void setShowAttributionLink(String str) {
        this.showAttributionLink = str;
    }

    public final void setShowContent(String str) {
        this.showContent = str;
    }

    public final void setShowHours(String str) {
        this.showHours = str;
    }

    public final void setShowMax(Integer num) {
        this.showMax = num;
    }

    public final void setShowType(int i11) {
        this.showType = i11;
    }

    public final void setSimpleDescription(String str) {
        this.simpleDescription = str;
    }

    public final void setSize(long j11) {
        this.size = j11;
    }

    public final void setStar(String str) {
        this.star = str;
    }

    public final void setTAdNativeInfo(TAdNativeInfo tAdNativeInfo) {
        this.tAdNativeInfo = tAdNativeInfo;
    }

    public final void setVerifyGoogle(String str) {
        this.verifyGoogle = str;
    }

    public final void setVersionCode(int i11) {
        this.versionCode = i11;
    }

    public final void setVersionName(String str) {
        this.versionName = str;
    }

    public String toString() {
        return "RecommendInfo(categoryCode=" + this.categoryCode + ", categoryName=" + this.categoryName + ", detail=" + this.detail + ", downloadCount=" + this.downloadCount + ", iconUrl=" + this.iconUrl + ", itemID=" + this.itemID + ", offerDesc=" + this.offerDesc + ", packageName=" + this.packageName + ", simpleDescription=" + this.simpleDescription + ", size=" + this.size + ", star=" + this.star + ", verifyGoogle=" + this.verifyGoogle + ", versionCode=" + this.versionCode + ", versionName=" + this.versionName + ", id=" + this.id + ", isOffer=" + this.isOffer + ", showType=" + this.showType + ", planName=" + this.planName + ", name=" + this.name + ", exists=" + this.exists + ", adSource=" + this.adSource + ", buttonText=" + this.buttonText + ", gpLink=" + this.gpLink + ", showContent=" + this.showContent + ", adType=" + this.adType + ", deepLink=" + this.deepLink + ", attributionLink=" + this.attributionLink + ", showAttributionLink=" + this.showAttributionLink + ", gpAttributionLink=" + this.gpAttributionLink + ", showMax=" + this.showMax + ", clickMax=" + this.clickMax + ", showHours=" + this.showHours + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.categoryCode);
        dest.writeString(this.categoryName);
        ItemDetail itemDetail = this.detail;
        if (itemDetail == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            itemDetail.writeToParcel(dest, flags);
        }
        dest.writeInt(this.downloadCount);
        dest.writeString(this.iconUrl);
        dest.writeString(this.itemID);
        dest.writeString(this.offerDesc);
        dest.writeString(this.packageName);
        dest.writeString(this.simpleDescription);
        dest.writeLong(this.size);
        dest.writeString(this.star);
        dest.writeString(this.verifyGoogle);
        dest.writeInt(this.versionCode);
        dest.writeString(this.versionName);
        dest.writeLong(this.id);
        dest.writeInt(this.isOffer);
        dest.writeInt(this.showType);
        dest.writeString(this.planName);
        dest.writeString(this.name);
        Boolean bool = this.exists;
        if (bool == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(bool.booleanValue() ? 1 : 0);
        }
        dest.writeString(this.adSource);
        dest.writeString(this.buttonText);
        dest.writeString(this.gpLink);
        dest.writeString(this.showContent);
        Integer num = this.adType;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        dest.writeString(this.deepLink);
        dest.writeString(this.attributionLink);
        dest.writeString(this.showAttributionLink);
        dest.writeString(this.gpAttributionLink);
        Integer num2 = this.showMax;
        if (num2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num2.intValue());
        }
        Integer num3 = this.clickMax;
        if (num3 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num3.intValue());
        }
        dest.writeString(this.showHours);
    }
}
