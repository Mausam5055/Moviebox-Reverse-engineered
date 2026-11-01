package com.transsion.shorttv._channel.model;

import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.shorttv.bean.Cover;
import com.transsion.shorttv.bean.PlayUrl;
import com.transsion.shorttv.bean.PreVideoAddress;
import com.transsion.shorttv.bean.Staff;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\bf\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B×\u0002\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\n\u0012\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\n\u0012\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0003\u0012\u0016\b\u0002\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010!\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010%¢\u0006\u0004\b&\u0010'J\u000b\u0010n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010o\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010p\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010q\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010s\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u00107J\u000b\u0010t\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010u\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010v\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010w\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u00107J\u0011\u0010x\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010HÆ\u0003J\u000b\u0010y\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010z\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010{\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u00107J\u0011\u0010|\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0010HÆ\u0003J\u000b\u0010}\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010~\u001a\u0004\u0018\u00010\u0019HÆ\u0003¢\u0006\u0002\u0010RJ\u0010\u0010\u007f\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u00107J\f\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0081\u0001\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u00107J\f\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0018\u0010\u0085\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010!HÆ\u0003J\f\u0010\u0086\u0001\u001a\u0004\u0018\u00010#HÆ\u0003J\f\u0010\u0087\u0001\u001a\u0004\u0018\u00010%HÆ\u0003Jà\u0002\u0010\u0088\u0001\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\n2\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\n2\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u00102\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00032\u0016\b\u0002\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010!2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010%HÆ\u0001¢\u0006\u0003\u0010\u0089\u0001J\u0016\u0010\u008a\u0001\u001a\u00020\u00192\n\u0010\u008b\u0001\u001a\u0005\u0018\u00010\u008c\u0001HÖ\u0003J\n\u0010\u008d\u0001\u001a\u00020\nHÖ\u0001J\n\u0010\u008e\u0001\u001a\u00020\u0003HÖ\u0001R \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R \u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u0010)\"\u0004\b1\u0010+R \u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010)\"\u0004\b3\u0010+R \u0010\b\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010)\"\u0004\b5\u0010+R\"\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010:\u001a\u0004\b6\u00107\"\u0004\b8\u00109R \u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010)\"\u0004\b<\u0010+R \u0010\f\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010)\"\u0004\b>\u0010+R \u0010\r\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010)\"\u0004\b@\u0010+R\"\u0010\u000e\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010:\u001a\u0004\bA\u00107\"\u0004\bB\u00109R&\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR \u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bG\u0010-\"\u0004\bH\u0010/R \u0010\u0013\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bI\u0010)\"\u0004\bJ\u0010+R\"\u0010\u0014\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010:\u001a\u0004\bK\u00107\"\u0004\bL\u00109R&\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bM\u0010D\"\u0004\bN\u0010FR \u0010\u0017\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bO\u0010)\"\u0004\bP\u0010+R\"\u0010\u0018\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010U\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010TR\"\u0010\u001a\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010:\u001a\u0004\bV\u00107\"\u0004\bW\u00109R \u0010\u001b\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bX\u0010)\"\u0004\bY\u0010+R\"\u0010\u001c\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010:\u001a\u0004\bZ\u00107\"\u0004\b[\u00109R \u0010\u001d\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\\\u0010)\"\u0004\b]\u0010+R \u0010\u001e\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b^\u0010)\"\u0004\b_\u0010+R\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b`\u0010)\"\u0004\ba\u0010+R(\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bb\u0010c\"\u0004\bd\u0010eR\u001c\u0010\"\u001a\u0004\u0018\u00010#X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bf\u0010g\"\u0004\bh\u0010iR \u0010$\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bj\u0010k\"\u0004\bl\u0010m¨\u0006\u008f\u0001"}, d2 = {"Lcom/transsion/shorttv/_channel/model/ShortTvMovieItem;", "Ljava/io/Serializable;", "countryName", "", "cover", "Lcom/transsion/shorttv/bean/Cover;", TrackingKey.DESCRIPTION, "duration", "genre", "haveSeenCount", "", "imdbRatingValue", TmcConstants.KEY_LANGUAGE, "myScoreDate", "myScoreValue", "preVideoAddress", "", "Lcom/transsion/shorttv/bean/PreVideoAddress;", "preVideoCover", "releaseDate", "seenStatus", "staffList", "Lcom/transsion/shorttv/bean/Staff;", "subjectId", "hasResource", "", "subjectType", CampaignEx.JSON_KEY_TITLE, "wantToSeeCount", "ops", "corner", TmcStartParams.KEY_CHANNEL_ID, "selectItems", "", "nonAdDelegate", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "playUrl", "Lcom/transsion/shorttv/bean/PlayUrl;", "<init>", "(Ljava/lang/String;Lcom/transsion/shorttv/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/transsion/shorttv/bean/Cover;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lcom/transsion/shorttv/bean/PlayUrl;)V", "getCountryName", "()Ljava/lang/String;", "setCountryName", "(Ljava/lang/String;)V", "getCover", "()Lcom/transsion/shorttv/bean/Cover;", "setCover", "(Lcom/transsion/shorttv/bean/Cover;)V", "getDescription", "setDescription", "getDuration", "setDuration", "getGenre", "setGenre", "getHaveSeenCount", "()Ljava/lang/Integer;", "setHaveSeenCount", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getImdbRatingValue", "setImdbRatingValue", "getLanguage", "setLanguage", "getMyScoreDate", "setMyScoreDate", "getMyScoreValue", "setMyScoreValue", "getPreVideoAddress", "()Ljava/util/List;", "setPreVideoAddress", "(Ljava/util/List;)V", "getPreVideoCover", "setPreVideoCover", "getReleaseDate", "setReleaseDate", "getSeenStatus", "setSeenStatus", "getStaffList", "setStaffList", "getSubjectId", "setSubjectId", "getHasResource", "()Ljava/lang/Boolean;", "setHasResource", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getSubjectType", "setSubjectType", "getTitle", "setTitle", "getWantToSeeCount", "setWantToSeeCount", "getOps", "setOps", "getCorner", "setCorner", "getChannelId", "setChannelId", "getSelectItems", "()Ljava/util/Map;", "setSelectItems", "(Ljava/util/Map;)V", "getNonAdDelegate", "()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "setNonAdDelegate", "(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V", "getPlayUrl", "()Lcom/transsion/shorttv/bean/PlayUrl;", "setPlayUrl", "(Lcom/transsion/shorttv/bean/PlayUrl;)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "copy", "(Ljava/lang/String;Lcom/transsion/shorttv/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/transsion/shorttv/bean/Cover;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lcom/transsion/shorttv/bean/PlayUrl;)Lcom/transsion/shorttv/_channel/model/ShortTvMovieItem;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ShortTvMovieItem implements Serializable {
    private transient String channelId;

    @SerializedName("corner")
    private String corner;

    @SerializedName("countryName")
    private String countryName;

    @SerializedName("cover")
    private Cover cover;

    @SerializedName(TrackingKey.DESCRIPTION)
    private String description;

    @SerializedName("duration")
    private String duration;

    @SerializedName("genre")
    private String genre;

    @SerializedName("hasResource")
    private Boolean hasResource;

    @SerializedName("haveSeenCount")
    private Integer haveSeenCount;

    @SerializedName("imdbRatingValue")
    private String imdbRatingValue;

    @SerializedName(TmcConstants.KEY_LANGUAGE)
    private String language;

    @SerializedName("myScoreDate")
    private String myScoreDate;

    @SerializedName("myScoreValue")
    private Integer myScoreValue;
    private transient BiddingNativeManager nonAdDelegate;

    @SerializedName("ops")
    private String ops;

    @SerializedName("playUrl")
    private PlayUrl playUrl;

    @SerializedName("preVideoAddress")
    private List<PreVideoAddress> preVideoAddress;

    @SerializedName("preVideoCover")
    private Cover preVideoCover;

    @SerializedName("releaseDate")
    private String releaseDate;

    @SerializedName("seenStatus")
    private Integer seenStatus;
    private transient Map<String, String> selectItems;

    @SerializedName("staffList")
    private List<? extends Staff> staffList;

    @SerializedName("subjectId")
    private String subjectId;

    @SerializedName("subjectType")
    private Integer subjectType;

    @SerializedName(CampaignEx.JSON_KEY_TITLE)
    private String title;

    @SerializedName("wantToSeeCount")
    private Integer wantToSeeCount;

    public ShortTvMovieItem() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 67108863, null);
    }

    public ShortTvMovieItem(String str, Cover cover, String str2, String str3, String str4, Integer num, String str5, String str6, String str7, Integer num2, List<PreVideoAddress> list, Cover cover2, String str8, Integer num3, List<? extends Staff> list2, String str9, Boolean bool, Integer num4, String str10, Integer num5, String str11, String str12, String str13, Map<String, String> map, BiddingNativeManager biddingNativeManager, PlayUrl playUrl) {
        this.countryName = str;
        this.cover = cover;
        this.description = str2;
        this.duration = str3;
        this.genre = str4;
        this.haveSeenCount = num;
        this.imdbRatingValue = str5;
        this.language = str6;
        this.myScoreDate = str7;
        this.myScoreValue = num2;
        this.preVideoAddress = list;
        this.preVideoCover = cover2;
        this.releaseDate = str8;
        this.seenStatus = num3;
        this.staffList = list2;
        this.subjectId = str9;
        this.hasResource = bool;
        this.subjectType = num4;
        this.title = str10;
        this.wantToSeeCount = num5;
        this.ops = str11;
        this.corner = str12;
        this.channelId = str13;
        this.selectItems = map;
        this.nonAdDelegate = biddingNativeManager;
        this.playUrl = playUrl;
    }

    public /* synthetic */ ShortTvMovieItem(String str, Cover cover, String str2, String str3, String str4, Integer num, String str5, String str6, String str7, Integer num2, List list, Cover cover2, String str8, Integer num3, List list2, String str9, Boolean bool, Integer num4, String str10, Integer num5, String str11, String str12, String str13, Map map, BiddingNativeManager biddingNativeManager, PlayUrl playUrl, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : cover, (i11 & 4) != 0 ? null : str2, (i11 & 8) != 0 ? null : str3, (i11 & 16) != 0 ? null : str4, (i11 & 32) != 0 ? null : num, (i11 & 64) != 0 ? null : str5, (i11 & 128) != 0 ? null : str6, (i11 & 256) != 0 ? null : str7, (i11 & 512) != 0 ? null : num2, (i11 & 1024) != 0 ? null : list, (i11 & 2048) != 0 ? null : cover2, (i11 & 4096) != 0 ? null : str8, (i11 & 8192) != 0 ? null : num3, (i11 & 16384) != 0 ? null : list2, (i11 & 32768) != 0 ? null : str9, (i11 & 65536) != 0 ? null : bool, (i11 & 131072) != 0 ? null : num4, (i11 & 262144) != 0 ? null : str10, (i11 & 524288) != 0 ? null : num5, (i11 & 1048576) != 0 ? null : str11, (i11 & 2097152) != 0 ? null : str12, (i11 & 4194304) != 0 ? null : str13, (i11 & 8388608) != 0 ? null : map, (i11 & 16777216) != 0 ? null : biddingNativeManager, (i11 & ASTNode.PCTX_STORED) != 0 ? null : playUrl);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCountryName() {
        return this.countryName;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final Integer getMyScoreValue() {
        return this.myScoreValue;
    }

    public final List<PreVideoAddress> component11() {
        return this.preVideoAddress;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final Cover getPreVideoCover() {
        return this.preVideoCover;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final String getReleaseDate() {
        return this.releaseDate;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final Integer getSeenStatus() {
        return this.seenStatus;
    }

    public final List<Staff> component15() {
        return this.staffList;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final String getSubjectId() {
        return this.subjectId;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final Boolean getHasResource() {
        return this.hasResource;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final Integer getSubjectType() {
        return this.subjectType;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Cover getCover() {
        return this.cover;
    }

    /* JADX INFO: renamed from: component20, reason: from getter */
    public final Integer getWantToSeeCount() {
        return this.wantToSeeCount;
    }

    /* JADX INFO: renamed from: component21, reason: from getter */
    public final String getOps() {
        return this.ops;
    }

    /* JADX INFO: renamed from: component22, reason: from getter */
    public final String getCorner() {
        return this.corner;
    }

    /* JADX INFO: renamed from: component23, reason: from getter */
    public final String getChannelId() {
        return this.channelId;
    }

    public final Map<String, String> component24() {
        return this.selectItems;
    }

    /* JADX INFO: renamed from: component25, reason: from getter */
    public final BiddingNativeManager getNonAdDelegate() {
        return this.nonAdDelegate;
    }

    /* JADX INFO: renamed from: component26, reason: from getter */
    public final PlayUrl getPlayUrl() {
        return this.playUrl;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getDuration() {
        return this.duration;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getGenre() {
        return this.genre;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Integer getHaveSeenCount() {
        return this.haveSeenCount;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getImdbRatingValue() {
        return this.imdbRatingValue;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getLanguage() {
        return this.language;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getMyScoreDate() {
        return this.myScoreDate;
    }

    public final ShortTvMovieItem copy(String countryName, Cover cover, String description, String duration, String genre, Integer haveSeenCount, String imdbRatingValue, String language, String myScoreDate, Integer myScoreValue, List<PreVideoAddress> preVideoAddress, Cover preVideoCover, String releaseDate, Integer seenStatus, List<? extends Staff> staffList, String subjectId, Boolean hasResource, Integer subjectType, String title, Integer wantToSeeCount, String ops, String corner, String channelId, Map<String, String> selectItems, BiddingNativeManager nonAdDelegate, PlayUrl playUrl) {
        return new ShortTvMovieItem(countryName, cover, description, duration, genre, haveSeenCount, imdbRatingValue, language, myScoreDate, myScoreValue, preVideoAddress, preVideoCover, releaseDate, seenStatus, staffList, subjectId, hasResource, subjectType, title, wantToSeeCount, ops, corner, channelId, selectItems, nonAdDelegate, playUrl);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ShortTvMovieItem)) {
            return false;
        }
        ShortTvMovieItem shortTvMovieItem = (ShortTvMovieItem) other;
        return Intrinsics.c(this.countryName, shortTvMovieItem.countryName) && Intrinsics.c(this.cover, shortTvMovieItem.cover) && Intrinsics.c(this.description, shortTvMovieItem.description) && Intrinsics.c(this.duration, shortTvMovieItem.duration) && Intrinsics.c(this.genre, shortTvMovieItem.genre) && Intrinsics.c(this.haveSeenCount, shortTvMovieItem.haveSeenCount) && Intrinsics.c(this.imdbRatingValue, shortTvMovieItem.imdbRatingValue) && Intrinsics.c(this.language, shortTvMovieItem.language) && Intrinsics.c(this.myScoreDate, shortTvMovieItem.myScoreDate) && Intrinsics.c(this.myScoreValue, shortTvMovieItem.myScoreValue) && Intrinsics.c(this.preVideoAddress, shortTvMovieItem.preVideoAddress) && Intrinsics.c(this.preVideoCover, shortTvMovieItem.preVideoCover) && Intrinsics.c(this.releaseDate, shortTvMovieItem.releaseDate) && Intrinsics.c(this.seenStatus, shortTvMovieItem.seenStatus) && Intrinsics.c(this.staffList, shortTvMovieItem.staffList) && Intrinsics.c(this.subjectId, shortTvMovieItem.subjectId) && Intrinsics.c(this.hasResource, shortTvMovieItem.hasResource) && Intrinsics.c(this.subjectType, shortTvMovieItem.subjectType) && Intrinsics.c(this.title, shortTvMovieItem.title) && Intrinsics.c(this.wantToSeeCount, shortTvMovieItem.wantToSeeCount) && Intrinsics.c(this.ops, shortTvMovieItem.ops) && Intrinsics.c(this.corner, shortTvMovieItem.corner) && Intrinsics.c(this.channelId, shortTvMovieItem.channelId) && Intrinsics.c(this.selectItems, shortTvMovieItem.selectItems) && Intrinsics.c(this.nonAdDelegate, shortTvMovieItem.nonAdDelegate) && Intrinsics.c(this.playUrl, shortTvMovieItem.playUrl);
    }

    public final String getChannelId() {
        return this.channelId;
    }

    public final String getCorner() {
        return this.corner;
    }

    public final String getCountryName() {
        return this.countryName;
    }

    public final Cover getCover() {
        return this.cover;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getDuration() {
        return this.duration;
    }

    public final String getGenre() {
        return this.genre;
    }

    public final Boolean getHasResource() {
        return this.hasResource;
    }

    public final Integer getHaveSeenCount() {
        return this.haveSeenCount;
    }

    public final String getImdbRatingValue() {
        return this.imdbRatingValue;
    }

    public final String getLanguage() {
        return this.language;
    }

    public final String getMyScoreDate() {
        return this.myScoreDate;
    }

    public final Integer getMyScoreValue() {
        return this.myScoreValue;
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

    public final List<PreVideoAddress> getPreVideoAddress() {
        return this.preVideoAddress;
    }

    public final Cover getPreVideoCover() {
        return this.preVideoCover;
    }

    public final String getReleaseDate() {
        return this.releaseDate;
    }

    public final Integer getSeenStatus() {
        return this.seenStatus;
    }

    public final Map<String, String> getSelectItems() {
        return this.selectItems;
    }

    public final List<Staff> getStaffList() {
        return this.staffList;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public final Integer getSubjectType() {
        return this.subjectType;
    }

    public final String getTitle() {
        return this.title;
    }

    public final Integer getWantToSeeCount() {
        return this.wantToSeeCount;
    }

    public int hashCode() {
        String str = this.countryName;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Cover cover = this.cover;
        int iHashCode2 = (iHashCode + (cover == null ? 0 : cover.hashCode())) * 31;
        String str2 = this.description;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.duration;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.genre;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num = this.haveSeenCount;
        int iHashCode6 = (iHashCode5 + (num == null ? 0 : num.hashCode())) * 31;
        String str5 = this.imdbRatingValue;
        int iHashCode7 = (iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.language;
        int iHashCode8 = (iHashCode7 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.myScoreDate;
        int iHashCode9 = (iHashCode8 + (str7 == null ? 0 : str7.hashCode())) * 31;
        Integer num2 = this.myScoreValue;
        int iHashCode10 = (iHashCode9 + (num2 == null ? 0 : num2.hashCode())) * 31;
        List<PreVideoAddress> list = this.preVideoAddress;
        int iHashCode11 = (iHashCode10 + (list == null ? 0 : list.hashCode())) * 31;
        Cover cover2 = this.preVideoCover;
        int iHashCode12 = (iHashCode11 + (cover2 == null ? 0 : cover2.hashCode())) * 31;
        String str8 = this.releaseDate;
        int iHashCode13 = (iHashCode12 + (str8 == null ? 0 : str8.hashCode())) * 31;
        Integer num3 = this.seenStatus;
        int iHashCode14 = (iHashCode13 + (num3 == null ? 0 : num3.hashCode())) * 31;
        List<? extends Staff> list2 = this.staffList;
        int iHashCode15 = (iHashCode14 + (list2 == null ? 0 : list2.hashCode())) * 31;
        String str9 = this.subjectId;
        int iHashCode16 = (iHashCode15 + (str9 == null ? 0 : str9.hashCode())) * 31;
        Boolean bool = this.hasResource;
        int iHashCode17 = (iHashCode16 + (bool == null ? 0 : bool.hashCode())) * 31;
        Integer num4 = this.subjectType;
        int iHashCode18 = (iHashCode17 + (num4 == null ? 0 : num4.hashCode())) * 31;
        String str10 = this.title;
        int iHashCode19 = (iHashCode18 + (str10 == null ? 0 : str10.hashCode())) * 31;
        Integer num5 = this.wantToSeeCount;
        int iHashCode20 = (iHashCode19 + (num5 == null ? 0 : num5.hashCode())) * 31;
        String str11 = this.ops;
        int iHashCode21 = (iHashCode20 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.corner;
        int iHashCode22 = (iHashCode21 + (str12 == null ? 0 : str12.hashCode())) * 31;
        String str13 = this.channelId;
        int iHashCode23 = (iHashCode22 + (str13 == null ? 0 : str13.hashCode())) * 31;
        Map<String, String> map = this.selectItems;
        int iHashCode24 = (iHashCode23 + (map == null ? 0 : map.hashCode())) * 31;
        BiddingNativeManager biddingNativeManager = this.nonAdDelegate;
        int iHashCode25 = (iHashCode24 + (biddingNativeManager == null ? 0 : biddingNativeManager.hashCode())) * 31;
        PlayUrl playUrl = this.playUrl;
        return iHashCode25 + (playUrl != null ? playUrl.hashCode() : 0);
    }

    public final void setChannelId(String str) {
        this.channelId = str;
    }

    public final void setCorner(String str) {
        this.corner = str;
    }

    public final void setCountryName(String str) {
        this.countryName = str;
    }

    public final void setCover(Cover cover) {
        this.cover = cover;
    }

    public final void setDescription(String str) {
        this.description = str;
    }

    public final void setDuration(String str) {
        this.duration = str;
    }

    public final void setGenre(String str) {
        this.genre = str;
    }

    public final void setHasResource(Boolean bool) {
        this.hasResource = bool;
    }

    public final void setHaveSeenCount(Integer num) {
        this.haveSeenCount = num;
    }

    public final void setImdbRatingValue(String str) {
        this.imdbRatingValue = str;
    }

    public final void setLanguage(String str) {
        this.language = str;
    }

    public final void setMyScoreDate(String str) {
        this.myScoreDate = str;
    }

    public final void setMyScoreValue(Integer num) {
        this.myScoreValue = num;
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

    public final void setPreVideoAddress(List<PreVideoAddress> list) {
        this.preVideoAddress = list;
    }

    public final void setPreVideoCover(Cover cover) {
        this.preVideoCover = cover;
    }

    public final void setReleaseDate(String str) {
        this.releaseDate = str;
    }

    public final void setSeenStatus(Integer num) {
        this.seenStatus = num;
    }

    public final void setSelectItems(Map<String, String> map) {
        this.selectItems = map;
    }

    public final void setStaffList(List<? extends Staff> list) {
        this.staffList = list;
    }

    public final void setSubjectId(String str) {
        this.subjectId = str;
    }

    public final void setSubjectType(Integer num) {
        this.subjectType = num;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setWantToSeeCount(Integer num) {
        this.wantToSeeCount = num;
    }

    public String toString() {
        return "ShortTvMovieItem(countryName=" + this.countryName + ", cover=" + this.cover + ", description=" + this.description + ", duration=" + this.duration + ", genre=" + this.genre + ", haveSeenCount=" + this.haveSeenCount + ", imdbRatingValue=" + this.imdbRatingValue + ", language=" + this.language + ", myScoreDate=" + this.myScoreDate + ", myScoreValue=" + this.myScoreValue + ", preVideoAddress=" + this.preVideoAddress + ", preVideoCover=" + this.preVideoCover + ", releaseDate=" + this.releaseDate + ", seenStatus=" + this.seenStatus + ", staffList=" + this.staffList + ", subjectId=" + this.subjectId + ", hasResource=" + this.hasResource + ", subjectType=" + this.subjectType + ", title=" + this.title + ", wantToSeeCount=" + this.wantToSeeCount + ", ops=" + this.ops + ", corner=" + this.corner + ", channelId=" + this.channelId + ", selectItems=" + this.selectItems + ", nonAdDelegate=" + this.nonAdDelegate + ", playUrl=" + this.playUrl + ")";
    }
}
