package com.transsion.shorttv.bean;

import androidx.annotation.Keep;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0014\b\u0007\u0018\u00002\u00020\u0001B?\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u000b\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0019\"\u0004\b\u001d\u0010\u001b¨\u0006\u001e"}, d2 = {"Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;", "", "pager", "Lcom/transsion/shorttv/bean/Pager;", "items", "", "Lcom/transsion/shorttv/bean/ShortTVItem;", "info", "Lcom/transsion/shorttv/bean/Subject;", "startPosition", "", "endPosition", "<init>", "(Lcom/transsion/shorttv/bean/Pager;Ljava/util/List;Lcom/transsion/shorttv/bean/Subject;II)V", "getPager", "()Lcom/transsion/shorttv/bean/Pager;", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", "getInfo", "()Lcom/transsion/shorttv/bean/Subject;", "setInfo", "(Lcom/transsion/shorttv/bean/Subject;)V", "getStartPosition", "()I", "setStartPosition", "(I)V", "getEndPosition", "setEndPosition", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ShortTvInfoEpisodeList {
    private transient int endPosition;
    private Subject info;
    private List<ShortTVItem> items;
    private final Pager pager;
    private transient int startPosition;

    public ShortTvInfoEpisodeList(Pager pager, List<ShortTVItem> list, Subject subject, int i11, int i12) {
        this.pager = pager;
        this.items = list;
        this.info = subject;
        this.startPosition = i11;
        this.endPosition = i12;
    }

    public /* synthetic */ ShortTvInfoEpisodeList(Pager pager, List list, Subject subject, int i11, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(pager, list, subject, (i13 & 8) != 0 ? 0 : i11, (i13 & 16) != 0 ? 0 : i12);
    }

    public final int getEndPosition() {
        return this.endPosition;
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

    public final int getStartPosition() {
        return this.startPosition;
    }

    public final void setEndPosition(int i11) {
        this.endPosition = i11;
    }

    public final void setInfo(Subject subject) {
        this.info = subject;
    }

    public final void setItems(List<ShortTVItem> list) {
        this.items = list;
    }

    public final void setStartPosition(int i11) {
        this.startPosition = i11;
    }
}
