package com.transsion.search.bean;

import com.transsion.publish.api.GroupBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0019\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/transsion/search/bean/SearchGroupEntity;", "Ljava/io/Serializable;", "<init>", "()V", "pager", "Lcom/transsion/search/bean/PagerEntity;", "getPager", "()Lcom/transsion/search/bean/PagerEntity;", "items", "", "Lcom/transsion/publish/api/GroupBean;", "getItems", "()Ljava/util/List;", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SearchGroupEntity implements Serializable {
    private final List<GroupBean> items;
    private final PagerEntity pager;

    public final List<GroupBean> getItems() {
        return this.items;
    }

    public final PagerEntity getPager() {
        return this.pager;
    }
}
