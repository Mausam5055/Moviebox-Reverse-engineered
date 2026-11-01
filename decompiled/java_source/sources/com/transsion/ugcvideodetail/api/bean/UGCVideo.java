package com.transsion.ugcvideodetail.api.bean;

import ak.l;
import android.content.Context;
import androidx.annotation.Keep;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.baseui.R$plurals;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.ugcvideodetail.api.UGCPageStyle;
import com.transsion.ugcvideodetail.api.UGCVideoType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import lj.i1;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u0001\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\bi\b\u0017\u0018\u00002\u00020\u00012\u00020\u0002Bñ\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001d\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\"\u0012\b\b\u0002\u0010$\u001a\u00020\"\u0012\b\b\u0002\u0010&\u001a\u00020%\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010'\u0012\n\b\u0002\u0010)\u001a\u0004\u0018\u00010'\u0012\n\b\u0002\u0010*\u001a\u0004\u0018\u00010'\u0012\n\b\u0002\u0010+\u001a\u0004\u0018\u00010'¢\u0006\u0004\b,\u0010-J\r\u0010.\u001a\u00020%¢\u0006\u0004\b.\u0010/J\u0011\u00100\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b0\u00101J\u0011\u00102\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b2\u00101J\u0011\u00103\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b3\u00101J\u0011\u00104\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b4\u00101J\u0011\u00105\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b5\u00101J\u0011\u00106\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b6\u00107J\u0011\u00109\u001a\u0004\u0018\u000108H\u0016¢\u0006\u0004\b9\u0010:J\u0011\u0010;\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b;\u00101J\u0011\u0010<\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b<\u00101J\u0011\u0010=\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b=\u00101J\u000f\u0010>\u001a\u00020\"H\u0016¢\u0006\u0004\b>\u0010?J\u000f\u0010@\u001a\u00020%H\u0016¢\u0006\u0004\b@\u0010/J\u0017\u0010C\u001a\u00020B2\u0006\u0010A\u001a\u00020%H\u0016¢\u0006\u0004\bC\u0010DJ\u0015\u0010G\u001a\u00020\u00032\u0006\u0010F\u001a\u00020E¢\u0006\u0004\bG\u0010HR$\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010I\u001a\u0004\bJ\u00101\"\u0004\bK\u0010LR$\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010I\u001a\u0004\bM\u00101\"\u0004\bN\u0010LR$\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010I\u001a\u0004\bO\u00101\"\u0004\bP\u0010LR*\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010Q\u001a\u0004\bR\u0010S\"\u0004\bT\u0010UR$\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010V\u001a\u0004\bW\u0010X\"\u0004\bY\u0010ZR$\u0010\f\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010V\u001a\u0004\b[\u0010X\"\u0004\b\\\u0010ZR$\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010I\u001a\u0004\b]\u00101\"\u0004\b^\u0010LR$\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010_\u001a\u0004\b`\u00107\"\u0004\ba\u0010bR$\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010I\u001a\u0004\bc\u00101\"\u0004\bd\u0010LR$\u0010\u0011\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010I\u001a\u0004\be\u00101\"\u0004\bf\u0010LR$\u0010\u0012\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010_\u001a\u0004\bg\u00107\"\u0004\bh\u0010bR$\u0010\u0013\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010I\u001a\u0004\bi\u00101\"\u0004\bj\u0010LR$\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010k\u001a\u0004\bl\u0010m\"\u0004\bn\u0010oR$\u0010\u0017\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010p\u001a\u0004\bq\u0010r\"\u0004\bs\u0010tR$\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010u\u001a\u0004\bv\u0010w\"\u0004\bx\u0010yR$\u0010\u001a\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010I\u001a\u0004\bz\u00101\"\u0004\b{\u0010LR$\u0010\u001b\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010I\u001a\u0004\b|\u00101\"\u0004\b}\u0010LR*\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010Q\u001a\u0004\b~\u0010S\"\u0004\b\u007f\u0010UR)\u0010\u001e\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\u001e\u0010\u0080\u0001\u001a\u0006\b\u0081\u0001\u0010\u0082\u0001\"\u0006\b\u0083\u0001\u0010\u0084\u0001R&\u0010\u001f\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b\u001f\u0010I\u001a\u0005\b\u0085\u0001\u00101\"\u0005\b\u0086\u0001\u0010LR&\u0010 \u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b \u0010I\u001a\u0005\b\u0087\u0001\u00101\"\u0005\b\u0088\u0001\u0010LR,\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b!\u0010Q\u001a\u0005\b\u0089\u0001\u0010S\"\u0005\b\u008a\u0001\u0010UR)\u0010#\u001a\u0004\u0018\u00010\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b#\u0010\u008b\u0001\u001a\u0006\b\u008c\u0001\u0010\u008d\u0001\"\u0006\b\u008e\u0001\u0010\u008f\u0001R&\u0010$\u001a\u00020\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b$\u0010\u0090\u0001\u001a\u0005\b\u0091\u0001\u0010?\"\u0006\b\u0092\u0001\u0010\u0093\u0001R%\u0010&\u001a\u00020%8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b&\u0010\u0094\u0001\u001a\u0005\b\u0095\u0001\u0010/\"\u0005\b\u0096\u0001\u0010DR)\u0010(\u001a\u0004\u0018\u00010'8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b(\u0010\u0097\u0001\u001a\u0006\b\u0098\u0001\u0010\u0099\u0001\"\u0006\b\u009a\u0001\u0010\u009b\u0001R)\u0010)\u001a\u0004\u0018\u00010'8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b)\u0010\u0097\u0001\u001a\u0006\b\u009c\u0001\u0010\u0099\u0001\"\u0006\b\u009d\u0001\u0010\u009b\u0001R)\u0010*\u001a\u0004\u0018\u00010'8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b*\u0010\u0097\u0001\u001a\u0006\b\u009e\u0001\u0010\u0099\u0001\"\u0006\b\u009f\u0001\u0010\u009b\u0001R)\u0010+\u001a\u0004\u0018\u00010'8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b+\u0010\u0097\u0001\u001a\u0006\b \u0001\u0010\u0099\u0001\"\u0006\b¡\u0001\u0010\u009b\u0001R'\u0010¢\u0001\u001a\u00020%8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0006\b¢\u0001\u0010\u0094\u0001\u001a\u0005\b¢\u0001\u0010/\"\u0005\b£\u0001\u0010DR(\u0010¤\u0001\u001a\u00020\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0006\b¤\u0001\u0010\u0090\u0001\u001a\u0005\b¥\u0001\u0010?\"\u0006\b¦\u0001\u0010\u0093\u0001R\u0013\u0010§\u0001\u001a\u00020%8F¢\u0006\u0007\u001a\u0005\b§\u0001\u0010/R\u001b\u0010©\u0001\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00078F¢\u0006\u0007\u001a\u0005\b¨\u0001\u0010SR\u0013\u0010ª\u0001\u001a\u00020%8F¢\u0006\u0007\u001a\u0005\bª\u0001\u0010/R\u0013\u0010«\u0001\u001a\u00020%8F¢\u0006\u0007\u001a\u0005\b«\u0001\u0010/R\u0013\u0010¬\u0001\u001a\u00020%8F¢\u0006\u0007\u001a\u0005\b¬\u0001\u0010/R\u0013\u0010\u00ad\u0001\u001a\u00020%8F¢\u0006\u0007\u001a\u0005\b\u00ad\u0001\u0010/¨\u0006®\u0001"}, d2 = {"Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "Ljava/io/Serializable;", "Llj/i1;", "", "ugcVideoId", CampaignEx.JSON_KEY_TITLE, TrackingKey.DESCRIPTION, "", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;", "hashTags", "Lcom/transsion/moviedetailapi/bean/Cover;", "cover", "coverVertical", "corner", "", "duration", "watchNum", "releaseDate", "publishTime", "category", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;", "creator", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;", "interactiveInfo", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;", "belongToCollection", "ops", "subjectId", PlaceTypes.COUNTRY, "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDescImage;", "descImage", "epTitle", "videoStyle", "searchWord", "", "downloadStyle", "restrictKid", "", "builtIn", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;", "cateLev1", "cateLev2", "cateLev3", "cateLev4", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDescImage;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;IZLcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;)V", "isFamilyModeIntercept", "()Z", "videoCoverUrl", "()Ljava/lang/String;", "videoThumbnail", "videoTitle", "videoEpTitle", "videoCorner", "videoDuration", "()Ljava/lang/Long;", "", "videoResourceId", "()Ljava/lang/Void;", "videoUGCId", "videoUGCType", "videoUGCWatchNum", "videoUGCPosition", "()I", "isVideoPlaying", "isPlaying", "", "setVideoIsPlaying", "(Z)V", "Landroid/content/Context;", "context", "getTimeOrCount", "(Landroid/content/Context;)Ljava/lang/String;", "Ljava/lang/String;", "getUgcVideoId", "setUgcVideoId", "(Ljava/lang/String;)V", "getTitle", "setTitle", "getDescription", "setDescription", "Ljava/util/List;", "getHashTags", "()Ljava/util/List;", "setHashTags", "(Ljava/util/List;)V", "Lcom/transsion/moviedetailapi/bean/Cover;", "getCover", "()Lcom/transsion/moviedetailapi/bean/Cover;", "setCover", "(Lcom/transsion/moviedetailapi/bean/Cover;)V", "getCoverVertical", "setCoverVertical", "getCorner", "setCorner", "Ljava/lang/Long;", "getDuration", "setDuration", "(Ljava/lang/Long;)V", "getWatchNum", "setWatchNum", "getReleaseDate", "setReleaseDate", "getPublishTime", "setPublishTime", "getCategory", "setCategory", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;", "getCreator", "()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;", "setCreator", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;)V", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;", "getInteractiveInfo", "()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;", "setInteractiveInfo", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;)V", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;", "getBelongToCollection", "()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;", "setBelongToCollection", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;)V", "getOps", "setOps", "getSubjectId", "setSubjectId", "getCountry", "setCountry", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDescImage;", "getDescImage", "()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDescImage;", "setDescImage", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDescImage;)V", "getEpTitle", "setEpTitle", "getVideoStyle", "setVideoStyle", "getSearchWord", "setSearchWord", "Ljava/lang/Integer;", "getDownloadStyle", "()Ljava/lang/Integer;", "setDownloadStyle", "(Ljava/lang/Integer;)V", "I", "getRestrictKid", "setRestrictKid", "(I)V", "Z", "getBuiltIn", "setBuiltIn", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;", "getCateLev1", "()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;", "setCateLev1", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;)V", "getCateLev2", "setCateLev2", "getCateLev3", "setCateLev3", "getCateLev4", "setCateLev4", "isSelected", "setSelected", "playListPosition", "getPlayListPosition", "setPlayListPosition", "isVerticalImmStyle", "getFilteredHashTags", "filteredHashTags", "isShortTv", "isEducation", "isTV", "isCollection", "UGCVideoDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public class UGCVideo implements Serializable, i1 {
    private UGCVideoBelongToCollection belongToCollection;
    private transient boolean builtIn;
    private UGCVideoCategory cateLev1;
    private UGCVideoCategory cateLev2;
    private UGCVideoCategory cateLev3;
    private UGCVideoCategory cateLev4;
    private String category;
    private String corner;
    private List<String> country;
    private Cover cover;
    private Cover coverVertical;
    private UGCVideoCreator creator;
    private UGCVideoDescImage descImage;
    private String description;
    private Integer downloadStyle;
    private Long duration;
    private String epTitle;
    private List<UGCVideoHashTag> hashTags;
    private UGCVideoInteractiveInfo interactiveInfo;
    private transient boolean isSelected;
    private String ops;
    private transient int playListPosition;
    private Long publishTime;
    private String releaseDate;
    private int restrictKid;
    private List<String> searchWord;
    private String subjectId;
    private String title;
    private String ugcVideoId;
    private String videoStyle;
    private String watchNum;

    public UGCVideo() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, false, null, null, null, null, 536870911, null);
    }

    public UGCVideo(String str, String str2, String str3, List<UGCVideoHashTag> list, Cover cover, Cover cover2, String str4, Long l11, String str5, String str6, Long l12, String str7, UGCVideoCreator uGCVideoCreator, UGCVideoInteractiveInfo uGCVideoInteractiveInfo, UGCVideoBelongToCollection uGCVideoBelongToCollection, String str8, String str9, List<String> list2, UGCVideoDescImage uGCVideoDescImage, String str10, String str11, List<String> list3, Integer num, int i11, boolean z10, UGCVideoCategory uGCVideoCategory, UGCVideoCategory uGCVideoCategory2, UGCVideoCategory uGCVideoCategory3, UGCVideoCategory uGCVideoCategory4) {
        this.ugcVideoId = str;
        this.title = str2;
        this.description = str3;
        this.hashTags = list;
        this.cover = cover;
        this.coverVertical = cover2;
        this.corner = str4;
        this.duration = l11;
        this.watchNum = str5;
        this.releaseDate = str6;
        this.publishTime = l12;
        this.category = str7;
        this.creator = uGCVideoCreator;
        this.interactiveInfo = uGCVideoInteractiveInfo;
        this.belongToCollection = uGCVideoBelongToCollection;
        this.ops = str8;
        this.subjectId = str9;
        this.country = list2;
        this.descImage = uGCVideoDescImage;
        this.epTitle = str10;
        this.videoStyle = str11;
        this.searchWord = list3;
        this.downloadStyle = num;
        this.restrictKid = i11;
        this.builtIn = z10;
        this.cateLev1 = uGCVideoCategory;
        this.cateLev2 = uGCVideoCategory2;
        this.cateLev3 = uGCVideoCategory3;
        this.cateLev4 = uGCVideoCategory4;
        this.playListPosition = -1;
    }

    public /* synthetic */ UGCVideo(String str, String str2, String str3, List list, Cover cover, Cover cover2, String str4, Long l11, String str5, String str6, Long l12, String str7, UGCVideoCreator uGCVideoCreator, UGCVideoInteractiveInfo uGCVideoInteractiveInfo, UGCVideoBelongToCollection uGCVideoBelongToCollection, String str8, String str9, List list2, UGCVideoDescImage uGCVideoDescImage, String str10, String str11, List list3, Integer num, int i11, boolean z10, UGCVideoCategory uGCVideoCategory, UGCVideoCategory uGCVideoCategory2, UGCVideoCategory uGCVideoCategory3, UGCVideoCategory uGCVideoCategory4, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? null : str, (i12 & 2) != 0 ? null : str2, (i12 & 4) != 0 ? null : str3, (i12 & 8) != 0 ? null : list, (i12 & 16) != 0 ? null : cover, (i12 & 32) != 0 ? null : cover2, (i12 & 64) != 0 ? null : str4, (i12 & 128) != 0 ? 0L : l11, (i12 & 256) != 0 ? null : str5, (i12 & 512) != 0 ? null : str6, (i12 & 1024) != 0 ? 0L : l12, (i12 & 2048) != 0 ? null : str7, (i12 & 4096) != 0 ? null : uGCVideoCreator, (i12 & 8192) != 0 ? null : uGCVideoInteractiveInfo, (i12 & 16384) != 0 ? null : uGCVideoBelongToCollection, (i12 & 32768) != 0 ? null : str8, (i12 & 65536) != 0 ? null : str9, (i12 & 131072) != 0 ? null : list2, (i12 & 262144) != 0 ? null : uGCVideoDescImage, (i12 & 524288) != 0 ? null : str10, (i12 & 1048576) != 0 ? null : str11, (i12 & 2097152) != 0 ? null : list3, (i12 & 4194304) != 0 ? null : num, (i12 & 8388608) != 0 ? 0 : i11, (i12 & 16777216) == 0 ? z10 : false, (i12 & ASTNode.PCTX_STORED) != 0 ? null : uGCVideoCategory, (i12 & 67108864) != 0 ? null : uGCVideoCategory2, (i12 & ASTNode.NOJIT) != 0 ? null : uGCVideoCategory3, (i12 & ASTNode.DEOP) != 0 ? null : uGCVideoCategory4);
    }

    public final UGCVideoBelongToCollection getBelongToCollection() {
        return this.belongToCollection;
    }

    public final boolean getBuiltIn() {
        return this.builtIn;
    }

    public final UGCVideoCategory getCateLev1() {
        return this.cateLev1;
    }

    public final UGCVideoCategory getCateLev2() {
        return this.cateLev2;
    }

    public final UGCVideoCategory getCateLev3() {
        return this.cateLev3;
    }

    public final UGCVideoCategory getCateLev4() {
        return this.cateLev4;
    }

    public final String getCategory() {
        return this.category;
    }

    public final String getCorner() {
        return this.corner;
    }

    public final List<String> getCountry() {
        return this.country;
    }

    public final Cover getCover() {
        return this.cover;
    }

    public final Cover getCoverVertical() {
        return this.coverVertical;
    }

    public final UGCVideoCreator getCreator() {
        return this.creator;
    }

    public final UGCVideoDescImage getDescImage() {
        return this.descImage;
    }

    public final String getDescription() {
        return this.description;
    }

    public final Integer getDownloadStyle() {
        return this.downloadStyle;
    }

    public final Long getDuration() {
        return this.duration;
    }

    public final String getEpTitle() {
        return this.epTitle;
    }

    public final List<UGCVideoHashTag> getFilteredHashTags() {
        List<UGCVideoHashTag> list = this.hashTags;
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            String title = ((UGCVideoHashTag) obj).getTitle();
            if (title != null && title.length() != 0) {
                arrayList.add(obj);
            }
        }
        return CollectionsKt.U0(arrayList);
    }

    public final List<UGCVideoHashTag> getHashTags() {
        return this.hashTags;
    }

    public final UGCVideoInteractiveInfo getInteractiveInfo() {
        return this.interactiveInfo;
    }

    public final String getOps() {
        return this.ops;
    }

    public final int getPlayListPosition() {
        return this.playListPosition;
    }

    public final Long getPublishTime() {
        return this.publishTime;
    }

    public final String getReleaseDate() {
        return this.releaseDate;
    }

    public final int getRestrictKid() {
        return this.restrictKid;
    }

    public final List<String> getSearchWord() {
        return this.searchWord;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public final String getTimeOrCount(Context context) {
        Integer videoNum;
        Integer videoNum2;
        Intrinsics.h(context, "context");
        if (isEducation() || isShortTv() || isTV()) {
            UGCVideoBelongToCollection uGCVideoBelongToCollection = this.belongToCollection;
            if (((uGCVideoBelongToCollection == null || (videoNum2 = uGCVideoBelongToCollection.getVideoNum()) == null) ? 0 : videoNum2.intValue()) > 0) {
                UGCVideoBelongToCollection uGCVideoBelongToCollection2 = this.belongToCollection;
                int iIntValue = (uGCVideoBelongToCollection2 == null || (videoNum = uGCVideoBelongToCollection2.getVideoNum()) == null) ? 0 : videoNum.intValue();
                String quantityString = context.getResources().getQuantityString(R$plurals.videos_count_text, iIntValue, Integer.valueOf(iIntValue));
                Intrinsics.e(quantityString);
                return quantityString;
            }
        }
        Long l11 = this.duration;
        return TimeUtilKt.a(l11 != null ? Integer.valueOf((int) l11.longValue()) : null);
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getUgcVideoId() {
        return this.ugcVideoId;
    }

    public final String getVideoStyle() {
        return this.videoStyle;
    }

    public final String getWatchNum() {
        return this.watchNum;
    }

    public final boolean isCollection() {
        UGCVideoBelongToCollection uGCVideoBelongToCollection = this.belongToCollection;
        if (uGCVideoBelongToCollection != null) {
            String collectionId = uGCVideoBelongToCollection != null ? uGCVideoBelongToCollection.getCollectionId() : null;
            if (collectionId != null && collectionId.length() != 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean isEducation() {
        return Intrinsics.c(this.category, UGCVideoType.EDUCATION.getValue());
    }

    public final boolean isFamilyModeIntercept() {
        return l.a() && this.restrictKid == 1;
    }

    /* JADX INFO: renamed from: isSelected, reason: from getter */
    public final boolean getIsSelected() {
        return this.isSelected;
    }

    public final boolean isShortTv() {
        return Intrinsics.c(this.category, UGCVideoType.SHORT_TV.getValue());
    }

    public final boolean isTV() {
        return Intrinsics.c(this.category, UGCVideoType.TV.getValue());
    }

    public final boolean isVerticalImmStyle() {
        return Intrinsics.c(this.videoStyle, UGCPageStyle.UGC_PAGE_STYLE_IMM_VERTICAL_VIDEO.getValue());
    }

    @Override // lj.i1
    public boolean isVideoPlaying() {
        return this.isSelected;
    }

    public final void setBelongToCollection(UGCVideoBelongToCollection uGCVideoBelongToCollection) {
        this.belongToCollection = uGCVideoBelongToCollection;
    }

    public final void setBuiltIn(boolean z10) {
        this.builtIn = z10;
    }

    public final void setCateLev1(UGCVideoCategory uGCVideoCategory) {
        this.cateLev1 = uGCVideoCategory;
    }

    public final void setCateLev2(UGCVideoCategory uGCVideoCategory) {
        this.cateLev2 = uGCVideoCategory;
    }

    public final void setCateLev3(UGCVideoCategory uGCVideoCategory) {
        this.cateLev3 = uGCVideoCategory;
    }

    public final void setCateLev4(UGCVideoCategory uGCVideoCategory) {
        this.cateLev4 = uGCVideoCategory;
    }

    public final void setCategory(String str) {
        this.category = str;
    }

    public final void setCorner(String str) {
        this.corner = str;
    }

    public final void setCountry(List<String> list) {
        this.country = list;
    }

    public final void setCover(Cover cover) {
        this.cover = cover;
    }

    public final void setCoverVertical(Cover cover) {
        this.coverVertical = cover;
    }

    public final void setCreator(UGCVideoCreator uGCVideoCreator) {
        this.creator = uGCVideoCreator;
    }

    public final void setDescImage(UGCVideoDescImage uGCVideoDescImage) {
        this.descImage = uGCVideoDescImage;
    }

    public final void setDescription(String str) {
        this.description = str;
    }

    public final void setDownloadStyle(Integer num) {
        this.downloadStyle = num;
    }

    public final void setDuration(Long l11) {
        this.duration = l11;
    }

    public final void setEpTitle(String str) {
        this.epTitle = str;
    }

    public final void setHashTags(List<UGCVideoHashTag> list) {
        this.hashTags = list;
    }

    public final void setInteractiveInfo(UGCVideoInteractiveInfo uGCVideoInteractiveInfo) {
        this.interactiveInfo = uGCVideoInteractiveInfo;
    }

    public final void setOps(String str) {
        this.ops = str;
    }

    public final void setPlayListPosition(int i11) {
        this.playListPosition = i11;
    }

    public final void setPublishTime(Long l11) {
        this.publishTime = l11;
    }

    public final void setReleaseDate(String str) {
        this.releaseDate = str;
    }

    public final void setRestrictKid(int i11) {
        this.restrictKid = i11;
    }

    public final void setSearchWord(List<String> list) {
        this.searchWord = list;
    }

    public final void setSelected(boolean z10) {
        this.isSelected = z10;
    }

    public final void setSubjectId(String str) {
        this.subjectId = str;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setUgcVideoId(String str) {
        this.ugcVideoId = str;
    }

    @Override // lj.i1
    public void setVideoIsPlaying(boolean isPlaying) {
        this.isSelected = isPlaying;
    }

    public final void setVideoStyle(String str) {
        this.videoStyle = str;
    }

    public final void setWatchNum(String str) {
        this.watchNum = str;
    }

    @Override // lj.i1
    public String videoCorner() {
        return this.corner;
    }

    @Override // lj.i1
    public String videoCoverUrl() {
        Cover cover = this.cover;
        if (cover != null) {
            return cover.getUrl();
        }
        return null;
    }

    @Override // lj.i1
    public Long videoDuration() {
        return this.duration;
    }

    @Override // lj.i1
    public String videoEpTitle() {
        return this.epTitle;
    }

    @Override // lj.i1
    public /* bridge */ /* synthetic */ String videoResourceId() {
        return (String) m323videoResourceId();
    }

    /* JADX INFO: renamed from: videoResourceId, reason: collision with other method in class */
    public Void m323videoResourceId() {
        return null;
    }

    @Override // lj.i1
    public String videoThumbnail() {
        Cover cover = this.cover;
        if (cover != null) {
            return cover.getThumbnail();
        }
        return null;
    }

    @Override // lj.i1
    public String videoTitle() {
        return this.title;
    }

    @Override // lj.i1
    public String videoUGCId() {
        return this.ugcVideoId;
    }

    @Override // lj.i1
    public int videoUGCPosition() {
        Integer position;
        UGCVideoBelongToCollection uGCVideoBelongToCollection = this.belongToCollection;
        return (uGCVideoBelongToCollection == null || (position = uGCVideoBelongToCollection.getPosition()) == null) ? this.playListPosition : position.intValue();
    }

    @Override // lj.i1
    public String videoUGCType() {
        return this.category;
    }

    @Override // lj.i1
    public String videoUGCWatchNum() {
        return this.watchNum;
    }
}
