package com.transsion.postdetail.shorttv.bean;

import androidx.annotation.Keep;
import com.transsion.moviedetailapi.bean.ShortTVItem;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.postdetail.bean.Pager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
@Keep
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018\u00002\u00020\u0001B+\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/transsion/postdetail/shorttv/bean/ShortTvInfoEpisodeList;", "", "pager", "Lcom/transsion/postdetail/bean/Pager;", "items", "", "Lcom/transsion/moviedetailapi/bean/ShortTVItem;", "info", "Lcom/transsion/moviedetailapi/bean/Subject;", "<init>", "(Lcom/transsion/postdetail/bean/Pager;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Subject;)V", "getPager", "()Lcom/transsion/postdetail/bean/Pager;", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", "getInfo", "()Lcom/transsion/moviedetailapi/bean/Subject;", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ShortTvInfoEpisodeList {
    private final Subject info;
    private List<ShortTVItem> items;
    private final Pager pager;

    public ShortTvInfoEpisodeList(Pager pager, List<ShortTVItem> list, Subject subject) {
        this.pager = pager;
        this.items = list;
        this.info = subject;
    }

    public final Subject getInfo() {
        return this.info;
    }

    public final List<ShortTVItem> getItems() {
        return this.items;
    }

    public final Pager getPager() {
        return this.pager;
    }

    public final void setItems(List<ShortTVItem> list) {
        this.items = list;
    }
}
